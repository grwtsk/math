/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSoficPickupStationarySign

/-!
# Rate of approach of the two-heat allowance floor

The stationary and heat-gap costs together are the weighted sum of the two
stationary squares. Their deficit from the limiting cost has an exact
first correction at the original prime-two Gaussian weight.
-/

set_option autoImplicit false
noncomputable section
open Filter
open scoped Topology

namespace GRWTSK.NumberTheory.Moebius.MoebiusSoficPickupStationaryRate

open GaussianSignedResidualLaplace MoebiusSoficPickupHeatComparison

local notation "stationaryMean" => Complex.re (2 / riemannZeta (1 / 2 : ℂ))

/-- Exact rate for the heat-dependent part of the signed two-heat pole floor.
For weights in the unit interval its coefficient is strictly positive by
the stationary sign theorem. The identity and limit hold for every real weight. -/
theorem tendsto_weighted_stationary_cost_deficit_div_prime_two_weight (d w : ℝ) :
    Tendsto (fun s : ℝ =>
      ((2 - stationaryMean) ^ 2 -
        (w * (1 - w) * (heatedLimit s - heatedLimit (s + d)) ^ 2 +
          (stationaryMean - (w * heatedLimit s + (1 - w) * heatedLimit (s + d))) ^ 2)) /
        Real.exp (-s * Real.log 2 ^ 2)) atTop
      (𝓝 ((2 * (Real.sqrt 2)⁻¹) * (4 - 2 * stationaryMean) *
        (w + (1 - w) * Real.exp (-d * Real.log 2 ^ 2)))) := by
  let q := Real.log 2 ^ 2
  let c := 2 * (Real.sqrt 2)⁻¹
  let a := Real.exp (-d * q)
  let f (s : ℝ) := (heatedLimit s - 2) / Real.exp (-s * q)
  have hf : Tendsto f atTop (𝓝 (-c)) := tendsto_heatedLimit_sub_two_div_prime_two_weight
  have hq : 0 < q := pow_pos (Real.log_pos (by norm_num)) 2
  have hmul := (tendsto_const_mul_atBot_of_pos hq).2
    (tendsto_neg_atTop_atBot : Tendsto (fun s : ℝ => -s) atTop atBot)
  have hw : Tendsto (fun s : ℝ => Real.exp (-s * q)) atTop (𝓝 0) := by
    convert Real.tendsto_exp_atBot.comp hmul using 1
    funext s
    simp only [Function.comp_apply, mul_comm]
  have hL : Tendsto heatedLimit atTop (𝓝 2) := by
    have h := (hf.mul hw).add_const 2
    rw [mul_zero, zero_add] at h
    refine h.congr' (Eventually.of_forall fun s => ?_)
    change (heatedLimit s - 2) / Real.exp (-s * q) * Real.exp (-s * q) + 2 = heatedLimit s
    rw [div_mul_cancel₀ _ (Real.exp_ne_zero _), sub_add_cancel]
  have hshift : Tendsto (fun s : ℝ => s + d) atTop atTop :=
    tendsto_atTop_atTop.mpr fun b => ⟨b - d, fun s hs => by linarith⟩
  let g (s : ℝ) := -f s * (heatedLimit s + 2 - 2 * stationaryMean)
  have hg : Tendsto g atTop (𝓝 (c * (4 - 2 * stationaryMean))) := by
    have h := hf.neg.mul ((hL.add_const 2).sub_const (2 * stationaryMean))
    rw [neg_neg] at h
    convert h using 1
    norm_num
  have h := (hg.const_mul w).add ((hg.comp hshift).const_mul ((1 - w) * a))
  rw [show w * (c * (4 - 2 * stationaryMean)) +
      (1 - w) * a * (c * (4 - 2 * stationaryMean)) =
        c * (4 - 2 * stationaryMean) * (w + (1 - w) * a) by ring] at h
  refine h.congr' (Eventually.of_forall fun s => ?_)
  change w * g s + (1 - w) * a * g (s + d) = _
  have ha : Real.exp (-(s + d) * q) = Real.exp (-s * q) * a := by
    unfold a
    rw [← Real.exp_add]
    congr 1
    ring
  change _ = _ / Real.exp (-s * q)
  unfold g f
  rw [ha]
  have ha₀ : a ≠ 0 := Real.exp_ne_zero _
  have hs₀ : Real.exp (-s * q) ≠ 0 := Real.exp_ne_zero _
  field_simp
  ring

end GRWTSK.NumberTheory.Moebius.MoebiusSoficPickupStationaryRate
