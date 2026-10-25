# ProjectSnapshot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1cac115f0b94726abf2166b923ff52f63a5069646e0f98f198a6b4385b0e98d2",
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
  "slug": "projectsnapshot--14258f3caeba797ef11b9ca3",
  "source": {
    "blob": "6c465a332197f50f0ca65f4b13619f9260f166e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Snapshot/Variant2b3d47b7422aba483248d5498d75cb589512195a56b070adc4f0ad36916d61bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14258f3caeba797ef11b9ca35d5d2919610b89da34f1dcf15a308e8b5b75e813",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Snapshot/Variant2b3d47b7422aba483248d5498d75cb589512195a56b070adc4f0ad36916d61bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1cac115f0b94726abf2166b923ff52f63a5069646e0f98f198a6b4385b0e98d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–36.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Snapshot/Variant2b3d47b7422aba483248d5498d75cb589512195a56b070adc4f0ad36916d61bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Snapshot/Variant2b3d47b7422aba483248d5498d75cb589512195a56b070adc4f0ad36916d61bd.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c465a332197f50f0ca65f4b13619f9260f166e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
