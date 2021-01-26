#!/bin/bash

cd "~/Documents/website-weather/images" #This deletes the old image files to prep for the new ones
sudo rm "mcir.jpg"
sudo rm "no.jpg"
sudo rm "contrasta.jpg"
sudo rm "contrastb.jpg"

cd "~/wxtoimg/images" #This block moves all image files from WXtoImg to the GitHub repo
sudo mv "*-mcir.jpg" "~/Documents/website-weather/images/mcir.jpg"
sudo mv "*-no.jpg" "~/Documents/website-weather/images/no.jpg"
sudo mv "*-contrasta.jpg" "~/Documents/website-weather/images/contrasta.jpg"
sudo mv "*-contrastb.jpg" "~/Documents/website-weather/images/contrastb.jpg"

cd "~/Documents/website-weather/audio" #Same as first block but for audio
sudo rm "audio.wav"

cd "~/wxtoimg/audio" #Same as second block but for audio
sudo mv "*.wav" "~/Documents/website-weather/audio/audio.wav"

cd #Just a cd for safe measure

#This next section is for pushing the files to GitHub
cd ~/Documents/website-weather
git status #I don't need to do this, but it can give some visual feedback if needed
git commit -m "Automated file update"
git status #Again, I don't need to do this, but it can give some visual feedback if needed
git add -A
git push
