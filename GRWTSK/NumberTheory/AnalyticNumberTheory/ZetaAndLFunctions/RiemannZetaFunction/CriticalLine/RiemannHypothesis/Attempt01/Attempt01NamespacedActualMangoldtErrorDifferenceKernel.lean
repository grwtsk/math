-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualMangoldtErrorDifferenceKernel.Variantef216341b8a6d05c5b5dfbd01328450cc49d757c4112688db1d76d935d610172","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ef216341b8a6d05c5b5dfbd01328450cc49d757c4112688db1d76d935d610172","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualMangoldtErrorDifferenceKernel.Variantef216341b8a6d05c5b5dfbd01328450cc49d757c4112688db1d76d935d610172","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"ef216341b8a6d05c5b5dfbd01328450cc49d757c4112688db1d76d935d610172","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-xi-error-convolution-kernel/attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualXiErrorConvolution

/-!
The actual finite error difference has a positive, explicitly evaluated kernel.
Its uniform scalar estimate keeps the two closed-seven heads and does not
control the undamped critical covariance or the absolute F7 average.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualMangoldtErrorDifferenceKernel.Variantef216341b8a6d05c5b5dfbd01328450cc49d757c4112688db1d76d935d610172

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualXiErrorConvolutionKernel

open MeasureTheory Set SourceMangoldtAbel SourceActualXiDampedFiniteBound
open SourceActualXiErrorConvolution
open scoped Interval

noncomputable section

/-- The literal difference of the two finite causal exponential kernels. -/
def actualMangoldtErrorDifferenceKernel (r t : ℝ) : ℝ :=
  Real.exp ((r - t) / 2) - Real.exp (r - t)

/-- The difference kernel is positive on its actual causal interval. -/
theorem actualMangoldtErrorDifferenceKernel_nonneg {r t : ℝ} (hrt : r ≤ t) :
    0 ≤ actualMangoldtErrorDifferenceKernel r t := by
  unfold actualMangoldtErrorDifferenceKernel
  exact sub_nonneg.mpr (Real.exp_le_exp.mpr (by linarith))

/-- The actual continuous difference kernel is genuinely finite L1. -/
theorem actualMangoldtErrorDifferenceKernel_intervalIntegrable (t : ℝ) :
    IntervalIntegrable (fun r => actualMangoldtErrorDifferenceKernel r t) volume 0 t :=
  (by unfold actualMangoldtErrorDifferenceKernel; fun_prop :
    Continuous (fun r => actualMangoldtErrorDifferenceKernel r t)).intervalIntegrable _ _

/-- The full finite kernel mass is an exact square; no infinite limit is used. -/
theorem actualMangoldtErrorDifferenceKernel_mass (t : ℝ) :
    (∫ r in 0..t, actualMangoldtErrorDifferenceKernel r t) =
      (1 - Real.exp (-t / 2)) ^ 2 := by
  have hd (r : ℝ) : HasDerivAt
      (fun r : ℝ => 2 * Real.exp ((r - t) / 2) - Real.exp (r - t))
        (actualMangoldtErrorDifferenceKernel r t) r := by
    have h := ((((hasDerivAt_id r).sub_const t).div_const 2).exp.const_mul 2).sub
      ((hasDerivAt_id r).sub_const t).exp
    exact h.congr_deriv (by unfold actualMangoldtErrorDifferenceKernel; dsimp only [id_eq]; ring)
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun r _ => hd r)
    (actualMangoldtErrorDifferenceKernel_intervalIntegrable t)]
  simp only [sub_self, zero_div, Real.exp_zero, mul_one, zero_sub]
  have he : Real.exp (-t / 2) ^ 2 = Real.exp (-t) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  nlinarith [he]

