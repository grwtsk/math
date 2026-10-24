# spineToSimplex_edge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c304ff5-5428-9550-4827-90473eaa0604",
  "kind": "theorem",
  "lexical_name": "spineToSimplex_edge",
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
  "slug": "spinetosimplex-edge--a67c4c6cd488adc47f345c4a",
  "source": {
    "blob": "fd1b8e896e9baccd775850773bc451a1fdf083a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 368,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant29dd7c81d274f65d0f11859bf889621f21faa3aa63a9b8c9bbe2d333c852c7fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a67c4c6cd488adc47f345c4aa539177d8f3b4a858907ae143136283ab26c58b7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant29dd7c81d274f65d0f11859bf889621f21faa3aa63a9b8c9bbe2d333c852c7fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c304ff5-5428-9550-4827-90473eaa0604`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spineToSimplex_edge :
    X.map (intervalEdge j l hjl).op (sx.spineToSimplex f) =
      sx.spineToDiagonal (f.interval j l hjl) := by
  dsimp only [spineToDiagonal, SimplicialObject.diagonal]
  rw [← spineToSimplex_interval, ← Functor.map_comp_apply, ← op_comp,
    diag_subinterval_eq]

end interval

/-- For any `σ : X ⟶ Y` between `StrictSegal` simplicial sets, `spineToSimplex`
commutes with `Path.map`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant29dd7c81d274f65d0f11859bf889621f21faa3aa63a9b8c9bbe2d333c852c7fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant29dd7c81d274f65d0f11859bf889621f21faa3aa63a9b8c9bbe2d333c852c7fb.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd1b8e896e9baccd775850773bc451a1fdf083a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
