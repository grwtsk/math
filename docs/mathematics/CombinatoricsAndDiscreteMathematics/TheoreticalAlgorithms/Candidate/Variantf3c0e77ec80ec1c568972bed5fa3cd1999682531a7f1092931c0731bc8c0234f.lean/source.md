# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Candidate.Variantf3c0e77ec80ec1c568972bed5fa3cd1999682531a7f1092931c0731bc8c0234f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6d896bb0f9cd61fb61cca63e927981f82530cbc` · SHA-256 `7045539cdcabf7a516a1cb6f33e0655af5c805a2d3adebfbdad240b3da0249ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Candidate.Variantf07e1acaa3d2d6de5bbe8b7f967e4c6f297ee7fcca01a42c11c31630b3c032c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f07e1acaa3d2d6de5bbe8b7f967e4c6f297ee7fcca01a42c11c31630b3c032c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Candidate.Variantf07e1acaa3d2d6de5bbe8b7f967e4c6f297ee7fcca01a42c11c31630b3c032c1","mathematical_subject":"Computation.DataStructures","original_sha256":"f07e1acaa3d2d6de5bbe8b7f967e4c6f297ee7fcca01a42c11c31630b3c032c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Reflection/Candidate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Relaxation.Stability
import Mathematics.Reflection.Destination
import Mathematics.Toolchain.Capsule

/-! # Reflection candidates -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Candidate.Variantf07e1acaa3d2d6de5bbe8b7f967e4c6f297ee7fcca01a42c11c31630b3c032c1

namespace Mathematics.Reflection

/--
A stable overlay may propose reflection.  The candidate itself grants no
permission to modify source or claim theorem preservation.
-/
structure Candidate where
  candidateId : StableId
  evidenceSource : Ecosystem.ProjectSnapshotKey
  destination : Destination
  targetSnapshot : Ecosystem.ProjectSnapshot
  targetCapsule : Toolchain.CapsuleKey
  target_capsule_project :
    targetCapsule.project = targetSnapshot.identity.projectId
  target_capsule_revision :
    targetCapsule.revisionId = targetSnapshot.revision.revisionId
  target_capsule_identity :
    targetCapsule.capsuleId = targetSnapshot.toolchainCapsuleId
  workPackage : Relaxation.WorkPackage
  overlayElementIds : List StableId
  rationaleDigest : Digest
  authority : String

end Mathematics.Reflection
```
