# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuthorizationBinding.Variantd295e1cf6d472b99dc1b6bcf89e31ba1130b09ae3b8cbf8b0a364994b286cabc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0f36668b4fe93baeb1e01a040880f83f2c0d5b7` · SHA-256 `d295e1cf6d472b99dc1b6bcf89e31ba1130b09ae3b8cbf8b0a364994b286cabc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
