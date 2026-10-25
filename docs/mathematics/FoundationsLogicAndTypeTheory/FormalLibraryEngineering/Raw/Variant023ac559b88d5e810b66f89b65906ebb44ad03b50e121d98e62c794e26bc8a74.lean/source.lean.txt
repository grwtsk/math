import Mathematics.Ecosystem.Snapshot
import Mathematics.Toolchain.Historical

/-!
# Raw source ingestion

Raw ingestion is byte-preserving and precedes parsing, elaboration, or build
classification.
-/

namespace Mathematics.Ingestion

/-- Immutable entry point for one exact source and toolchain pair. -/
structure RawIngestion where
  ingestionId : StableId
  snapshot : Ecosystem.ProjectSnapshot
  reconstruction : Toolchain.HistoricalReconstruction
  project_matches :
    reconstruction.sandboxed.capsule.project =
      snapshot.identity.projectId
  revision_matches :
    reconstruction.sandboxed.capsule.revisionId =
      snapshot.revision.revisionId
  capsule_identity_matches :
    reconstruction.sandboxed.capsule.capsuleId =
      snapshot.toolchainCapsuleId
  ingestionDigest : Digest

end Mathematics.Ingestion
