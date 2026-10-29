-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WorldModelVersionId.Variant339fed6be2bd0c7febde9d28fb43455cb6ef8b82d2c35f50cc9bbd8f894dcdb0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"339fed6be2bd0c7febde9d28fb43455cb6ef8b82d2c35f50cc9bbd8f894dcdb0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.WorldModelVersionId.Variant339fed6be2bd0c7febde9d28fb43455cb6ef8b82d2c35f50cc9bbd8f894dcdb0","mathematical_subject":"Foundations.Unclassified","original_sha256":"339fed6be2bd0c7febde9d28fb43455cb6ef8b82d2c35f50cc9bbd8f894dcdb0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/WorldModel/Version.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.WorldModel.Identity

/-!
# Independent version coordinates

Semantic, representation, implementation, checker, and registry versions are
recorded separately. Equality of opaque source digests is not promoted to a
semantic-equivalence theorem.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WorldModelVersionId.Variant339fed6be2bd0c7febde9d28fb43455cb6ef8b82d2c35f50cc9bbd8f894dcdb0

namespace Surface.ContinuousAssurance.WorldModel

/-- The pinned identity of one semantic world-model version. -/
structure WorldModelVersionId where
  modelId : WorldModelId
  version : DAF.Version
  sourceDigest : ArtifactIdentity
  deriving DecidableEq, Repr

/-- Independent coordinates needed to reject accidental version conflation. -/
structure VersionCoordinates where
  semantic : DAF.Version
  representation : DAF.Version
  implementation : DAF.Version
  checker : DAF.Version
  registry : DAF.Version
  deriving DecidableEq, Repr

/-- Changing the semantic version changes the full version coordinate. -/
theorem VersionCoordinates.ne_of_semantic_ne
    {left right : VersionCoordinates}
    (h : left.semantic ≠ right.semantic) :
    left ≠ right := by
  intro equal
  exact h (congrArg VersionCoordinates.semantic equal)

/-- A source-digest change changes the pinned world-model version identity. -/
theorem WorldModelVersionId.ne_of_sourceDigest_ne
    {left right : WorldModelVersionId}
    (h : left.sourceDigest ≠ right.sourceDigest) :
    left ≠ right := by
  intro equal
  exact h (congrArg WorldModelVersionId.sourceDigest equal)

/-- A semantic-version change changes the pinned world-model version identity. -/
theorem WorldModelVersionId.ne_of_version_ne
    {left right : WorldModelVersionId}
    (h : left.version ≠ right.version) :
    left ≠ right := by
  intro equal
  exact h (congrArg WorldModelVersionId.version equal)

end Surface.ContinuousAssurance.WorldModel

