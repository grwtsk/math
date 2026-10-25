# ProjectSnapshot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6de02f047d9af58b41fd8b2ae9c34f06c6f33caf461570967b1d2699f10dc7a3",
  "kind": "structure",
  "lexical_name": "ProjectSnapshot",
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
  "slug": "projectsnapshot--bf2c7dbaa95658c1bcc00372",
  "source": {
    "blob": "aa5ac02d3c64e1ccffa5cc8d2fc717b6333555d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 11,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Snapshot/Variant6597a4782547ccfb5b19fad9c5ef3355d6178fb0d51fe9b9855907ed12e7ba9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf2c7dbaa95658c1bcc00372c3aa5de87eacf0650a758198314093d71679248a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Snapshot/Variant6597a4782547ccfb5b19fad9c5ef3355d6178fb0d51fe9b9855907ed12e7ba9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6de02f047d9af58b41fd8b2ae9c34f06c6f33caf461570967b1d2699f10dc7a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Snapshot/Variant6597a4782547ccfb5b19fad9c5ef3355d6178fb0d51fe9b9855907ed12e7ba9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Snapshot/Variant6597a4782547ccfb5b19fad9c5ef3355d6178fb0d51fe9b9855907ed12e7ba9a.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa5ac02d3c64e1ccffa5cc8d2fc717b6333555d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
