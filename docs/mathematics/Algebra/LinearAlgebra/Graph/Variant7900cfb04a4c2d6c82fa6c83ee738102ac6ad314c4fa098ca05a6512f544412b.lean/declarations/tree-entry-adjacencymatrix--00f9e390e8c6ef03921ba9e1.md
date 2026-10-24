# Tree.entry_adjacencyMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25e266f4-f515-8bb6-4389-1bfad7775a00",
  "kind": "theorem",
  "lexical_name": "Tree.entry_adjacencyMatrix",
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
  "slug": "tree-entry-adjacencymatrix--00f9e390e8c6ef03921ba9e1",
  "source": {
    "blob": "c317bfbd88686ff32420216813911c302598c7db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 71,
    "path": "GRWTSK/Algebra/LinearAlgebra/Graph/Variant7900cfb04a4c2d6c82fa6c83ee738102ac6ad314c4fa098ca05a6512f544412b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00f9e390e8c6ef03921ba9e16341a5e63b56f827a03c8d4029239e3ce9d1e4f7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Graph/Variant7900cfb04a4c2d6c82fa6c83ee738102ac6ad314c4fa098ca05a6512f544412b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25e266f4-f515-8bb6-4389-1bfad7775a00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem Tree.entry_adjacencyMatrix
    (p : Tree α)
    (i j : Fin (Tree.nodeCount p)) :
    Matrix.entry (Tree.adjacencyMatrix p) i j =
      decide ((i.val, j.val) ∈ Tree.childEdgesFrom 0 p) :=
  rfl

/--
The transitive reachability matrix of the tree graph.

This applies Warshall's algorithm to the tree adjacency matrix.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Graph/Variant7900cfb04a4c2d6c82fa6c83ee738102ac6ad314c4fa098ca05a6512f544412b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Graph/Variant7900cfb04a4c2d6c82fa6c83ee738102ac6ad314c4fa098ca05a6512f544412b.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c317bfbd88686ff32420216813911c302598c7db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
