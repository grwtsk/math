# spine_δ_vertex_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "afe4d4f02ce400dd6efb26a20e7cf0d384d2cceb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5efe993cbe485c5a2e0c9c2bb47d30e01c38d769f204b6086f9e0c41cb00e2b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1eb801e8-3921-4fce-34c1-72e2859b990b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:226d64b3-b915-6e72-900b-19153ecfa60f",
  "kind": "lemma",
  "lexical_name": "spine_δ_vertex_ge",
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
  "slug": "spine-vertex-ge--c8a4ede9fe95fc4d16613dec",
  "source": {
    "blob": "afe4d4f02ce400dd6efb26a20e7cf0d384d2cceb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 217,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant5efe993cbe485c5a2e0c9c2bb47d30e01c38d769f204b6086f9e0c41cb00e2b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8a4ede9fe95fc4d16613decb0c6a08dc638ecb703d629477db9242edd6c2348",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant5efe993cbe485c5a2e0c9c2bb47d30e01c38d769f204b6086f9e0c41cb00e2b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:226d64b3-b915-6e72-900b-19153ecfa60f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma spine_δ_vertex_ge (hij : j ≤ i.castSucc) :
    (X.spine m _ (X.map (tr (δ j)).op
      (sx.spineToSimplex (m + 1) _ f))).vertex i = f.vertex i.succ := by
  rw [spine_vertex, ← Functor.map_comp_apply, ← op_comp, ← tr_comp,
    SimplexCategory.const_comp, spineToSimplex_vertex]
  dsimp only [SimplexCategory.δ, len_mk, mkHom, Hom.toOrderHom_mk,
    Fin.succAboveOrderEmb_apply, OrderEmbedding.toOrderHom_coe]
  rw [Fin.succAbove_of_le_castSucc j i hij]

variable {i : Fin m} {j : Fin (m + 2)}

/-- If we take the path along the spine of the `j`th face of a `spineToSimplex`,
the common arrows will agree with those of the original path `f`. In particular,
an arrow `i` with `i + 1 < j` can be identified with the same arrow in `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant5efe993cbe485c5a2e0c9c2bb47d30e01c38d769f204b6086f9e0c41cb00e2b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant5efe993cbe485c5a2e0c9c2bb47d30e01c38d769f204b6086f9e0c41cb00e2b6.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afe4d4f02ce400dd6efb26a20e7cf0d384d2cceb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
