# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.GlobalAlignment.Variantdd4282a134863bb9665c2fa454ff4e0179f6f46eabc4d3669030156569a678ab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `410093ae4a2080e212572db812b6ed8cf323784e` · SHA-256 `14d5d2cde7de6908eb1da9b8fbf8737549e7e44ee9cc8d1a382d91432b41008c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.CanonicalPathProgram.Variant45b7f09242659ce4dc6a34e3d5908ddaf937424f784ddef16c13496a99dd9337","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"45b7f09242659ce4dc6a34e3d5908ddaf937424f784ddef16c13496a99dd9337","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.MomentsAndRandomVariables.SourceCorpus.CanonicalPathProgram.Variant45b7f09242659ce4dc6a34e3d5908ddaf937424f784ddef16c13496a99dd9337","mathematical_subject":"Probability.MomentsAndRandomVariables","original_sha256":"45b7f09242659ce4dc6a34e3d5908ddaf937424f784ddef16c13496a99dd9337","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CanonicalPath/GlobalAlignment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CanonicalPath.GlobalIndexNonzero
import Folder.CanonicalPath.TransportInvariance
import Folder.CanonicalPath.IndexSpectralBridge

/-!
# Folder.CanonicalPath.GlobalAlignment

Radiation role: research-boundary
BinaryMatrix spine: This module composes canonical-path contracts, not BinaryMatrix zero data.
Ontology: canonical_path.global_alignment
Pivot role: dual
Zero typology: l-function
Contract boundary: contract-composition
Composite stack role: canonical-path
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.CanonicalPathProgram.Variant45b7f09242659ce4dc6a34e3d5908ddaf937424f784ddef16c13496a99dd9337

namespace Folder
namespace CanonicalPath

/--
The current canonical-path assembly contract.

This is still conditional: global nonzero index and index-spectral alignment
are supplied by the component records. Transport invariance is recorded as a
separate contract field to avoid conflating persistence with boundary
alignment.
-/
structure CanonicalPathProgram
    (M : DerivedSheaf.MellKTheory) where
  globalIndex : GlobalKIndexNonzero M
  transportInvariant : Prop
  transportInvariant_certified : transportInvariant
  bridgeAt :
    ∀ x : globalIndex.Object,
      IndexSpectralAlignmentBridge M (globalIndex.kIndexAt x)
  criticalLineBridgeAt :
    ∀ x : globalIndex.Object,
      SpectralBoundaryCriticalLineTargetBridge (bridgeAt x).target
  sourceLabel : String

theorem canonical_path_transport_invariant
    {M : DerivedSheaf.MellKTheory}
    (P : CanonicalPathProgram M) :
    P.transportInvariant :=
  P.transportInvariant_certified

theorem canonical_path_global_index_nonzero
    {M : DerivedSheaf.MellKTheory}
    (P : CanonicalPathProgram M)
    {x : P.globalIndex.Object}
    (h : P.globalIndex.relevant x) :
    (P.globalIndex.kIndexAt x).indexClass.Nonzero :=
  global_k_index_nonzero P.globalIndex h

theorem canonical_path_spectral_alignment
    {M : DerivedSheaf.MellKTheory}
    (P : CanonicalPathProgram M)
    {x : P.globalIndex.Object}
    (h : P.globalIndex.relevant x) :
    (P.bridgeAt x).target.boundaryData.aligned :=
  index_spectral_alignment (P.bridgeAt x)
    (canonical_path_global_index_nonzero P h)

theorem conditional_global_spectral_alignment_from_supplied_bridge
    {M : DerivedSheaf.MellKTheory}
    (P : CanonicalPathProgram M)
    {x : P.globalIndex.Object}
    (h : P.globalIndex.relevant x)
    (z : (P.bridgeAt x).target.Zeros) :
    Research.LFunctionZero.LiesOnCriticalLine
      ((P.bridgeAt x).target.zeroData z) :=
  critical_line_from_index_spectral_alignment
    (P.bridgeAt x)
    (P.criticalLineBridgeAt x)
    (canonical_path_global_index_nonzero P h)
    z

end CanonicalPath
end Folder
```
