# monoidalAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0fcc500062168e6c8c8d416e259c7ba55157f06f790493bd9be869bf724939bf",
  "kind": "def",
  "lexical_name": "monoidalAdjoint",
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
  "slug": "monoidaladjoint--7f6b631b0d0b9e4153f52831",
  "source": {
    "blob": "169b5f183f272966a185cc2a98f70309666c0d49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 526,
    "line": 486,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f6b631b0d0b9e4153f5283135f72529817d08cbb2e984dd77b2636c96441e2a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0fcc500062168e6c8c8d416e259c7ba55157f06f790493bd9be869bf724939bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 486–526.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def monoidalAdjoint (F : MonoidalFunctor C D) {G : D ⥤ C} (h : F.toFunctor ⊣ G) :
    LaxMonoidalFunctor D C where
  toFunctor := G
  ε := h.homEquiv _ _ (inv F.ε)
  μ X Y := h.homEquiv _ (X ⊗ Y) (inv (F.μ (G.obj X) (G.obj Y)) ≫ (h.counit.app X ⊗ h.counit.app Y))
  μ_natural := @fun X Y X' Y' f g => by
    rw [← h.homEquiv_naturality_left, ← h.homEquiv_naturality_right, Equiv.apply_eq_iff_eq, assoc,
      IsIso.eq_inv_comp, ← F.toLaxMonoidalFunctor.μ_natural_assoc, IsIso.hom_inv_id_assoc, ←
      tensor_comp, Adjunction.counit_naturality, Adjunction.counit_naturality, tensor_comp]
  associativity X Y Z := by
    dsimp only
    rw [← h.homEquiv_naturality_right, ← h.homEquiv_naturality_left, ←
      h.homEquiv_naturality_left, ← h.homEquiv_naturality_left, Equiv.apply_eq_iff_eq, ←
      cancel_epi (F.toLaxMonoidalFunctor.μ (G.obj X ⊗ G.obj Y) (G.obj Z)), ←
      cancel_epi (F.toLaxMonoidalFunctor.μ (G.obj X) (G.obj Y) ⊗ 𝟙 (F.obj (G.obj Z))),
      F.toLaxMonoidalFunctor.associativity_assoc (G.obj X) (G.obj Y) (G.obj Z), ←
      F.toLaxMonoidalFunctor.μ_natural_assoc, assoc, IsIso.hom_inv_id_assoc, ←
      F.toLaxMonoidalFunctor.μ_natural_assoc, IsIso.hom_inv_id_assoc, ← tensor_comp, ←
      tensor_comp, id_comp, Functor.map_id, Functor.map_id, id_comp, ← tensor_comp_assoc, ←
      tensor_comp_assoc, id_comp, id_comp, h.homEquiv_unit, h.homEquiv_unit, Functor.map_comp,
      assoc, assoc, h.counit_naturality, h.left_triangle_components_assoc, Functor.map_comp,
      assoc, h.counit_naturality, h.left_triangle_components_assoc]
    simp
  left_unitality X := by
    rw [← h.homEquiv_naturality_right, ← h.homEquiv_naturality_left, ← Equiv.symm_apply_eq,
      h.homEquiv_counit, F.map_leftUnitor, h.homEquiv_unit, assoc, assoc, assoc, F.map_tensor,
      assoc, assoc, IsIso.hom_inv_id_assoc, ← tensor_comp_assoc, Functor.map_id, id_comp,
      Functor.map_comp, assoc, h.counit_naturality, h.left_triangle_components_assoc, ←
      leftUnitor_naturality, ← tensor_comp_assoc, id_comp, comp_id]
    simp
  right_unitality X := by
    rw [← h.homEquiv_naturality_right, ← h.homEquiv_naturality_left, ← Equiv.symm_apply_eq,
      h.homEquiv_counit, F.map_rightUnitor, assoc, assoc, ← rightUnitor_naturality, ←
      tensor_comp_assoc, comp_id, id_comp, h.homEquiv_unit, F.map_tensor, assoc, assoc, assoc,
      IsIso.hom_inv_id_assoc, Functor.map_comp, Functor.map_id, ← tensor_comp_assoc, assoc,
      h.counit_naturality, h.left_triangle_components_assoc, id_comp]
    simp
#align category_theory.monoidal_adjoint CategoryTheory.monoidalAdjoint

/-- If a monoidal functor `F` is an equivalence of categories then its inverse is also monoidal. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean#L486).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `169b5f183f272966a185cc2a98f70309666c0d49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
