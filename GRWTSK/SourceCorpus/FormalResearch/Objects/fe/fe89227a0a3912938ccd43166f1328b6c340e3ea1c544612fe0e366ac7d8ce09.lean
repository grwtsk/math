import SourceActualEulerLogarithmicPrimitive
import ActualComplexCorrelationAsymptotic

/-!
Finite FTC retains the actual Mellin slope before absolute values. The true
fixed real transform and the small prescribed endpoint force an unbounded
derivative-variation allowance, without signing its potential product.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualEulerDerivativeVariation
open MeasureTheory Set Complex Filter Topology
open SourceActualEulerLogarithmicPrimitive ActualComplexCorrelationAsymptotic
open ActualComplexCorrelationSquare SourceActualPrimeBumpDictionary
open SourceActualInitialPrimeContour SourceActualBumpMellinLineBudget
open SourceActualBumpMovingHeight SourceBumpLaplace SourcePairing

private theorem slope_continuous (A : ℝ) : Continuous (actualEulerMellinSlope A) := by
  have hb : Continuous bumpLaplace := by
    have hf : bumpLaplaceMoment 0 = bumpLaplace := funext bump_laplace_moment_zero
    simpa only [hf] using bump_laplace_moment_continuous 0
  have hm := bump_laplace_moment_continuous 1
  unfold actualEulerMellinSlope
  fun_prop

/-- The actual slope norm is genuinely integrable on every finite real interval. -/
theorem actualEulerMellinSlope_norm_intervalIntegrable (A c a b : ℝ) :
    IntervalIntegrable (fun t : ℝ =>
      ‖actualEulerMellinSlope A ((c : ℂ) + (t : ℂ) * I)‖) volume a b := by
  have hs := slope_continuous A
  exact (by fun_prop : Continuous _).intervalIntegrable _ _

/-- Finite FTC pays the real lower transform and the complete true upper endpoint. -/
theorem actualEulerMellinSlope_variation_lower (A c T : ℝ)
    (hA : 1 ≤ A) (hT : 0 ≤ T) :
    ‖actualInitialPrimeMellin A (c : ℂ)‖ -
      ‖actualInitialPrimeMellin A ((c : ℂ) + (T : ℂ) * I)‖ ≤
        ∫ t in 0..T, ‖actualEulerMellinSlope A ((c : ℂ) + (t : ℂ) * I)‖ := by
  let s : ℝ → ℂ := fun t => (c : ℂ) + (t : ℂ) * I
  have hs (t : ℝ) : HasDerivAt s I t := by
    simpa [s] using ((hasDerivAt_id t).ofReal_comp.mul_const I).const_add (c : ℂ)
  have hh (t : ℝ) : HasDerivAt (fun t => actualInitialPrimeMellin A (s t))
      (I * actualEulerMellinSlope A (s t)) t := by
    convert! (actualEulerMellin_hasDerivAt A hA (s t)).comp t (hs t) using 1
    exact mul_comm _ _
  have hi : (∫ t in 0..T, I * actualEulerMellinSlope A (s t)) =
      actualInitialPrimeMellin A (s T) - actualInitialPrimeMellin A (s 0) := by
    exact intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hh t)
      ((by have h := slope_continuous A; fun_prop : Continuous
        (fun t => I * actualEulerMellinSlope A (s t))).intervalIntegrable _ _)
  have hn := intervalIntegral.norm_integral_le_integral_norm
    (f := fun t => I * actualEulerMellinSlope A (s t)) hT
  rw [hi] at hn
  simp only [norm_mul, norm_I, one_mul] at hn
  have hd := norm_sub_norm_le (actualInitialPrimeMellin A (s 0))
    (actualInitialPrimeMellin A (s T))
  rw [norm_sub_rev] at hd
  simpa only [s, Complex.ofReal_zero, zero_mul, add_zero] using hd.trans hn

