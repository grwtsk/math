# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Attempt01.Variantc860714b0d8957ca9f9db13c64e5585b8ebd6567740c75d431326e1837afc9bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58cd77b039784fb584b53880f8454dd81583d07d` · SHA-256 `8297c87e74c9838ad1674d405e9739641d455f5d4f1dbca8952813d8d61d0f0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.NormalizedTransform.Variant19238a011be6060ce754ddad1934f5a7d3c6faa94bf64917b7681830a31f9e68","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"19238a011be6060ce754ddad1934f5a7d3c6faa94bf64917b7681830a31f9e68","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.NormalizedTransform.Variant19238a011be6060ce754ddad1934f5a7d3c6faa94bf64917b7681830a31f9e68","mathematical_subject":"Analysis.Integration","original_sha256":"19238a011be6060ce754ddad1934f5a7d3c6faa94bf64917b7681830a31f9e68","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass10/boundary_filter/attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import «scratch».«continuous-research-01a109fc».pass4.common_mean_review.SourceFirstPoleMoment
import ActualMomentDictionary
import Mathlib.Analysis.Complex.RealDeriv

/-!
Finite-support boundary transfer for grwtsk contributors's source research.
OpenAI Codex construction. All transforms remain independent literal integrals;
the ordinary complex square is retained. No arithmetic bound is asserted.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.NormalizedTransform.Variant19238a011be6060ce754ddad1934f5a7d3c6faa94bf64917b7681830a31f9e68

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.SourceBoundaryTransform

open MeasureTheory Set
open scoped Convolution
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity CorrelationMoment ZeroSideTargets
open ContinuousResearch.SourceFirstPoleMoment
open ContinuousResearch.ActualMomentDictionary

/-- The normalized actual source transform, independently defined as its integral. -/
def normalizedTransform (A : ℝ) (z : ℂ) : ℂ :=
  ∫ x : ℝ, (normalizedTest explicitSecondDerivative A x : ℂ) *
    Complex.exp (z * (x : ℂ))

/-- The complete finite boundary transform, not an arithmetic or statistical work. -/
def boundaryTransform (A : ℝ) (lambda : ℂ) : ℂ :=
  ∫ y in 0..4*A, (boundaryWorkKernel A y : ℂ) * Complex.exp (-lambda*(y : ℂ))

theorem normalizedTransform_dictionary (A : ℝ) (z : ℂ) :
    normalizedTransform A z = bilateralTransform A z /
      (Real.sqrt (sourceNormalization A) : ℂ) := by
  unfold normalizedTransform bilateralTransform actualTest normalizedTest
  rw [← integral_div]
  apply integral_congr_ae
  filter_upwards [] with x
  push_cast
  ring

