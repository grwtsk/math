# toKaroubi_comp_karoubiFunctorCategoryEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f98d555003d064430fc6d76904a6182d41f0149",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fcd0a307f41ff6ca23b8a35ae1c281a32d22e800d8a029bc2b99ae84e980a9c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce9f5201-3bc3-8b48-d8ff-8e3a83459641",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:490321ea-f9f1-e4cd-95fd-b3d770cd72ab",
  "kind": "theorem",
  "lexical_name": "toKaroubi_comp_karoubiFunctorCategoryEmbedding",
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
  "slug": "tokaroubi-comp-karoubifunctorcategoryembedding--1835fc931e8ad1d80df5fcc5",
  "source": {
    "blob": "1f98d555003d064430fc6d76904a6182d41f0149",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 145,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variantfcd0a307f41ff6ca23b8a35ae1c281a32d22e800d8a029bc2b99ae84e980a9c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1835fc931e8ad1d80df5fcc534e347aac5a5bb1b2de5e9616bbc3b03384ae344",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variantfcd0a307f41ff6ca23b8a35ae1c281a32d22e800d8a029bc2b99ae84e980a9c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:490321ea-f9f1-e4cd-95fd-b3d770cd72ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toKaroubi_comp_karoubiFunctorCategoryEmbedding :
    toKaroubi _ ⋙ karoubiFunctorCategoryEmbedding J C =
      (whiskeringRight J _ _).obj (toKaroubi C) := by
  apply Functor.ext
  · intro X Y f
    ext j
    dsimp [toKaroubi]
    simp only [eqToHom_app, eqToHom_refl]
    erw [comp_id, id_comp]
  · intro X
    apply Functor.ext
    · intro j j' φ
      ext
      dsimp
      simp
    · intro j
      rfl
#align category_theory.idempotents.to_karoubi_comp_karoubi_functor_category_embedding CategoryTheory.Idempotents.toKaroubi_comp_karoubiFunctorCategoryEmbedding

end Idempotents

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variantfcd0a307f41ff6ca23b8a35ae1c281a32d22e800d8a029bc2b99ae84e980a9c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variantfcd0a307f41ff6ca23b8a35ae1c281a32d22e800d8a029bc2b99ae84e980a9c2.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f98d555003d064430fc6d76904a6182d41f0149` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
