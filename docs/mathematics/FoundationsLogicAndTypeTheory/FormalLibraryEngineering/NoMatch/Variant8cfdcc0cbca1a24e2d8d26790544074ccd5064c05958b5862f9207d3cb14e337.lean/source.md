# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Nomatch.Variant8cfdcc0cbca1a24e2d8d26790544074ccd5064c05958b5862f9207d3cb14e337

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c72aa78211d8cd345dfd4e2cc5ee30aa4f564f91` · SHA-256 `8cfdcc0cbca1a24e2d8d26790544074ccd5064c05958b5862f9207d3cb14e337`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
set_option autoImplicit true
example : False → α := nofun
example : False → α := by nofun
example : ¬ False := nofun
example : ¬ False := by nofun
example : ¬ ¬ 0 = 0 := nofun

example (h : False) : α := nomatch h

example (h : Nat → False) : Nat := nomatch h 1

def ComplicatedEmpty : Bool → Type
  | false => Empty
  | true => PEmpty

example (h : ComplicatedEmpty b) : α := nomatch b, h
example (h : Nat → ComplicatedEmpty b) : α := nomatch b, h 1
```
