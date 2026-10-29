import ActualCriticalExponentialResponse

/-!
The actual compact correlation separates into its positive and opposite halves.
The opposite half has a uniform norm bound throughout the open complex right
half-plane. This keeps the actual complex transform; it does not replace its
ordinary complex product by a nonnegative square or supply an arithmetic bound.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.ActualCorrelationOppositeHalf

open MeasureTheory Set
open scoped Interval
open ActualCriticalExponentialResponse SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation

noncomputable section

/-- The literal bilateral compact transform of the actual normalized correlation. -/
def actualBilateralCorrelationTransform (A : ℝ) (z : ℂ) : ℂ :=
  ∫ t in -(2 * A)..2 * A,
    Complex.exp (z * (t : ℂ)) * (sourceCorrelation explicitSecondDerivative A t : ℂ)

/-- The true negative half equals the opposite exponential response, with both halves L1. -/
theorem actualBilateralCorrelationTransform_eq_halves {A : ℝ} (hA : 0 < A) (z : ℂ) :
    actualBilateralCorrelationTransform A z =
      actualHalfCorrelationTransform A z + actualHalfCorrelationTransform A (-z) := by
  let f : ℝ → ℂ := fun t => Complex.exp (z * (t : ℂ)) *
    (sourceCorrelation explicitSecondDerivative A t : ℂ)
  have hc : Continuous f :=
    (by fun_prop : Continuous (fun t : ℝ => Complex.exp (z * (t : ℂ)))).mul
      (Complex.continuous_ofReal.comp (sourceCorrelation_contDiff A hA).continuous)
  have href : (∫ t in -(2 * A)..0, f t) = actualHalfCorrelationTransform A (-z) := by
    calc
      _ = ∫ t in 0..2 * A, f (-t) := by
        simpa only [neg_zero] using
          (intervalIntegral.integral_comp_neg f (a := 0) (b := 2 * A)).symm
      _ = _ := by
        unfold actualHalfCorrelationTransform
        apply intervalIntegral.integral_congr
        intro t _
        dsimp [f]
        rw [sourceCorrelation_even A t, Complex.ofReal_neg]
        congr 2
        ring
  have hi1 : IntervalIntegrable f volume (-(2 * A)) 0 := hc.intervalIntegrable _ _
  have hi2 : IntervalIntegrable f volume 0 (2 * A) := hc.intervalIntegrable _ _
  have hs := intervalIntegral.integral_add_adjacent_intervals hi1 hi2
  rw [href] at hs
  change actualHalfCorrelationTransform A (-z) + actualHalfCorrelationTransform A z =
    actualBilateralCorrelationTransform A z at hs
  simpa only [add_comm] using hs.symm

/-- Norm-one actual correlation bounds its opposite half uniformly in every real scale. -/
theorem actualHalfCorrelationTransform_opposite_norm_le {A : ℝ} (hA : 1 ≤ A)
    {z : ℂ} (hz : 0 < z.re) :
    ‖actualHalfCorrelationTransform A (-z)‖ ≤ 1 / z.re := by
  let r : ℝ := z.re
  have hr : 0 < r := hz
  have hbound (t : ℝ) : ‖Complex.exp ((-z) * (t : ℂ)) *
      (sourceCorrelation explicitSecondDerivative A t : ℂ)‖ ≤ Real.exp (-r * t) := by
    rw [norm_mul, Complex.norm_exp, Complex.norm_real, Real.norm_eq_abs]
    have he : ((-z) * (t : ℂ)).re = -r * t := by
      simp only [Complex.mul_re, Complex.neg_re, Complex.ofReal_re,
        Complex.ofReal_im, mul_zero, sub_zero, r]
    rw [he]
    simpa only [mul_one] using mul_le_mul_of_nonneg_left
      (actual_correlation_abs_le_one A t hA) (Real.exp_pos _).le
  have hc : Continuous (fun t : ℝ => Real.exp (-r * t)) := by fun_prop
  have hcc : Continuous (fun t : ℝ => Complex.exp ((-z) * (t : ℂ)) *
      (sourceCorrelation explicitSecondDerivative A t : ℂ)) :=
    (by fun_prop : Continuous (fun t : ℝ => Complex.exp ((-z) * (t : ℂ)))).mul
      (Complex.continuous_ofReal.comp
        (sourceCorrelation_contDiff A (show 0 < A by linarith)).continuous)
  have hi : IntervalIntegrable (fun t : ℝ => Complex.exp ((-z) * (t : ℂ)) *
      (sourceCorrelation explicitSecondDerivative A t : ℂ)) volume 0 (2 * A) :=
    hcc.intervalIntegrable _ _
  have hab : (0 : ℝ) ≤ 2 * A := by linarith
  have hb := (intervalIntegral.norm_integral_le_integral_norm
    (f := fun t => Complex.exp ((-z) * (t : ℂ)) *
      (sourceCorrelation explicitSecondDerivative A t : ℂ)) (μ := volume) hab).trans
      (intervalIntegral.integral_mono_on hab hi.norm (hc.intervalIntegrable _ _)
        (fun t _ => hbound t))
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ => Real.exp (-r * t) / (-r))
      (Real.exp (-r * t)) t := by
    exact (((hasDerivAt_id t).const_mul (-r)).exp.div_const (-r)).congr_deriv (by
      dsimp
      field_simp [hr.ne'])
  have heval : (∫ t in 0..2 * A, Real.exp (-r * t)) =
      (1 - Real.exp (-r * (2 * A))) / r := by
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
      (hc.intervalIntegrable 0 (2 * A))]
    simp only [mul_zero, Real.exp_zero]
    field_simp <;> ring
  unfold actualHalfCorrelationTransform
  apply hb.trans
  rw [heval]
  apply div_le_div_of_nonneg_right _ hr.le
  have := Real.exp_pos (-r * (2 * A))
  linarith

/-- The positive half differs from the literal bilateral transform by a bounded actual piece. -/
theorem actualHalfCorrelationTransform_sub_bilateral_norm_le {A : ℝ} (hA : 1 ≤ A)
    {z : ℂ} (hz : 0 < z.re) :
    ‖actualHalfCorrelationTransform A z - actualBilateralCorrelationTransform A z‖ ≤
      1 / z.re := by
  rw [actualBilateralCorrelationTransform_eq_halves (show 0 < A by linarith) z,
    sub_add_eq_sub_sub, sub_self, zero_sub, norm_neg]
  exact actualHalfCorrelationTransform_opposite_norm_le hA hz

end
end FormalResearch.RiemannHypothesis.ActualCorrelationOppositeHalf
