# equalRevision_identical_replay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6af9bd9d-4b4d-a3f1-e706-328944bcea8b",
  "kind": "theorem",
  "lexical_name": "equalRevision_identical_replay",
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
  "slug": "equalrevision-identical-replay--3b8b676031b6683f633517f1",
  "source": {
    "blob": "d8abbb8e54721926d189f95ada7b0f71f6480e4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 134,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant0ab8f40feb376fd29e5c5133637f4e137215ed8b964b3085080ba1b24cce331b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b8b676031b6683f633517f1e0e5e5c8825d6a06b6a807cb0eca853c40be1c1a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant0ab8f40feb376fd29e5c5133637f4e137215ed8b964b3085080ba1b24cce331b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6af9bd9d-4b4d-a3f1-e706-328944bcea8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equalRevision_identical_replay
    {Payload : Type*} [DecidableEq Payload]
    (current incoming : Revisioned Payload)
    (sameRevision : incoming.revision = current.revision)
    (sameValue : incoming.value = current.value) :
    merge ⟨some current⟩ incoming = .replay current := by
  simp [merge, sameRevision, sameValue]

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant0ab8f40feb376fd29e5c5133637f4e137215ed8b964b3085080ba1b24cce331b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant0ab8f40feb376fd29e5c5133637f4e137215ed8b964b3085080ba1b24cce331b.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8abbb8e54721926d189f95ada7b0f71f6480e4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