private theorem real_mellin_norm_eventually_lower :
    ∀ᶠ A : ℝ in atTop, 41472 * Real.exp (2 * A) / A ^ 9 ≤
      ‖actualInitialPrimeMellin A (3 / 2)‖ := by
  have ht := (actualBilateralCorrelationTransform_normalized_tendsto
    (z := 1) (by norm_num)).norm
  have ht' : Tendsto (fun A : ℝ => A ^ 9 * sourceNormalization A * Real.exp (-2 * A) *
      ‖actualInitialPrimeMellin A (3 / 2)‖) atTop (𝓝 (82944 : ℝ)) := by
    norm_num at ht
    apply ht.congr'
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    have he : actualBilateralCorrelationTransform A 1 =
        actualInitialPrimeMellin A (3 / 2) := by
      rw [actualInitialPrimeMellin_eq_bumpMellinWeight hA]
      simpa only [show (3 / 2 : ℂ) - 1 / 2 = 1 by norm_num] using
        SourceActualBumpTransform.actualBilateralCorrelationTransform_eq_bump hA (3 / 2)
    have hs : actualCorrelationAsymptoticScale A 1 =
        ((A ^ 9 * sourceNormalization A * Real.exp (-2 * A) : ℝ) : ℂ) := by
      unfold actualCorrelationAsymptoticScale
      rw [show -2 * (1 : ℂ) * (A : ℂ) = ((-2 * A : ℝ) : ℂ) by push_cast; ring]
      rw [← Complex.ofReal_exp, ← Complex.ofReal_mul]
    simp only [Function.comp_apply]
    rw [he, hs, norm_mul, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg (by have := source_normalization_pos A hA; positivity)]
  have hz := actualSourceNormalization_tendsto.eventually (gt_mem_nhds (by norm_num :
    ((65536 / 109395 : ℝ) / 16) < 1))
  have hm := ht'.eventually (lt_mem_nhds (by norm_num : (41472 : ℝ) < 82944))
  filter_upwards [eventually_ge_atTop (1 : ℝ), hz, hm] with A hA hZ hM
  have hp : 0 < A := by linarith
  have hcomp := mul_le_mul_of_nonneg_right hZ.le
    (show 0 ≤ A ^ 9 * Real.exp (-2 * A) * ‖actualInitialPrimeMellin A (3 / 2)‖
      by positivity)
  have hM' : 41472 ≤ A ^ 9 * Real.exp (-2 * A) *
      ‖actualInitialPrimeMellin A (3 / 2)‖ := by nlinarith
  have he : Real.exp (-2 * A) * Real.exp (2 * A) = 1 := by
    rw [← Real.exp_add]
    ring_nf
    simp
  apply (div_le_iff₀ (show 0 < A ^ 9 by positivity)).2
  have hh := mul_le_mul_of_nonneg_left hM' (Real.exp_pos (2 * A)).le
  have hc : Real.exp (2 * A) *
      (A ^ 9 * Real.exp (-2 * A) * ‖actualInitialPrimeMellin A (3 / 2)‖) =
      ‖actualInitialPrimeMellin A (3 / 2)‖ * A ^ 9 := by
    calc
      _ = ‖actualInitialPrimeMellin A (3 / 2)‖ * A ^ 9 *
        (Real.exp (-2 * A) * Real.exp (2 * A)) := by ring
      _ = _ := by rw [he]; ring
  rw [hc] at hh
  simpa only [mul_comm] using hh

private def endpointConstant (c : ℝ) : ℝ :=
  (204288 : ℝ) ^ 2 / (4096 / 109395) * (1 + c ^ 2) * (1 + (c - 1) ^ 2)

