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
