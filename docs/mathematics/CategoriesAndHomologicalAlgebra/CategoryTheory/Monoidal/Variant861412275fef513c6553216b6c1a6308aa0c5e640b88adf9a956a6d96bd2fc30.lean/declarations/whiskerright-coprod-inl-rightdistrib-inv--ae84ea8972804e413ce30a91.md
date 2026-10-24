# whiskerRight_coprod_inl_rightDistrib_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b30178dd11bd1d2294e510088fb72dea0417a5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:28b009c6-ecef-eecb-0a79-424ee5081906",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5641b5f-708c-de14-b12f-2d06a682fc63",
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
  "slug": "whiskerright-coprod-inl-rightdistrib-inv--ae84ea8972804e413ce30a91",
  "source": {
    "blob": "0b30178dd11bd1d2294e510088fb72dea0417a5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 192,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae84ea8972804e413ce30a915c9cae96f32d5aeb03f5311826e87ab310a80d46",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5641b5f-708c-de14-b12f-2d06a682fc63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–200.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b30178dd11bd1d2294e510088fb72dea0417a5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