private theorem mellin_endpoint_norm_le (A c : ℝ) (hA : 1 ≤ A) (hc : 1 < c) :
    ‖actualInitialPrimeMellin A ((c : ℂ) + (actualBumpMovingHeight A c : ℂ) * I)‖ ≤
      endpointConstant c * Real.exp (-((2 * c - 1) * A / 5)) / A ^ 9 := by
  have hz := actualBumpNormalization_lower A hA
  have hb := bumpMellinWeight_on_line_norm_le A c (actualBumpMovingHeight A c) hA hc
    (actualBumpMovingHeight_ge_one A c hA hc)
  rw [← actualInitialPrimeMellin_eq_bumpMellinWeight hA] at hb
  have hz0 : 0 < sourceNormalization A := source_normalization_pos A hA
  have hex : Real.exp ((2 * c - 1) * A) / (actualBumpMovingHeight A c) ^ 6 =
      Real.exp (-((2 * c - 1) * A / 5)) := by
    unfold actualBumpMovingHeight
    rw [← Real.exp_nat_mul, ← Real.exp_sub]
    congr 1
    ring
  rw [abs_of_pos (Real.exp_pos _)] at hb
  calc
    _ ≤ (204288 : ℝ) ^ 2 / sourceNormalization A * (1 + c ^ 2) * (1 + (c - 1) ^ 2) *
        Real.exp ((2 * c - 1) * A) / (A ^ 9 * (actualBumpMovingHeight A c) ^ 6) := hb
    _ = ((204288 : ℝ) ^ 2 / sourceNormalization A * (1 + c ^ 2) * (1 + (c - 1) ^ 2)) *
        (Real.exp ((2 * c - 1) * A) / (actualBumpMovingHeight A c) ^ 6) / A ^ 9 := by ring
    _ = ((204288 : ℝ) ^ 2 / sourceNormalization A * (1 + c ^ 2) * (1 + (c - 1) ^ 2)) *
        Real.exp (-((2 * c - 1) * A / 5)) / A ^ 9 := by rw [hex]
    _ ≤ endpointConstant c * Real.exp (-((2 * c - 1) * A / 5)) / A ^ 9 := by
      unfold endpointConstant
      gcongr

/-- The actual derivative variation grows at the squared-transform scale. -/
theorem actualEulerMellinSlope_moving_variation_eventually_lower :
    ∀ᶠ A : ℝ in atTop, 20736 * Real.exp (2 * A) / A ^ 9 ≤
      ∫ t in 0..actualBumpMovingHeight A (3 / 2),
        ‖actualEulerMellinSlope A ((3 / 2 : ℂ) + (t : ℂ) * I)‖ := by
  filter_upwards [real_mellin_norm_eventually_lower,
    eventually_ge_atTop (max 1 (endpointConstant (3 / 2)))] with A hH hA
  have h1 : 1 ≤ A := (le_max_left _ _).trans hA
  have hK : endpointConstant (3 / 2) ≤ A := (le_max_right _ _).trans hA
  have hp : 0 < A := by linarith
  have hb := mellin_endpoint_norm_le A (3 / 2) h1 (by norm_num)
  have he : Real.exp (-((2 * (3 / 2) - 1) * A / 5)) ≤ 1 := by
    rw [Real.exp_le_one_iff]
    linarith
  have hk0 : 0 ≤ endpointConstant (3 / 2) := by unfold endpointConstant; positivity
  have hKe : endpointConstant (3 / 2) ≤ 20736 * Real.exp (2 * A) := by
    nlinarith [Real.add_one_le_exp (2 * A)]
  have hend : ‖actualInitialPrimeMellin A
      ((3 / 2 : ℂ) + (actualBumpMovingHeight A (3 / 2) : ℂ) * I)‖ ≤
        20736 * Real.exp (2 * A) / A ^ 9 := by
    refine hb.trans ?_
    gcongr
    exact (mul_le_of_le_one_right hk0 he).trans hKe
  have hv := actualEulerMellinSlope_variation_lower A (3 / 2)
    (actualBumpMovingHeight A (3 / 2)) h1 (Real.exp_pos _).le
  linarith

/-- This is divergence of an absolute-method allowance, not of the signed bulk or residual. -/
theorem actualEulerMellinSlope_moving_variation_tendsto_atTop :
    Tendsto (fun A : ℝ => ∫ t in 0..actualBumpMovingHeight A (3 / 2),
      ‖actualEulerMellinSlope A ((3 / 2 : ℂ) + (t : ℂ) * I)‖) atTop atTop := by
  have ht : Tendsto (fun A : ℝ => Real.exp (2 * A) / A ^ 9) atTop atTop := by
    apply tendsto_atTop_mono' atTop _ (Real.tendsto_exp_div_pow_atTop 9)
    filter_upwards [eventually_ge_atTop (0 : ℝ)] with A hA
    gcongr
    linarith
  have hh : Tendsto (fun A : ℝ => 20736 * Real.exp (2 * A) / A ^ 9)
      atTop atTop := by
    convert ht.const_mul_atTop (by norm_num : (0 : ℝ) < 20736) using 1
    ext A
    ring
  exact tendsto_atTop_mono' atTop actualEulerMellinSlope_moving_variation_eventually_lower hh

end FormalResearch.RiemannHypothesis.SourceActualEulerDerivativeVariation
