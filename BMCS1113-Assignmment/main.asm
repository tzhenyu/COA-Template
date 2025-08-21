; AddTwoSum.asm - Chapter 3 example.
include irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
coma byte ", ",0
number dword 70019,9003,3001,4,6,1
temp dword ?
two word 2

.code
main proc
	
	mov ecx,6
	mov esi,0

l1: mov ebx,number[esi]
	mov temp,ebx
	mov dx,word ptr temp+2
	mov ax,word ptr temp
	div two 

	cmp dx,0
	jne	NEQT
	call writeInt
	mov edx,offset coma
	call writeString
	NEQT:add esi,4
		loop l1


	invoke ExitProcess,0
main endp
end main
