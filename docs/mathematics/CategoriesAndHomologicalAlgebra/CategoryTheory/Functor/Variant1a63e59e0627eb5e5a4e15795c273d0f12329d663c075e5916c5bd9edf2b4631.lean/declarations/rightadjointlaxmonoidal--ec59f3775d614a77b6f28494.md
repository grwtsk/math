# rightAdjointLaxMonoidal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be42596e2e9810ce5fb2df4e5d9f02e25ac824740cffdfca609bcd89e4c04eee",
  "kind": "def",
  "lexical_name": "rightAdjointLaxMonoidal",
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
  "slug": "rightadjointlaxmonoidal--ec59f3775d614a77b6f28494",
  "source": {
    "blob": "795cfcd62b99acf8328fe29e452bfb809f75b774",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 992,
    "line": 938,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant1a63e59e0627eb5e5a4e15795c273d0f12329d663c075e5916c5bd9edf2b4631.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec59f3775d614a77b6f284946cfc009658f5140bdc03d277632fb76d78aa5087",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant1a63e59e0627eb5e5a4e15795c273d0f12329d663c075e5916c5bd9edf2b4631.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be42596e2e9810ce5fb2df4e5d9f02e25ac824740cffdfca609bcd89e4c04eee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 938–992.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rightAdjointLaxMonoidal : G.LaxMonoidal where
  ε := adj.homEquiv _ _ (η F)
  μ X Y := adj.homEquiv _ _ (δ F _ _ ≫ (adj.counit.app X ⊗ₘ adj.counit.app Y))
  μ_natural_left {X Y} f X' := by
    simp only [Adjunction.homEquiv_apply, ← adj.unit_naturality_assoc, ← G.map_comp, assoc,
      ← δ_natural_left_assoc F]
    suffices F.map (G.map f) ▷ F.obj (G.obj X') ≫ _ =
      (adj.counit.app X ⊗ₘ adj.counit.app X') ≫ _ by rw [this]
    simpa using NatTrans.whiskerRight_app_tensor_app adj.counit adj.counit (f := f) X'
  μ_natural_right {X' Y'} X g := by
    simp only [Adjunction.homEquiv_apply, ← adj.unit_naturality_assoc, ← G.map_comp,
      assoc, ← δ_natural_right_assoc F]
    suffices F.obj (G.obj X) ◁ F.map (G.map g) ≫ _ =
      (adj.counit.app X ⊗ₘ adj.counit.app X') ≫ _ by rw [this]
    simpa using NatTrans.whiskerLeft_app_tensor_app adj.counit adj.counit (f := g) _
  associativity X Y Z := (adj.homEquiv _ _).symm.injective (by
    simp only [homEquiv_unit, comp_obj, map_comp, comp_whiskerRight, assoc, homEquiv_counit,
      counit_naturality, counit_naturality_assoc, left_triangle_components_assoc,
      MonoidalCategory.whiskerLeft_comp]
    rw [← δ_natural_left_assoc, ← δ_natural_left_assoc, ← δ_natural_left_assoc]
    have := @NatTrans.whiskerRight_app_tensor_app_assoc _ _ _ _ _ _ _ _ _ adj.counit adj.counit
    dsimp only [id_obj, comp_obj, Functor.comp_map, Functor.id_map] at this
    rw [this, this, tensorHom_def, assoc, ← comp_whiskerRight_assoc,
      left_triangle_components, id_whiskerRight, id_comp,
      whisker_exchange_assoc, whisker_exchange_assoc, ← tensorHom_def_assoc,
      associator_naturality, OplaxMonoidal.associativity_assoc]
    rw [← δ_natural_right_assoc, ← δ_natural_right_assoc, ← δ_natural_right_assoc]
    nth_rw 4 [tensorHom_def]
    rw [← whisker_exchange, ← MonoidalCategory.whiskerLeft_comp_assoc,
      ← MonoidalCategory.whiskerLeft_comp_assoc,
      ← MonoidalCategory.whiskerLeft_comp_assoc, assoc, assoc,
      counit_naturality, counit_naturality_assoc, left_triangle_components_assoc,
      MonoidalCategory.whiskerLeft_comp, assoc, tensorHom_def, whisker_exchange])
  left_unitality X := (adj.homEquiv _ _).symm.injective (by
    rw [homEquiv_counit, homEquiv_counit, homEquiv_unit, homEquiv_unit, comp_whiskerRight,
      map_comp, map_comp, map_comp, map_comp, map_comp, map_comp, assoc, assoc, assoc, assoc,
      assoc, counit_naturality, counit_naturality_assoc, counit_naturality_assoc,
      left_triangle_components_assoc, ← δ_natural_left_assoc, ← δ_natural_left_assoc,
      tensorHom_def, assoc, ← MonoidalCategory.comp_whiskerRight_assoc,
      ← MonoidalCategory.comp_whiskerRight_assoc, assoc, counit_naturality,
      left_triangle_components_assoc, id_whiskerLeft, assoc, assoc, Iso.inv_hom_id, comp_id,
      left_unitality_hom_assoc])
  right_unitality X := (adj.homEquiv _ _).symm.injective (by
    rw [homEquiv_counit, homEquiv_unit, MonoidalCategory.whiskerLeft_comp, homEquiv_unit,
      homEquiv_counit, map_comp, map_comp, map_comp, map_comp, map_comp, map_comp,
      assoc, assoc, assoc, assoc, assoc, counit_naturality, counit_naturality_assoc,
      counit_naturality_assoc, left_triangle_components_assoc, ← δ_natural_right_assoc,
      ← δ_natural_right_assoc, tensorHom_def, assoc, ← whisker_exchange_assoc,
      ← MonoidalCategory.whiskerLeft_comp_assoc, ← MonoidalCategory.whiskerLeft_comp_assoc,
      assoc, counit_naturality, left_triangle_components_assoc, MonoidalCategory.whiskerRight_id,
      assoc, assoc, Iso.inv_hom_id, comp_id, right_unitality_hom_assoc])

/-- When `adj : F ⊣ G` is an adjunction, with `F` oplax monoidal and `G` lax-monoidal,
this typeclass expresses compatibilities between the adjunction and the (op)lax
monoidal structures. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant1a63e59e0627eb5e5a4e15795c273d0f12329d663c075e5916c5bd9edf2b4631.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant1a63e59e0627eb5e5a4e15795c273d0f12329d663c075e5916c5bd9edf2b4631.lean#L938).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `795cfcd62b99acf8328fe29e452bfb809f75b774` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
