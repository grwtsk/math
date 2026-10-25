# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7848642436c5f4d9e09333bd3c295c40290b92ca364089d348cf59f40e707ef3",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--7a2b9c0e14de4e80448e822b",
  "source": {
    "blob": "4d32a45a86a2deeaccb7664dd92b6916ee8651c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 760,
    "line": 753,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineLiteralLengthContracts/Variant8ec822e57d1803a78fc1c94271dd191c82e33ffcb542198403d82e75a30f6358.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a2b9c0e14de4e80448e822b2da6fbb55c365a551c86a1c88d01babd41aaf03d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineLiteralLengthContracts/Variant8ec822e57d1803a78fc1c94271dd191c82e33ffcb542198403d82e75a30f6358.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7848642436c5f4d9e09333bd3c295c40290b92ca364089d348cf59f40e707ef3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 753–760.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (objects : Objects) (costs : Files Nat) (slots : Slots) (files : Files Payload)
    (costUnique : unique costs) (slotUnique : unique slots)
    (lengths : costsMatch objects costs slots = true) (quota : mapWithin costs = true)
    (decoded : decodeSlots objects slots = some files) :
    files.length ≤ PlanResources.maxFiles ∧
      (files.map fun row => row.2.length).sum ≤ PlanResources.maxTotalBytes :=
  checked_decoded_actual_bounds objects costs slots files costUnique slotUnique lengths quota decoded

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineLiteralLengthContracts/Variant8ec822e57d1803a78fc1c94271dd191c82e33ffcb542198403d82e75a30f6358.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineLiteralLengthContracts/Variant8ec822e57d1803a78fc1c94271dd191c82e33ffcb542198403d82e75a30f6358.lean#L753).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d32a45a86a2deeaccb7664dd92b6916ee8651c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
