# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Audit.Variantcc9916a8dd7d02810df6218760cdf0c99882d2eff634ea3230e9603a8f688121

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `075f1330857edfbcf9727214ef14713360453f4c` · SHA-256 `495d1e182a9be04ef79cb2de6ac824a62ecab070f70a3b187b4a74cab6c01565`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Fourth.Varianta79a7ac48d4a3b996cccd31bc42e5bdcefcffad65988ebee2bd15d6db6b21fd0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a79a7ac48d4a3b996cccd31bc42e5bdcefcffad65988ebee2bd15d6db6b21fd0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.Fourth.Varianta79a7ac48d4a3b996cccd31bc42e5bdcefcffad65988ebee2bd15d6db6b21fd0","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"a79a7ac48d4a3b996cccd31bc42e5bdcefcffad65988ebee2bd15d6db6b21fd0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh-packet-20261005/primitive-curvature-worker/Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Fourth.Varianta79a7ac48d4a3b996cccd31bc42e5bdcefcffad65988ebee2bd15d6db6b21fd0

#check FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature.primitiveCorrelationZero_second_deriv_eq_neg_one
#print axioms FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature.primitiveCorrelationZero_second_deriv_eq_neg_one
#check FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature.primitiveCorrelationOne_second_deriv_eq_neg_two
#print axioms FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature.primitiveCorrelationOne_second_deriv_eq_neg_two
#check FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature.primitiveCorrelationZero_contDiff_two
#print axioms FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature.primitiveCorrelationZero_contDiff_two
#check FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature.primitiveCorrelationOne_contDiff_two
#print axioms FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature.primitiveCorrelationOne_contDiff_two
#check FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature.primitiveCorrelationZero_contDiff_four
#print axioms FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature.primitiveCorrelationZero_contDiff_four

noncomputable section
namespace FormalResearch.RiemannHypothesis.PrimitiveCurvatureWorkerAudit
open MeasureTheory SourcePrimitiveCorrelationCurvature SourcePrimitivePrimeInteraction
open SourceCausalEnergy SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

example {A : ℝ} (hA : 0 < A) :
    deriv (deriv (primitiveCorrelationZero A)) 0 < 0 := by
  rw [primitiveCorrelationZero_second_deriv_eq_neg_one hA]
  unfold primitiveCorrelationOne
  simp only [sub_zero, ← pow_two]
  rw [normalizedPrimitiveBump_deriv_square_integral hA]
  have hZ : 0 < sourceNormalization A := by unfold sourceNormalization; positivity
  exact neg_neg_of_pos (div_pos (by norm_num) (mul_pos (sq_pos_of_pos hA) hZ))

private theorem fourth {A : ℝ} (hA : 0 < A) (t : ℝ) :
    deriv (deriv (deriv (deriv (primitiveCorrelationZero A)))) t =
      primitiveCorrelationTwo A t := by
  have he : deriv (deriv (primitiveCorrelationZero A)) = -(primitiveCorrelationOne A) :=
    funext (primitiveCorrelationZero_second_deriv_eq_neg_one hA)
  rw [he, deriv.neg']
  change deriv (-deriv (primitiveCorrelationOne A)) t = primitiveCorrelationTwo A t
  rw [deriv.neg, primitiveCorrelationOne_second_deriv_eq_neg_two hA, neg_neg]

example {A : ℝ} (hA : 0 < A) (t : ℝ) :
    sourceCorrelation explicitSecondDerivative A t =
      deriv (deriv (deriv (deriv (primitiveCorrelationZero A)))) t -
        deriv (deriv (primitiveCorrelationZero A)) t / 2 + primitiveCorrelationZero A t / 16 := by
  rw [sourceCorrelation_eq_primitive_filter hA, fourth hA,
    primitiveCorrelationZero_second_deriv_eq_neg_one hA]
  ring

end FormalResearch.RiemannHypothesis.PrimitiveCurvatureWorkerAudit
```
