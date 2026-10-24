# whiskerLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8741672faf996f4126a933341ca2acb0eaef58eaa1c462d42960872555ba3b3",
  "kind": "def",
  "lexical_name": "whiskerLeft",
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
  "slug": "whiskerleft--a09a4b326c4536d2a72b7c5b",
  "source": {
    "blob": "949892d14684160b6997a4d25437e55ed6d17dbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 355,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant494e8eb10146160123097cd8d2c472478dd2560d0e7c0d6de7870fa4dd99de35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a09a4b326c4536d2a72b7c5b4eb6f76027b0350c01b94222f64190106423d287",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant494e8eb10146160123097cd8d2c472478dd2560d0e7c0d6de7870fa4dd99de35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8741672faf996f4126a933341ca2acb0eaef58eaa1c462d42960872555ba3b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def whiskerLeft {X Y Z : Mon_ C} (M : Bimod X Y) {N₁ N₂ : Bimod Y Z} (f : N₁ ⟶ N₂) :
    M.tensorBimod N₁ ⟶ M.tensorBimod N₂ where
  hom :=
    colimMap
      (parallelPairHom _ _ _ _ (_ ◁ f.hom) (_ ◁ f.hom)
        (by rw [whisker_exchange])
        (by
          simp only [Category.assoc, tensor_whiskerLeft, Iso.inv_hom_id_assoc,
            Iso.cancel_iso_hom_left]
          slice_lhs 1 2 => rw [← MonoidalCategory.whiskerLeft_comp, Hom.left_act_hom]
          simp))
  left_act_hom := by
    refine (cancel_epi ((tensorLeft _).map (coequalizer.π _ _))).1 ?_
    dsimp
    slice_lhs 1 2 => rw [TensorBimod.whiskerLeft_π_actLeft]
    slice_lhs 3 4 => rw [ι_colimMap, parallelPairHom_app_one]
    slice_rhs 1 2 => rw [← MonoidalCategory.whiskerLeft_comp, ι_colimMap, parallelPairHom_app_one,
      MonoidalCategory.whiskerLeft_comp]
    slice_rhs 2 3 => rw [TensorBimod.whiskerLeft_π_actLeft]
    slice_rhs 1 2 => rw [associator_inv_naturality_right]
    slice_rhs 2 3 => rw [whisker_exchange]
    simp
  right_act_hom := by
    refine (cancel_epi ((tensorRight _).map (coequalizer.π _ _))).1 ?_
    dsimp
    slice_lhs 1 2 => rw [TensorBimod.π_tensor_id_actRight]
    slice_lhs 3 4 => rw [ι_colimMap, parallelPairHom_app_one]
    slice_lhs 2 3 => rw [← MonoidalCategory.whiskerLeft_comp, Hom.right_act_hom]
    slice_rhs 1 2 =>
      rw [← comp_whiskerRight, ι_colimMap, parallelPairHom_app_one, comp_whiskerRight]
    slice_rhs 2 3 => rw [TensorBimod.π_tensor_id_actRight]
    simp

/-- Right whiskering for morphisms of bimodule objects. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant494e8eb10146160123097cd8d2c472478dd2560d0e7c0d6de7870fa4dd99de35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant494e8eb10146160123097cd8d2c472478dd2560d0e7c0d6de7870fa4dd99de35.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `949892d14684160b6997a4d25437e55ed6d17dbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
