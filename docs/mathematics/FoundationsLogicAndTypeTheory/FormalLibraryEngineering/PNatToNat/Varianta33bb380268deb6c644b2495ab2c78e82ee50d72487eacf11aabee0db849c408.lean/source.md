# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PnatToNat.Varianta33bb380268deb6c644b2495ab2c78e82ee50d72487eacf11aabee0db849c408

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61d56ea1bc9979a7f92bf8169d35c6356accd51f` · SHA-256 `a33bb380268deb6c644b2495ab2c78e82ee50d72487eacf11aabee0db849c408`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.PNatToNat

example (a b : PNat) (h : a < b) : 1 < b := by
  pnat_to_nat
  omega

example (a b : PNat) (h : a = b) : b = a := by
  -- to test if the tactic works with inaccessible names
  let a : ℤ := 42
  pnat_to_nat
  omega

example (a b : PNat) (h : a < b) : 1 < b := by
  have := a.pos
  pnat_to_nat
  omega
```
