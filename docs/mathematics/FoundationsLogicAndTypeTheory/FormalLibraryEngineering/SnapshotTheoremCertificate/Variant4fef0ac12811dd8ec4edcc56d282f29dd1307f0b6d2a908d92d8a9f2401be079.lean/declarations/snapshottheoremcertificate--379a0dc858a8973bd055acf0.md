# SnapshotTheoremCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f579b6e802e0ea40607b41144bb072794f713ef81b92cc9c9fc3040943f48ee6",
  "kind": "structure",
  "lexical_name": "SnapshotTheoremCertificate",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "snapshottheoremcertificate--379a0dc858a8973bd055acf0",
  "source": {
    "blob": "294b927993e4d39f99489099431b4499e224a783",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotTheoremCertificate/Variant4fef0ac12811dd8ec4edcc56d282f29dd1307f0b6d2a908d92d8a9f2401be079.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:379a0dc858a8973bd055acf05f43f1ace817f3fadcc7c021f19d527e18a6b02c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotTheoremCertificate/Variant4fef0ac12811dd8ec4edcc56d282f29dd1307f0b6d2a908d92d8a9f2401be079.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f579b6e802e0ea40607b41144bb072794f713ef81b92cc9c9fc3040943f48ee6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotTheoremCertificate/Variant4fef0ac12811dd8ec4edcc56d282f29dd1307f0b6d2a908d92d8a9f2401be079.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotTheoremCertificate/Variant4fef0ac12811dd8ec4edcc56d282f29dd1307f0b6d2a908d92d8a9f2401be079.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `294b927993e4d39f99489099431b4499e224a783` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
