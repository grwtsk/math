/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianSignedResidualPoleSeries
import Mathlib.MeasureTheory.Integral.IntegralEqImproper

/-!
# Transfer of a linear residual supplier between fixed heat times

The change of the settled heated wave gives a constant shift in the genuine
signed residual. The remaining change is exponentially decaying. Under a
linear envelope at the starting heat time, its cross term with the full
residual is integrable on the positive ray. The stationary mean therefore
determines the change in the leading energy allowance.
-/

set_option autoImplicit false

noncomputable section

open Filter MeasureTheory Set
open scoped Topology

namespace GRWTSK.NumberTheory.Moebius.GaussianSignedResidualHeatCalibration

open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open GRWTSK.MeasureAndIntegration.LaplaceCumulativeSquareBound
open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualAffineEnvelope
open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualLaplace
open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualLocalizedPairings
open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualPole
open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualPoleSeries

/-- Under a global linear envelope at one positive heat time, the normalized
energy difference at a second positive heat time tends to the difference of
the two stationary squared coefficients. -/
theorem tendsto_residualEnergy_heat_difference {s t C : ℝ}
    (hs : 0 < s) (ht : 0 < t) (hζ : riemannZeta (1 / 2 : ℂ) ≠ 0) (hC : 0 ≤ C)
    (hE : ∀ T : ℝ, 0 ≤ T → residualEnergy s T ≤ C * T + C) :
    Tendsto (fun T : ℝ => (residualEnergy t T - residualEnergy s T) / T) atTop
      (𝓝 (‖stationaryCoefficient t‖ ^ 2 - ‖stationaryCoefficient s‖ ^ 2)) := by
  let d := heatedLimit s - heatedLimit t
  let e (u : ℝ) :=
    (heatedWave s u - heatedLimit s) - (heatedWave t u - heatedLimit t)
  let K := 2 * heatedAbsMass s + 2 * heatedAbsMass t
  let decay (u : ℝ) := Real.exp (-(1 / 2 : ℝ) * u)
  have hK : 0 ≤ K := by
    dsimp [K]
    linarith [heatedAbsMass_nonneg s, heatedAbsMass_nonneg t]
  have hdec (u : ℝ) : decay u = Real.exp (-u / 2) := by
    unfold decay
    congr 1
    ring
  have hpoint (u : ℝ) : |e u| ≤ K * decay u := by
    rw [hdec]
    calc
      |e u| ≤ |heatedWave s u - heatedLimit s| + |heatedWave t u - heatedLimit t| := by
        simpa only [Real.norm_eq_abs, e] using
          norm_sub_le (heatedWave s u - heatedLimit s) (heatedWave t u - heatedLimit t)
      _ ≤ 2 * heatedAbsMass s * Real.exp (-u / 2) +
          2 * heatedAbsMass t * Real.exp (-u / 2) :=
        add_le_add (heatedWave_sub_limit_abs_le hs u) (heatedWave_sub_limit_abs_le ht u)
      _ = _ := by unfold K; ring
  have he : Continuous e :=
    ((heatedWave_continuous s).sub continuous_const).sub
      ((heatedWave_continuous t).sub continuous_const)
  have hf := residualWave_continuous s
  have hdecInt : IntegrableOn decay (Ioi (0 : ℝ)) :=
    integrableOn_exp_mul_Ioi (a := -(1 / 2 : ℝ)) (by norm_num) 0
  have heInt : IntegrableOn e (Ioi (0 : ℝ)) := by
    apply (hdecInt.const_mul K).mono' he.aestronglyMeasurable
    exact Eventually.of_forall fun u => by rw [Real.norm_eq_abs]; exact hpoint u
  have heSqInt : IntegrableOn (fun u => e u ^ 2) (Ioi (0 : ℝ)) := by
    apply (hdecInt.const_mul (K ^ 2)).mono' (he.pow 2).aestronglyMeasurable
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
    change ‖e u ^ 2‖ ≤ K ^ 2 * decay u
    rw [Real.norm_of_nonneg (sq_nonneg _)]
    have hdu : decay u ≤ 1 := Real.exp_le_one_iff.mpr
      (mul_nonpos_of_nonpos_of_nonneg (by norm_num) (le_of_lt hu))
    have hb := pow_le_pow_left₀ (abs_nonneg _) (hpoint u) 2
    rw [sq_abs, mul_pow] at hb
    exact hb.trans (mul_le_mul_of_nonneg_left
      (by rw [pow_two]; exact mul_le_of_le_one_right (Real.exp_pos _).le hdu)
      (sq_nonneg _))
  have hfSqInt : IntegrableOn (fun u => decay u * residualWave s u ^ 2) (Ioi (0 : ℝ)) :=
    weightedSquare_integrable (p := 1) hf (by norm_num : (0 : ℝ) < 1 / 2)
      (by simpa only [pow_one, cumulativeSquare, residualEnergy] using hE)
  have hcross : IntegrableOn (fun u => residualWave s u * e u) (Ioi (0 : ℝ)) := by
    apply ((hdecInt.add hfSqInt).const_mul K).mono' (hf.mul he).aestronglyMeasurable
    refine Eventually.of_forall fun u => ?_
    change ‖residualWave s u * e u‖ ≤
      K * (decay u + decay u * residualWave s u ^ 2)
    have habs : |residualWave s u| ≤ 1 + residualWave s u ^ 2 := by
      nlinarith [sq_nonneg (|residualWave s u| - 1), sq_abs (residualWave s u)]
    rw [Real.norm_eq_abs, abs_mul]
    calc
      _ ≤ |residualWave s u| * (K * decay u) :=
        mul_le_mul_of_nonneg_left (hpoint u) (abs_nonneg _)
      _ = K * decay u * |residualWave s u| := by ring
      _ ≤ K * decay u * (1 + residualWave s u ^ 2) :=
        mul_le_mul_of_nonneg_left habs (mul_nonneg hK (Real.exp_pos _).le)
      _ = _ := by ring
  let error (u : ℝ) := 2 * (residualWave s u * e u) + (2 * d) * e u + e u ^ 2
  have herrInt : IntegrableOn error (Ioi (0 : ℝ)) :=
    ((hcross.const_mul 2).add (heInt.const_mul (2 * d))).add heSqInt
  have herr : Continuous error :=
    ((continuous_const.mul (hf.mul he)).add (continuous_const.mul he)).add (he.pow 2)
  have heq (u : ℝ) : residualWave t u = residualWave s u + d + e u := by
    unfold residualWave d e
    ring
  have hEnergy (T : ℝ) :
      residualEnergy t T - residualEnergy s T =
        2 * d * (∫ u in (0 : ℝ)..T, residualWave s u) + d ^ 2 * T +
          ∫ u in (0 : ℝ)..T, error u := by
    have hpointEq : (fun u => residualWave t u ^ 2 - residualWave s u ^ 2) =
        fun u => (2 * d * residualWave s u + d ^ 2) + error u := by
      funext u
      rw [heq u]
      unfold error
      ring
    have hl : Continuous (fun u => 2 * d * residualWave s u) := continuous_const.mul hf
    have hd : Continuous (fun _ : ℝ => d ^ 2) := continuous_const
    have htInt : IntervalIntegrable (fun u => residualWave t u ^ 2) volume 0 T :=
      ((residualWave_continuous t).pow 2).intervalIntegrable 0 T
    have hsInt : IntervalIntegrable (fun u => residualWave s u ^ 2) volume 0 T :=
      (hf.pow 2).intervalIntegrable 0 T
    have hlInt : IntervalIntegrable (fun u => 2 * d * residualWave s u) volume 0 T :=
      hl.intervalIntegrable 0 T
    have hdInt : IntervalIntegrable (fun _ : ℝ => d ^ 2) volume 0 T :=
      hd.intervalIntegrable 0 T
    have hsumInt : IntervalIntegrable (fun u => 2 * d * residualWave s u + d ^ 2)
        volume 0 T :=
      (hl.add hd).intervalIntegrable 0 T
    rw [residualEnergy, residualEnergy, ← intervalIntegral.integral_sub htInt hsInt, hpointEq,
      intervalIntegral.integral_add hsumInt (herr.intervalIntegrable 0 T),
      intervalIntegral.integral_add hlInt hdInt,
      intervalIntegral.integral_const_mul, intervalIntegral.integral_const, sub_zero, smul_eq_mul]
    ring
  have hb : stationaryCoefficient t = stationaryCoefficient s + (d : ℂ) := by
    unfold stationaryCoefficient d
    rw [Complex.ofReal_sub]
    ring
  have hdiff : 2 * d * (stationaryCoefficient s).re + d ^ 2 =
      ‖stationaryCoefficient t‖ ^ 2 - ‖stationaryCoefficient s‖ ^ 2 := by
    simp only [hb, Complex.sq_norm, Complex.normSq_apply, Complex.add_re, Complex.add_im,
      Complex.ofReal_re, Complex.ofReal_im, add_zero]
    ring
  have hm := (tendsto_residual_mean_at_stationary hs hζ hC hE).const_mul (2 * d)
  have htail := (intervalIntegral_tendsto_integral_Ioi 0 herrInt tendsto_id).mul
    (tendsto_inv_atTop_zero : Tendsto (fun T : ℝ => T⁻¹) atTop (𝓝 0))
  have hlim := (hm.add_const (d ^ 2)).add htail
  rw [mul_zero, add_zero, hdiff] at hlim
  refine hlim.congr' ?_
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with T hT
  change 2 * d * ((∫ u in (0 : ℝ)..T, residualWave s u) / T) + d ^ 2 +
      (∫ u in (0 : ℝ)..T, error u) * T⁻¹ = (residualEnergy t T - residualEnergy s T) / T
  rw [hEnergy]
  field_simp

