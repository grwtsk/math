# LevelwiseCoefficientPartition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9ab90dac515f413e61cc278ff9c6e00aed7b8cb2eceb60403fa483d8c838798",
  "kind": "structure",
  "lexical_name": "LevelwiseCoefficientPartition",
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
  "slug": "levelwisecoefficientpartition--dbc80bfe5b3a0af78be2d7c3",
  "source": {
    "blob": "cd5860cdc52a7f6e23e8dad4dc350e3ed1df8b9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantc4d3b9dc13bb462b829b0fbf98e6b9f2fbfcf85be49754bb3b55d29013209cf5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dbc80bfe5b3a0af78be2d7c31093b94a5cea76a72de379fd54a5c88aadb60ce6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantc4d3b9dc13bb462b829b0fbf98e6b9f2fbfcf85be49754bb3b55d29013209cf5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9ab90dac515f413e61cc278ff9c6e00aed7b8cb2eceb60403fa483d8c838798`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LevelwiseCoefficientPartition
    (Depth Left Right : Type*) [Fintype Depth]
    [Fintype Left] [Fintype Right] where
  Node : Depth → Type
  nodeFintype : ∀ depth, Fintype (Node depth)
  nodeDecidableEq : ∀ depth, DecidableEq (Node depth)
  leftOwner : ∀ depth, Left → Node depth
  rightOwner : ∀ depth, Right → Node depth

/-- Matched partition at one fixed depth. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantc4d3b9dc13bb462b829b0fbf98e6b9f2fbfcf85be49754bb3b55d29013209cf5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantc4d3b9dc13bb462b829b0fbf98e6b9f2fbfcf85be49754bb3b55d29013209cf5.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd5860cdc52a7f6e23e8dad4dc350e3ed1df8b9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
