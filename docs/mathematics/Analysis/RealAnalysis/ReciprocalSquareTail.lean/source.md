# Complete source: GRWTSK.Analysis.Real.ReciprocalSquareTail

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e7206b3dcf367a14cb3b1e42caddb5792ad9284` · SHA-256 `3c662309f6230897d616c7e75e945418fbc861e15f91655e94798fa4a44ceb6a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Real.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

set_option autoImplicit false

/-!
# A complete reciprocal-square tail budget

The terminal reciprocal is retained in each finite inequality. No numerical
quadrature or truncation without a remainder is used. These declarations are
source drafts: NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Real.ReciprocalSquareTail

open scoped BigOperators

/-- A reciprocal difference dominates the square reciprocal only for u>1. -/
theorem reciprocal_square_le_difference (u : ℝ) (hu : 1 < u) :
    1 / u ^ 2 ≤ 1 / (u - 1) - 1 / u := by
  have hu0 : 0 < u := by linarith
  have hum : 0 < u - 1 := by linarith
  calc
    1 / u ^ 2 ≤ 1 / ((u - 1) * u) :=
      div_le_div_of_nonneg_left (by norm_num) (mul_pos hum hu0) (by nlinarith)
    _ = 1 / (u - 1) - 1 / u := by
      field_simp [ne_of_gt hu0, ne_of_gt hum]
      ring

/-- Exact telescoping endpoint accounting for any finite number of terms. -/
theorem finite_square_tail_le (q : ℝ) (hq : 1 < q) (N : ℕ) :
    (∑ k ∈ Finset.range N, 1 / (q + (k : ℝ)) ^ 2) ≤
      1 / (q - 1) - 1 / (q + (N : ℝ) - 1) := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [Finset.sum_range_succ]
      have hstep := reciprocal_square_le_difference (q + (N : ℝ))
        (by linarith [Nat.cast_nonneg (α := ℝ) N])
      have hsum := add_le_add ih hstep
      calc
        _ ≤ (1 / (q - 1) - 1 / (q + (N : ℝ) - 1)) +
            (1 / (q + (N : ℝ) - 1) - 1 / (q + (N : ℝ))) := hsum
        _ = _ := by push_cast; ring

/-- A bound independent of truncation follows by dropping a nonnegative terminal term. -/
theorem finite_square_tail_le_reciprocal (q : ℝ) (hq : 1 < q) (N : ℕ) :
    (∑ k ∈ Finset.range N, 1 / (q + (k : ℝ)) ^ 2) ≤ 1 / (q - 1) := by
  have hp : 0 ≤ 1 / (q + (N : ℝ) - 1) := by
    have hn := Nat.cast_nonneg (α := ℝ) N
    apply one_div_nonneg.mpr
    linarith
  linarith [finite_square_tail_le q hq N]

end GRWTSK.Analysis.Real.ReciprocalSquareTail
```
