# binary_zeroToOne_to_oneToZero_half_turn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba17a788-8088-cece-92d0-c79c200b468f",
  "kind": "theorem",
  "lexical_name": "binary_zeroToOne_to_oneToZero_half_turn",
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
  "slug": "binary-zerotoone-to-onetozero-half-turn--98a209c5db1bdd1c4e892e28",
  "source": {
    "blob": "64e1d2f1624d314f7780b71320c1d3920dc7a848",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AngleRatio/Variant3919be84ed6d3b65b7abd80c27f161f8fd753f38a8bb1af85e0b59f6e2b9192d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98a209c5db1bdd1c4e892e2804084c61347868983bb940889770d6f7993bf7db",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AngleRatio/Variant3919be84ed6d3b65b7abd80c27f161f8fd753f38a8bb1af85e0b59f6e2b9192d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba17a788-8088-cece-92d0-c79c200b468f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem binary_zeroToOne_to_oneToZero_half_turn :
    (binaryDirectionFrame.orientedAngle
      BinaryDirection.zeroToOne
      BinaryDirection.oneToZero).denominator = 2 :=
  rfl

/--
A phase realization of a direction frame into a target carrier. Unit-circle
membership, full-turn periodicity, and the opposite-is-half-turn property
are explicit proof fields; nothing analytic is built in.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AngleRatio/Variant3919be84ed6d3b65b7abd80c27f161f8fd753f38a8bb1af85e0b59f6e2b9192d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AngleRatio/Variant3919be84ed6d3b65b7abd80c27f161f8fd753f38a8bb1af85e0b59f6e2b9192d.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64e1d2f1624d314f7780b71320c1d3920dc7a848` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
