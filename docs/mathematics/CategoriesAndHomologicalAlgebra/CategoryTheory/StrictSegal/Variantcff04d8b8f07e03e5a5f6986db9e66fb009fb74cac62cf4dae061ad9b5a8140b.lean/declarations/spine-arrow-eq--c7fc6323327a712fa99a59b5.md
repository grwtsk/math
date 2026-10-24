# spine_δ_arrow_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1598c3ddb4d30b6b7e6b71734f5f9a78c4d68f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:465c72ff-aeca-22e4-516d-5b666f9e96b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a1bd1ab9-7fff-85e6-7ab1-d8d11897169a",
  "kind": "lemma",
  "lexical_name": "spine_δ_arrow_eq",
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
  "slug": "spine-arrow-eq--c7fc6323327a712fa99a59b5",
  "source": {
    "blob": "d1598c3ddb4d30b6b7e6b71734f5f9a78c4d68f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 205,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7fc6323327a712fa99a59b57da20c4793a402c4f11eddcdc80b6f5e31d268e4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1bd1ab9-7fff-85e6-7ab1-d8d11897169a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma spine_δ_arrow_eq (hij : j = i.succ.castSucc) :
    (X.spine m _ (X.map (tr (δ j)).op
      (sx.spineToSimplex (m + 1) _ f))).arrow i =
      sx.spineToDiagonal 2 (by omega) (f.interval i 2 (by omega)) := by
  rw [spine_arrow, ← FunctorToTypes.map_comp_apply, ← op_comp, ← tr_comp,
    mkOfSucc_δ_eq hij, spineToSimplex_edge]

end StrictSegal
end Truncated

variable (X : SSet.{u})

/-- A simplicial set `X` satisfies the strict Segal condition if its simplices
are uniquely determined by their spine. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1598c3ddb4d30b6b7e6b71734f5f9a78c4d68f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
