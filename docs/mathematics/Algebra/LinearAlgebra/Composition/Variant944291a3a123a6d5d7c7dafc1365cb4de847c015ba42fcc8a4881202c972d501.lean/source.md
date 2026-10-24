# Complete source: GRWTSK.Algebra.LinearAlgebra.Composition.Variant944291a3a123a6d5d7c7dafc1365cb4de847c015ba42fcc8a4881202c972d501

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `213049c398e64064485923d1b005f16fd18b6b24` · SHA-256 `b7ba741eb77c668ac33125c7509e90ec3b98655354138dd0e0c2c342f166173d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Compose.Variant9969c7e3a268c061ded04c4405b86ccc5e51feb2cd1721b381485326e0ef6365","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9969c7e3a268c061ded04c4405b86ccc5e51feb2cd1721b381485326e0ef6365","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Compose.Variant9969c7e3a268c061ded04c4405b86ccc5e51feb2cd1721b381485326e0ef6365","mathematical_subject":"Foundations.Unclassified","original_sha256":"9969c7e3a268c061ded04c4405b86ccc5e51feb2cd1721b381485326e0ef6365","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Tree/Composition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Tree.Counting


namespace GRWTSK.Algebra.LinearAlgebra.Compose.Variant9969c7e3a268c061ded04c4405b86ccc5e51feb2cd1721b381485326e0ef6365

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

def compose (a b : BinaryLogicTree) : BinaryLogicTree :=
  BinaryLogicTree.compose a b

theorem compose_eq_node (a b : BinaryLogicTree) :
    compose a b = BinaryLogicTree.node a b := rfl

theorem raw_node_left_right_visible
    {A B C D : BinaryLogicTree}
    (h : BinaryLogicTree.node A B = BinaryLogicTree.node C D) :
    A = C ∧ B = D :=
  BinaryLogicTree.raw_node_left_right_visible h

end Tree
end BinaryLogicMatrix
end Surface.Legacy
```
