/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSoficPickupHeatComparison
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianSignedResidualLocalizedPairings
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

/-!
# The stationary source mean in the actual signed mask return

A genuine global linear residual envelope identifies the normalized first
moment of the original pickup. The exact signed return then has a specified
stationary correction with its original signs and mask weights.
-/

set_option autoImplicit false
noncomputable section
open Filter Set MeasureTheory
open scoped Topology

namespace GRWTSK.NumberTheory.Moebius.MoebiusSoficPickupStationaryMean

open GRWTSK.RiemannHypothesis.CCC
open GaussianSignedResidualLaplace GaussianSignedResidualLocalizedPairings
  GaussianSignedResidualPole MoebiusSoficPickupHeatComparison
  MoebiusSoficBlockObstruction MoebiusSoficIndependentThinning

private theorem tendsto_heated_mean {s : ℝ} (hs : 0 < s) :
    Tendsto (fun T : ℝ => (∫ u in (0 : ℝ)..T, heatedWave s u) / T)
      atTop (𝓝 (heatedLimit s)) := by
  let e (u : ℝ) := heatedWave s u - heatedLimit s
  let K := 2 * heatedAbsMass s
  have he : Continuous e := (heatedWave_continuous s).sub continuous_const
  have hdecay : IntegrableOn (fun u : ℝ => Real.exp (-(1 / 2 : ℝ) * u)) (Ioi 0) :=
    integrableOn_exp_mul_Ioi (by norm_num) 0
  have hint : IntegrableOn e (Ioi 0) := by
    apply (hdecay.const_mul K).mono' he.aestronglyMeasurable
    exact Eventually.of_forall fun u => by
      rw [Real.norm_eq_abs, show -(1 / 2 : ℝ) * u = -u / 2 by ring]
      exact heatedWave_sub_limit_abs_le hs u
  have h := (intervalIntegral_tendsto_integral_Ioi 0 hint tendsto_id).mul
    (tendsto_inv_atTop_zero : Tendsto (fun T : ℝ => T⁻¹) atTop (𝓝 0))
  rw [mul_zero] at h
  have hmean := h.add_const (heatedLimit s)
  rw [zero_add] at hmean
  refine hmean.congr' ?_
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with T hT
  change (∫ u in (0 : ℝ)..T, e u) * T⁻¹ + heatedLimit s =
    (∫ u in (0 : ℝ)..T, heatedWave s u) / T
  unfold e
  rw [intervalIntegral.integral_sub ((heatedWave_continuous s).intervalIntegrable 0 T)
    (continuous_const.intervalIntegrable 0 T), intervalIntegral.integral_const]
  simp only [sub_zero, smul_eq_mul]
  field_simp
  ring

/-- Under a genuine global linear residual envelope, the mean of the original
pickup is the real stationary coefficient before subtracting the heat. -/
theorem tendsto_pickupHorizonMean_at_stationary {s C : ℝ}
    (hs : 0 < s) (hζ : riemannZeta (1 / 2 : ℂ) ≠ 0) (hC : 0 ≤ C)
    (hE : ∀ T : ℝ, 0 ≤ T → residualEnergy s T ≤ C * T + C) :
    Tendsto pickupHorizonMean atTop (𝓝 ((2 / riemannZeta (1 / 2 : ℂ)).re)) := by
  have h := (tendsto_residual_mean_at_stationary hs hζ hC hE).add (tendsto_heated_mean hs)
  have hvalue : (stationaryCoefficient s).re + heatedLimit s =
      (2 / riemannZeta (1 / 2 : ℂ)).re := by
    simp [stationaryCoefficient, Complex.sub_re]
  rw [hvalue] at h
  refine h.congr' (Eventually.of_forall fun T => ?_)
  rw [← add_div, ← intervalIntegral.integral_add
    ((residualWave_continuous s).intervalIntegrable 0 T)
    ((heatedWave_continuous s).intervalIntegrable 0 T)]
  simp only [residualWave, sub_add_cancel, pickupHorizonMean]

/-- The exact original weighted mask and residual combination under the
same analytic envelope has the stationary source value substituted. -/
theorem tendsto_signed_mask_and_residual_at_stationary {s C : ℝ}
    (hs : 0 < s) (hζ : riemannZeta (1 / 2 : ℂ) ≠ 0) (hC : 0 ≤ C)
    (hE : ∀ T : ℝ, 0 ≤ T → residualEnergy s T ≤ C * T + C) :
    Tendsto (fun T : ℝ =>
      (weightedPickupDeviation T Finset.univ (heatMaskWeight s T) (heatMaskCoeff T) -
        pickupDiagonal T + residualEnergy s T) / T)
      atTop (𝓝 (settledHeatedPickup s + heatedLimit s ^ 2 -
        2 * heatedLimit s * (2 / riemannZeta (1 / 2 : ℂ)).re)) :=
  tendsto_normalized_heatMaskDeviation_add_residual_of_source_mean hs le_rfl
    (tendsto_pickupHorizonMean_at_stationary hs hζ hC hE)

end GRWTSK.NumberTheory.Moebius.MoebiusSoficPickupStationaryMean
