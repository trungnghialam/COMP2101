#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
title="Overlord"
user="Trung Nghia Lam"
hostname=$(hostname)
today=$(date)
day=$(date +%A)
test $day = 'Monday' && title="Monday is good"
test $day = 'Tuesday' && title="Tuesday is nice"
test $day = 'Wednesday' && title="Wednesday is perfect"
test $day = 'Thursday' && title="Thursday is cool"
test $day = 'Friday' && title="Friday is happy"
test $day = 'Saturday' && title="Saturday is best"
test $day = 'Sunday' && title="Sunday is beautiful"
###############
# Main        #
###############
cat <<EOF

Welcome to planet $hostname, "$title $user!"
It is weekday at $today

EOF
