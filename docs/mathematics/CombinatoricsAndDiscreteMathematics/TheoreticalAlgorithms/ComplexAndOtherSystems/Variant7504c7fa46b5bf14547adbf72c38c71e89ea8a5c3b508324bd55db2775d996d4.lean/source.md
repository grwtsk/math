# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ComplexAndOtherSystems.Variant7504c7fa46b5bf14547adbf72c38c71e89ea8a5c3b508324bd55db2775d996d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29deef0488dc2b69fa798d10132cab1d67b7282d` · SHA-256 `639b85d706bc83287138773b6b9bbc83e97ceb90b8d9dc01cbcafea4692fd237`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ComplexDescriptorCode.Variant1aff3d13eeff0e7d8ad3176a622eb540b15c5927cd823cbc33917195b31e2aae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1aff3d13eeff0e7d8ad3176a622eb540b15c5927cd823cbc33917195b31e2aae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ComplexDescriptorCode.Variant1aff3d13eeff0e7d8ad3176a622eb540b15c5927cd823cbc33917195b31e2aae","mathematical_subject":"Computation.DataStructures","original_sha256":"1aff3d13eeff0e7d8ad3176a622eb540b15c5927cd823cbc33917195b31e2aae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/ComplexAndOtherSystems.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.RealCodes


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ComplexDescriptorCode.Variant1aff3d13eeff0e7d8ad3176a622eb540b15c5927cd823cbc33917195b31e2aae

namespace Surface.Legacy

structure ComplexDescriptorCode where
  realPart : RationalMatrixCode
  imagPart : RationalMatrixCode
  matrix : BinaryLogicMatrix 2 1
  analyticCompletenessClaimed : Bool
  claimBoundary : String

def complexDescriptorBoundary : String :=
  "complex analytic completeness is not claimed by finite descriptor data"

theorem complex_descriptor_boundary_visible
    (C : ComplexDescriptorCode) :
    C.claimBoundary = C.claimBoundary := by
  rfl

structure NumberSystemRegistry where
  entries : List NumberSystemRegistryEntry
  claimBoundary : String

theorem number_system_registry_is_metadata
    (R : NumberSystemRegistry) :
    R.claimBoundary = R.claimBoundary := by
  rfl

end Surface.Legacy
```
