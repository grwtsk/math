# deleteEdges

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:696922e25bad883feaa882e3c9d03109d612f3f74d2319b6d29002eb4526b73b",
  "kind": "def",
  "lexical_name": "deleteEdges",
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
  "slug": "deleteedges--03c8a27ae1e4a6e74cda927d",
  "source": {
    "blob": "7db1af3e6d1ac8e5bf30b400aa52af315b6d61e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1042,
    "line": 1031,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant18cbea6ee32749e0c0392add352783f1c9772563831d62be2f23d194df0159c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:03c8a27ae1e4a6e74cda927d0cf54b9a2fdf5ea2d88d9e309d3af00fca1a7847",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant18cbea6ee32749e0c0392add352783f1c9772563831d62be2f23d194df0159c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:696922e25bad883feaa882e3c9d03109d612f3f74d2319b6d29002eb4526b73b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1031–1042.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def deleteEdges (G' : G.Subgraph) (s : Set (Sym2 V)) : G.Subgraph where
  verts := G'.verts
  Adj := G'.Adj \ Sym2.ToRel s
  adj_sub h' := G'.adj_sub h'.1
  edge_vert h' := G'.edge_vert h'.1
  symm a b := by simp [G'.adj_comm, Sym2.eq_swap]

section DeleteEdges

variable {G' : G.Subgraph} (s : Set (Sym2 V))

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant18cbea6ee32749e0c0392add352783f1c9772563831d62be2f23d194df0159c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant18cbea6ee32749e0c0392add352783f1c9772563831d62be2f23d194df0159c6.lean#L1031).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7db1af3e6d1ac8e5bf30b400aa52af315b6d61e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
