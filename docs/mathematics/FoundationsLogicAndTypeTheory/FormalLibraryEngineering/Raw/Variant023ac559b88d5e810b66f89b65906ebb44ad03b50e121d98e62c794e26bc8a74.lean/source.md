# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Raw.Variant023ac559b88d5e810b66f89b65906ebb44ad03b50e121d98e62c794e26bc8a74

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d6eac2aca9468f69f667f7a5550d56403b77c78` · SHA-256 `023ac559b88d5e810b66f89b65906ebb44ad03b50e121d98e62c794e26bc8a74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
