# mem_incidenceFaces_square_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e5ba891-2ac3-392b-b0d5-662df4bc7560",
  "kind": "theorem",
  "lexical_name": "mem_incidenceFaces_square_iff",
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
  "slug": "mem-incidencefaces-square-iff--03400760cf31f6d4ef29c3c6",
  "source": {
    "blob": "bb83f91122888da3479557868f860eba0e781508",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 66,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalRaster/Variant871e8892ff133c9652b316f8657a0a8cbe5342f7eec12ce7fa767f3e8dca5f8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03400760cf31f6d4ef29c3c64c39bf232fff309daf822abaed1b1c8a1bd4b00b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CanonicalRaster/Variant871e8892ff133c9652b316f8657a0a8cbe5342f7eec12ce7fa767f3e8dca5f8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e5ba891-2ac3-392b-b0d5-662df4bc7560`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_incidenceFaces_square_iff {rows columns : Nat}
    (cell : GridCell rows columns) (face : Cell rows columns) :
    face ∈ incidenceFaces (Cell.square cell) ↔
      face = Cell.horizontal (squareBoundary cell).top ∨
      face = Cell.horizontal (squareBoundary cell).bottom ∨
      face = Cell.vertical (squareBoundary cell).left ∨
      face = Cell.vertical (squareBoundary cell).right := by
  simp [incidenceFaces]

/-- Geometric compatibility of the canonical four-neighbor relation: two
distinct raster squares are edge-adjacent exactly when their exact immediate
incidence sets share a typed one-dimensional face.  Vertex-only contact is
therefore excluded from foreground adjacency by construction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CanonicalRaster/Variant871e8892ff133c9652b316f8657a0a8cbe5342f7eec12ce7fa767f3e8dca5f8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalRaster/Variant871e8892ff133c9652b316f8657a0a8cbe5342f7eec12ce7fa767f3e8dca5f8b.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb83f91122888da3479557868f860eba0e781508` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
