# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Request.Variant1aa9db5640a6cb1ec7c8e3387d548bc3324900d6e900513fdb7324283c974ce7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `659b3de577cc45e100a5b7b35761e79d8ab8bd00` · SHA-256 `0234364135ce4cb9da04372828ca07d365ab307f5ee53d3c439d294c85fdf77c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ChangeKind.Variant1f964cd19cf63a603c6f86b33edf3aa857afe114e97f60ea0783ff6bd67d9213","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1f964cd19cf63a603c6f86b33edf3aa857afe114e97f60ea0783ff6bd67d9213","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ChangeKind.Variant1f964cd19cf63a603c6f86b33edf3aa857afe114e97f60ea0783ff6bd67d9213","mathematical_subject":"Computation.DataStructures","original_sha256":"1f964cd19cf63a603c6f86b33edf3aa857afe114e97f60ea0783ff6bd67d9213","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Incremental/Request.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Incremental.ImportGraph


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ChangeKind.Variant1f964cd19cf63a603c6f86b33edf3aa857afe114e97f60ea0783ff6bd67d9213

namespace Surface
namespace Incremental

inductive ChangeKind where
  | sourceChanged
  | importChanged
  | declarationChanged
  | claimBoundaryChanged
  | proofStatusChanged
  | generatorVersionChanged
  | forcedRegeneration
deriving Repr, DecidableEq

structure ChangedLeanFile where
  path : String
  beforeHash? : Option ContentHash
  afterHash : ContentHash
  changeKind : ChangeKind
  claimBoundary : List String
deriving Repr

inductive ArtifactKind where
  | moduleAst
  | declarationAst
  | declarationGraph
  | theoremManifest
  | syntacticCategory
  | syntacticSite
  | coverBasis
  | omegaFragment
  | internalLanguage
  | affineToposObject
  | pascalTreeManifest
  | resurfaceIndex
  | reportJson
deriving Repr, DecidableEq

structure IncrementalGenerationRequest where
  requestId : String
  sourceSnapshot : String
  toolchainHash : ContentHash
  generatorVersionHash : ContentHash
  changedFiles : List ChangedLeanFile
  requestedArtifactKinds : List ArtifactKind
  forceRegenerateModules : List ModuleKey
  claimBoundary : List String
deriving Repr

theorem changedLeanFile_boundary_visible
    (F : ChangedLeanFile) :
    F.claimBoundary = F.claimBoundary :=
  rfl

end Incremental
end Surface
```
