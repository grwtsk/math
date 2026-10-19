import Mathematics.Ecosystem.Registry
import Mathematics.Relaxation.Level

/-! # Immutable-source, mutable-overlay relaxation state -/

namespace Mathematics.Relaxation

/-- One proposal-only overlay object; source bytes remain untouched. -/
structure OverlayElement where
  elementId : StableId
  sourceObjectIds : List StableId
  payloadDigest : Digest
  authority : String
  deriving DecidableEq, Repr

/-- Finite work-package identity and exact source boundary. -/
structure WorkPackage where
  packageId : StableId
  sourceSnapshots : List Ecosystem.ProjectSnapshot
  sourceSnapshotKeysUnique :
    (sourceSnapshots.map Ecosystem.ProjectSnapshot.key).Nodup
  projectSnapshots : List Ecosystem.ProjectSnapshotKey
  projectSnapshots_exact :
    projectSnapshots =
      sourceSnapshots.map Ecosystem.ProjectSnapshot.key
  sourceObjectIds : List StableId
  scopeDigest : Digest

/-- Relaxation state separates immutable ecosystem input from its overlay. -/
structure State where
  ecosystemDigest : Digest
  workPackage : WorkPackage
  level : Level
  overlay : List OverlayElement
  openResidueIds : List StableId
  openObligationIds : List StableId
  overlayDigest : Digest

end Mathematics.Relaxation
