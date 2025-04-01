BITS 16
org 0x7c00

mov ah, 0x0e
mov al, 'H'
int 0x10
mov al, 'E'
int 0x10
mov al, 'L'
int 0x10
mov al, 'L'
int 0x10
mov al, 'O'
int 0x10

jmp $  ; infinite loop

; padding to make it 512 bytes
times 510 - ($-$$) db 0
dw 0xaa55
