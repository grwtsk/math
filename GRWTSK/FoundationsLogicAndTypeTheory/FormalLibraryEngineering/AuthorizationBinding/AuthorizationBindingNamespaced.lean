-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CanonicalIndexPatchAuthorization.Variantd295e1cf6d472b99dc1b6bcf89e31ba1130b09ae3b8cbf8b0a364994b286cabc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d295e1cf6d472b99dc1b6bcf89e31ba1130b09ae3b8cbf8b0a364994b286cabc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CanonicalIndexPatchAuthorization.Variantd295e1cf6d472b99dc1b6bcf89e31ba1130b09ae3b8cbf8b0a364994b286cabc","mathematical_subject":"Foundations.Unclassified","original_sha256":"d295e1cf6d472b99dc1b6bcf89e31ba1130b09ae3b8cbf8b0a364994b286cabc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/Index/AuthorizationBinding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.Index.ReviewBinding

/-!
# Human authorization binding for canonical-index patches

Review recommends; authorization permits an exact governance action.  Neither
discharges mathematical obligations or creates theorem authority.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CanonicalIndexPatchAuthorization.Variantd295e1cf6d472b99dc1b6bcf89e31ba1130b09ae3b8cbf8b0a364994b286cabc

namespace Surface.ContinuousAssurance

structure CanonicalIndexPatchAuthorization where
  authorization : AuthorizationRecord
  patch : CanonicalIndexPatch
  target_matches : authorization.patch = patch.identity
  authorizedRoot : ArtifactIdentity
  root_matches : authorizedRoot = patch.proposedRoot

/-- Review and authorization are coherent only when they name the same root. -/
structure AuthorizedReviewedCanonicalIndexPatch where
  review : CanonicalIndexPatchReview
  authorization : CanonicalIndexPatchAuthorization
  samePatch : review.patch = authorization.patch
  sameProposedRoot : review.reviewedProposedRoot = authorization.authorizedRoot

theorem AuthorizedReviewedCanonicalIndexPatch.same_digest
    (binding : AuthorizedReviewedCanonicalIndexPatch) :
    binding.review.reviewedProposedRoot =
      binding.authorization.authorizedRoot :=
  binding.sameProposedRoot

end Surface.ContinuousAssurance
