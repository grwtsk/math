# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualCriticalExponentialResponse.Variantb1fea7855247a2a9cfc6260344615e07e96f5dd7fb5cb8481c4b472441426489

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a18d9db282d99d209ee37d57e7591e723ff06586` · SHA-256 `a00075e953fcebc99264de560249e2d95dc9c182786c2685a6f158068021b399`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualHalfCorrelationTransform.Variantdce963d0fd737e198f4d5e62830f6f9b7cdc3d3f802a28ee9f47e28f4850a9e9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dce963d0fd737e198f4d5e62830f6f9b7cdc3d3f802a28ee9f47e28f4850a9e9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualHalfCorrelationTransform.Variantdce963d0fd737e198f4d5e62830f6f9b7cdc3d3f802a28ee9f47e28f4850a9e9","mathematical_subject":"Analysis.Calculus","original_sha256":"dce963d0fd737e198f4d5e62830f6f9b7cdc3d3f802a28ee9f47e28f4850a9e9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-challenge-next/ActualCriticalExponentialResponse-attempt03/ActualCriticalExponentialResponse.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualCriticalCovarianceOrdinarySplit

/-!
The literal critical source kernel is integrated against a complex exponential
on its genuine compact interval. Integration by parts retains the unit lower
trace and the touching upper support zero. The mode coefficient is algebraic;
no zeta zero expansion, continuation, or arithmetic estimate is assumed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualHalfCorrelationTransform.Variantdce963d0fd737e198f4d5e62830f6f9b7cdc3d3f802a28ee9f47e28f4850a9e9

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.ActualCriticalExponentialResponse

open MeasureTheory Set
open SourcePairing SourceMangoldtInteraction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open scoped Interval

noncomputable section

/-- The literal positive-half transform of the normalized source correlation. -/
def actualHalfCorrelationTransform (A : ℝ) (z : ℂ) : ℂ :=
  ∫ t in 0..2 * A,
    Complex.exp (z * (t : ℂ)) * (sourceCorrelation explicitSecondDerivative A t : ℂ)

/-- The original quarter/half kernel evaluated against one complex exponential mode. -/
def actualCriticalExponentialResponse (A : ℝ) (z : ℂ) : ℂ :=
  ∫ t in 0..2 * A, Complex.exp (z * (t : ℂ)) *
    ((sourceCorrelation explicitSecondDerivative A t : ℂ) / 4 +
      ((deriv (sourceCorrelation explicitSecondDerivative A) t : ℝ) : ℂ) / 2)

private theorem complex_exponential_hasDerivAt (z : ℂ) (t : ℝ) :
    HasDerivAt (fun t : ℝ => Complex.exp (z * (t : ℂ)))
      (z * Complex.exp (z * (t : ℂ))) t := by
  convert (((hasDerivAt_id t).ofReal_comp.const_mul z).cexp) using 1 <;> simp
  ring

private theorem correlation_hasDerivAt {A : ℝ} (hA : 0 < A) (t : ℝ) :
    HasDerivAt (fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ))
      ((deriv (sourceCorrelation explicitSecondDerivative A) t : ℝ) : ℂ) t :=
  ((sourceCorrelation_contDiff A hA).differentiable (by norm_num) t).hasDerivAt.ofReal_comp

private theorem correlation_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ)) :=
  Complex.continuous_ofReal.comp (sourceCorrelation_contDiff A hA).continuous

private theorem first_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (fun t => ((deriv (sourceCorrelation explicitSecondDerivative A) t : ℝ) : ℂ)) :=
  Complex.continuous_ofReal.comp (sourceCorrelation_contDiff A hA).continuous_deriv_one

/-- Both original source jets yield genuine complex integrability on the whole compact interval. -/
theorem actualCriticalExponentialResponse_intervalIntegrable {A : ℝ} (hA : 0 < A)
    (z : ℂ) :
    IntervalIntegrable (fun t => Complex.exp (z * (t : ℂ)) *
      ((sourceCorrelation explicitSecondDerivative A t : ℂ) / 4 +
        ((deriv (sourceCorrelation explicitSecondDerivative A) t : ℝ) : ℂ) / 2))
      volume 0 (2 * A) := by
  have he : Continuous (fun t : ℝ => Complex.exp (z * (t : ℂ))) := by fun_prop
  exact (he.mul ((correlation_continuous hA).div_const 4 |>.add
    ((first_continuous hA).div_const 2))).intervalIntegrable _ _

/-- The original positive-half derivative response retains its exact unit lower trace. -/
theorem actualCriticalExponentialResponse_eq_halfTransform {A : ℝ} (hA : 0 < A)
    (z : ℂ) :
    actualCriticalExponentialResponse A z =
      (1 / 4 - z / 2) * actualHalfCorrelationTransform A z - 1 / 2 := by
  have he : Continuous (fun t : ℝ => Complex.exp (z * (t : ℂ))) := by fun_prop
  have h0 := correlation_continuous hA
  have h1 := first_continuous hA
  have hi0 : IntervalIntegrable (fun t : ℝ => Complex.exp (z * (t : ℂ)) *
      (sourceCorrelation explicitSecondDerivative A t : ℂ)) volume 0 (2 * A) :=
    (he.mul h0).intervalIntegrable _ _
  have hi1 : IntervalIntegrable (fun t : ℝ => Complex.exp (z * (t : ℂ)) *
      ((deriv (sourceCorrelation explicitSecondDerivative A) t : ℝ) : ℂ))
      volume 0 (2 * A) := (he.mul h1).intervalIntegrable _ _
  have hibp := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (u := fun t : ℝ => Complex.exp (z * (t : ℂ)))
    (v := fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ))
    (u' := fun t => z * Complex.exp (z * (t : ℂ)))
    (v' := fun t => ((deriv (sourceCorrelation explicitSecondDerivative A) t : ℝ) : ℂ))
    he.continuousOn h0.continuousOn
    (fun t _ => complex_exponential_hasDerivAt z t)
    (fun t _ => correlation_hasDerivAt hA t)
    ((he.const_mul z).intervalIntegrable _ _) (h1.intervalIntegrable _ _)
  have hz := sourceCorrelation_eq_zero_of_two_mul_le_abs A (2 * A) hA
    (by rw [abs_of_pos (by positivity)])
  rw [hz, sourceCorrelation_zero hA] at hibp
  simp only [Complex.ofReal_zero, Complex.ofReal_one, Complex.exp_zero,
    mul_zero, mul_one, sub_zero, zero_sub] at hibp
  have hi : actualCriticalExponentialResponse A z =
      (∫ t in 0..2 * A, Complex.exp (z * (t : ℂ)) *
        (sourceCorrelation explicitSecondDerivative A t : ℂ)) / 4 +
      (∫ t in 0..2 * A, Complex.exp (z * (t : ℂ)) *
        ((deriv (sourceCorrelation explicitSecondDerivative A) t : ℝ) : ℂ)) / 2 := by
    unfold actualCriticalExponentialResponse
    simp_rw [mul_add, mul_div_assoc]
    rw [intervalIntegral.integral_add (hi0.div_const 4) (hi1.div_const 2),
      intervalIntegral.integral_div, intervalIntegral.integral_div]
  have hp : (∫ t in 0..2 * A,
      (z * Complex.exp (z * (t : ℂ))) *
        (sourceCorrelation explicitSecondDerivative A t : ℂ)) =
      z * actualHalfCorrelationTransform A z := by
    simp only [mul_assoc]
    rw [intervalIntegral.integral_const_mul]
    rfl
  rw [hp] at hibp
  rw [hi, hibp]
  unfold actualHalfCorrelationTransform
  ring

/-- At the genuine half pole only the preserved lower trace remains. -/
theorem actualCriticalExponentialResponse_at_half {A : ℝ} (hA : 0 < A) :
    actualCriticalExponentialResponse A (1 / 2) = -1 / 2 := by
  rw [actualCriticalExponentialResponse_eq_halfTransform hA]
  norm_num

/-- The reciprocal mode coefficient cancels only its scalar factor, not the actual transform. -/
theorem actualCriticalExponentialResponse_mode_coefficient {A : ℝ} (hA : 0 < A)
    (rho m : ℂ) (hrho : rho ≠ 1) :
    (-m / (rho - 1)) *
      (actualCriticalExponentialResponse A (rho - 1 / 2) + 1 / 2) =
        m / 2 * actualHalfCorrelationTransform A (rho - 1 / 2) := by
  rw [actualCriticalExponentialResponse_eq_halfTransform hA]
  have hn : rho - 1 ≠ 0 := sub_ne_zero.mpr hrho
  field_simp
  ring

end
end FormalResearch.RiemannHypothesis.ActualCriticalExponentialResponse
```
