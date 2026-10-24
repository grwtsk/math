# tensorHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96d882546fe1012798549aa5a8b871ef8ef95ae0b299f022185982d0b80b830a",
  "kind": "def",
  "lexical_name": "tensorHom",
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
  "slug": "tensorhom--fa4ffada73e063a75e3a6be4",
  "source": {
    "blob": "43916b872ed2ecd4cc42825d465390b90d641cf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 445,
    "line": 412,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant7f59564f0f20d1d5402541824438f0678ff34dd761b25c27bdff2d3f5c65823b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa4ffada73e063a75e3a6be4a6fe169bc52d2fc37f4c0734c05f5217a5f5bfc7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant7f59564f0f20d1d5402541824438f0678ff34dd761b25c27bdff2d3f5c65823b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96d882546fe1012798549aa5a8b871ef8ef95ae0b299f022185982d0b80b830a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–445.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def tensorHom {X Y Z : Mon_ C} {M₁ M₂ : Bimod X Y} {N₁ N₂ : Bimod Y Z} (f : M₁ ⟶ M₂)
    (g : N₁ ⟶ N₂) : M₁.tensorBimod N₁ ⟶ M₂.tensorBimod N₂ where
  hom :=
    colimMap
      (parallelPairHom _ _ _ _ ((f.hom ⊗ 𝟙 Y.X) ⊗ g.hom) (f.hom ⊗ g.hom)
        (by
          rw [← tensor_comp, ← tensor_comp, Hom.right_act_hom, Category.id_comp, Category.comp_id])
        (by
          slice_lhs 2 3 => rw [← tensor_comp, Hom.left_act_hom, Category.id_comp]
          slice_rhs 1 2 => rw [associator_naturality]
          slice_rhs 2 3 => rw [← tensor_comp, Category.comp_id]))
  left_act_hom := by
    refine' (cancel_epi ((tensorLeft _).map (coequalizer.π _ _))).1 _
    dsimp
    slice_lhs 1 2 => rw [TensorBimod.id_tensor_π_actLeft]
    slice_lhs 3 4 => rw [ι_colimMap, parallelPairHom_app_one]
    slice_lhs 2 3 => rw [← tensor_comp, Hom.left_act_hom, Category.id_comp]
    slice_rhs 1 2 => rw [← id_tensor_comp, ι_colimMap, parallelPairHom_app_one, id_tensor_comp]
    slice_rhs 2 3 => rw [TensorBimod.id_tensor_π_actLeft]
    slice_rhs 1 2 => rw [associator_inv_naturality]
    slice_rhs 2 3 => rw [← tensor_comp, Category.comp_id]
  right_act_hom := by
    refine' (cancel_epi ((tensorRight _).map (coequalizer.π _ _))).1 _
    dsimp
    slice_lhs 1 2 => rw [TensorBimod.π_tensor_id_actRight]
    slice_lhs 3 4 => rw [ι_colimMap, parallelPairHom_app_one]
    slice_lhs 2 3 => rw [← tensor_comp, Category.id_comp, Hom.right_act_hom]
    slice_rhs 1 2 => rw [← comp_tensor_id, ι_colimMap, parallelPairHom_app_one, comp_tensor_id]
    slice_rhs 2 3 => rw [TensorBimod.π_tensor_id_actRight]
    slice_rhs 1 2 => rw [associator_naturality]
    slice_rhs 2 3 => rw [← tensor_comp, Category.comp_id]
set_option linter.uppercaseLean3 false in
#align Bimod.tensor_hom Bimod.tensorHom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant7f59564f0f20d1d5402541824438f0678ff34dd761b25c27bdff2d3f5c65823b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant7f59564f0f20d1d5402541824438f0678ff34dd761b25c27bdff2d3f5c65823b.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43916b872ed2ecd4cc42825d465390b90d641cf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
