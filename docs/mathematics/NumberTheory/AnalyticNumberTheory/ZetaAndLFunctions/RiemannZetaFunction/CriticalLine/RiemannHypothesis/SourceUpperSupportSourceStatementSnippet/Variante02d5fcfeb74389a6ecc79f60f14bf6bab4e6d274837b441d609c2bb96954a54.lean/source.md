# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceUpperSupportSourceStatementSnippet.Variante02d5fcfeb74389a6ecc79f60f14bf6bab4e6d274837b441d609c2bb96954a54

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba4f85f5ecea0432f3de3c1956f3964c26cff916` · SHA-256 `aeb04f94a7f4bcbff0972e76b47dcdf31ee1f3f245fc9f0de68a16ec08a03fa2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceUnit.Variantb4a50688ebb7c53615b863378aa75916cdf7f8529b88903dbc993a1cf26f5e06","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b4a50688ebb7c53615b863378aa75916cdf7f8529b88903dbc993a1cf26f5e06","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceUnit.Variantb4a50688ebb7c53615b863378aa75916cdf7f8529b88903dbc993a1cf26f5e06","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"b4a50688ebb7c53615b863378aa75916cdf7f8529b88903dbc993a1cf26f5e06","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/prime-budget/source-upper-support-source-statement-snippet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceUnit.Variantb4a50688ebb7c53615b863378aa75916cdf7f8529b88903dbc993a1cf26f5e06

namespace SourceUpperSupportStatementChecks

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

noncomputable section

example (A x : ℝ) (hx : 0 < x)
    (hcut : Real.exp (2*A) ≤ 2*x) : SourceSampling.sourceSamplingKernel A x = 0 := by
  exact SourceUpperSupport.sourceSamplingKernel_zero_of_two_mul_ge A x hx hcut

example (A : ℝ) (q : ℕ) (hq : 1 ≤ q)
    (hcut : Real.exp (2*A) ≤ 2*(q:ℝ)) : ThetaKernelTransport.thetaKernel A q = 0 := by
  exact SourceUpperSupport.thetaKernel_zero_of_two_mul_ge A q hq hcut

example (A : ℝ) (q : ℕ) (hA : 1 ≤ A) (hq : 1 ≤ q)
    (hcut : Real.exp (2*A) ≤ 4*(q:ℝ)) :
    ThetaKernelTransport.thetaKernel A q = SourceSampling.sourceSamplingKernel A q := by
  exact SourceUpperSupport.thetaKernel_eq_sourceSamplingKernel A q hA hq hcut

example (A x : ℝ) (hx : 0 < x)
    (hcut : Real.exp (2*A) ≤ 4*x) :
    SourceSampling.sourceSamplingKernel A x =
      (if 2*x < Real.exp (2*A) then
        Real.log 2 / Real.sqrt (2*x) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log (2*x)) else 0) +
      (if 3*x < Real.exp (2*A) then
        Real.log 3 / Real.sqrt (3*x) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log (3*x)) else 0) := by
  exact SourceUpperSupport.sourceSamplingKernel_eq_two_channels A x hx hcut

example (A : ℝ) (q : ℕ) (hA : 1 ≤ A) (hq : 1 ≤ q)
    (hcut : Real.exp (2*A) ≤ 4*(q:ℝ)) :
    ThetaKernelTransport.thetaKernel A q =
      (if 2*(q:ℝ) < Real.exp (2*A) then
        Real.log 2 / Real.sqrt (2*(q:ℝ)) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log (2*(q:ℝ))) else 0) +
      (if 3*(q:ℝ) < Real.exp (2*A) then
        Real.log 3 / Real.sqrt (3*(q:ℝ)) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log (3*(q:ℝ))) else 0) := by
  exact SourceUpperSupport.thetaKernel_eq_two_channels A q hA hq hcut

example (A : ℝ) (q : ℕ) (hq : 1 ≤ q)
    (hcut : Real.exp (2*A) ≤ 2*(q:ℝ)) :
    ThetaRemainder.thetaRemainder A q =
      -CorrelationSecondMoment.sourceRankOneCoefficient A / (q:ℝ) := by
  exact SourceUpperSupport.thetaRemainder_eq_neg_rankOne_of_two_mul_ge A q hq hcut

end
end SourceUpperSupportStatementChecks
```
