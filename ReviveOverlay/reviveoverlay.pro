#-------------------------------------------------
#
# Project created by QtCreator 2015-06-10T16:57:45
#
#-------------------------------------------------

QT       += core gui widgets

greaterThan(QT_MAJOR_VERSION, 4): QT += quick

TARGET = ReviveOverlay
TEMPLATE = app


SOURCES += main.cpp\
    openvroverlaycontroller.cpp \
    revivemanifestcontroller.cpp \
    trayiconcontroller.cpp \
    windowsservices.cpp

HEADERS  += \
    openvroverlaycontroller.h \
    revivemanifestcontroller.h \
    trayiconcontroller.h \
    windowsservices.h

DISTFILES += \
    Overlay.qml \
    Oculus.js

INCLUDEPATH += ../openvr/headers

LIBS += -L../openvr/lib/win64 -lopenvr_api -lAdvapi32

Debug:DESTDIR = ../Debug
Release:DESTDIR = ../Release

RESOURCES += \
    overlay.qrc

win32:RC_ICONS += revive.ico

openvr.path    = $${DESTDIR}
openvr.files   += ../openvr/bin/win64/openvr_api.dll

images.path    = $${DESTDIR}/SupportAssets
images.files   += SupportAssets/*

manifests.path    = $${DESTDIR}
manifests.files   += *.vrmanifest

INSTALLS       += openvr images manifests
