# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Core.Variant5e244bd8d5a89dc5d7a99aafb6776bb5247c12792750f1cc336c5a2221a756ea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4167048557cdfa0a9ae9e0fe9c1a9e076d9dbf9` · SHA-256 `04eda1447590772f284c4480dd69b4df24b5691c0ff1dae0519713d839d70736`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModuleSnapshot.Variantf62a5afd1870de6337deb2e3e7e9af3716cce801979047b83681023c4696196e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f62a5afd1870de6337deb2e3e7e9af3716cce801979047b83681023c4696196e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ModuleSnapshot.Variantf62a5afd1870de6337deb2e3e7e9af3716cce801979047b83681023c4696196e","mathematical_subject":"Computation.DataStructures","original_sha256":"f62a5afd1870de6337deb2e3e7e9af3716cce801979047b83681023c4696196e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Incremental/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.AST.Core
import Surface.Incremental.Hash
import Surface.Incremental.ModuleKey


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModuleSnapshot.Variantf62a5afd1870de6337deb2e3e7e9af3716cce801979047b83681023c4696196e

namespace Surface
namespace Incremental

open Surface.AST

structure ModuleSnapshot where
  key : ModuleKey
  sourceHash : ContentHash
  moduleAstHash : ContentHash
  declarationAstHash : ContentHash
  siteArtifactHash? : Option ContentHash
  moduleAst : LeanModuleAst
  declarations : List LeanDeclarationAst
  claimBoundary : List String
deriving Repr

theorem moduleSnapshot_claimBoundary_visible
    (S : ModuleSnapshot) :
    S.claimBoundary = S.claimBoundary :=
  rfl

end Incremental
end Surface
```
