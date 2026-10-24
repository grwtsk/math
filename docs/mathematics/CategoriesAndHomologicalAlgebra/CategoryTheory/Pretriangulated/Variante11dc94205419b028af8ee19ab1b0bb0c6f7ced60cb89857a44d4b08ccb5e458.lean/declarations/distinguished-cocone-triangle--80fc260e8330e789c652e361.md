# distinguished_cocone_triangle₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "334496d1ca65a779532e58d8ad914c532c8ce2ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e11dc94205419b028af8ee19ab1b0bb0c6f7ced60cb89857a44d4b08ccb5e458.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:394ae223-3841-d4da-581f-dbfc122cfff5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9dbd5f9e-727f-51c6-3623-81c43e1eedc7",
  "kind": "lemma",
  "lexical_name": "distinguished_cocone_triangle₂",
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
  "slug": "distinguished-cocone-triangle--80fc260e8330e789c652e361",
  "source": {
    "blob": "334496d1ca65a779532e58d8ad914c532c8ce2ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 175,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variante11dc94205419b028af8ee19ab1b0bb0c6f7ced60cb89857a44d4b08ccb5e458.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80fc260e8330e789c652e361cb71fb449f443baa8aa9bc5709ccd89080dcfb4f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variante11dc94205419b028af8ee19ab1b0bb0c6f7ced60cb89857a44d4b08ccb5e458.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9dbd5f9e-727f-51c6-3623-81c43e1eedc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma distinguished_cocone_triangle₂ {Z X : C} (h : Z ⟶ X⟦(1 : ℤ)⟧) :
    ∃ (Y : C) (f : X ⟶ Y) (g : Y ⟶ Z), Triangle.mk f g h ∈ distTriang C := by
  obtain ⟨Y', f', g', mem⟩ := distinguished_cocone_triangle h
  let T' := (Triangle.mk h f' g').invRotate.invRotate
  refine ⟨T'.obj₂, ((shiftEquiv C (1 : ℤ)).unitIso.app X).hom ≫ T'.mor₁, T'.mor₂,
    isomorphic_distinguished _ (inv_rot_of_distTriang _ (inv_rot_of_distTriang _ mem)) _ ?_⟩
  exact Triangle.isoMk _ _ ((shiftEquiv C (1 : ℤ)).unitIso.app X) (Iso.refl _) (Iso.refl _)
    (by cat_disch) (by cat_disch)
    (by dsimp; simp only [shift_shiftFunctorCompIsoId_inv_app, id_comp])

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- A commutative square involving the morphisms `mor₂` of two distinguished triangles
can be extended as morphism of triangles -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variante11dc94205419b028af8ee19ab1b0bb0c6f7ced60cb89857a44d4b08ccb5e458.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variante11dc94205419b028af8ee19ab1b0bb0c6f7ced60cb89857a44d4b08ccb5e458.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `334496d1ca65a779532e58d8ad914c532c8ce2ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
