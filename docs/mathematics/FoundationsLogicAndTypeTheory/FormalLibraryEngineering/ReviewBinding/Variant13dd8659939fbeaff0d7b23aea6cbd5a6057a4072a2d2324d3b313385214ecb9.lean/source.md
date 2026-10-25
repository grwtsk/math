# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReviewBinding.Variant13dd8659939fbeaff0d7b23aea6cbd5a6057a4072a2d2324d3b313385214ecb9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b9c694db0f010ccc31e78d2947269a3d3310162` · SHA-256 `217b4e2ebc2f7e3943dbaa8871b918272666c04a361c8ac8a3eb38ef6c83c74d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CanonicalIndexPatchReview.Variant437acb50cbf5f0132cd3bb8f627f2d61ef42896047e5198056781ffff5654166","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"437acb50cbf5f0132cd3bb8f627f2d61ef42896047e5198056781ffff5654166","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CanonicalIndexPatchReview.Variant437acb50cbf5f0132cd3bb8f627f2d61ef42896047e5198056781ffff5654166","mathematical_subject":"Foundations.Unclassified","original_sha256":"437acb50cbf5f0132cd3bb8f627f2d61ef42896047e5198056781ffff5654166","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/Index/ReviewBinding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.Index.Serialization

/-!
# Independent review binding for canonical-index patches
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CanonicalIndexPatchReview.Variant437acb50cbf5f0132cd3bb8f627f2d61ef42896047e5198056781ffff5654166

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
