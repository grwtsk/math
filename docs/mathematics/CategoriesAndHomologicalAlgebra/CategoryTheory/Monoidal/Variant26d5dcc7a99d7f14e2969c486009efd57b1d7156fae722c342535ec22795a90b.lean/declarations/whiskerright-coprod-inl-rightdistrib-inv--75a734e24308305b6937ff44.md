# whiskerRight_coprod_inl_rightDistrib_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c5a35b8-d974-c032-7fe6-a111ad044afc",
  "kind": "lemma",
  "lexical_name": "whiskerRight_coprod_inl_rightDistrib_inv",
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
  "slug": "whiskerright-coprod-inl-rightdistrib-inv--75a734e24308305b6937ff44",
  "source": {
    "blob": "3115b9e44c8bd813b608d83ac29c61bfcc4989b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 198,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75a734e24308305b6937ff44c82cf297760bc6d67e7cbbe24d8e86ea64875f40",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c5a35b8-d974-c032-7fe6-a111ad044afc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma whiskerRight_coprod_inl_rightDistrib_inv [IsMonoidalRightDistrib C] {X Y Z : C} :
    (coprod.inl ▷ X) ≫ (∂R X Y Z).inv = coprod.inl := by
  apply (cancel_iso_hom_right _ _ (∂R X Y Z)).mp
  rw [assoc, Iso.inv_hom_id, comp_id, coprod_inl_rightDistrib_hom]

/-- The composite of `(coprod.inr ▷ X) : Z ⊗ X ⟶ (Y ⨿ Z) ⊗ X` and
`(∂R X Y Z).inv :  (Y ⨿ Z) ⊗ X ⟶ (Y ⊗ X) ⨿ (Z ⊗ X)` is equal to the right coprojection
`coprod.inr : Z ⊗ X ⟶ (Y ⊗ X) ⨿ (Z ⊗ X)`. -/
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant26d5dcc7a99d7f14e2969c486009efd57b1d7156fae722c342535ec22795a90b.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3115b9e44c8bd813b608d83ac29c61bfcc4989b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
