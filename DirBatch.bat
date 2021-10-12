::  By: Trajano
::  Version: 1.0

@echo off
set /p URL=Digite a URl:
echo HTTP_CODE
for /f "delims=" %%a in (wordlist.txt) do for /f %%b in ('curl -fIkLsw "%%{response_code}" -o NUL "%URL%/%%a"') do if not "%%b"=="404" echo %%b %URL%/%%a
pause >nul
