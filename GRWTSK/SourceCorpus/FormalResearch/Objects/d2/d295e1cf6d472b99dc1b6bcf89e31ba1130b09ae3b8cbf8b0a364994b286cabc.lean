import Surface.ContinuousAssurance.Index.ReviewBinding

/-!
# Human authorization binding for canonical-index patches

Review recommends; authorization permits an exact governance action.  Neither
discharges mathematical obligations or creates theorem authority.
-/

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
