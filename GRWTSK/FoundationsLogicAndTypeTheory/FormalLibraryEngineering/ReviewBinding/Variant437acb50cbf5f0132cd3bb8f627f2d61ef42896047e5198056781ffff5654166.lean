import Surface.ContinuousAssurance.Index.Serialization

/-!
# Independent review binding for canonical-index patches
-/

namespace Surface.ContinuousAssurance

structure CanonicalIndexPatchReview where
  review : ReviewRecord
  patch : CanonicalIndexPatch
  reviewedBaseRoot : ArtifactIdentity
  reviewedProposedRoot : ArtifactIdentity
  base_matches : reviewedBaseRoot = patch.expectedBaseRoot
  result_matches : reviewedProposedRoot = patch.proposedRoot

theorem CanonicalIndexPatchReview.targets_exact_roots
    (binding : CanonicalIndexPatchReview) :
    binding.reviewedBaseRoot = binding.patch.expectedBaseRoot ∧
      binding.reviewedProposedRoot = binding.patch.proposedRoot :=
  ⟨binding.base_matches, binding.result_matches⟩

end Surface.ContinuousAssurance
