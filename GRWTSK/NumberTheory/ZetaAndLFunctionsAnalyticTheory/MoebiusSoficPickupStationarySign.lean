/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSoficPickupPoleCeiling
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CriticalStripRealAxisMellin

/-!
# Strict weighted pole cost at nonnegative settled heats

The original stationary mean is negative by the sourced Mellin sign of zeta.
For nonnegative settled heats, the stationary displacement in the
weighted allowance is therefore strictly positive.
-/

set_option autoImplicit false
noncomputable section
open Filter Set
open scoped Topology

namespace GRWTSK.NumberTheory.Moebius.MoebiusSoficPickupStationarySign

open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open GaussianSignedResidualLaplace GaussianSignedResidualPoleSeries
  MoebiusSoficPickupPoleCeiling

private theorem zeta_half_re_neg : (riemannZeta (1 / 2 : ℂ)).re < 0 := by
  simpa using (GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.riemannZeta_re_neg_on_real_critical_interval (s := 1 / 2) (by norm_num) (by norm_num))

private theorem zeta_half_ne_zero : riemannZeta (1 / 2 : ℂ) ≠ 0 := by
  intro h
  have hre := congrArg Complex.re h
  simp only [Complex.zero_re] at hre
  exact (ne_of_lt zeta_half_re_neg) hre

/-- The forced stationary mean of the original source is strictly negative. -/
theorem stationary_pickup_mean_neg : (2 / riemannZeta (1 / 2 : ℂ)).re < 0 := by
  rw [Complex.div_re, show (2 : ℂ).re = 2 by norm_num, show (2 : ℂ).im = 0 by norm_num,
    zero_mul, zero_div, add_zero]
  exact div_neg_of_neg_of_pos (mul_neg_of_pos_of_neg (by norm_num : (0 : ℝ) < 2) zeta_half_re_neg)
    (Complex.normSq_pos.mpr zeta_half_ne_zero)

/-- The weighted allowance must strictly exceed the pole and heat-gap cost
when both settled heat values are nonnegative. -/
theorem poleSeries_add_weighted_gap_lt_of_nonnegative_settled_heats
    {s t A Aₛ Aₜ w : ℝ} (hs : 0 < s) (ht : 0 < t) (hA : 0 ≤ A)
    (hsL : 0 ≤ heatedLimit s) (htL : 0 ≤ heatedLimit t)
    {G : Set ℝ} {U : ℝ → ℝ} (hG : AffineFrequent G)
    (hmajorant : ∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy s T ≤ U T)
    (hbudget : ∀ ε : ℝ, 0 < ε →
      ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + ε) * T)
    (hw₀ : 0 ≤ w) (hw₁ : w ≤ 1) {l : Filter ℝ} [NeBot l] (hl : l ≤ atTop)
    (hₛ : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy s T / T ≤ Aₛ + ε)
    (hₜ : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy t T / T ≤ Aₜ + ε) :
    2 * (∑' ρ, positiveCriticalPoleSquare ρ) +
        w * (1 - w) * (heatedLimit s - heatedLimit t) ^ 2 < w * Aₛ + (1 - w) * Aₜ := by
  have h := poleSeries_add_weighted_stationary_cost_le_two_residual_allowances
    hs ht zeta_half_ne_zero hA hG hmajorant hbudget hw₀ hw₁ hl hₛ hₜ
  have hheat : 0 ≤ w * heatedLimit s + (1 - w) * heatedLimit t :=
    add_nonneg (mul_nonneg hw₀ hsL) (mul_nonneg (sub_nonneg.mpr hw₁) htL)
  have hneg : (2 / riemannZeta (1 / 2 : ℂ)).re -
      (w * heatedLimit s + (1 - w) * heatedLimit t) < 0 := by
    linarith [stationary_pickup_mean_neg]
  linarith [sq_pos_of_neg hneg]

end GRWTSK.NumberTheory.Moebius.MoebiusSoficPickupStationarySign
