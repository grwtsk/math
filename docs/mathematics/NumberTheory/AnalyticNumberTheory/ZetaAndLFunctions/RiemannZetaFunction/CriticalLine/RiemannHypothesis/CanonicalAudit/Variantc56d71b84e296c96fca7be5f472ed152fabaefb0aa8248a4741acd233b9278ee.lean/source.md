# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CanonicalAudit.Variantc56d71b84e296c96fca7be5f472ed152fabaefb0aa8248a4741acd233b9278ee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58099b02e32c681c2e66dc92effec36e5227baed` · SHA-256 `92b1819554a1567c2868efbf1566c4da8dcec394adb7566165e3036cada7dd8d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ZeroDerivative.Variante3edf04819ce3476c0f974ba9d6f30bc7f054314b391c22daafa2ee8aea5818d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e3edf04819ce3476c0f974ba9d6f30bc7f054314b391c22daafa2ee8aea5818d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ZeroDerivative.Variante3edf04819ce3476c0f974ba9d6f30bc7f054314b391c22daafa2ee8aea5818d","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"e3edf04819ce3476c0f974ba9d6f30bc7f054314b391c22daafa2ee8aea5818d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh-packet-20261005/positive-primitive-review/CanonicalAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePositivePeanoPrimitive
import FormalResearch.RiemannHypothesis.SourcePrimitiveBumpProfile
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ZeroDerivative.Variante3edf04819ce3476c0f974ba9d6f30bc7f054314b391c22daafa2ee8aea5818d

#check FormalResearch.RiemannHypothesis.SourcePositivePeanoPrimitive.primitiveCorrelationZero_fourth_deriv
#print axioms FormalResearch.RiemannHypothesis.SourcePositivePeanoPrimitive.primitiveCorrelationZero_fourth_deriv
#check FormalResearch.RiemannHypothesis.SourcePositivePeanoPrimitive.sourcePeanoPrimitive_second_deriv
#print axioms FormalResearch.RiemannHypothesis.SourcePositivePeanoPrimitive.sourcePeanoPrimitive_second_deriv
#check FormalResearch.RiemannHypothesis.SourcePositivePeanoPrimitive.sourcePeanoPrimitive_contDiff_two
#print axioms FormalResearch.RiemannHypothesis.SourcePositivePeanoPrimitive.sourcePeanoPrimitive_contDiff_two
#check FormalResearch.RiemannHypothesis.SourcePrimitiveBumpProfile.sourceBump_overlap_integrable
#print axioms FormalResearch.RiemannHypothesis.SourcePrimitiveBumpProfile.sourceBump_overlap_integrable
#check FormalResearch.RiemannHypothesis.SourcePrimitiveBumpProfile.primitiveCorrelationZero_eq_profile
#print axioms FormalResearch.RiemannHypothesis.SourcePrimitiveBumpProfile.primitiveCorrelationZero_eq_profile

noncomputable section
namespace FormalResearch.RiemannHypothesis.PositivePrimitiveReview
open MeasureTheory Function
open SourcePrimitiveBumpProfile SourceBumpAutocorrelation SourcePositivePeanoPrimitive
open SourcePrimitivePrimeInteraction SourcePrimitiveCorrelationCurvature SourceCausalEnergy SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateCorrelation

example {A : ℝ} (hA : 1 ≤ A) :
    deriv (deriv (sourcePeanoPrimitive A)) 0 = 1 := by
  rw [sourcePeanoPrimitive_second_deriv (by linarith), actual_correlation_at_zero A hA]
  norm_num

example {A : ℝ} (hA : 0 < A) : primitiveCorrelationZero A (2*A) = 0 := by
  rw [primitiveCorrelationZero_eq_profile hA (by linarith) le_rfl]
  have he : (2*A)/A = (2:ℝ) := by field_simp
  rw [he]
  norm_num [overlapProfile]

private theorem zero_derivative {A : ℝ} (hA : 0 < A) :
    deriv (primitiveCorrelationZero A) 0 = 0 := by
  have heven : Function.Even (primitiveCorrelationZero A) := by
    intro t
    unfold primitiveCorrelationZero
    have h := integral_sub_right_eq_self (μ := volume)
      (fun x => normalizedPrimitiveBump A x * normalizedPrimitiveBump A (x - -t)) t
    simpa only [sub_neg_eq_add, sub_add_cancel, mul_comm] using h.symm
  have hc := ((primitiveCorrelationZero_contDiff_two hA).differentiable (by norm_num) 0).hasDerivAt
  have hcn : HasDerivAt (primitiveCorrelationZero A) (deriv (primitiveCorrelationZero A) 0) (-(0:ℝ)) := by
    simpa only [neg_zero] using hc
  have hn : HasDerivAt (fun t => primitiveCorrelationZero A (-t))
      (-deriv (primitiveCorrelationZero A) 0) 0 := by
    simpa only [neg_zero, mul_neg_one, Function.comp_def] using
      hcn.comp 0 (hasDerivAt_neg (0 : ℝ))
  have he : (fun t => primitiveCorrelationZero A (-t)) = primitiveCorrelationZero A :=
    funext heven
  rw [he] at hn
  have hu := hc.unique hn
  linarith

example : sourcePeanoPrimitive (1:ℝ) 0 = -(172/2541 : ℝ) := by
  unfold sourcePeanoPrimitive
  rw [zero_derivative (by norm_num), primitiveCorrelationZero_second_deriv_eq_neg_one (by norm_num)]
  unfold primitiveCorrelationOne primitiveCorrelationZero
  simp only [sub_zero, ← pow_two]
  rw [normalizedPrimitiveBump_deriv_square_integral (by norm_num),
    normalizedPrimitiveBump_square_integral (by norm_num)]
  norm_num [sourceNormalization]

end FormalResearch.RiemannHypothesis.PositivePrimitiveReview
```