theorem normalized_integrand_integrable {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    Integrable (fun x : ℝ => (normalizedTest explicitSecondDerivative A x : ℂ)*
      Complex.exp (z*(x : ℂ))) := by
  have hq := (normalizedTest_contDiff A (show 0 < A by linarith)).continuous
  have hqs := normalizedTest_hasCompactSupport A (show 0 < A by linarith)
  have hc : Continuous (fun x : ℝ =>
      (normalizedTest explicitSecondDerivative A x : ℂ)*Complex.exp (z*(x : ℂ))) := by
    fun_prop
  exact hc.integrable_of_hasCompactSupport
    ((hqs.comp_left (show (Complex.ofReal (0 : ℝ)) = 0 by simp)).mul_right)

theorem full_complex_correlation_square {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    (∫ t : ℝ, (sourceCorrelation explicitSecondDerivative A t : ℂ)*
      Complex.exp (z*(t : ℂ))) = normalizedTransform A z ^ 2 := by
  let q : ℝ → ℝ := normalizedTest explicitSecondDerivative A
  let F : ℝ → ℂ := fun x => (q x : ℂ)*Complex.exp (z*(x : ℂ))
  have hF : Integrable F := normalized_integrand_integrable hA z
  have he (t : ℝ) : (sourceCorrelation explicitSecondDerivative A t : ℂ)*
      Complex.exp (z*(t : ℂ)) =
      (F ⋆[ContinuousLinearMap.mul ℂ ℂ] F) t := by
    unfold sourceCorrelation
    rw [← integral_ofReal, ← integral_mul_const]
    rw [convolution]
    apply integral_congr_ae
    filter_upwards [] with x
    have heven := actual_normalized_even A hA (x-t)
    have he : Complex.exp (z*(t : ℂ)) =
        Complex.exp (z*(x : ℂ))*Complex.exp (z*((t-x : ℝ) : ℂ)) := by
      rw [← Complex.exp_add]
      congr 1
      push_cast
      ring
    dsimp [F,q]
    rw [show t-x=-(x-t) by ring,heven,he]
    push_cast
    simp only [ContinuousLinearMap.mul_apply]
    ring
  simp_rw [he]
  rw [integral_convolution (ContinuousLinearMap.mul ℂ ℂ) hF hF]
  change normalizedTransform A z * normalizedTransform A z = _
  ring

theorem interval_complex_correlation_square {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    (∫ t in -(2*A)..2*A, (sourceCorrelation explicitSecondDerivative A t : ℂ)*
      Complex.exp (z*(t : ℂ))) = normalizedTransform A z ^ 2 := by
  have he : (fun t : ℝ => (sourceCorrelation explicitSecondDerivative A t : ℂ)*
      Complex.exp (z*(t : ℂ))) = (Icc (-(2*A)) (2*A)).indicator
      (fun t : ℝ => (sourceCorrelation explicitSecondDerivative A t : ℂ)*
        Complex.exp (z*(t : ℂ))) := by
    funext t
    by_cases ht : t ∈ Icc (-(2*A)) (2*A)
    · rw [indicator_of_mem ht]
    · rw [indicator_of_notMem ht]
      have hb : 2*A ≤ |t| := by
        by_contra hn
        exact ht (abs_le.mp (le_of_lt (lt_of_not_ge hn)))
      rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A t (by linarith) hb]
      simp
  have h := full_complex_correlation_square hA z
  rw [he,integral_indicator measurableSet_Icc,integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (by linarith : -(2*A) ≤ 2*A)] at h
  exact h

theorem critical_complex_ibp {A : ℝ} (hA : 1 ≤ A) (lambda : ℂ) :
    (∫ t in -(2*A)..2*A, Complex.exp (lambda*(t : ℂ))*
      (deriv (criticalPrimeTest A) t : ℂ)) =
      -lambda * normalizedTransform A (lambda+1/2)^2 := by
  have hp : 0 < A := by linarith
  have hc := criticalPrimeTest_contDiff A hp
  have hu : Continuous (fun t : ℝ => Complex.exp (lambda*(t : ℂ))) := by fun_prop
  have hv : Continuous (fun t : ℝ => (criticalPrimeTest A t : ℂ)) := by fun_prop
  have hdu : Continuous (fun t : ℝ => lambda*Complex.exp (lambda*(t : ℂ))) := by fun_prop
  have hdv : Continuous (fun t : ℝ => (deriv (criticalPrimeTest A) t : ℂ)) := by
    fun_prop
  have hibp := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := fun t : ℝ => Complex.exp (lambda*(t : ℂ)))
    (u' := fun t : ℝ => lambda*Complex.exp (lambda*(t : ℂ)))
    (v := fun t : ℝ => (criticalPrimeTest A t : ℂ))
    (v' := fun t : ℝ => (deriv (criticalPrimeTest A) t : ℂ))
    (a := -(2*A)) (b := 2*A)
    (fun t _ => by
      have h := (((hasDerivAt_id (t : ℂ)).const_mul lambda).comp_ofReal).cexp
      simpa only [mul_comm] using h)
    (fun t _ => (hc.differentiable (by norm_num) t).hasDerivAt.ofReal_comp)
    (hdu.intervalIntegrable _ _) (hdv.intervalIntegrable _ _)
  have hupp := criticalPrimeTest_at_upper A hp
  have hlow : criticalPrimeTest A (-(2*A)) = 0 := by
    rw [criticalPrimeTest,sourceCorrelation_eq_zero_of_two_mul_le_abs A (-(2*A)) hp]
    · simp
    · rw [abs_neg,abs_of_pos (by positivity : 0 < 2*A)]
  rw [hupp,hlow] at hibp
  simp only [Complex.ofReal_zero,mul_zero,sub_zero,zero_sub] at hibp
  rw [hibp,← intervalIntegral.integral_const_mul]
  have he (t : ℝ) : lambda*Complex.exp (lambda*(t : ℂ))*(criticalPrimeTest A t : ℂ) =
      lambda*((sourceCorrelation explicitSecondDerivative A t : ℂ)*
        Complex.exp ((lambda+1/2)*(t : ℂ))) := by
    unfold criticalPrimeTest
    push_cast
    rw [Complex.ofReal_exp,← Complex.exp_add]
    ring_nf
  simp_rw [he]
  rw [intervalIntegral.integral_const_mul,interval_complex_correlation_square hA]
  ring

theorem boundary_transform_exact {A : ℝ} (hA : 1 ≤ A) (lambda : ℂ) :
    boundaryTransform A lambda = -lambda*(A : ℂ)^9*
      Complex.exp (-(2*lambda+1)*(A : ℂ))*normalizedTransform A (lambda+1/2)^2 := by
  have he (y : ℝ) : (boundaryWorkKernel A y : ℂ)*Complex.exp (-lambda*(y : ℂ)) =
      ((A : ℂ)^9*Complex.exp (-(A : ℂ)-lambda*(2*A : ℝ))) *
        (Complex.exp (lambda*((2*A-y : ℝ) : ℂ))*
          (deriv (criticalPrimeTest A) (2*A-y) : ℂ)) := by
    unfold boundaryWorkKernel
    push_cast
    rw [Complex.ofReal_exp]
    have hex : Complex.exp (-(A : ℂ))*Complex.exp (-lambda*(y : ℂ)) =
        Complex.exp (-(A : ℂ)-lambda*(2*(A : ℂ)))*
          Complex.exp (lambda*(2*(A : ℂ)-(y : ℂ))) := by
      rw [← Complex.exp_add,← Complex.exp_add]
      congr 1
      ring
    rw [hex]
    ring
  unfold boundaryTransform
  simp_rw [he]
  rw [intervalIntegral.integral_const_mul]
  have href := intervalIntegral.integral_comp_sub_left
    (fun t : ℝ => Complex.exp (lambda*(t : ℂ))*(deriv (criticalPrimeTest A) t : ℂ))
    (a := 0) (b := 4*A) (2*A)
  have href' : (∫ y in 0..4*A, Complex.exp (lambda*((2*A-y : ℝ) : ℂ))*
        (deriv (criticalPrimeTest A) (2*A-y) : ℂ)) =
      ∫ t in -(2*A)..2*A, Complex.exp (lambda*(t : ℂ))*(deriv (criticalPrimeTest A) t : ℂ) := by
    simpa only [show 2*A-4*A=-(2*A) by ring,sub_zero] using href
  rw [href',critical_complex_ibp hA]
  push_cast
  rw [show -(A : ℂ)-lambda*(2*(A : ℂ))=-(2*lambda+1)*(A : ℂ) by ring]
  ring

end ContinuousResearch.SourceBoundaryTransform
```
