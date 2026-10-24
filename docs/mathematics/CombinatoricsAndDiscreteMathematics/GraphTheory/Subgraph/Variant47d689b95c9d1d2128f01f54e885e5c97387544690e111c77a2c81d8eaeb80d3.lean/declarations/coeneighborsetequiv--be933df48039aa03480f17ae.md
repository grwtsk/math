# coeNeighborSetEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af2d1f58933dade41ff8337d4f7a100e67c4394fa47dd80f7a91d0990f7fa199",
  "kind": "def",
  "lexical_name": "coeNeighborSetEquiv",
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
  "slug": "coeneighborsetequiv--be933df48039aa03480f17ae",
  "source": {
    "blob": "9d908d52aa1c3cbd46d39162122afa608ab746c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 231,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant47d689b95c9d1d2128f01f54e885e5c97387544690e111c77a2c81d8eaeb80d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be933df48039aa03480f17aec108b82c71486308dcef14fb411ae3b72de9f41e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant47d689b95c9d1d2128f01f54e885e5c97387544690e111c77a2c81d8eaeb80d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af2d1f58933dade41ff8337d4f7a100e67c4394fa47dd80f7a91d0990f7fa199`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coeNeighborSetEquiv {G' : Subgraph G} (v : G'.verts) : G'.coe.neighborSet v ≃ G'.neighborSet v
    where
  toFun w := ⟨w, w.2⟩
  invFun w := ⟨⟨w, G'.edge_vert (G'.adj_symm w.2)⟩, w.2⟩
  left_inv _ := rfl
  right_inv _ := rfl
#align simple_graph.subgraph.coe_neighbor_set_equiv SimpleGraph.Subgraph.coeNeighborSetEquiv

/-- The edge set of `G'` consists of a subset of edges of `G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant47d689b95c9d1d2128f01f54e885e5c97387544690e111c77a2c81d8eaeb80d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant47d689b95c9d1d2128f01f54e885e5c97387544690e111c77a2c81d8eaeb80d3.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d908d52aa1c3cbd46d39162122afa608ab746c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
