# Complete source: GRWTSK.Algebra.CommutativeAlgebra.ActualEndpointCorrelationAttempt03.Variant7fa5f959e4e8baa7758fc61a4884116dc9f809d084a6b5d0c14680fef728faa2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `800d5d1163cc4dd2962aab1f3a365b30b08e4f2a` · SHA-256 `4e2a11e96eb102a5baf17da36080599eacaf749b30de2221058273c533521767`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.EndpointPolynomialCorrelation.Variant2e90d73f0629898a5f7b376aed8eadd81d68c8d3a67c1729db925b2b370a5d2a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e90d73f0629898a5f7b376aed8eadd81d68c8d3a67c1729db925b2b370a5d2a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.EndpointPolynomialCorrelation.Variant2e90d73f0629898a5f7b376aed8eadd81d68c8d3a67c1729db925b2b370a5d2a","mathematical_subject":"Algebra.Polynomials","original_sha256":"2e90d73f0629898a5f7b376aed8eadd81d68c8d3a67c1729db925b2b370a5d2a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass16/curvature_endpoint/ActualEndpointCorrelation-attempt03.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import EndpointProfile

/-! Exact source-bound upper-endpoint correlation overlap.
Direction: grwtsk contributors. Scratch construction: OpenAI Codex.
No differentiated remainder or actual eventual sign is supplied. -/

namespace GRWTSK.Algebra.CommutativeAlgebra.EndpointPolynomialCorrelation.Variant2e90d73f0629898a5f7b376aed8eadd81d68c8d3a67c1729db925b2b370a5d2a

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualEndpointCorrelation
open MeasureTheory Set
open scoped Interval
open EndpointProfile
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity

/-- This finite overlap is built directly from the exact source interior polynomial. -/
def endpointPolynomialCorrelation (a y : ℝ) : ℝ :=
  ∫ s in 0..y,endpointInteriorPolynomial a s*endpointInteriorPolynomial a (y-s)

theorem endpointPolynomialCorrelation_integrand_intervalIntegrable (a y : ℝ) :
    IntervalIntegrable (fun s => endpointInteriorPolynomial a s*
      endpointInteriorPolynomial a (y-s)) volume 0 y := by
  apply Continuous.intervalIntegrable
  unfold endpointInteriorPolynomial
  fun_prop

theorem normalizedInterior_even (A x : ℝ) : normalizedInterior A (-x)=normalizedInterior A x := by
  dsimp [normalizedInterior,secondInterior,bumpInterior]
  simp only [neg_div]
  ring

/-- Exact source support intersection, retaining both closed endpoints. -/
theorem actual_endpoint_overlap {A y : ℝ} (hA : 0<A) (hy : y∈Icc (0:ℝ) (2*A)) :
    sourceCorrelation explicitSecondDerivative A (2*A-y)=
      ∫ x in (A-y)..A,normalizedInterior A x*normalizedInterior A (x-(2*A-y)) := by
  have he : (fun x => normalizedTest explicitSecondDerivative A x*
      normalizedTest explicitSecondDerivative A (x-(2*A-y)))=
      (Icc (A-y) A).indicator (fun x => normalizedInterior A x*
        normalizedInterior A (x-(2*A-y))) := by
    funext x
    rw [normalizedTest_eq_indicator A hA]
    by_cases hx : x∈Icc (A-y) A
    · have hx1 : x∈Icc (-A) A := by constructor <;> linarith [hx.1,hx.2,hy.1,hy.2]
      have hx2 : x-(2*A-y)∈Icc (-A) A := by
        constructor <;> linarith [hx.1,hx.2,hy.1,hy.2]
      rw [indicator_of_mem hx1,indicator_of_mem hx2,indicator_of_mem hx]
    · rw [indicator_of_notMem hx]
      by_cases hx1 : A-y≤x
      · have hx2 : A<x := by
          by_contra hn
          exact hx ⟨hx1,le_of_not_gt hn⟩
        rw [indicator_of_notMem (show x∉Icc (-A) A from fun h => not_le_of_gt hx2 h.2)]
        simp
      · have hx2 : x-(2*A-y) < -A := by linarith [lt_of_not_ge hx1]
        rw [indicator_of_notMem (show x-(2*A-y)∉Icc (-A) A from
          fun h => not_le_of_gt hx2 h.1)]
        simp
  rw [sourceCorrelation,he,zeroExtension_integral _ (A-y) A (by linarith [hy.1])]

