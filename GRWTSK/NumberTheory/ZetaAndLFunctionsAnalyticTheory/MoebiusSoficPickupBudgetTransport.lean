/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSoficPickupStationarySign

/-! Exact transport of a residual allowance across fixed positive heats. -/

set_option autoImplicit false
noncomputable section
open Filter Set MeasureTheory
open scoped Topology

namespace GRWTSK.NumberTheory.Moebius.MoebiusSoficPickupBudgetTransport

open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open GaussianSignedResidualLaplace GaussianSignedResidualAffineEnvelope MoebiusSoficPickupHeatComparison
  MoebiusSoficPickupStationaryMean MoebiusSoficPickupStationarySign
  MoebiusSoficBlockObstruction

local notation "stationaryMean" => Complex.re (2 / riemannZeta (1 / 2 : ℂ))

/-- The set of budgets with every positive slack translates exactly by
the difference of the two stationary squares on the same horizon filter. -/
theorem residual_allowance_iff_stationary_adjusted_heat
    {s t A B : ℝ} (hs : 0 < s) (ht : 0 < t) (hA : 0 ≤ A)
    {G : Set ℝ} {U : ℝ → ℝ} (hG : AffineFrequent G)
    (hmajorant : ∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy s T ≤ U T)
    (hbudget : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + ε) * T)
    {l : Filter ℝ} (hl : l ≤ atTop) :
    (∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy s T / T ≤ B + ε) ↔
    (∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy t T / T ≤
      B + ((stationaryMean - heatedLimit t) ^ 2 -
        (stationaryMean - heatedLimit s) ^ 2) + ε) := by
  have hz : riemannZeta (1 / 2 : ℂ) ≠ 0 := by
    intro h
    have hm := stationary_pickup_mean_neg
    rw [h, div_zero, Complex.zero_re] at hm
    exact (lt_irrefl _) hm
  have hbudget₁ : ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + 1) * T ^ (1 : ℕ) + 0 := by
    simpa only [pow_one, add_zero] using hbudget 1 one_pos
  obtain ⟨C, hC, hE⟩ := global_residualEnergy_poly_of_affine_envelope hG
    (add_nonneg hA zero_le_one) (le_refl (0 : ℝ)) hmajorant hbudget₁
  have hm := tendsto_pickupHorizonMean_at_stationary hs hz hC
    (by simpa only [pow_one] using hE)
  let D := (stationaryMean - heatedLimit t) ^ 2 - (stationaryMean - heatedLimit s) ^ 2
  have hdrift : Tendsto (fun T : ℝ => residualEnergy t T / T - residualEnergy s T / T)
      l (𝓝 D) := by
    have h := (tendsto_residualEnergy_heat_difference_with_mean_correction hs ht).sub
      (hm.const_mul (2 * (heatedLimit t - heatedLimit s)))
    rw [show heatedLimit t ^ 2 - heatedLimit s ^ 2 -
      2 * (heatedLimit t - heatedLimit s) * stationaryMean = D by dsimp only [D]; ring] at h
    refine (h.mono_left hl).congr' (Eventually.of_forall fun T => ?_)
    simp only [pickupHorizonMean, add_div, sub_div, mul_div_assoc, add_sub_cancel_right]
  change _ ↔ ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy t T / T ≤ B + D + ε
  constructor
  · intro h ε hε
    have hd := (tendsto_order.mp hdrift).2 (D + ε / 2) (by linarith)
    filter_upwards [h (ε / 2) (by positivity), hd] with T hT hDT
    linarith
  · intro h ε hε
    have hd := (tendsto_order.mp hdrift).1 (D - ε / 2) (by linarith)
    filter_upwards [h (ε / 2) (by positivity), hd] with T hT hDT
    linarith

end GRWTSK.NumberTheory.Moebius.MoebiusSoficPickupBudgetTransport
