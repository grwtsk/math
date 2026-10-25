# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReviewBinding.Variant437acb50cbf5f0132cd3bb8f627f2d61ef42896047e5198056781ffff5654166

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c334cabebcc0b61e8a8a654b896c69ec3c62aa4` · SHA-256 `437acb50cbf5f0132cd3bb8f627f2d61ef42896047e5198056781ffff5654166`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