/-- Actual correlation uses the physical endpoint distance and reflected second factor. -/
theorem actual_endpoint_overlap_distance {A y : ℝ} (hA : 0<A)
    (hy : y∈Icc (0:ℝ) (2*A)) :
    sourceCorrelation explicitSecondDerivative A (2*A-y)=
      ∫ s in 0..y,normalizedInterior A (A-s)*normalizedInterior A (A-(y-s)) := by
  rw [actual_endpoint_overlap hA hy]
  have hc := intervalIntegral.integral_comp_sub_left
    (fun x => normalizedInterior A x*normalizedInterior A (x-(2*A-y)))
    (a:=0) (b:=y) A
  simp only [sub_zero] at hc
  rw [←hc]
  apply intervalIntegral.integral_congr
  intro s _
  dsimp only
  have he : A-s-(2*A-y)=-(A-(y-s)) := by ring
  rw [he,normalizedInterior_even]

/-- Squaring the two original source normalizations gives exactly one Z denominator. -/
theorem normalized_endpoint_product {A s t : ℝ} (hA : 1≤A) :
    normalizedInterior A (A-s)*normalizedInterior A (A-t)*
      (A^9*sourceNormalization A)=
      endpointInteriorPolynomial A⁻¹ s*endpointInteriorPolynomial A⁻¹ t := by
  have hp : 0<A := by linarith
  have hZ := source_normalization_pos A hA
  have hsZ : Real.sqrt (sourceNormalization A)≠0 := ne_of_gt (Real.sqrt_pos.mpr hZ)
  rw [←actual_interior_endpoint_polynomial hp,←actual_interior_endpoint_polynomial hp]
  dsimp [normalizedInterior]
  field_simp [hsZ]
  rw [Real.sq_sqrt hZ.le]
  have hsA := Real.sq_sqrt hp.le
  rw [hsA]
  ring

/-- Kernel checked exact A^-9/Z_A endpoint scaling of the literal correlation. -/
theorem actual_endpoint_polynomial_correlation {A y : ℝ} (hA : 1≤A)
    (hy : y∈Icc (0:ℝ) (2*A)) :
    sourceCorrelation explicitSecondDerivative A (2*A-y)*(A^9*sourceNormalization A)=
      endpointPolynomialCorrelation A⁻¹ y := by
  rw [actual_endpoint_overlap_distance (by linarith : 0<A) hy]
  rw [←intervalIntegral.integral_mul_const]
  unfold endpointPolynomialCorrelation
  apply intervalIntegral.integral_congr
  intro s _
  exact normalized_endpoint_product hA

end ContinuousResearch.ActualEndpointCorrelation

-- Full frozen public declaration closure audits.

#check ContinuousResearch.ActualEndpointCorrelation.endpointPolynomialCorrelation
#print axioms ContinuousResearch.ActualEndpointCorrelation.endpointPolynomialCorrelation
#print ContinuousResearch.ActualEndpointCorrelation.endpointPolynomialCorrelation

#check ContinuousResearch.ActualEndpointCorrelation.endpointPolynomialCorrelation_integrand_intervalIntegrable
#print axioms ContinuousResearch.ActualEndpointCorrelation.endpointPolynomialCorrelation_integrand_intervalIntegrable
#print ContinuousResearch.ActualEndpointCorrelation.endpointPolynomialCorrelation_integrand_intervalIntegrable

#check ContinuousResearch.ActualEndpointCorrelation.normalizedInterior_even
#print axioms ContinuousResearch.ActualEndpointCorrelation.normalizedInterior_even
#print ContinuousResearch.ActualEndpointCorrelation.normalizedInterior_even

#check ContinuousResearch.ActualEndpointCorrelation.actual_endpoint_overlap
#print axioms ContinuousResearch.ActualEndpointCorrelation.actual_endpoint_overlap
#print ContinuousResearch.ActualEndpointCorrelation.actual_endpoint_overlap

#check ContinuousResearch.ActualEndpointCorrelation.actual_endpoint_overlap_distance
#print axioms ContinuousResearch.ActualEndpointCorrelation.actual_endpoint_overlap_distance
#print ContinuousResearch.ActualEndpointCorrelation.actual_endpoint_overlap_distance

#check ContinuousResearch.ActualEndpointCorrelation.normalized_endpoint_product
#print axioms ContinuousResearch.ActualEndpointCorrelation.normalized_endpoint_product
#print ContinuousResearch.ActualEndpointCorrelation.normalized_endpoint_product

#check ContinuousResearch.ActualEndpointCorrelation.actual_endpoint_polynomial_correlation
#print axioms ContinuousResearch.ActualEndpointCorrelation.actual_endpoint_polynomial_correlation
#print ContinuousResearch.ActualEndpointCorrelation.actual_endpoint_polynomial_correlation
```
