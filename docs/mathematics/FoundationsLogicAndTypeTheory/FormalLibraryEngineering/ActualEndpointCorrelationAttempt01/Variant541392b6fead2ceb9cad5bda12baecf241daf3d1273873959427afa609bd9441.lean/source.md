# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ActualEndpointCorrelationAttempt01.Variant541392b6fead2ceb9cad5bda12baecf241daf3d1273873959427afa609bd9441

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d9f5f7b1804ccbbe05fbd2db3c6234cc3cf90e78` · SHA-256 `25656f3d0ee1bed77c0b368131fb4395152294ef816fb8d02a4ecf5c72e35159`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EndpointPolynomialCorrelation.Variante4a2b4f9727d8409c7183d4575fafb6067be2ec547c131649a7cdda5c6b4558d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e4a2b4f9727d8409c7183d4575fafb6067be2ec547c131649a7cdda5c6b4558d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.EndpointPolynomialCorrelation.Variante4a2b4f9727d8409c7183d4575fafb6067be2ec547c131649a7cdda5c6b4558d","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"e4a2b4f9727d8409c7183d4575fafb6067be2ec547c131649a7cdda5c6b4558d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass16/curvature_endpoint/ActualEndpointCorrelation-attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import EndpointProfile

/-! Exact source-bound upper-endpoint correlation overlap.
Direction: grwtsk contributors. Scratch construction: OpenAI Codex.
No differentiated remainder or actual eventual sign is supplied. -/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EndpointPolynomialCorrelation.Variante4a2b4f9727d8409c7183d4575fafb6067be2ec547c131649a7cdda5c6b4558d

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
      · have hx2 : x-(2*A-y)<-A := by linarith [lt_of_not_ge hx1]
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
  nlinarith [hsA]

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
```
