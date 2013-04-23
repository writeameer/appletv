#!/bin/bash -ex

apt-get install wget
wget -O- http://apt.awkwardtv.org/awkwardtv.pub | apt-key add -
echo "deb http://apt.awkwardtv.org/ stable main" > /etc/apt/sources.list.d/awkwardtv.list
echo "deb http://mirrors.xbmc.org/apt/atv2 ./" > /etc/apt/sources.list.d/xbmc.list
apt-get update
mkdir -p /Applications/AppleTV.app/Appliances
apt-get install org.xbmc.xbmc-atv2
mkdir -p /Applications/XBMC.frappliance