/-- Genuine finite L1 permits subtracting the two actual convolution integrals. -/
theorem actualMangoldtErrorConvolution_difference_eq_kernel {t : ℝ} (ht : 0 ≤ t) :
    actualMangoldtErrorConvolution (1 / 2) t - actualMangoldtErrorConvolution 1 t =
      ∫ r in 0..t, actualCenteredMangoldtLogError r *
        actualMangoldtErrorDifferenceKernel r t := by
  unfold actualMangoldtErrorConvolution
  rw [← intervalIntegral.integral_sub
    (actualMangoldtErrorConvolution_intervalIntegrable (1 / 2) ht)
    (actualMangoldtErrorConvolution_intervalIntegrable 1 ht)]
  apply intervalIntegral.integral_congr
  intro r _
  unfold actualMangoldtErrorDifferenceKernel
  congr 1 <;> ring

/-- The only arithmetic input here is the proved actual elementary Mangoldt prefix bound. -/
theorem actualCenteredMangoldtLogError_abs_le {r : ℝ} (hr : 0 ≤ r) :
    |actualCenteredMangoldtLogError r| ≤
      Real.log 4 + 4 + Real.log 2 + |Real.eulerMascheroniConstant| := by
  unfold actualCenteredMangoldtLogError
  exact (abs_add_le _ _).trans (add_le_add_right (mangoldtLogError_abs_le r hr) _)

/-- Exact kernel mass sharpens the uniform signed finite convolution estimate. -/
theorem actualMangoldtErrorConvolution_difference_abs_le {t : ℝ} (ht : 0 ≤ t) :
    |actualMangoldtErrorConvolution (1 / 2) t - actualMangoldtErrorConvolution 1 t| ≤
      (Real.log 4 + 4 + Real.log 2 + |Real.eulerMascheroniConstant|) *
        (1 - Real.exp (-t / 2)) ^ 2 := by
  let ce : ℝ := Real.log 4 + 4 + Real.log 2 + |Real.eulerMascheroniConstant|
  have hi : IntervalIntegrable (fun r => actualCenteredMangoldtLogError r *
      actualMangoldtErrorDifferenceKernel r t) volume 0 t := by
    have h := (actualMangoldtErrorConvolution_intervalIntegrable (1 / 2) ht).sub
      (actualMangoldtErrorConvolution_intervalIntegrable 1 ht)
    convert h using 1
    funext r
    unfold actualMangoldtErrorDifferenceKernel
    congr 1 <;> ring
  have hk := actualMangoldtErrorDifferenceKernel_intervalIntegrable t
  rw [actualMangoldtErrorConvolution_difference_eq_kernel ht]
  calc
    _ ≤ ∫ r in 0..t, |actualCenteredMangoldtLogError r *
        actualMangoldtErrorDifferenceKernel r t| :=
      intervalIntegral.abs_integral_le_integral_abs ht
    _ ≤ ∫ r in 0..t, ce * actualMangoldtErrorDifferenceKernel r t := by
      apply intervalIntegral.integral_mono_on ht hi.abs (hk.const_mul ce)
      intro r hr
      rw [abs_mul, abs_of_nonneg (actualMangoldtErrorDifferenceKernel_nonneg hr.2)]
      exact mul_le_mul_of_nonneg_right (actualCenteredMangoldtLogError_abs_le hr.1)
        (actualMangoldtErrorDifferenceKernel_nonneg hr.2)
    _ = _ := by
      rw [intervalIntegral.integral_const_mul, actualMangoldtErrorDifferenceKernel_mass]

/-- Both closed-seven heads remain explicit in the actual centered finite J bound. -/
theorem actualDampedXiFinitePrimitive_centered_abs_le {t : ℝ} (ht : Real.log 7 ≤ t) :
    |(1 / 2 : ℝ) * actualDampedXiFinitePrimitive t - actualXiErrorConvolutionSevenValue -
        actualXiErrorConvolutionHalfHead * Real.exp (-t / 2) -
          actualXiErrorConvolutionOneHead * Real.exp (-t)| ≤
      (Real.log 4 + 4 + Real.log 2 + |Real.eulerMascheroniConstant|) *
        (1 - Real.exp (-t / 2)) ^ 2 := by
  rw [actualDampedXiFinitePrimitive_eq_error_convolutions ht]
  convert actualMangoldtErrorConvolution_difference_abs_le
    ((Real.log_nonneg (by norm_num)).trans ht) using 1 <;> congr 1 <;> ring

end
end FormalResearch.RiemannHypothesis.SourceActualXiErrorConvolutionKernel
