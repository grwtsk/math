import Mathematics.Ecosystem.ProjectIdentity
import Mathematics.Toolchain.LakeGraph

/-! # Project-federated toolchain capsules -/

namespace Mathematics.Toolchain

/--
An exact, project-local reconstruction environment.  Multiple capsules may
carry incompatible Lean or Mathlib revisions without flattening.
-/
structure Capsule where
  capsuleId : StableId
  project : ProjectId
  revisionId : StableId
  lean : LeanVersion
  lakeGraph : LakeGraph
  buildTargetIds : List StableId
  buildTargetIdsUnique : buildTargetIds.Nodup
  platform : String
  toolchainDigest : Digest
  buildOptionsDigest : Digest
  environmentDigest : Digest

/-- Capsule identity is qualified by project and revision. -/
structure CapsuleKey where
  project : ProjectId
  revisionId : StableId
  capsuleId : StableId
  deriving DecidableEq, Repr

def Capsule.key (capsule : Capsule) : CapsuleKey :=
  ⟨capsule.project, capsule.revisionId, capsule.capsuleId⟩

end Mathematics.Toolchain
