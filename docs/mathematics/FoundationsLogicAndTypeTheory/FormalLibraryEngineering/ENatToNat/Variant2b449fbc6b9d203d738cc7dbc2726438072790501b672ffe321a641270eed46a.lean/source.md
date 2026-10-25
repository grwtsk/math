# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EnatToNat.Variant2b449fbc6b9d203d738cc7dbc2726438072790501b672ffe321a641270eed46a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6fb9b4d9268e6757339d06dec1ac82d79896e0de` · SHA-256 `2b449fbc6b9d203d738cc7dbc2726438072790501b672ffe321a641270eed46a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.ENatToNat

example (a b : ENat) (h : a = b) : a - b = b - a := by
  enat_to_nat
  omega

example (a b : ENat) (h : a ≤ b) : a - b < b + 1 := by
  enat_to_nat
  omega

example (a b : ENat) (h : a ≤ b) : a - 2 * b ≤ b + 1 := by
  enat_to_nat
  omega

example (a b c : ENat) (hab : a ≥ b) (hbc : b ≥ c) : a ≥ c := by
  enat_to_nat
  omega

example (a b : ENat) (h : a = b) : a - b = b - a := by
  -- to test if the tactic works with inaccessible names
  let a : ℤ := 42
  let b : ℤ := 32
  enat_to_nat
  omega
```
