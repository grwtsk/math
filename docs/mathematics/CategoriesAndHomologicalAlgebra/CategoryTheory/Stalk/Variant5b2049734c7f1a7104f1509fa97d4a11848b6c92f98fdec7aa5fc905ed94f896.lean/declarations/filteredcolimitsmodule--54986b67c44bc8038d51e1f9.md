# filteredColimitsModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5af72d3b0bd56c0fa1a7160a4b0ec46366de98d8775715a1fcdc4a76d7edfed",
  "kind": "abbrev",
  "lexical_name": "filteredColimitsModule",
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
  "slug": "filteredcolimitsmodule--54986b67c44bc8038d51e1f9",
  "source": {
    "blob": "245f347a216d5300dd3044523a9207c8d6f03601",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 70,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalk/Variant5b2049734c7f1a7104f1509fa97d4a11848b6c92f98fdec7aa5fc905ed94f896.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54986b67c44bc8038d51e1f9c1befe277a3559a29d989f6328a612084695921c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalk/Variant5b2049734c7f1a7104f1509fa97d4a11848b6c92f98fdec7aa5fc905ed94f896.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5af72d3b0bd56c0fa1a7160a4b0ec46366de98d8775715a1fcdc4a76d7edfed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev filteredColimitsModule : Module (RingCat.FilteredColimits.colimit R)
    (AddCommGrpCat.FilteredColimits.colimit M) where
  smul := colimit.smul R M H
  mul_smul r s m := Quot.induction_on₃ r s m <| by
    rintro ⟨U₁, a₁⟩ ⟨U₂, a₂⟩ ⟨V, b⟩
    obtain ⟨s, α, β, h₁, h₂, h₃⟩ := crown₃
      (leftToMax U₁ U₂ ≫ leftToMax (max U₁ U₂) V) (leftToMax U₁ (max U₂ V))
      (rightToMax U₁ U₂ ≫ leftToMax (max U₁ U₂) V) (leftToMax U₂ V ≫ rightToMax U₁ (max U₂ V))
      (rightToMax (max U₁ U₂) V) (rightToMax U₂ V ≫ rightToMax U₁ (max U₂ V))
    refine Functor.ιColimitType_eq_of_map_eq_map _ _ _ α β ?_
    dsimp
    simp only [map_mul, ← ConcreteCategory.comp_apply, ← Functor.map_comp, mul_smul, *]
  one_smul m := Quot.induction_on m <| by
    rintro ⟨V, b⟩
    refine Functor.ιColimitType_eq_of_map_eq_map _ _ _ (𝟙 _) (rightToMax _ _) ?_
    dsimp
    simp only [map_one, ← ConcreteCategory.comp_apply, ← Functor.map_comp, one_smul,
      Category.comp_id]
  smul_zero r := Quot.induction_on r <| by
    rintro ⟨U, a⟩
    refine Functor.ιColimitType_eq_of_map_eq_map _ _ _ (𝟙 _) (rightToMax _ _) ?_
    dsimp
    simp only [map_zero, smul_zero]
  smul_add r m n := Quot.induction_on₃ r m n <| by
    rintro ⟨U, a⟩ ⟨V₁, b₁⟩ ⟨V₂, b₂⟩
    obtain ⟨s, α, β, h₁, h₂, h₃, h₄⟩ := crown₄
      (leftToMax U V₁ ≫ leftToMax (max U V₁) (max U V₂)) (leftToMax U (max V₁ V₂))
      (leftToMax U V₂ ≫ rightToMax (max U V₁) (max U V₂)) (leftToMax U (max V₁ V₂))
      (rightToMax U V₁ ≫ leftToMax (max U V₁) (max U V₂))
      (leftToMax V₁ V₂ ≫ rightToMax U (max V₁ V₂))
      (rightToMax U V₂ ≫ rightToMax (max U V₁) (max U V₂))
      (rightToMax V₁ V₂ ≫ rightToMax U (max V₁ V₂))
    refine Functor.ιColimitType_eq_of_map_eq_map _ _ _ β α ?_
    dsimp
    -- We use this pattern instead of a single `simp` to avoid heatbeat modifications
    rw [H, H, H]
    simp only [← ConcreteCategory.comp_apply, ← Functor.map_comp]
    simp only [map_add, ← ConcreteCategory.comp_apply, ← Functor.map_comp, h₁, h₂, h₃, h₄, H]
    simp only [Functor.map_comp, RingCat.hom_comp, RingHom.coe_comp, Function.comp_apply,
      Category.assoc, AddCommGrpCat.hom_comp, AddMonoidHom.coe_comp, smul_add]
  add_smul r s m := Quot.induction_on₃ r s m <| by
    rintro ⟨U₁, a₁⟩ ⟨U₂, a₂⟩ ⟨V, b⟩
    obtain ⟨s, α, β, h₁, h₂, h₃, h₄⟩ := crown₄
      (rightToMax U₁ V ≫ leftToMax (max U₁ V) (max U₂ V)) (rightToMax (max U₁ U₂) V)
      (rightToMax U₂ V ≫ rightToMax (max U₁ V) (max U₂ V)) (rightToMax (max U₁ U₂) V)
      (leftToMax U₁ V ≫ leftToMax (max U₁ V) (max U₂ V))
      (leftToMax U₁ U₂ ≫ leftToMax (max U₁ U₂) V)
      (leftToMax U₂ V ≫ rightToMax (max U₁ V) (max U₂ V))
      (rightToMax U₁ U₂ ≫ leftToMax (max U₁ U₂) V)
    refine Functor.ιColimitType_eq_of_map_eq_map _ _ _ β α ?_
    dsimp
    simp only [add_smul, map_add, ← ConcreteCategory.comp_apply, ← Functor.map_comp, *]
  zero_smul m := Quot.induction_on m <| by
    rintro ⟨V, b⟩
    refine Functor.ιColimitType_eq_of_map_eq_map _ _ _ (𝟙 _) (leftToMax _ _) ?_
    dsimp
    simp only [map_zero, zero_smul]

/-- Given a cofiltered diagram of rings `R`, and a module `M` over `R`,
this is the `colim R`-module structure of `colim M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalk/Variant5b2049734c7f1a7104f1509fa97d4a11848b6c92f98fdec7aa5fc905ed94f896.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalk/Variant5b2049734c7f1a7104f1509fa97d4a11848b6c92f98fdec7aa5fc905ed94f896.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `245f347a216d5300dd3044523a9207c8d6f03601` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
