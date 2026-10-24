# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceUpperSupportStatementSnippet.Variant4c95fe10f2d75a3c94378f89bc2d5fa48d271a684bfde1d9b06c8757c87756cb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95954085ffb79c3cf893f7c0fa9ed81097ce5e65` · SHA-256 `620eaba31ac410ca68291d57d65de99727d0d2ae961a550f65acc91f5c6a77df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceUnit.Variant1935c2861cb534dc62e674f32c9912eb1b22d5e73d18cf0feacfc5047cf36358","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1935c2861cb534dc62e674f32c9912eb1b22d5e73d18cf0feacfc5047cf36358","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceUnit.Variant1935c2861cb534dc62e674f32c9912eb1b22d5e73d18cf0feacfc5047cf36358","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"1935c2861cb534dc62e674f32c9912eb1b22d5e73d18cf0feacfc5047cf36358","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/prime-budget/source-upper-support-statement-snippet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceUnit.Variant1935c2861cb534dc62e674f32c9912eb1b22d5e73d18cf0feacfc5047cf36358

namespace SourceUpperSupportStatementChecks

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

noncomputable section

example (A x : ℝ) (hx : 0 < x)
    (hcut : Real.exp (2*A) ≤ 2*x) : SourceSampling.sourceSamplingKernel A x = 0 := by
  exact SourceUpperSupportScratch.sourceSamplingKernel_zero_of_two_mul_ge A x hx hcut

example (A : ℝ) (q : ℕ) (hq : 1 ≤ q)
    (hcut : Real.exp (2*A) ≤ 2*(q:ℝ)) : ThetaKernelTransport.thetaKernel A q = 0 := by
  exact SourceUpperSupportScratch.thetaKernel_zero_of_two_mul_ge A q hq hcut

example (A : ℝ) (q : ℕ) (hA : 1 ≤ A) (hq : 1 ≤ q)
    (hcut : Real.exp (2*A) ≤ 4*(q:ℝ)) :
    ThetaKernelTransport.thetaKernel A q = SourceSampling.sourceSamplingKernel A q := by
  exact SourceUpperSupportScratch.thetaKernel_eq_sourceSamplingKernel A q hA hq hcut

example (A x : ℝ) (hx : 0 < x)
    (hcut : Real.exp (2*A) ≤ 4*x) :
    SourceSampling.sourceSamplingKernel A x =
      (if 2*x < Real.exp (2*A) then
        Real.log 2 / Real.sqrt (2*x) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log (2*x)) else 0) +
      (if 3*x < Real.exp (2*A) then
        Real.log 3 / Real.sqrt (3*x) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log (3*x)) else 0) := by
  exact SourceUpperSupportScratch.sourceSamplingKernel_eq_two_channels A x hx hcut

example (A : ℝ) (q : ℕ) (hA : 1 ≤ A) (hq : 1 ≤ q)
    (hcut : Real.exp (2*A) ≤ 4*(q:ℝ)) :
    ThetaKernelTransport.thetaKernel A q =
      (if 2*(q:ℝ) < Real.exp (2*A) then
        Real.log 2 / Real.sqrt (2*(q:ℝ)) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log (2*(q:ℝ))) else 0) +
      (if 3*(q:ℝ) < Real.exp (2*A) then
        Real.log 3 / Real.sqrt (3*(q:ℝ)) *
          sourceCorrelation Realization.explicitSecondDerivative A (Real.log (3*(q:ℝ))) else 0) := by
  exact SourceUpperSupportScratch.thetaKernel_eq_two_channels A q hA hq hcut

example (A : ℝ) (q : ℕ) (hq : 1 ≤ q)
    (hcut : Real.exp (2*A) ≤ 2*(q:ℝ)) :
    ThetaRemainder.thetaRemainder A q =
      -CorrelationSecondMoment.sourceRankOneCoefficient A / (q:ℝ) := by
  exact SourceUpperSupportScratch.thetaRemainder_eq_neg_rankOne_of_two_mul_ge A q hq hcut

end
end SourceUpperSupportStatementChecks
```
