# Complete source: GRWTSK.Analysis.Inequalities.FiniteLogarithmicProfileBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d131550a02f087f68c11367d4bd54a17b586017b` · SHA-256 `b135eeb9fe60d47c8f22f0c6b00336e39896649962c86dc25bcc312b3e65d3e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Inequalities.LogarithmicProfileIntegralPrices
import GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileCutoff
import GRWTSK.Analysis.Integration.FiniteUnitSumVariation
import GRWTSK.Analysis.Integration.PositiveHalfLineCutoffBalance

/-!
# Complete finite logarithmic profile price

Every sample through the floor and its final unit interval
are retained. The full positive-half-line zero integral leaves the complete
lower correction. Genuine regularity, integrability, support and profile bounds
remain explicit. No native arithmetic cancellation or operator identification
is asserted by this generic analytic result.
-/

namespace GRWTSK.Analysis.Inequalities.FiniteLogarithmicProfileBounds

open MeasureTheory Set
open GRWTSK.Analysis.IntegralTransforms GRWTSK.Analysis.Integration

noncomputable section

/-- The full closed sample inventory has price eight B plus four D. -/
theorem finite_logarithmic_profile_price {F : ℝ → ℝ} {t U B D : ℝ}
    (regular : ContDiff ℝ 1 (fun x : ℝ ↦ Real.log x / Real.sqrt x * F (t + Real.log x)))
    (differentiable : Differentiable ℝ F) (price : ∀ u : ℝ, |F u| ≤ B)
    (derivativePrice : ∀ u : ℝ, |deriv F u| ≤ D)
    (admitted : IntegrableOn (fun x : ℝ ↦ Real.log x / Real.sqrt x * F (t + Real.log x))
      (Ioi 0))
    (fullZero : (∫ x in Ioi (0 : ℝ), Real.log x / Real.sqrt x * F (t + Real.log x)) = 0)
    (silent : ∀ u : ℝ, U < u → F u = 0) (hU : 0 ≤ U) (ht : 0 ≤ t) :
    |∑ i ∈ Finset.Icc 2 ⌊Real.exp U⌋₊, Real.log (i : ℝ) / Real.sqrt (i : ℝ) *
      F (t + Real.log (i : ℝ))| ≤ 8 * B + 4 * D := by
  let N : ℕ := ⌊Real.exp U⌋₊
  have lower : 1 ≤ N := (LogarithmicProfileCutoff.exponential_floor_bounds hU).1
  have orderedNat : 1 ≤ N + 1 := lower.trans (Nat.le_succ N)
  have ordered : (1 : ℝ) ≤ ((N + 1 : ℕ) : ℝ) := by exact_mod_cast orderedNat
  have tail : ∀ x : ℝ, ((N + 1 : ℕ) : ℝ) < x →
      Real.log x / Real.sqrt x * F (t + Real.log x) = 0 := by
    intro x hx
    apply LogarithmicProfileCutoff.logarithmic_profile_zero_above_floor silent ht
    simpa only [Nat.cast_add, Nat.cast_one] using hx.le
  have error : |(∑ i ∈ Finset.Ico 1 (N + 1), Real.log (i : ℝ) / Real.sqrt (i : ℝ) *
      F (t + Real.log (i : ℝ))) - (∫ x in (1 : ℝ)..((N + 1 : ℕ) : ℝ),
      Real.log x / Real.sqrt x * F (t + Real.log x))| ≤ 4 * B + 4 * D := by
    have fullError := FiniteUnitSumVariation.finite_unit_sum_error regular orderedNat
    have fullVariation := LogarithmicProfileIntegralPrices.logarithmic_profile_variation_price
      regular differentiable price derivativePrice ordered
    simp only [Nat.cast_one] at fullError
    exact fullError.trans fullVariation
  have samplePrice := PositiveHalfLineCutoffBalance.positive_halfline_sample_price
    admitted fullZero ordered tail error
  rw [LogarithmicProfileCutoff.full_logarithmic_integer_inventory F t N] at samplePrice
  have lowerPrice := LogarithmicProfileIntegralPrices.logarithmic_profile_lower_price
    admitted price
  exact (samplePrice.trans (add_le_add le_rfl lowerPrice)).trans_eq (by ring)

end

end GRWTSK.Analysis.Inequalities.FiniteLogarithmicProfileBounds
```
