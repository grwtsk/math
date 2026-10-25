# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SnapshotTheoremCertificate.Variant8226e55e45f54525980766d67d016c6b6b2256e15b11031b919bf61af095cd32

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `11dc7640bdc26a26b0ac74336d5f50c673ef9bc3` · SHA-256 `8226e55e45f54525980766d67d016c6b6b2256e15b11031b919bf61af095cd32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Authority.CertificateValidity

/-!
# Snapshot-indexed theorem certificates

The proof, frozen kernel environment, component dependencies, committed
authorization, and active snapshot are inseparable.  Replaying a certificate
for another statement or environment is rejected by the type indices and
digest equalities.
-/

namespace Mathematics.Authority

open Mathematics.Projection

/-- Sealed theorem authority for one exact statement at one master snapshot. -/
structure SnapshotTheoremCertificate
    (snapshot : MasterSnapshot)
    (statement : Prop) where
  private mk ::
  environment : FrozenKernelEnvironment
  kernelCertificate :
    AcceptedKernelCertificate environment statement
  metadata : CertificateMetadata
  metadata_snapshot_bound :
    metadata.snapshot = snapshot.id
  environment_bound :
    environment.environmentDigest =
      snapshot.componentDigest .build
  mathematically_valid :
    MathematicallyValidAt metadata snapshot
  authorization :
    AcceptedCertificateAuthorization metadata snapshot
  activeSnapshot :
    VerifiedActiveMasterSnapshot snapshot

namespace SnapshotTheoremCertificate

/-- Elimination reaches only the exact proposition in the type index. -/
theorem proves
    {snapshot : MasterSnapshot}
    {statement : Prop}
    (certificate :
      SnapshotTheoremCertificate snapshot statement) :
    statement :=
  certificate.kernelCertificate.proves

/-- The bound kernel replay names the exact master build environment. -/
theorem replay_environment_exact
    {snapshot : MasterSnapshot}
    {statement : Prop}
    (certificate :
      SnapshotTheoremCertificate snapshot statement) :
    certificate.kernelCertificate.audit.replay.environmentDigest =
      snapshot.componentDigest .build := by
  rw [certificate.kernelCertificate.audit_environment_bound]
  exact certificate.environment_bound

/-- A snapshot theorem certificate carries the complete usability conjunction. -/
theorem usable
    {snapshot : MasterSnapshot}
    {statement : Prop}
    (certificate :
      SnapshotTheoremCertificate snapshot statement) :
    UsableAt certificate.metadata snapshot := by
  refine
    ⟨certificate.mathematically_valid,
      ⟨certificate.authorization⟩,
      ⟨⟨certificate.activeSnapshot⟩,
        certificate.metadata_snapshot_bound⟩⟩

end SnapshotTheoremCertificate

/--
Survival across a changed component is represented by a new theorem
certificate at the successor snapshot, not by mutating the old certificate.
Both certificates prove the same indexed proposition.
-/
structure SnapshotTheoremMigration
    {before after : MasterSnapshot}
    {statement : Prop}
    (source : SnapshotTheoremCertificate before statement)
    (target : SnapshotTheoremCertificate after statement) : Prop where
  successor : after.parent = some before.id
  distinctCertificate :
    target.metadata.id ≠ source.metadata.id
  sourceRecorded :
    target.metadata.id ∉ source.metadata.upstreamCertificates
  sourceReferenced :
    source.metadata.id ∈ target.metadata.upstreamCertificates

namespace SnapshotTheoremMigration

/-- A migration concludes through the new kernel certificate at the successor. -/
theorem proves
    {before after : MasterSnapshot}
    {statement : Prop}
    {source : SnapshotTheoremCertificate before statement}
    {target : SnapshotTheoremCertificate after statement}
    (_migration : SnapshotTheoremMigration source target) :
    statement :=
  target.proves

end SnapshotTheoremMigration

end Mathematics.Authority
```
