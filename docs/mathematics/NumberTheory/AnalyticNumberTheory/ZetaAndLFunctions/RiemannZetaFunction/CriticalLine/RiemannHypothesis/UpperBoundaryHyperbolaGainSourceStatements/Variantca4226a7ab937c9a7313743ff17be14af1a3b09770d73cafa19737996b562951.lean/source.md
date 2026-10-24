# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.UpperBoundaryHyperbolaGainSourceStatements.Variantca4226a7ab937c9a7313743ff17be14af1a3b09770d73cafa19737996b562951

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be55cac8c304cfe92d4d0420eb91809b3679bb41` · SHA-256 `3c610e884ac6cfaece3f014b97cbec30ae8c2c3890f65f509a7a57d093c3b3c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.UpperBoundaryHyperbolaGain.Variant8b3ffe6d0ae93608bc380d655a32547e29f62a4172b84f5d88ceb2354c273a27","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8b3ffe6d0ae93608bc380d655a32547e29f62a4172b84f5d88ceb2354c273a27","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.UpperBoundaryHyperbolaGain.Variant8b3ffe6d0ae93608bc380d655a32547e29f62a4172b84f5d88ceb2354c273a27","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"8b3ffe6d0ae93608bc380d655a32547e29f62a4172b84f5d88ceb2354c273a27","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/arithmetic-routes/UpperBoundaryHyperbolaGainSourceStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbolaGain

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.UpperBoundaryHyperbolaGain.Variant8b3ffe6d0ae93608bc380d655a32547e29f62a4172b84f5d88ceb2354c273a27

set_option autoImplicit false
section SourceUpperBoundaryHyperbolaGainStatements
open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbola
open FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbolaGain

example (A x : ℝ)
    (hx : x < Real.exp (2 * A) / 4) : upperSmallIndices ⌊Real.exp A⌋₊ x = ∅ :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbolaGain.upperSmallIndices_empty_below_quarter A x hx

example (A x : ℝ)
    (hx : x < Real.exp (2 * A) / 4) : upperSmallSum ⌊Real.exp A⌋₊ x = 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbolaGain.upperSmallSum_zero_below_quarter A x hx

example (A x : ℝ) (hA : 3 ≤ A) :
    upperSmallSum ⌊Real.exp A⌋₊ x ^ 2 *
      deriv (SourceSampling.sourceSamplingKernel A) x ≤ 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbolaGain.source_square_derivative_nonpos A x hA

example (A : ℝ) (hA : 3 ≤ A) :
    (∫ x in 1..Real.exp (2 * A), upperSmallSum ⌊Real.exp A⌋₊ x ^ 2 *
      deriv (SourceSampling.sourceSamplingKernel A) x) ≤ 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbolaGain.source_square_derivative_integral_nonpos A hA

example (A : ℝ) (hA : 3 ≤ A) :
    UpperBoundaryChannels.coreValue A +
      4 * (∫ x in 1..Real.exp (2 * A), upperHyperbola ⌊Real.exp A⌋₊ x *
        deriv (SourceSampling.sourceSamplingKernel A) x) ≤
      sourceQuadraticValue explicitSecondDerivative A :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbolaGain.sourceQuadraticValue_ge_core_hyperbola A hA

example (A : ℝ) (hA : 3 ≤ A) :
    max (-sourceQuadraticValue explicitSecondDerivative A) 0 ≤
      max (-UpperBoundaryChannels.coreValue A -
        4 * ∫ x in 1..Real.exp (2 * A), upperHyperbola ⌊Real.exp A⌋₊ x *
          deriv (SourceSampling.sourceSamplingKernel A) x) 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryHyperbolaGain.sourceQuadraticValue_negativePart_le A hA

end SourceUpperBoundaryHyperbolaGainStatements
```
