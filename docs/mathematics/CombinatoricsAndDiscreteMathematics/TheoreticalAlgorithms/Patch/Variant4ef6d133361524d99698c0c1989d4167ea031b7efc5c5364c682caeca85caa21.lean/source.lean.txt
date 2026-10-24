import Mathematics.Ecosystem.Snapshot
import Mathematics.Reflection.Candidate

/-! # Snapshot-bound patches -/

namespace Mathematics.Reflection

inductive PatchOperation
  | add
  | modify
  | delete
  | rename
  deriving DecidableEq, Repr

structure PatchElement where
  operation : PatchOperation
  oldPath : Option String
  newPath : Option String
  preimageDigest : Option Digest
  outputDigest : Option Digest
  deriving DecidableEq, Repr

/-- Patch preimages are bound to one immutable upstream snapshot. -/
structure Patch where
  patchId : StableId
  candidate : Candidate
  baseSnapshot : Ecosystem.ProjectSnapshot
  elements : List PatchElement
  elements_nonempty : elements ≠ []
  target_snapshot_exact :
    candidate.targetSnapshot = baseSnapshot
  patchDigest : Digest

end Mathematics.Reflection
