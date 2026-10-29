-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArtifactKey.Variantcaed1eacc75b9207a81b80e3c354cc128bf0f4242bf1718b6037c9b733b04e8e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"caed1eacc75b9207a81b80e3c354cc128bf0f4242bf1718b6037c9b733b04e8e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ArtifactKey.Variantcaed1eacc75b9207a81b80e3c354cc128bf0f4242bf1718b6037c9b733b04e8e","mathematical_subject":"Computation.DataStructures","original_sha256":"caed1eacc75b9207a81b80e3c354cc128bf0f4242bf1718b6037c9b733b04e8e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Incremental/Artifact.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Incremental.AffectedOrder


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArtifactKey.Variantcaed1eacc75b9207a81b80e3c354cc128bf0f4242bf1718b6037c9b733b04e8e

namespace Surface
namespace Incremental

structure ArtifactKey where
  moduleKey : ModuleKey
  kind : ArtifactKind
  path : String
deriving Repr, DecidableEq

inductive ArtifactAction where
  | regenerate
  | reuse
  | deleteStale
  | fail
deriving Repr, DecidableEq

structure ArtifactPlanEntry where
  key : ArtifactKey
  action : ArtifactAction
  oldHash? : Option ContentHash
  newHash? : Option ContentHash
  reason : InclusionReason
  explanation : String
  claimBoundary : List String
deriving Repr

structure ArtifactReuseCertificate where
  key : ArtifactKey
  oldHash : ContentHash
  reusedHash : ContentHash
  hashesIdentical : oldHash = reusedHash
  claimBoundary : List String
deriving Repr

theorem unchangedModule_has_identical_artifact_hash
    (C : ArtifactReuseCertificate) :
    C.oldHash = C.reusedHash :=
  C.hashesIdentical

end Incremental
end Surface
