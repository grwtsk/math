# unitCarrier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d84419104fcfe88cbdbfdd2d9f29f729775c63c031842f98f0f232fc477e7b6",
  "kind": "def",
  "lexical_name": "unitCarrier",
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
  "slug": "unitcarrier--4d16f19e355373eb84c944b4",
  "source": {
    "blob": "d90c4c92d9ff8668a33dd6e3b18ed7242b0d73ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RasterizationTests/Variantab2b138078ac1305c878a6ae974fa0b8fd3cfc15b10f5d1cb1e5c60fd8f89752.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d16f19e355373eb84c944b48894fcfda287c44d26c00e5e94877dcb35527c68",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RasterizationTests/Variantab2b138078ac1305c878a6ae974fa0b8fd3cfc15b10f5d1cb1e5c60fd8f89752.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d84419104fcfe88cbdbfdd2d9f29f729775c63c031842f98f0f232fc477e7b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitCarrier : GeometricPrismCarrier Unit where
  Point := Unit
  pointTopology := ⊥
  vertexPoint := fun _ => ()
  carrier := Set.univ
  vertex_mem := by simp
  CellId := Unit
  cellFintype := inferInstance
  cellDecEq := inferInstance
  cells := Finset.univ
  cellCarrier := fun _ => Set.univ
  cell_mem_carrier := by simp
  carrier_covered := by ext; simp

/-- Barycentric weight one on the unique vertex of the unique cell. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RasterizationTests/Variantab2b138078ac1305c878a6ae974fa0b8fd3cfc15b10f5d1cb1e5c60fd8f89752.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RasterizationTests/Variantab2b138078ac1305c878a6ae974fa0b8fd3cfc15b10f5d1cb1e5c60fd8f89752.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d90c4c92d9ff8668a33dd6e3b18ed7242b0d73ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
