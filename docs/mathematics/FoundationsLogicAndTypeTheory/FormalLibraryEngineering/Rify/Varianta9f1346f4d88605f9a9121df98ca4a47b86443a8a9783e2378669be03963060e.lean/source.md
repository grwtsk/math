# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rify.Varianta9f1346f4d88605f9a9121df98ca4a47b86443a8a9783e2378669be03963060e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1dd02c9f5deac363b4ecbcd283de60527a5e9fd0` · SHA-256 `a9f1346f4d88605f9a9121df98ca4a47b86443a8a9783e2378669be03963060e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Rify

set_option linter.unusedVariables false

example {n : ℕ} {k : ℤ} (hn : 8 ≤ n) (hk : 2 * k ≤ n + 2) :
    (0 : ℝ) < n - k - 1 := by
  rify at hn hk
  linarith

example {n : ℕ} {k : ℤ} (hn : 8 ≤ n) (hk : (2 : ℚ) * k ≤ n + 2) :
    (0 : ℝ) < n - k - 1 := by
  rify at hn hk
  linarith

example (a b c : ℕ) (h : a - b < c) (hab : b ≤ a) : a < b + c := by
  rify [hab] at h ⊢
  linarith

example {n : ℕ} (h : 8 ≤ n) : (0 : ℝ) < n - 1 := by
  rify at h
  linarith

example {n k : ℕ} (h : 2 * k ≤ n + 2) (h' : 8 ≤ n) : (0 : ℝ) ≤ 3 * n - 4 - 4 * k := by
  rify at *
  linarith

example {n k : ℕ} (h₁ : 8 ≤ n) (h₂ : 2 * k > n) (h₃ : k + 1 < n) :
    n - (k + 1) + 3 ≤ n := by
  rify [h₃] at *
  linarith

example {n k : ℕ} (h₁ : 8 ≤ n) (h₂ : 2 * k > n) (h₃ : k + 1 < n) :
    n - (n - (k + 1)) = k + 1 := by
  have f₁ : k + 1 ≤ n := by linarith
  have f₂ : n - (k + 1) ≤ n := by rify [f₁]; linarith
  rify [f₁, f₂] at *
  linarith
```
