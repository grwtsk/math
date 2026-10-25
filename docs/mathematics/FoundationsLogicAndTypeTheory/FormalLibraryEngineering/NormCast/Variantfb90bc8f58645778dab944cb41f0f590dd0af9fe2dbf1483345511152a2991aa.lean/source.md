# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NormCast.Variantfb90bc8f58645778dab944cb41f0f590dd0af9fe2dbf1483345511152a2991aa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `720056561027df4a74f7f170ddecfcfaf2351c07` · SHA-256 `fb90bc8f58645778dab944cb41f0f590dd0af9fe2dbf1483345511152a2991aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/-!
# Tests for norm_cast involving `Rat`.
-/

set_option linter.missingDocs false

-- set_option trace.Meta.Tactic.simp true

variable (aq bq cq dq : Rat)

example : az = bz ↔ (az : Rat) = bz := by norm_cast

-- zero and one cause special problems
example : aq < (1 : Nat) ↔ (aq : Rat) < (1 : Int) := by norm_cast

--testing numerals
example : ((42 : Nat) : Rat) = 42 := by norm_cast
example : ((42 : Int) : Rat) = 42 := by norm_cast

-- We don't yet have `{n m : Int} : (↑n : Rat) ≤ ↑m ↔ n ≤ m` in Batteries
-- example (n : Int) (h : n + 1 > 0) : ((n + 1 : Int) : Rat) > 0 := by exact_mod_cast h
```
