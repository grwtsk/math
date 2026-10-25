# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PowModTest.Variantf6e638bd44fafd911342082a9cf7874e96f09aa6d5bdac6af46621b2e6ee590e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2d63cea82ef0b2638f0f0ff9f682fc890ae20d9` · SHA-256 `f6e638bd44fafd911342082a9cf7874e96f09aa6d5bdac6af46621b2e6ee590e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import PrimeCert.PowMod

/-! # Tests for `prove_pow_mod`

Checks the `prove_pow_mod` tactic on both small and large inputs (up to ~300-digit moduli).
-/

open Tactic.powMod in
set_option diagnostics.threshold 0 in
set_option diagnostics true in
theorem powMod_11_100002_100003 : powMod 11 100002 100003 = 1 := by prove_pow_mod
#print powMod_11_100002_100003

set_option linter.style.longLine false in
open Tactic.powMod in
set_option diagnostics.threshold 0 in
set_option diagnostics true in
#time
example :
    powMod 2
      131715931587485903133664770501783872901180735752961173191222502260846184802138117218820246495979164495762424017769215925882581565859513559697500346853208717730048481311930278737221764046227216650748207028546755348290341925152606053939920784122173626831732721956717186562885471376983969828398653806056
      131715931587485903133664770501783872901180735752961173191222502260846184802138117218820246495979164495762424017769215925882581565859513559697500346853208717730048481311930278737221764046227216650748207028546755348290341925152606053939920784122173626831732721956717186562885471376983969828398653806057 =
      1 := by
  prove_pow_mod

```