/-- A genuine linear supplier at one fixed positive heat time gives an
eventual upper bound on the same affine-frequent set at a second positive
heat time. The leading allowance shifts by exactly the stationary cost
difference. -/
theorem linear_supplier_transfers_between_positive_heats {s t A : ℝ}
    (hs : 0 < s) (ht : 0 < t) (hζ : riemannZeta (1 / 2 : ℂ) ≠ 0) (hA : 0 ≤ A)
    {G : Set ℝ} {U : ℝ → ℝ} (hG : AffineFrequent G)
    (hmajorant : ∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy s T ≤ U T)
    (hbudget : ∀ ε : ℝ, 0 < ε →
      ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + ε) * T) :
    let B := A + (‖stationaryCoefficient t‖ ^ 2 - ‖stationaryCoefficient s‖ ^ 2)
    0 ≤ B ∧ ∀ ε : ℝ, 0 < ε →
      ∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy t T ≤ (B + ε) * T := by
  have hbudget₁ : ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + 1) * T ^ (1 : ℕ) + 0 := by
    simpa only [pow_one, add_zero] using hbudget 1 one_pos
  obtain ⟨C, hC, hE⟩ := global_residualEnergy_poly_of_affine_envelope hG
    (add_nonneg hA zero_le_one) (le_refl (0 : ℝ)) hmajorant hbudget₁
  have hlimit := tendsto_residualEnergy_heat_difference hs ht hζ hC
    (by simpa only [pow_one] using hE)
  have hSeries : 2 * (∑' ρ, positiveCriticalPoleSquare ρ) + ‖stationaryCoefficient s‖ ^ 2 ≤ A :=
    (linear_supplier_poleSeries_bound hs hζ hA hG hmajorant hbudget).2.2.2
  have hMass : 0 ≤ ∑' ρ, positiveCriticalPoleSquare ρ := tsum_nonneg fun _ => sq_nonneg _
  constructor
  · linarith [sq_nonneg ‖stationaryCoefficient t‖]
  · intro ε hε
    have hshift := (hlimit.eventually_lt_const (lt_add_of_pos_right _ (half_pos hε))).filter_mono
      (inf_le_left : atTop ⊓ 𝓟 G ≤ atTop)
    filter_upwards [hmajorant, hbudget (ε / 2) (half_pos hε), hshift,
      (eventually_gt_atTop (0 : ℝ)).filter_mono
        (inf_le_left : atTop ⊓ 𝓟 G ≤ atTop)] with T hU hbound hdiff hT
    have hcal := (div_lt_iff₀ hT).1 hdiff
    calc
      residualEnergy t T = residualEnergy s T + (residualEnergy t T - residualEnergy s T) := by ring
      _ ≤ (A + ε / 2) * T +
          (‖stationaryCoefficient t‖ ^ 2 - ‖stationaryCoefficient s‖ ^ 2 + ε / 2) * T :=
        add_le_add (hU.trans hbound) hcal.le
      _ = _ := by ring

end GRWTSK.NumberTheory.Moebius.GaussianSignedResidualHeatCalibration
