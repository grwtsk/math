/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileDerivative
import GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileWeights
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.Tactic

/-!
# Complete integral prices for logarithmic profiles

The upper variation price retains both derivative contributions, and the lower
correction retains the whole interval (0,1). These are analytic prices; no finite
kernel identification or native arithmetic cancellation is asserted.
-/

namespace GRWTSK.Analysis.Inequalities.LogarithmicProfileIntegralPrices

open MeasureTheory Set Filter
open GRWTSK.Analysis.IntegralTransforms

noncomputable section

/-- The full positive-tail derivative weight is integrable, with both contributions. -/
theorem upper_variation_weight_integral (B D : ℝ) :
    IntegrableOn (fun x : ℝ ↦ (1 + Real.log x / 2) * B / (x * Real.sqrt x) +
      Real.log x * D / (x * Real.sqrt x)) (Ioi 1) ∧
    (∫ x in Ioi (1 : ℝ), (1 + Real.log x / 2) * B / (x * Real.sqrt x) +
      Real.log x * D / (x * Real.sqrt x)) = 4 * B + 4 * D := by
  obtain ⟨reciprocalL1, reciprocalValue⟩ := LogarithmicProfileWeights.reciprocal_sqrt_upper_weight
  obtain ⟨logarithmicL1, logarithmicValue⟩ :=
    LogarithmicProfileWeights.logarithmic_sqrt_upper_weight
  have split : (fun x : ℝ ↦ (1 + Real.log x / 2) * B / (x * Real.sqrt x) +
      Real.log x * D / (x * Real.sqrt x)) =
      fun x : ℝ ↦ B * (1 / (x * Real.sqrt x)) +
        (B / 2 + D) * (Real.log x / (x * Real.sqrt x)) := by
    funext x
    simp only [div_eq_mul_inv]
    ring
  rw [split]
  refine ⟨(reciprocalL1.const_mul B).add (logarithmicL1.const_mul (B / 2 + D)), ?_⟩
  rw [integral_add (reciprocalL1.const_mul B) (logarithmicL1.const_mul (B / 2 + D)),
    integral_const_mul, integral_const_mul, reciprocalValue, logarithmicValue]
  ring

/-- Every full upper finite interval has the complete derivative variation price. -/
theorem logarithmic_profile_variation_price {F : ℝ → ℝ} {t B D R : ℝ}
    (regular : ContDiff ℝ 1 (fun x : ℝ ↦ Real.log x / Real.sqrt x * F (t + Real.log x)))
    (differentiable : Differentiable ℝ F) (price : ∀ u : ℝ, |F u| ≤ B)
    (derivativePrice : ∀ u : ℝ, |deriv F u| ≤ D) (ordered : 1 ≤ R) :
    (∫ x in (1 : ℝ)..R,
      |deriv (fun y : ℝ ↦ Real.log y / Real.sqrt y * F (t + Real.log y)) x|) ≤
      4 * B + 4 * D := by
  let g : ℝ → ℝ := fun x ↦ (1 + Real.log x / 2) * B / (x * Real.sqrt x) +
    Real.log x * D / (x * Real.sqrt x)
  obtain ⟨weightL1, weightValue⟩ := upper_variation_weight_integral B D
  have Bnonneg : 0 ≤ B := (abs_nonneg (F 0)).trans (price 0)
  have Dnonneg : 0 ≤ D := (abs_nonneg (deriv F 0)).trans (derivativePrice 0)
  have variationL1 := regular.continuous_deriv_one.abs.intervalIntegrable
    (μ := volume) (1 : ℝ) R
  have variationOn := (intervalIntegrable_iff_integrableOn_Ioc_of_le ordered).mp variationL1
  have comparison := setIntegral_mono_on variationOn (weightL1.mono_set Ioc_subset_Ioi_self)
    measurableSet_Ioc (fun x hx ↦
      LogarithmicProfileDerivative.logarithmic_profile_derivative_abs_le hx.1.le
        ((differentiable (t + Real.log x)).hasDerivAt)
        (price (t + Real.log x)) (derivativePrice (t + Real.log x)))
  have weightNonneg : 0 ≤ᵐ[volume.restrict (Ioi (1 : ℝ))] g := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
    have logNonneg : 0 ≤ Real.log x := Real.log_nonneg hx.le
    have positive : 0 < x := zero_lt_one.trans hx
    dsimp [g]
    positivity
  rw [intervalIntegral.integral_of_le ordered]
  exact comparison.trans ((setIntegral_mono_set weightL1 weightNonneg
    (Eventually.of_forall (fun _ hx ↦ hx.1))).trans_eq weightValue)

/-- The entire lower logarithmic correction has price four times the profile bound. -/
theorem logarithmic_profile_lower_price {F : ℝ → ℝ} {t B : ℝ}
    (admitted : IntegrableOn (fun x : ℝ ↦ Real.log x / Real.sqrt x * F (t + Real.log x))
      (Ioi 0)) (price : ∀ u : ℝ, |F u| ≤ B) :
    |∫ x in (0 : ℝ)..1, Real.log x / Real.sqrt x * F (t + Real.log x)| ≤ 4 * B := by
  obtain ⟨weightL1, weightValue⟩ := LogarithmicProfileWeights.logarithmic_sqrt_lower_weight
  have admittedLower := admitted.mono_set
    (show Ioo (0 : ℝ) 1 ⊆ Ioi 0 from fun _ hx ↦ hx.1)
  have weightedL1 := weightL1.const_mul B
  have pointwise : ∀ x ∈ Ioo (0 : ℝ) 1,
      |Real.log x / Real.sqrt x * F (t + Real.log x)| ≤
        B * ((-Real.log x) / Real.sqrt x) := by
    intro x hx
    have logNonpos := Real.log_nonpos hx.1.le hx.2.le
    have weightNonneg : 0 ≤ (-Real.log x) / Real.sqrt x :=
      div_nonneg (neg_nonneg.mpr logNonpos) (Real.sqrt_nonneg x)
    rw [abs_mul, abs_div, abs_of_nonpos logNonpos, abs_of_pos (Real.sqrt_pos.mpr hx.1)]
    exact (mul_le_mul_of_nonneg_left (price (t + Real.log x)) weightNonneg).trans_eq
      (mul_comm _ _)
  rw [intervalIntegral.integral_of_le (by norm_num : (0 : ℝ) ≤ 1),
    integral_Ioc_eq_integral_Ioo]
  calc
    _ ≤ ∫ x in Ioo (0 : ℝ) 1, |Real.log x / Real.sqrt x * F (t + Real.log x)| :=
      abs_integral_le_integral_abs
    _ ≤ ∫ x in Ioo (0 : ℝ) 1, B * ((-Real.log x) / Real.sqrt x) :=
      setIntegral_mono_on admittedLower.abs weightedL1 measurableSet_Ioo pointwise
    _ = 4 * B := by rw [integral_const_mul, weightValue]; ring

end

end GRWTSK.Analysis.Inequalities.LogarithmicProfileIntegralPrices
