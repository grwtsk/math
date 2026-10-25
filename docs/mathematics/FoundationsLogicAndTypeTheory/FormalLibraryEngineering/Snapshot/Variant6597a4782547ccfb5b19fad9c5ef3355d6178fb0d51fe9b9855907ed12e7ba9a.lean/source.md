# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Snapshot.Variant6597a4782547ccfb5b19fad9c5ef3355d6178fb0d51fe9b9855907ed12e7ba9a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa5ac02d3c64e1ccffa5cc8d2fc717b6333555d4` · SHA-256 `6597a4782547ccfb5b19fad9c5ef3355d6178fb0d51fe9b9855907ed12e7ba9a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
