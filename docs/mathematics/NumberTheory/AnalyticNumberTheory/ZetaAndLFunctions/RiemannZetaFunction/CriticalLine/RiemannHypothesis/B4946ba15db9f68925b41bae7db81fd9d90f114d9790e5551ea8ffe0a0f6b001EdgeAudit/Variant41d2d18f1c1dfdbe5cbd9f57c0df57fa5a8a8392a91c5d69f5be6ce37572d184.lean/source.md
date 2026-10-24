# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.B4946ba15db9f68925b41bae7db81fd9d90f114d9790e5551ea8ffe0a0f6b001EdgeAudit.Variant41d2d18f1c1dfdbe5cbd9f57c0df57fa5a8a8392a91c5d69f5be6ce37572d184

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c82633430b7054a2af78c244c10f2c1a3ba2dece` · SHA-256 `03a7bc74529ed03c722cb278925692cbd7326cd7e98d3b0912e15c890ab39fdb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EstimateSourceEdgeCorrelation.Variantb4946ba15db9f68925b41bae7db81fd9d90f114d9790e5551ea8ffe0a0f6b001","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b4946ba15db9f68925b41bae7db81fd9d90f114d9790e5551ea8ffe0a0f6b001","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.EstimateSourceEdgeCorrelation.Variantb4946ba15db9f68925b41bae7db81fd9d90f114d9790e5551ea8ffe0a0f6b001","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"b4946ba15db9f68925b41bae7db81fd9d90f114d9790e5551ea8ffe0a0f6b001","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/b4/b4946ba15db9f68925b41bae7db81fd9d90f114d9790e5551ea8ffe0a0f6b001--EdgeAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeCorrelation

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EstimateSourceEdgeCorrelation.Variantb4946ba15db9f68925b41bae7db81fd9d90f114d9790e5551ea8ffe0a0f6b001

set_option autoImplicit false
set_option pp.fullNames true
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeCorrelation.edgePolynomial
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeCorrelation.edgePolynomial
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeCorrelation.sourceCorrelation_edge_overlap
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeCorrelation.sourceCorrelation_edge_overlap
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeCorrelation.endpointProduct_intervalIntegrable
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeCorrelation.endpointProduct_intervalIntegrable
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeCorrelation.sourceCorrelation_upper_edge
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeCorrelation.sourceCorrelation_upper_edge
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeCorrelation.sourceCorrelation_upper_edge_abs_le
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeCorrelation.sourceCorrelation_upper_edge_abs_le

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateSourceEdgeProfile EstimateSourceEdgeCorrelation
open FormalResearch.RiemannHypothesis.SourcePairing
example (A z : ℝ) (hA : 1 ≤ A) (hz : 0 ≤ z) (hzA : z ≤ 2 * A) :
    sourceCorrelation Realization.explicitSecondDerivative A (2 * A-z) =
      1 / (A^9 * sourceNormalization A) *
        ∫ r in (0 : ℝ)..z, endpointPolynomial A r * endpointPolynomial A (z-r) :=
  sourceCorrelation_upper_edge A z hA hz hzA
```
