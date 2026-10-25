# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModCases.Variant61e565d79b8e26c57d021381c125393514abcf49e394c5a157dafc6c1eab86b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3fd39fa7d50adee65426197570283708ab6ff00f` · SHA-256 `61e565d79b8e26c57d021381c125393514abcf49e394c5a157dafc6c1eab86b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.ModCases

example (n : ℤ) : 3 ∣ n ^ 3 - n := by
  mod_cases n % 3
  · guard_hyp H :ₛ n ≡ 0 [ZMOD 3]; guard_target = 3 ∣ n ^ 3 - n; sorry
  · guard_hyp H :ₛ n ≡ 1 [ZMOD 3]; guard_target = 3 ∣ n ^ 3 - n; sorry
  · guard_hyp H :ₛ n ≡ 2 [ZMOD 3]; guard_target = 3 ∣ n ^ 3 - n; sorry

-- test case for https://github.com/leanprover-community/mathlib4/issues/1851
example (n : ℕ) (z : ℤ) : n = n := by
  induction n with
  | zero => rfl
  | succ n ih =>
     mod_cases h : z % 2
     · sorry
     · sorry
```
