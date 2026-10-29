import Mathematics.Ecosystem.Admission

/-! # Immutable project snapshots -/

namespace Mathematics.Ecosystem

/--
One immutable project snapshot.  Analysis and repairs live in overlays and do
not mutate these source-authoritative fields.
-/
structure ProjectSnapshot where
  identity : ProjectIdentity
  revision : ProjectRevision
  manifest : ProjectManifest
  admission : ProjectAdmission
  toolchainCapsuleId : StableId
  rootDigest : Digest
  revision_matches :
    revision.project = identity
  manifest_matches :
    manifest.revision = revision
  admission_matches :
    admission.project = identity ∧ admission.manifest = manifest
  admitted : admission.status = .admitted

namespace ProjectSnapshot

/-- Complete capture survives packaging as a project snapshot. -/
theorem retains_source_artifact
    (snapshot : ProjectSnapshot)
    {artifactId : ArtifactId}
    (inventoried : artifactId ∈ snapshot.manifest.sourceInventory) :
    ∃ artifact ∈ snapshot.manifest.artifacts,
      artifact.artifactId = artifactId :=
  snapshot.manifest.retains_inventoried inventoried

end ProjectSnapshot

end Mathematics.Ecosystem
