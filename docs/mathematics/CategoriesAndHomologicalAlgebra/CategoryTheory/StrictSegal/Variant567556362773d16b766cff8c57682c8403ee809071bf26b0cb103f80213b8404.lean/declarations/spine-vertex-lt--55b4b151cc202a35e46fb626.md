# spine_δ_vertex_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f020a96-2d10-f592-412c-3fac59a428e3",
  "kind": "lemma",
  "lexical_name": "spine_δ_vertex_lt",
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
  "slug": "spine-vertex-lt--55b4b151cc202a35e46fb626",
  "source": {
    "blob": "648ecad381769f42f29ee7f912e2ed5c8ea8511c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 167,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55b4b151cc202a35e46fb62622e375ce4902f0029ccd82b59789e3253686cb93",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f020a96-2d10-f592-412c-3fac59a428e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma spine_δ_vertex_lt (hij : i.castSucc < j) :
    (X.spine m _ (X.map (tr (δ j)).op
      (sx.spineToSimplex (m + 1) _ f))).vertex i = f.vertex i.castSucc := by
  rw [spine_vertex, ← FunctorToTypes.map_comp_apply, ← op_comp, ← tr_comp,
    SimplexCategory.const_comp, spineToSimplex_vertex]
  dsimp only [δ, len_mk, mkHom, Hom.toOrderHom_mk, Fin.succAboveOrderEmb_apply,
    OrderEmbedding.toOrderHom_coe]
  rw [Fin.succAbove_of_castSucc_lt j i hij]

/-- If we take the path along the spine of the `j`th face of a `spineToSimplex`,
a vertex `i` with `j ≤ i` can be identified with vertex `i + 1` in the original
path. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `648ecad381769f42f29ee7f912e2ed5c8ea8511c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
