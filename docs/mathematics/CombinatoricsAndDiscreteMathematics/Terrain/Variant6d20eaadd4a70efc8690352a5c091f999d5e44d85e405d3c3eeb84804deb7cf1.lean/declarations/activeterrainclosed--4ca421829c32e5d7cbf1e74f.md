# ActiveTerrainClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e801eacfbd53d66a42dbefad5f0901c02b20c16517c63795cf2bd2a651f32ad7",
  "kind": "def",
  "lexical_name": "ActiveTerrainClosed",
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
  "slug": "activeterrainclosed--4ca421829c32e5d7cbf1e74f",
  "source": {
    "blob": "183d4702bedfdf5005143f2a8562a3d38b910b85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 26,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Terrain/Variant6d20eaadd4a70efc8690352a5c091f999d5e44d85e405d3c3eeb84804deb7cf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ca421829c32e5d7cbf1e74f0c9befc83f759a1d38610c61889df09396a700a0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Terrain/Variant6d20eaadd4a70efc8690352a5c091f999d5e44d85e405d3c3eeb84804deb7cf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e801eacfbd53d66a42dbefad5f0901c02b20c16517c63795cf2bd2a651f32ad7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ActiveTerrainClosed
    (manifest : UniverseManifest)
    (nodes : Finset TerrainNodeId)
    (edges : Finset TerrainEdgeId)
    (cells : Finset TerrainCellId) : Prop :=
  (∀ nodeId ∈ nodes, manifest.HasNode nodeId) ∧
  (∀ edgeId ∈ edges,
      ∃ edge ∈ manifest.edges,
        edge.id = edgeId ∧ edge.source ∈ nodes ∧ edge.target ∈ nodes) ∧
  (∀ cellId ∈ cells,
      ∃ cell ∈ manifest.higherCells,
        cell.id = cellId ∧ cell.boundaryEdges ⊆ edges)

/-- Version-one queries always operate on a finite manifest subcomplex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Terrain/Variant6d20eaadd4a70efc8690352a5c091f999d5e44d85e405d3c3eeb84804deb7cf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Terrain/Variant6d20eaadd4a70efc8690352a5c091f999d5e44d85e405d3c3eeb84804deb7cf1.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `183d4702bedfdf5005143f2a8562a3d38b910b85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
