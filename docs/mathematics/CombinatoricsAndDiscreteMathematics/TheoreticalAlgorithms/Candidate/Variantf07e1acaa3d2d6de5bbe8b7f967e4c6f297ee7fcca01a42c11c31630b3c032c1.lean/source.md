# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Candidate.Variantf07e1acaa3d2d6de5bbe8b7f967e4c6f297ee7fcca01a42c11c31630b3c032c1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1eb5cc7c394d1a3b39149628b1d4f111c59fce82` · SHA-256 `f07e1acaa3d2d6de5bbe8b7f967e4c6f297ee7fcca01a42c11c31630b3c032c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Relaxation.Stability
import Mathematics.Reflection.Destination
import Mathematics.Toolchain.Capsule

/-! # Reflection candidates -/

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
