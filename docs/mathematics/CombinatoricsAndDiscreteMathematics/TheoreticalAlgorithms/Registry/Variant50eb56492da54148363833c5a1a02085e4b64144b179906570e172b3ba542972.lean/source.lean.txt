import Mathematics.Ecosystem.Snapshot

/-! # Finite ecosystem registries -/

namespace Mathematics.Ecosystem

/-- Revision-qualified key for one immutable project snapshot. -/
structure ProjectSnapshotKey where
  project : ProjectId
  revisionId : StableId
  deriving DecidableEq, Repr

def ProjectSnapshot.key (snapshot : ProjectSnapshot) : ProjectSnapshotKey :=
  ⟨snapshot.identity.projectId, snapshot.revision.revisionId⟩

/-- A finite ecosystem snapshot permits many project and toolchain versions. -/
structure Registry where
  snapshots : List ProjectSnapshot
  keysUnique : (snapshots.map ProjectSnapshot.key).Nodup
  registryDigest : Digest

namespace Registry

/-- Lookup is revision-qualified; project name alone is never a global key. -/
def find?
    (registry : Registry)
    (key : ProjectSnapshotKey) : Option ProjectSnapshot :=
  registry.snapshots.find? fun snapshot ↦ snapshot.key = key

end Registry

end Mathematics.Ecosystem
