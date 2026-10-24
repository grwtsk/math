# whiskerRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46ff48cdd043208c7e3b542dff79b1a3442097a0bf7d4ec3a5197cc2fb70f52b",
  "kind": "def",
  "lexical_name": "whiskerRight",
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
  "slug": "whiskerright--a75e53d15a8ed1f49ccb5dd7",
  "source": {
    "blob": "7fa1091e4e8db81754e9f77fe6e39b8ffb92ec09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 398,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant801d05706bcfd23e8e8abd93ca8ba710295a5670af427f2c5ede142648a05eda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a75e53d15a8ed1f49ccb5dd7af38d18e6f945d4add56104a3bd0718816540e87",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant801d05706bcfd23e8e8abd93ca8ba710295a5670af427f2c5ede142648a05eda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46ff48cdd043208c7e3b542dff79b1a3442097a0bf7d4ec3a5197cc2fb70f52b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def whiskerRight {X Y Z : Mon_ C} {M₁ M₂ : Bimod X Y} (f : M₁ ⟶ M₂) (N : Bimod Y Z) :
    M₁.tensorBimod N ⟶ M₂.tensorBimod N where
  hom :=
    colimMap
      (parallelPairHom _ _ _ _ (f.hom ▷ _ ▷ _) (f.hom ▷ _)
        (by rw [← comp_whiskerRight, Hom.right_act_hom, comp_whiskerRight])
        (by
          slice_lhs 2 3 => rw [whisker_exchange]
          simp))
  left_act_hom := by
    refine (cancel_epi ((tensorLeft _).map (coequalizer.π _ _))).1 ?_
    dsimp
    slice_lhs 1 2 => rw [TensorBimod.whiskerLeft_π_actLeft]
    slice_lhs 3 4 => rw [ι_colimMap, parallelPairHom_app_one]
    slice_lhs 2 3 => rw [← comp_whiskerRight, Hom.left_act_hom]
    slice_rhs 1 2 => rw [← MonoidalCategory.whiskerLeft_comp, ι_colimMap, parallelPairHom_app_one,
      MonoidalCategory.whiskerLeft_comp]
    slice_rhs 2 3 => rw [TensorBimod.whiskerLeft_π_actLeft]
    slice_rhs 1 2 => rw [associator_inv_naturality_middle]
    simp
  right_act_hom := by
    refine (cancel_epi ((tensorRight _).map (coequalizer.π _ _))).1 ?_
    dsimp
    slice_lhs 1 2 => rw [TensorBimod.π_tensor_id_actRight]
    slice_lhs 3 4 => rw [ι_colimMap, parallelPairHom_app_one]
    slice_lhs 2 3 => rw [whisker_exchange]
    slice_rhs 1 2 => rw [← comp_whiskerRight, ι_colimMap, parallelPairHom_app_one,
      comp_whiskerRight]
    slice_rhs 2 3 => rw [TensorBimod.π_tensor_id_actRight]
    simp

end

namespace AssociatorBimod

variable [∀ X : C, PreservesColimitsOfSize.{0, 0} (tensorLeft X)]
variable [∀ X : C, PreservesColimitsOfSize.{0, 0} (tensorRight X)]
variable {R S T U : Mon_ C} (P : Bimod R S) (Q : Bimod S T) (L : Bimod T U)

/-- An auxiliary morphism for the definition of the underlying morphism of the forward component of
the associator isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant801d05706bcfd23e8e8abd93ca8ba710295a5670af427f2c5ede142648a05eda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant801d05706bcfd23e8e8abd93ca8ba710295a5670af427f2c5ede142648a05eda.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fa1091e4e8db81754e9f77fe6e39b8ffb92ec09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
