# ReferencesClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40d7d0f2cc3352ff07e58455cebccbb72280f59e193d4ea4a782bf134c73fe27",
  "kind": "def",
  "lexical_name": "ReferencesClosed",
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
  "slug": "referencesclosed--66bd83f87aa4e63a2817fdb8",
  "source": {
    "blob": "46e4bf7032fb5ac831ea2015f9803d25261e3afc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variant44f07a95412a1b08ff8904c012ce7ce093f71448e8d320695e34f5eb92d0f3d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66bd83f87aa4e63a2817fdb84013891127d4472d5bfe03d4222afc50dfcc13c2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Manifest/Variant44f07a95412a1b08ff8904c012ce7ce093f71448e8d320695e34f5eb92d0f3d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:40d7d0f2cc3352ff07e58455cebccbb72280f59e193d4ea4a782bf134c73fe27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ReferencesClosed
    (nodes : Finset TerrainNode)
    (edges : Finset TerrainEdgeDescriptor)
    (cells : Finset TerrainCellDescriptor)
    (theoremCells : Finset TheoremCellDescriptor)
    (folds : Finset FoldDescriptor)
    (runtimeBindings : Finset RuntimeBindingDescriptor) : Prop :=
  (∀ edge ∈ edges,
      (∃ node ∈ nodes, node.id = edge.source) ∧
      ∃ node ∈ nodes, node.id = edge.target) ∧
  (∀ cell ∈ cells, ∀ edgeId ∈ cell.boundaryEdges,
      ∃ edge ∈ edges, edge.id = edgeId) ∧
  (∀ cell ∈ theoremCells,
      ∃ node ∈ nodes, node.id = cell.theoremNode) ∧
  (∀ fold ∈ folds,
      (∃ cell ∈ cells, cell.id = fold.sourceCell) ∧
      ∃ cell ∈ cells, cell.id = fold.targetCell) ∧
  (∀ binding ∈ runtimeBindings,
      ∃ node ∈ nodes, node.id = binding.terrainNode)

/-- No two manifest nodes share a stable identifier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Manifest/Variant44f07a95412a1b08ff8904c012ce7ce093f71448e8d320695e34f5eb92d0f3d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variant44f07a95412a1b08ff8904c012ce7ce093f71448e8d320695e34f5eb92d0f3d9.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46e4bf7032fb5ac831ea2015f9803d25261e3afc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
