# limitLaxMonoidal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fee0d070d881bf888c13cebbb1bb67921cad94784ae1e29cd31e6c7f17226a29",
  "kind": "instance",
  "lexical_name": "limitLaxMonoidal",
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
  "slug": "limitlaxmonoidal--a5cbdd366edfc4046a992988",
  "source": {
    "blob": "1aac3fbfaf3c94f5ea4bab807619fdc7d78ad9b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 50,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant09a761836de175d4f9eed6169e8a42f2aa056c4a8f1a5d2d92758d18de997d2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5cbdd366edfc4046a992988aa3d3264d8ac9f7f7aa729ac1a306296c081727e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant09a761836de175d4f9eed6169e8a42f2aa056c4a8f1a5d2d92758d18de997d2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fee0d070d881bf888c13cebbb1bb67921cad94784ae1e29cd31e6c7f17226a29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance limitLaxMonoidal : LaxMonoidal fun F : J ⥤ C => limit F where
  ε :=
    limit.lift _
      { pt := _
        π := { app := fun j => 𝟙 _ } }
  μ F G :=
    limit.lift (F ⊗ G)
      { pt := limit F ⊗ limit G
        π :=
          { app := fun j => limit.π F j ⊗ limit.π G j
            naturality := fun j j' f => by
              dsimp
              simp only [Category.id_comp, ← tensor_comp, limit.w] } }
  μ_natural f g := by
    ext; dsimp
    simp only [limit.lift_π, Cones.postcompose_obj_π, Monoidal.tensorHom_app, limit.lift_map,
      NatTrans.comp_app, Category.assoc, ← tensor_comp, limMap_π]
  associativity X Y Z := by
    ext j; dsimp
    simp only [limit.lift_π, Cones.postcompose_obj_π, Monoidal.associator_hom_app, limit.lift_map,
      NatTrans.comp_app, Category.assoc]
    slice_lhs 2 2 => rw [← tensor_id_comp_id_tensor]
    slice_lhs 1 2 =>
      rw [← comp_tensor_id, limit.lift_π]
      dsimp
    slice_lhs 1 2 => rw [tensor_id_comp_id_tensor]
    conv_lhs => rw [associator_naturality]
    conv_rhs => rw [← id_tensor_comp_tensor_id (limit.π (Y ⊗ Z) j)]
    slice_rhs 2 3 =>
      rw [← id_tensor_comp, limit.lift_π]
      dsimp
    dsimp; simp
  left_unitality X := by
    ext j; dsimp
    simp
    conv_rhs => rw [← tensor_id_comp_id_tensor (limit.π X j)]
    slice_rhs 1 2 =>
      rw [← comp_tensor_id]
      erw [limit.lift_π]
      dsimp
    slice_rhs 2 3 => rw [leftUnitor_naturality]
    simp
  right_unitality X := by
    ext j; dsimp
    simp
    conv_rhs => rw [← id_tensor_comp_tensor_id _ (limit.π X j)]
    slice_rhs 1 2 =>
      rw [← id_tensor_comp]
      erw [limit.lift_π]
      dsimp
    slice_rhs 2 3 => rw [rightUnitor_naturality]
    simp
#align category_theory.limits.limit_lax_monoidal CategoryTheory.Limits.limitLaxMonoidal

/-- The limit functor `F ↦ limit F` bundled as a lax monoidal functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant09a761836de175d4f9eed6169e8a42f2aa056c4a8f1a5d2d92758d18de997d2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant09a761836de175d4f9eed6169e8a42f2aa056c4a8f1a5d2d92758d18de997d2f.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1aac3fbfaf3c94f5ea4bab807619fdc7d78ad9b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
