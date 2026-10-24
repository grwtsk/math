# η_comp_tensorDesc_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f4f446197a455f01cf0f2b98301d65a7f064991",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90b7c750-babe-9429-76ba-878b3b9d4aec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ced557e-d2b4-8f09-2af7-a9a3138e1e49",
  "kind": "lemma",
  "lexical_name": "η_comp_tensorDesc_app",
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
  "slug": "comp-tensordesc-app--ce9d1562a1428115101137fe",
  "source": {
    "blob": "4f4f446197a455f01cf0f2b98301d65a7f064991",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 165,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce9d1562a1428115101137feecbaff382cfca8da607685be8674f540c5ab4cba",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ced557e-d2b4-8f09-2af7-a9a3138e1e49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma η_comp_tensorDesc_app {F G H : C ⊛⥤ V}
    (α : F.functor ⊠ G.functor ⟶ tensor C ⋙ H.functor) (x y : C) :
    (η F G).app (x, y) ≫ (tensorDesc α).natTrans.app (x ⊗ y) = α.app (x, y) :=
  Functor.descOfIsLeftKanExtension_fac_app _ _ _ _ _

/-- An abstract isomorphism between `(F ⊗ G).functor` and the generic pointwise
left Kan extension of `F.functor ⊠ G.functor` along the -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f4f446197a455f01cf0f2b98301d65a7f064991` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
