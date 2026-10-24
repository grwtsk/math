# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Attempt01.Variantb256c9a34a1fc015412591ddb6a28d26335f2d9b0823e889f35c37153f868a41

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a2254dc826071394d9f08599b768752359003ac` · SHA-256 `43932553da36f4e5f5569e92047d5029a3702ae3ffd707857202ceffe8286034`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CenteredErrorIntervalIntegrable.Variant1b7ff532fa056595296250f6b25ad0b84c91c0448398444daf54cd13ea3c502b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1b7ff532fa056595296250f6b25ad0b84c91c0448398444daf54cd13ea3c502b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.CenteredErrorIntervalIntegrable.Variant1b7ff532fa056595296250f6b25ad0b84c91c0448398444daf54cd13ea3c502b","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"1b7ff532fa056595296250f6b25ad0b84c91c0448398444daf54cd13ea3c502b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-xi-error-critical-covariance/attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualXiErrorConvolutionKernel
import SourceActualXiDampedTailReturn

/-!
Finite absolutely continuous Abel transport moves the two actual error
convolutions through the returned source test. Prime jumps remain in the
actual locally integrable E, and all lower/seven heads are retained.
No critical cancellation or ordinary error rate is assumed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CenteredErrorIntervalIntegrable.Variant1b7ff532fa056595296250f6b25ad0b84c91c0448398444daf54cd13ea3c502b

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance
open MeasureTheory Set
open scoped Interval
open SourceMangoldtAbel SourceActualXiErrorConvolution SourceActualXiErrorConvolutionKernel
open SourceActualXiDampedTailReturn ActualSupportEdgeMangoldtRow SourcePairing
open RH16IndependentChallengeNext
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
noncomputable section

private theorem centered_error_intervalIntegrable {b : ℝ} (hb : 0 ≤ b) :
    IntervalIntegrable actualCenteredMangoldtLogError volume 0 b := by
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable 0 b hb id (by fun_prop)
  have he : IntervalIntegrable mangoldtLogError volume 0 b := by
    simpa only [deriv_id, mul_one] using hi
  exact he.add intervalIntegrable_const

private theorem weighted_error_intervalIntegrable (lam : ℝ) {b : ℝ} (hb : 0 ≤ b) :
    IntervalIntegrable (fun r => actualCenteredMangoldtLogError r * Real.exp (lam * r))
      volume 0 b :=
  (centered_error_intervalIntegrable hb).mul_continuousOn (by fun_prop)

private theorem convolution_eq_primitive (lam t : ℝ) :
    actualMangoldtErrorConvolution lam t = Real.exp (-lam * t) *
      ∫ r in 0..t, actualCenteredMangoldtLogError r * Real.exp (lam * r) := by
  unfold actualMangoldtErrorConvolution
  rw [← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_congr
  intro r _
  rw [← mul_assoc, mul_comm (Real.exp (-lam * t)), mul_assoc, ← Real.exp_add]
  congr 2
  ring

/-- Each literal finite error convolution is AC on its real time interval. -/
theorem actualMangoldtErrorConvolution_absolutelyContinuous (lam : ℝ) {b : ℝ} (hb : 0 ≤ b) :
    AbsolutelyContinuousOnInterval (actualMangoldtErrorConvolution lam) 0 b := by
  have hi := weighted_error_intervalIntegrable lam hb
  have he : ContDiff ℝ 1 (fun t : ℝ => Real.exp (-lam * t)) := by fun_prop
  have hf : actualMangoldtErrorConvolution lam = fun t => Real.exp (-lam * t) *
      ∫ r in 0..t, actualCenteredMangoldtLogError r * Real.exp (lam * r) :=
    funext (convolution_eq_primitive lam)
  rw [hf]
  exact he.contDiffOn.absolutelyContinuousOnInterval.fun_mul
    (hi.absolutelyContinuousOnInterval_intervalIntegral (by simp))

/-- The actual AE convolution ODE keeps every closed prime-power jump. -/
theorem actualMangoldtErrorConvolution_ae_hasDerivAt (lam : ℝ) {b : ℝ} (hb : 0 ≤ b) :
    ∀ᵐ t, t ∈ uIcc 0 b → HasDerivAt (actualMangoldtErrorConvolution lam)
      (actualCenteredMangoldtLogError t - lam * actualMangoldtErrorConvolution lam t) t := by
  have hi := weighted_error_intervalIntegrable lam hb
  have hf : actualMangoldtErrorConvolution lam = fun t => Real.exp (-lam * t) *
      ∫ r in 0..t, actualCenteredMangoldtLogError r * Real.exp (lam * r) :=
    funext (convolution_eq_primitive lam)
  rw [hf]
  filter_upwards [hi.ae_hasDerivAt_integral] with t ht hm
  have he := (((hasDerivAt_id t).const_mul (-lam)).exp).mul (ht hm 0 (by simp))
  apply he.congr_deriv
  simp only [id_eq]
  have hx : Real.exp (-lam * t) * Real.exp (lam * t) = 1 := by
    rw [← Real.exp_add, show -lam * t + lam * t = 0 by ring, Real.exp_zero]
  calc
    _ = actualCenteredMangoldtLogError t *
        (Real.exp (-lam * t) * Real.exp (lam * t)) -
          lam * (Real.exp (-lam * t) *
            ∫ r in 0..t, actualCenteredMangoldtLogError r * Real.exp (lam * r)) := by ring
    _ = _ := by rw [hx]; ring

end
end FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance
```
