# isIso_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b86b2b3f-cbc3-9c53-a8af-b3eb99e01621",
  "kind": "theorem",
  "lexical_name": "isIso_tfae",
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
  "slug": "isiso-tfae--7ddfee518269e178e2ced70c",
  "source": {
    "blob": "9ebbe9336cadcb57ce779016a304003ce6082ec8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 98,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variantf6f129e225e2185ef60d2479922aec27ca6300cc0221d28c2513411175ef116a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ddfee518269e178e2ced70c4c02c32b6baad7b8de94e29ba1b23cb5c8a6bd95",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variantf6f129e225e2185ef60d2479922aec27ca6300cc0221d28c2513411175ef116a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b86b2b3f-cbc3-9c53-a8af-b3eb99e01621`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIso_tfae : List.TFAE
    [ ∀ (c : C) (d : D), IsIso (adj.unit.app ((ihom d).obj (R.obj c)))
    , ∀ (c : C) (d : D), IsIso ((pre (adj.unit.app d)).app (R.obj c))
    , ∀ (d d' : D), IsIso (L.map ((adj.unit.app d) ▷ d'))
    , ∀ (d d' : D), IsIso (L.map ((adj.unit.app d) ⊗ₘ (adj.unit.app d')))] := by
  tfae_have 3 → 4
  | h => by
    -- We can commute the tensor product in the condition that `L.map ((adj.unit.app d) ▷ d')` is
    -- an isomorphism:
    have h' : ∀ d d', IsIso (L.map (d ◁ (adj.unit.app d'))) := by
      intro d d'
      have := braiding_naturality (𝟙 d) (adj.unit.app d')
      rw [← Iso.eq_comp_inv, id_tensorHom] at this
      rw [this]
      simp only [map_comp, id_obj, comp_obj, tensorHom_id, Category.assoc]
      infer_instance
    intro d d'
    -- We then write the tensor product of the two units as the composition of the whiskered units,
    -- and conclude.
    have : (adj.unit.app d) ⊗ₘ (adj.unit.app d') =
        (adj.unit.app d ▷ d') ≫ (((L ⋙ R).obj _) ◁ adj.unit.app d') := by
      simp [← tensorHom_id, ← id_tensorHom, tensorHom_comp_tensorHom]
    rw [this, map_comp]
    infer_instance
  tfae_have 4 → 1
  | _, _, _ => by
    -- It is enough to show that the unit is a split monomorphism, and the retraction is given
    -- by `adjRetraction` above.
    let _ : Reflective R := { L := L, adj := adj }
    have : IsIso adj.toMonad.μ := μ_iso_of_reflective (R := R)
    dsimp
    rw [← dsimp% [Adjunction.toMonad] adj.toMonad.isSplitMono_iff_isIso_unit]
    exact ⟨⟨adjRetraction adj _ _, adjRetraction_is_retraction adj _ _⟩⟩
  tfae_have 1 → 3
  | h, d, d' => by
    rw [isIso_iff_isIso_coyoneda_map]
    intro c
    -- `w₁, w₃, w₄` are the three stacked commutative squares in the proof on nLab:
    have w₁ : (coyoneda.map (L.map (adj.unit.app d ▷ d')).op).app c = (adj.homEquiv _ _).symm ∘
        (coyoneda.map (adj.unit.app d ▷ d').op).app (R.obj c) ∘ adj.homEquiv _ _ := by ext; simp
    rw [isIso_iff_bijective, w₁]
    simp only [comp_obj, flip_obj_obj, yoneda_obj_obj, id_obj, op_tensorObj, unop_tensorObj,
      EquivLike.comp_bijective, EquivLike.bijective_comp]
    -- We commute the tensor product using the auxiliary commutative square `w₂`.
    have w₂ : ((coyoneda.map (adj.unit.app d ▷ d').op).app (R.obj c)) =
        ((yoneda.obj (R.obj c)).mapIso (β_ _ _)).hom ≫
          ((coyoneda.map (d' ◁ adj.unit.app d).op).app (R.obj c)) ≫
            ((yoneda.obj (R.obj c)).mapIso (β_ _ _)).hom := by ext; simp
    rw [w₂, ← isIso_iff_bijective]
    suffices IsIso <| (coyoneda.map (d' ◁ adj.unit.app d).op).app (R.obj c) by infer_instance
    have w₃ : ((coyoneda.map (d' ◁ adj.unit.app d).op).app (R.obj c) : _ → _) =
        ((ihom.adjunction d').homEquiv _ _).symm ∘
          ((coyoneda.map (adj.unit.app _).op).app _) ∘ (ihom.adjunction d').homEquiv _ _ := by
      ext
      simp only [id_obj, op_tensorObj, flip_obj_obj, yoneda_obj_obj, unop_tensorObj, comp_obj,
        flip_map_app, Function.comp_apply, Adjunction.homEquiv_unit, Adjunction.homEquiv_counit]
      simp
    rw [isIso_iff_bijective, w₃]
    simp only [comp_obj, op_tensorObj, flip_obj_obj, yoneda_obj_obj, unop_tensorObj, id_obj,
      yoneda_obj_obj, curriedTensor_obj_obj, EquivLike.comp_bijective, EquivLike.bijective_comp]
    have w₄ : (coyoneda.map (adj.unit.app d).op).app ((ihom d').obj (R.obj c)) ≫
        (coyoneda.obj ⟨d⟩).map (adj.unit.app ((ihom d').obj (R.obj c))) =
          (coyoneda.obj ⟨(L ⋙ R).obj d⟩).map (adj.unit.app ((ihom d').obj (R.obj c))) ≫
            (coyoneda.map (adj.unit.app d).op).app _ := by cat_disch
    rw [← isIso_iff_bijective]
    suffices IsIso ((coyoneda.map (adj.unit.app d).op).app ((ihom d').obj (R.obj c)) ≫
        (coyoneda.obj ⟨d⟩).map (adj.unit.app ((ihom d').obj (R.obj c)))) from
      IsIso.of_isIso_comp_right _ ((coyoneda.obj ⟨d⟩).map (adj.unit.app ((ihom d').obj (R.obj c))))
    rw [w₄]
    refine IsIso.comp_isIso' inferInstance ?_
    constructor
    -- We give the inverse of the bottom map in the stack of commutative squares:
    refine ⟨↾fun f ↦ R.map ((adj.homEquiv _ _).symm f), ?_, by ext; simp⟩
    ext f
    simp only [comp_obj, flip_obj_obj, yoneda_obj_obj, id_obj, flip_map_app, yoneda_obj_map,
      Quiver.Hom.unop_op, Adjunction.homEquiv_counit, map_comp, TypeCat.Fun.toFun_apply, comp_apply,
      ConcreteCategory.hom_ofHom, TypeCat.Fun.coe_mk, Category.assoc, id_apply]
    have : f = R.map (R.preimage f) := by simp
    rw [this]
    simp [← map_comp, -map_preimage]
  tfae_have 2 ↔ 3 := by
    conv => lhs; intro c d; rw [isIso_iff_isIso_yoneda_map]
    conv => rhs; intro d d'; rw [isIso_iff_isIso_coyoneda_map]
    -- bring the quantifiers out of the `↔`:
    rw [forall_comm]; apply forall_congr'; intro d
    rw [forall_comm]; apply forall₂_congr; intro d' c
    -- `w₁, w₂,` are the two stacked commutative squares in the proof on nLab:
    have w₁ : ((coyoneda.map (L.map (adj.unit.app d ▷ d')).op).app c) =
        (adj.homEquiv _ _).symm ∘
          (coyoneda.map (adj.unit.app d ▷ d').op).app (R.obj c) ∘
            (adj.homEquiv _ _) := by ext; simp
    have w₂ : ((yoneda.map ((pre (adj.unit.app d)).app (R.obj c))).app ⟨d'⟩ : _ → _) =
          ((ihom.adjunction d).homEquiv _ _) ∘
            ((coyoneda.map (adj.unit.app d ▷ d').op).app (R.obj c)) ∘
              ((ihom.adjunction ((L ⋙ R).obj d)).homEquiv _ _).symm := by
      rw [← Function.comp_assoc, ((ihom.adjunction ((L ⋙ R).obj d)).homEquiv _ _).eq_comp_symm]
      ext
      simp only [id_obj, yoneda_obj_obj, comp_obj, Function.comp_apply,
        yoneda_map_app, op_tensorObj, flip_obj_obj, yoneda_obj_obj, unop_tensorObj, op_whiskerRight,
        flip_map_app]
      rw [Adjunction.homEquiv_unit, Adjunction.homEquiv_unit]
      simp
    rw [isIso_iff_bijective, isIso_iff_bijective, w₂, w₁]
    simp
  tfae_finish

end

section

open Functor.OplaxMonoidal Functor.LaxMonoidal Functor.Monoidal

variable [MonoidalCategory C]
variable {L : D ⥤ C} [L.Monoidal] {R : C ⥤ D} [R.Faithful] [R.Full] (adj : L ⊣ R)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variantf6f129e225e2185ef60d2479922aec27ca6300cc0221d28c2513411175ef116a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflection/Variantf6f129e225e2185ef60d2479922aec27ca6300cc0221d28c2513411175ef116a.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ebbe9336cadcb57ce779016a304003ce6082ec8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
