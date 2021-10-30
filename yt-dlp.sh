#!/bin/bash

# -----------------------------------------------------------------------------
# Info:
#   author:    tupaxman
#   file:      yt-dlp.sh
#   created:   31.10.2021
#   revision:  31.10.2021
#   version:   0.1
# -----------------------------------------------------------------------------
# Requirements:
#   Python, ffmpeg, cURL
# Description:
#   yt-dlp Downloader for Termux Terminal Emulator
#
# -----------------------------------------------------------------------------

## Update packages
echo "+++ Updating the Packages +++"
echo "+++ Running Command pkg up +++"

pkg up

echo -e "\\n"
echo "+++ Packages are Updated Successfully +++"
sleep 2;
echo -e "\\n"

## Install dependency packages
echo -e "+++ Install dependency packages +++"
sleep 2;
echo -e "\\n"

echo -e "+++ Install python +++"
echo -e "\\n"

pkg install python -y

sleep 2;

echo -e "+++ Install cURL +++"
echo -e "\\n"

pkg install curl -y

sleep 2;

echo -e "\\n"
echo -e "+++ install ffmpeg +++"
echo -e "\\n"

pkg install ffmpeg -y

sleep 2;

echo -e "\\n"
echo -e "+++ Successfully Installed the dependency packages +++"
sleep 2;

echo -e "\\n"

## Download yt-dlp
echo -e "+++ Downloading yt-dlp +++"
echo -e "+++ Please Wait +++"

curl -s -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /data/data/com.termux/files/usr/bin/yt-dlp

sleep 2;
echo -e "+++ yt-dlp Downloaded Successfully +++"

echo -e "\\n"

sleep 2;

## Set Permission
echo -e "+++ Set Permission to Execute the Script +++"

chmod a+rx /data/data/com.termux/files/usr/bin/yt-dlp

echo "+++ Permission Granted +++"

sleep 2;

echo -e "\\n"

## Verify the Installation
echo -e "+++ Verifiy Installation +++"

yt-dlp --version
command -v yt-dlp

sleep 2;

echo -e "\\n"

echo "+++ Installation completed successfully +++"
echo "+++ You can Now use yt-dlp to download the videos +++"
