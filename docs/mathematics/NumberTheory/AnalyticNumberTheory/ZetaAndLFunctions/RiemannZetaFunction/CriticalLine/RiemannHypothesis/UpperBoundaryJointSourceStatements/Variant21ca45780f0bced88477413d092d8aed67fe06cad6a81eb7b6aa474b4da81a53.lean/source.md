# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.UpperBoundaryJointSourceStatements.Variant21ca45780f0bced88477413d092d8aed67fe06cad6a81eb7b6aa474b4da81a53

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86502d086c42ac6c7112aea1747f253cb7fe9d05` · SHA-256 `263e05664f9ec495f65e02fe6b024fe4b46f62f624d4bbf76fe8f2f801680733`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.UpperBoundaryJoint.Variant2e1b2886e43c293f145e700c0a8e9699a6f89bf99adc952610cccfcf6adccdc1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e1b2886e43c293f145e700c0a8e9699a6f89bf99adc952610cccfcf6adccdc1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.UpperBoundaryJoint.Variant2e1b2886e43c293f145e700c0a8e9699a6f89bf99adc952610cccfcf6adccdc1","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"2e1b2886e43c293f145e700c0a8e9699a6f89bf99adc952610cccfcf6adccdc1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/arithmetic-routes/UpperBoundaryJointSourceStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryJoint

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.UpperBoundaryJoint.Variant2e1b2886e43c293f145e700c0a8e9699a6f89bf99adc952610cccfcf6adccdc1

set_option autoImplicit false
section SourceUpperBoundaryJointStatements
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryJoint

example (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      UpperBoundaryChannels.coreValue A +
        2 * ∫ x in 1..Real.exp (2 * A),
          UpperBoundaryAbel.upperProductSummatory ⌊Real.exp A⌋₊ x *
            deriv (SourceSampling.sourceSamplingKernel A) x :=
  sourceQuadraticValue_eq_core_add_integral A hA

example (A : ℝ) (hA : 1 ≤ A) :
    max (-sourceQuadraticValue explicitSecondDerivative A) 0 =
      max (-UpperBoundaryChannels.coreValue A -
        2 * ∫ x in 1..Real.exp (2 * A),
          UpperBoundaryAbel.upperProductSummatory ⌊Real.exp A⌋₊ x *
            deriv (SourceSampling.sourceSamplingKernel A) x) 0 :=
  sourceQuadraticValue_negativePart_eq A hA

end SourceUpperBoundaryJointStatements
```
