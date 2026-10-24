# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.SelectedResidueLimitControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `192fc2d9aafd37c990ec216b87b88414a64d7f3b` · SHA-256 `09b3ed9d89c949bf46a586aa2de81804ffc57bf7100a57060387960ffc1334b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.TentSelectedResidueLimit
import Mathlib.Analysis.SpecificLimits.Normed

set_option autoImplicit false

/-!
# Controls for normalized decay and the selected summation order

These scripts have NOT been elaborated or executed. The alternating example
is a synthetic summation control, not a zeta-zero model. Even cofinal paired
prefixes may converge while the family is not summable. Fixed-parameter decay
must not be promoted to a diagonal or uniform arithmetic estimate.
-/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.SelectedResidueLimitControls

open Filter
open scoped Topology BigOperators

noncomputable section

theorem normalized_affine_budget (a b T : ℝ) (hT : T ≠ 0) :
    (a + b * T) / T ^ 2 = a / T ^ 2 + b / T := by
  field_simp [hT]
  <;> ring

/-- A quadratic multiplier is finite at each height but its normalized rate is not zero. -/
theorem quadratic_budget_ratio (T : ℝ) (hT : T ≠ 0) : T ^ 2 / T ^ 2 = 1 :=
  div_self (pow_ne_zero 2 hT)

theorem signed_height_square (T : ℝ) : (-T) ^ 2 = T ^ 2 := by ring

/-- Pairwise cancellation gives zero on every even initial segment. -/
theorem alternating_even_prefix (N : ℕ) :
    (∑ k ∈ Finset.range (2 * N), (-1 : ℂ) ^ k) = 0 := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [show 2 * (N + 1) = (2 * N + 1) + 1 by ring,
        Finset.sum_range_succ, Finset.sum_range_succ, ih, pow_succ]
      ring

/-- The same prefixes have growing absolute mass, despite their signed cancellation. -/
theorem alternating_even_norm_mass (N : ℕ) :
    (∑ k ∈ Finset.range (2 * N), ‖(-1 : ℂ) ^ k‖) = 2 * (N : ℝ) := by
  simp [norm_pow, Nat.cast_mul]

theorem alternating_even_prefix_tendsto_zero :
    Tendsto (fun N : ℕ => ∑ k ∈ Finset.range (2 * N), (-1 : ℂ) ^ k)
      atTop (𝓝 0) := by
  simp_rw [alternating_even_prefix]
  exact tendsto_const_nhds

/-- No unordered tsum bridge may be inferred merely from the preceding prefix limit. -/
theorem alternating_not_summable : ¬ Summable (fun k : ℕ => (-1 : ℂ) ^ k) := by
  intro hs
  have ht := hs.tendsto_atTop_zero.norm
  simp only [norm_pow, norm_neg, norm_one, one_pow, norm_zero] at ht
  have he : (1 : ℝ) = 0 := tendsto_nhds_unique tendsto_const_nhds ht
  norm_num at he

/-- For fixed c, c/(N+1) tends to zero; choosing c=N+1 destroys that conclusion. -/
theorem moving_parameter_diagonal (N : ℕ) :
    ((N : ℝ) + 1) / ((N : ℝ) + 1) = 1 := div_self (by positivity)

theorem first_square_outside_domain : ¬ (2 : ℕ) ≤ 1 := by decide

end
end GRWTSK.NumberTheory.Chebyshev.Checks.SelectedResidueLimitControls
```
