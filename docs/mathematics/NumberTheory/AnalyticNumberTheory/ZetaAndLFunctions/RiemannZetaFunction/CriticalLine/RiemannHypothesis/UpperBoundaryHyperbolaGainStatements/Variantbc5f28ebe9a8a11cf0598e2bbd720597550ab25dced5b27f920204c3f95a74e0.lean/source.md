# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.UpperBoundaryHyperbolaGainStatements.Variantbc5f28ebe9a8a11cf0598e2bbd720597550ab25dced5b27f920204c3f95a74e0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8754072daa19aed361cc16ba595fb0f8fec289ae` · SHA-256 `a4cb2ee93639238ba79792aa46f8534dc6dbf401be38ba3a4989de2cd7e4964f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.UpperBoundaryHyperbolaGain.Variantf91c1c2c480fbd58245612c5f89ff075f706b04e6e26774567ceb647a2081e06","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f91c1c2c480fbd58245612c5f89ff075f706b04e6e26774567ceb647a2081e06","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.UpperBoundaryHyperbolaGain.Variantf91c1c2c480fbd58245612c5f89ff075f706b04e6e26774567ceb647a2081e06","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"f91c1c2c480fbd58245612c5f89ff075f706b04e6e26774567ceb647a2081e06","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/arithmetic-routes/UpperBoundaryHyperbolaGainStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import UpperBoundaryHyperbolaGain

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.UpperBoundaryHyperbolaGain.Variantf91c1c2c480fbd58245612c5f89ff075f706b04e6e26774567ceb647a2081e06

set_option autoImplicit false
section UpperBoundaryHyperbolaGainStatements
open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open UpperBoundaryHyperbolaScratch
open UpperBoundaryHyperbolaGainScratch

example (A x : ℝ)
    (hx : x < Real.exp (2 * A) / 4) : upperSmallIndices ⌊Real.exp A⌋₊ x = ∅ :=
  UpperBoundaryHyperbolaGainScratch.upperSmallIndices_empty_below_quarter A x hx

example (A x : ℝ)
    (hx : x < Real.exp (2 * A) / 4) : upperSmallSum ⌊Real.exp A⌋₊ x = 0 :=
  UpperBoundaryHyperbolaGainScratch.upperSmallSum_zero_below_quarter A x hx

example (A x : ℝ) (hA : 3 ≤ A) :
    upperSmallSum ⌊Real.exp A⌋₊ x ^ 2 *
      deriv (SourceSampling.sourceSamplingKernel A) x ≤ 0 :=
  UpperBoundaryHyperbolaGainScratch.source_square_derivative_nonpos A x hA

example (A : ℝ) (hA : 3 ≤ A) :
    (∫ x in 1..Real.exp (2 * A), upperSmallSum ⌊Real.exp A⌋₊ x ^ 2 *
      deriv (SourceSampling.sourceSamplingKernel A) x) ≤ 0 :=
  UpperBoundaryHyperbolaGainScratch.source_square_derivative_integral_nonpos A hA

example (A : ℝ) (hA : 3 ≤ A) :
    UpperBoundaryChannels.coreValue A +
      4 * (∫ x in 1..Real.exp (2 * A), upperHyperbola ⌊Real.exp A⌋₊ x *
        deriv (SourceSampling.sourceSamplingKernel A) x) ≤
      sourceQuadraticValue explicitSecondDerivative A :=
  UpperBoundaryHyperbolaGainScratch.sourceQuadraticValue_ge_core_hyperbola A hA

example (A : ℝ) (hA : 3 ≤ A) :
    max (-sourceQuadraticValue explicitSecondDerivative A) 0 ≤
      max (-UpperBoundaryChannels.coreValue A -
        4 * ∫ x in 1..Real.exp (2 * A), upperHyperbola ⌊Real.exp A⌋₊ x *
          deriv (SourceSampling.sourceSamplingKernel A) x) 0 :=
  UpperBoundaryHyperbolaGainScratch.sourceQuadraticValue_negativePart_le A hA

end UpperBoundaryHyperbolaGainStatements
```
