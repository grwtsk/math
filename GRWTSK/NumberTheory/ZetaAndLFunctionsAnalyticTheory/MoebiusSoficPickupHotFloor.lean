/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSoficPickupStationarySign

/-!
# Uniform stationary cost at large positive heats

Every fixed lower cutoff below two is eventually exceeded by the actual
settled signed heat sum. A nonnegative cutoff yields an explicit floor for
the stationary cost, uniformly over weights between zero and one.
-/

set_option autoImplicit false
noncomputable section
open Filter Set
open scoped Topology

namespace GRWTSK.NumberTheory.Moebius.MoebiusSoficPickupHotFloor

open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open GaussianSignedResidualLaplace GaussianSignedResidualPoleSeries
  MoebiusSoficPickupHeatComparison MoebiusSoficPickupPoleCeiling
  MoebiusSoficPickupStationarySign

/-- A lower cutoff strictly below two holds eventually for the original signed sum. -/
theorem eventually_lt_heatedLimit_of_lt_two {b : ℝ} (hb : b < 2) :
    ∀ᶠ s in atTop, b < heatedLimit s := by
  have hq : 0 < Real.log 2 ^ 2 := pow_pos (Real.log_pos (by norm_num)) 2
  have hmul := (tendsto_const_mul_atBot_of_pos hq).2
    (tendsto_neg_atTop_atBot : Tendsto (fun s : ℝ => -s) atTop atBot)
  have hw : Tendsto (fun s : ℝ => Real.exp (-s * Real.log 2 ^ 2)) atTop (𝓝 0) := by
    convert Real.tendsto_exp_atBot.comp hmul using 1
    funext s
    simp only [Function.comp_apply, mul_comm]
  have hL : Tendsto heatedLimit atTop (𝓝 2) := by
    have hp := (tendsto_heatedLimit_sub_two_div_prime_two_weight.mul hw).add_const 2
    rw [mul_zero, zero_add] at hp
    refine hp.congr' (Eventually.of_forall fun s => ?_)
    rw [div_mul_cancel₀ _ (Real.exp_ne_zero _), sub_add_cancel]
  exact hL.eventually (eventually_gt_nhds hb)

/-- A common nonnegative lower cutoff for the settled heats yields an explicit
stationary floor for the weighted allowances. -/
theorem poleSeries_add_weighted_gap_add_floor_le_two_residual_allowances
    {s t A Aₛ Aₜ w b : ℝ} (hs : 0 < s) (ht : 0 < t) (hA : 0 ≤ A)
    (hb : 0 ≤ b) (hsL : b ≤ heatedLimit s) (htL : b ≤ heatedLimit t)
    {G : Set ℝ} {U : ℝ → ℝ} (hG : AffineFrequent G)
    (hmajorant : ∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy s T ≤ U T)
    (hbudget : ∀ ε : ℝ, 0 < ε →
      ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + ε) * T)
    (hw₀ : 0 ≤ w) (hw₁ : w ≤ 1) {l : Filter ℝ} [NeBot l] (hl : l ≤ atTop)
    (hₛ : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy s T / T ≤ Aₛ + ε)
    (hₜ : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy t T / T ≤ Aₜ + ε) :
    2 * (∑' ρ, positiveCriticalPoleSquare ρ) +
        w * (1 - w) * (heatedLimit s - heatedLimit t) ^ 2 +
        (b - (2 / riemannZeta (1 / 2 : ℂ)).re) ^ 2 ≤ w * Aₛ + (1 - w) * Aₜ := by
  have hz : riemannZeta (1 / 2 : ℂ) ≠ 0 := by
    intro h
    have hm := stationary_pickup_mean_neg
    rw [h, div_zero, Complex.zero_re] at hm
    exact (lt_irrefl _) hm
  have h := poleSeries_add_weighted_stationary_cost_le_two_residual_allowances
    hs ht hz hA hG hmajorant hbudget hw₀ hw₁ hl hₛ hₜ
  have hheat : b ≤ w * heatedLimit s + (1 - w) * heatedLimit t := by
    calc
      b = w * b + (1 - w) * b := by ring
      _ ≤ _ := add_le_add (mul_le_mul_of_nonneg_left hsL hw₀)
        (mul_le_mul_of_nonneg_left htL (sub_nonneg.mpr hw₁))
  have hfloor : (b - (2 / riemannZeta (1 / 2 : ℂ)).re) ^ 2 ≤
      ((2 / riemannZeta (1 / 2 : ℂ)).re -
        (w * heatedLimit s + (1 - w) * heatedLimit t)) ^ 2 := by
    let m := (2 / riemannZeta (1 / 2 : ℂ)).re
    let L := w * heatedLimit s + (1 - w) * heatedLimit t
    change (b - m) ^ 2 ≤ (m - L) ^ 2
    calc
      (b - m) ^ 2 ≤ (L - m) ^ 2 :=
        pow_le_pow_left₀ (sub_nonneg.mpr ((le_of_lt stationary_pickup_mean_neg).trans hb))
          (sub_le_sub_right hheat m) 2
      _ = (m - L) ^ 2 := by ring
  linarith

end GRWTSK.NumberTheory.Moebius.MoebiusSoficPickupHotFloor
