-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ColimitLimitToLimitColimitInjective.Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"beaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ColimitLimitToLimitColimitInjective.Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"beaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/FilteredColimitCommutesFiniteLimit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.CategoryTheory.Limits.ColimitLimit
import Mathlib.CategoryTheory.Limits.Preserves.FunctorCategory
import Mathlib.CategoryTheory.Limits.Preserves.Finite
import Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits
import Mathlib.CategoryTheory.Limits.Preserves.Filtered
import Mathlib.CategoryTheory.ConcreteCategory.Basic


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ColimitLimitToLimitColimitInjective.Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4

#align_import category_theory.limits.filtered_colimit_commutes_finite_limit from "leanprover-community/mathlib"@"3f409bd9df181d26dd223170da7b6830ece18442"

/-!
# Filtered colimits commute with finite limits.

We show that for a functor `F : J × K ⥤ Type v`, when `J` is finite and `K` is filtered,
the universal morphism `colimitLimitToLimitColimit F` comparing the
colimit (over `K`) of the limits (over `J`) with the limit of the colimits is an isomorphism.

(In fact, to prove that it is injective only requires that `J` has finitely many objects.)

## References
* Borceux, Handbook of categorical algebra 1, Theorem 2.13.4
* [Stacks: Filtered colimits](https://stacks.math.columbia.edu/tag/002W)
-/


universe v u

open CategoryTheory CategoryTheory.Category CategoryTheory.Limits.Types
  CategoryTheory.Limits.Types.FilteredColimit

namespace CategoryTheory.Limits

variable {J K : Type v} [SmallCategory J] [SmallCategory K]

/-- `(G ⋙ lim).obj j` = `limit (G.obj j)` definitionally, so this
is just a variant of `limit_ext'`. -/
@[ext] lemma comp_lim_obj_ext {j : J} {G : J ⥤ K ⥤ Type v} (x y : (G ⋙ lim).obj j)
    (w : ∀ (k : K), limit.π (G.obj j) k x = limit.π (G.obj j) k y) : x = y :=
  limit_ext' _ x y w

variable (F : J × K ⥤ Type v)

open CategoryTheory.Prod

variable [IsFiltered K]

section

/-!
Injectivity doesn't need that we have finitely many morphisms in `J`,
only that there are finitely many objects.
-/

variable [Finite J]

/-- This follows this proof from
* Borceux, Handbook of categorical algebra 1, Theorem 2.13.4
-/
theorem colimitLimitToLimitColimit_injective :
    Function.Injective (colimitLimitToLimitColimit F) := by
  classical
    cases nonempty_fintype J
    -- Suppose we have two terms `x y` in the colimit (over `K`) of the limits (over `J`),
    -- and that these have the same image under `colimitLimitToLimitColimit F`.
    intro x y h
    -- These elements of the colimit have representatives somewhere:
    obtain ⟨kx, x, rfl⟩ := jointly_surjective'.{v, v} x
    obtain ⟨ky, y, rfl⟩ := jointly_surjective'.{v, v} y
    dsimp at x y
    -- Since the images of `x` and `y` are equal in a limit, they are equal componentwise
    -- (indexed by `j : J`),
    replace h := fun j => congr_arg (limit.π (curry.obj F ⋙ colim) j) h
    -- and they are equations in a filtered colimit,
    -- so for each `j` we have some place `k j` to the right of both `kx` and `ky`
    simp [colimit_eq_iff.{v, v}] at h
    let k j := (h j).choose
    let f : ∀ j, kx ⟶ k j := fun j => (h j).choose_spec.choose
    let g : ∀ j, ky ⟶ k j := fun j => (h j).choose_spec.choose_spec.choose
    -- where the images of the components of the representatives become equal:
    have w :
      ∀ j, F.map ((𝟙 j, f j) :
        (j, kx) ⟶ (j, k j)) (limit.π ((curry.obj (swap K J ⋙ F)).obj kx) j x) =
          F.map ((𝟙 j, g j) : (j, ky) ⟶ (j, k j))
            (limit.π ((curry.obj (swap K J ⋙ F)).obj ky) j y) :=
      fun j => (h j).choose_spec.choose_spec.choose_spec
    -- We now use that `K` is filtered, picking some point to the right of all these
    -- morphisms `f j` and `g j`.
    let O : Finset K := Finset.univ.image k ∪ {kx, ky}
    have kxO : kx ∈ O := Finset.mem_union.mpr (Or.inr (by simp))
    have kyO : ky ∈ O := Finset.mem_union.mpr (Or.inr (by simp))
    have kjO : ∀ j, k j ∈ O := fun j => Finset.mem_union.mpr (Or.inl (by simp))
    let H : Finset (Σ' (X Y : K) (_ : X ∈ O) (_ : Y ∈ O), X ⟶ Y) :=
      (Finset.univ.image fun j : J =>
          ⟨kx, k j, kxO, Finset.mem_union.mpr (Or.inl (by simp)), f j⟩) ∪
        Finset.univ.image fun j : J => ⟨ky, k j, kyO, Finset.mem_union.mpr (Or.inl (by simp)), g j⟩
    obtain ⟨S, T, W⟩ := IsFiltered.sup_exists O H
    have fH : ∀ j, (⟨kx, k j, kxO, kjO j, f j⟩ : Σ' (X Y : K) (_ : X ∈ O) (_ : Y ∈ O), X ⟶ Y) ∈ H :=
      fun j =>
      Finset.mem_union.mpr
        (Or.inl
          (by
            simp only [true_and_iff, Finset.mem_univ, eq_self_iff_true, exists_prop_of_true,
              Finset.mem_image, heq_iff_eq]
            refine' ⟨j, _⟩
            simp only [heq_iff_eq] ))
    have gH :
      ∀ j, (⟨ky, k j, kyO, kjO j, g j⟩ : Σ' (X Y : K) (_ : X ∈ O) (_ : Y ∈ O), X ⟶ Y) ∈ H :=
      fun j =>
      Finset.mem_union.mpr
        (Or.inr
          (by
            simp only [true_and_iff, Finset.mem_univ, eq_self_iff_true, exists_prop_of_true,
              Finset.mem_image, heq_iff_eq]
            refine' ⟨j, _⟩
            simp only [heq_iff_eq]))
    -- Our goal is now an equation between equivalence classes of representatives of a colimit,
    -- and so it suffices to show those representative become equal somewhere, in particular at `S`.
    apply colimit_sound'.{v, v} (T kxO) (T kyO)
    -- We can check if two elements of a limit (in `Type`)
    -- are equal by comparing them componentwise.
    ext j
    -- Now it's just a calculation using `W` and `w`.
    simp only [Functor.comp_map, Limit.map_π_apply, curry_obj_map_app, swap_map]
    rw [← W _ _ (fH j)]
    rw [← W _ _ (gH j)]
    -- porting note: this was `simp [w]` in lean 3; this is presumably a confluence issue
    rw [lim_map, lim_map, Limit.map_π_apply', Limit.map_π_apply', Functor.map_comp,
      Functor.map_comp, FunctorToTypes.comp, FunctorToTypes.comp, curry_obj_map_app,
      curry_obj_map_app, curry_obj_map_app, Functor.comp_map, Functor.comp_map,
      Functor.comp_map, swap_map, swap_map, swap_map, w]
#align category_theory.limits.colimit_limit_to_limit_colimit_injective CategoryTheory.Limits.colimitLimitToLimitColimit_injective

end

variable [FinCategory J]

/-- This follows this proof from
* Borceux, Handbook of categorical algebra 1, Theorem 2.13.4
although with different names.
-/
theorem colimitLimitToLimitColimit_surjective :
    Function.Surjective (colimitLimitToLimitColimit F) := by
  classical
    -- We begin with some element `x` in the limit (over J) over the colimits (over K),
    intro x
    -- This consists of some coherent family of elements in the various colimits,
    -- and so our first task is to pick representatives of these elements.
    have z := fun j => jointly_surjective'.{v, v} (limit.π (curry.obj F ⋙ Limits.colim) j x)
    -- `k : J ⟶ K` records where the representative of the
    -- element in the `j`-th element of `x` lives
    let k : J → K := fun j => (z j).choose
    -- `y j : F.obj (j, k j)` is the representative
    let y : ∀ j, F.obj (j, k j) := fun j => (z j).choose_spec.choose
    -- and we record that these representatives, when mapped back into the relevant colimits,
    -- are actually the components of `x`.
    have e : ∀ j,
        colimit.ι ((curry.obj F).obj j) (k j) (y j) = limit.π (curry.obj F ⋙ Limits.colim) j x :=
      fun j => (z j).choose_spec.choose_spec
    clear_value k y
    -- A little tidying up of things we no longer need.
    clear z
    -- As a first step, we use that `K` is filtered to pick some point `k' : K` above all the `k j`
    let k' : K := IsFiltered.sup (Finset.univ.image k) ∅
    -- and name the morphisms as `g j : k j ⟶ k'`.
    have g : ∀ j, k j ⟶ k' := fun j => IsFiltered.toSup (Finset.univ.image k) ∅ (by simp)
    clear_value k'
    -- Recalling that the components of `x`, which are indexed by `j : J`, are "coherent",
    -- in other words preserved by morphisms in the `J` direction,
    -- we see that for any morphism `f : j ⟶ j'` in `J`,
    -- the images of `y j` and `y j'`, when mapped to `F.obj (j', k')` respectively by
    -- `(f, g j)` and `(𝟙 j', g j')`, both represent the same element in the colimit.
    have w :
      ∀ {j j' : J} (f : j ⟶ j'),
        colimit.ι ((curry.obj F).obj j') k' (F.map ((𝟙 j', g j') : (j', k j') ⟶ (j', k')) (y j')) =
          colimit.ι ((curry.obj F).obj j') k' (F.map ((f, g j) : (j, k j) ⟶ (j', k')) (y j)) := by
      intro j j' f
      have t : (f, g j) =
          (((f, 𝟙 (k j)) : (j, k j) ⟶ (j', k j)) ≫ (𝟙 j', g j) : (j, k j) ⟶ (j', k')) := by
        simp only [id_comp, comp_id, prod_comp]
      erw [Colimit.w_apply', t, FunctorToTypes.map_comp_apply, Colimit.w_apply', e, ←
        Limit.w_apply' f, ← e]
      simp
    -- Because `K` is filtered, we can restate this as saying that
    -- for each such `f`, there is some place to the right of `k'`
    -- where these images of `y j` and `y j'` become equal.
    simp_rw [colimit_eq_iff.{v, v}] at w
    -- We take a moment to restate `w` more conveniently.
    let kf : ∀ {j j'} (_ : j ⟶ j'), K := fun f => (w f).choose
    let gf : ∀ {j j'} (f : j ⟶ j'), k' ⟶ kf f := fun f => (w f).choose_spec.choose
    let hf : ∀ {j j'} (f : j ⟶ j'), k' ⟶ kf f := fun f =>
      (w f).choose_spec.choose_spec.choose
    have wf :
      ∀ {j j'} (f : j ⟶ j'),
        F.map ((𝟙 j', g j' ≫ gf f) : (j', k j') ⟶ (j', kf f)) (y j') =
          F.map ((f, g j ≫ hf f) : (j, k j) ⟶ (j', kf f)) (y j) :=
      fun {j j'} f => by
      have q :
        ((curry.obj F).obj j').map (gf f) (F.map ((𝟙 j', g j') : (j', k j') ⟶ (j', k')) (y j')) =
          ((curry.obj F).obj j').map (hf f) (F.map ((f, g j) : (j, k j) ⟶ (j', k')) (y j)) :=
        (w f).choose_spec.choose_spec.choose_spec
      rw [curry_obj_obj_map, curry_obj_obj_map] at q
      -- porting note: Lean 4 `dsimp` unfolds `gf` and `hf` in `q` :-(
      -- See discussion at https://leanprover.zulipchat.com/#narrow/stream/270676-lean4/topic/.60dsimp.60.20unfolding.20local.20lets
      simp_rw [← FunctorToTypes.map_comp_apply, CategoryStruct.comp] at q
      convert q <;> simp only [comp_id]
    clear_value kf gf hf
    -- and clean up some things that are no longer needed.
    clear w
    -- We're now ready to use the fact that `K` is filtered a second time,
    -- picking some place to the right of all of
    -- the morphisms `gf f : k' ⟶ kh f` and `hf f : k' ⟶ kf f`.
    -- At this point we're relying on there being only finitely morphisms in `J`.
    let O :=
      (Finset.univ.biUnion fun j => Finset.univ.biUnion fun j' => Finset.univ.image
        (@kf j j')) ∪ {k'}
    have kfO : ∀ {j j'} (f : j ⟶ j'), kf f ∈ O := fun {j} {j'} f =>
      Finset.mem_union.mpr
        (Or.inl
          (by
            rw [Finset.mem_biUnion]
            refine' ⟨j, Finset.mem_univ j, _⟩
            rw [Finset.mem_biUnion]
            refine' ⟨j', Finset.mem_univ j', _⟩
            rw [Finset.mem_image]
            refine' ⟨f, Finset.mem_univ _, _⟩
            rfl))
    have k'O : k' ∈ O := Finset.mem_union.mpr (Or.inr (Finset.mem_singleton.mpr rfl))
    let H : Finset (Σ' (X Y : K) (_ : X ∈ O) (_ : Y ∈ O), X ⟶ Y) :=
      Finset.univ.biUnion fun j : J =>
        Finset.univ.biUnion fun j' : J =>
          Finset.univ.biUnion fun f : j ⟶ j' =>
            {⟨k', kf f, k'O, kfO f, gf f⟩, ⟨k', kf f, k'O, kfO f, hf f⟩}
    obtain ⟨k'', i', s'⟩ := IsFiltered.sup_exists O H
    -- We then restate this slightly more conveniently, as a family of morphism `i f : kf f ⟶ k''`,
    -- satisfying `gf f ≫ i f = hf f' ≫ i f'`.
    let i : ∀ {j j'} (f : j ⟶ j'), kf f ⟶ k'' := fun {j} {j'} f => i' (kfO f)
    have s : ∀ {j₁ j₂ j₃ j₄} (f : j₁ ⟶ j₂) (f' : j₃ ⟶ j₄), gf f ≫ i f = hf f' ≫ i f' := by
      intros j₁ j₂ j₃ j₄ f f'
      rw [s', s']
      -- porting note: the three goals here in Lean 3 were in a different order
      exact k'O
      swap
      · rw [Finset.mem_biUnion]
        refine' ⟨j₁, Finset.mem_univ _, _⟩
        rw [Finset.mem_biUnion]
        refine' ⟨j₂, Finset.mem_univ _, _⟩
        rw [Finset.mem_biUnion]
        refine' ⟨f, Finset.mem_univ _, _⟩
        simp only [true_or_iff, eq_self_iff_true, and_self_iff, Finset.mem_insert, heq_iff_eq]
      · rw [Finset.mem_biUnion]
        refine' ⟨j₃, Finset.mem_univ _, _⟩
        rw [Finset.mem_biUnion]
        refine' ⟨j₄, Finset.mem_univ _, _⟩
        rw [Finset.mem_biUnion]
        refine' ⟨f', Finset.mem_univ _, _⟩
        simp only [eq_self_iff_true, or_true_iff, and_self_iff, Finset.mem_insert,
          Finset.mem_singleton, heq_iff_eq]
    clear_value i
    clear s' i' H kfO k'O O
    -- We're finally ready to construct the pre-image, and verify it really maps to `x`.
    -- ⊢ ∃ a, colimitLimitToLimitColimit F a = x
    fconstructor
    · -- We construct the pre-image (which, recall is meant to be a point
      -- in the colimit (over `K`) of the limits (over `J`)) via a representative at `k''`.
      apply colimit.ι (curry.obj (swap K J ⋙ F) ⋙ Limits.lim) k'' _
      dsimp
      -- This representative is meant to be an element of a limit,
      -- so we need to construct a family of elements in `F.obj (j, k'')` for varying `j`,
      -- then show that are coherent with respect to morphisms in the `j` direction.
      apply Limit.mk.{v, v}
      swap
      ·-- We construct the elements as the images of the `y j`.
        exact fun j => F.map (⟨𝟙 j, g j ≫ gf (𝟙 j) ≫ i (𝟙 j)⟩ : (j, k j) ⟶ (j, k'')) (y j)
      · -- After which it's just a calculation, using `s` and `wf`, to see they are coherent.
        dsimp
        intro j j' f
        simp only [← FunctorToTypes.map_comp_apply, prod_comp, id_comp, comp_id]
        calc
          F.map ((f, g j ≫ gf (𝟙 j) ≫ i (𝟙 j)) : (j, k j) ⟶ (j', k'')) (y j) =
              F.map ((f, g j ≫ hf f ≫ i f) : (j, k j) ⟶ (j', k'')) (y j) :=
            by rw [s (𝟙 j) f]
          _ =
              F.map ((𝟙 j', i f) : (j', kf f) ⟶ (j', k''))
                (F.map ((f, g j ≫ hf f) : (j, k j) ⟶ (j', kf f)) (y j)) :=
            by rw [← FunctorToTypes.map_comp_apply, prod_comp, comp_id, assoc]
          _ =
              F.map ((𝟙 j', i f) : (j', kf f) ⟶ (j', k''))
                (F.map ((𝟙 j', g j' ≫ gf f) : (j', k j') ⟶ (j', kf f)) (y j')) :=
            by rw [← wf f]
          _ = F.map ((𝟙 j', g j' ≫ gf f ≫ i f) : (j', k j') ⟶ (j', k'')) (y j') := by
            rw [← FunctorToTypes.map_comp_apply, prod_comp, id_comp, assoc]
          _ = F.map ((𝟙 j', g j' ≫ gf (𝟙 j') ≫ i (𝟙 j')) : (j', k j') ⟶ (j', k'')) (y j') := by
            rw [s f (𝟙 j'), ← s (𝟙 j') (𝟙 j')]
    -- Finally we check that this maps to `x`.
    · -- We can do this componentwise:
      apply limit_ext'
      intro j
      -- and as each component is an equation in a colimit, we can verify it by
      -- pointing out the morphism which carries one representative to the other:
      simp only [id.def, ← e, Limits.ι_colimitLimitToLimitColimit_π_apply,
          colimit_eq_iff.{v, v}, Bifunctor.map_id_comp, types_comp_apply, curry_obj_obj_map,
          Functor.comp_obj, colim_obj, Limit.π_mk]
      refine' ⟨k'', 𝟙 k'', g j ≫ gf (𝟙 j) ≫ i (𝟙 j), _⟩
      -- porting note: the lean 3 proof finished with
      -- `simp only [Bifunctor.map_id_comp, types_comp_apply, Bifunctor.map_id, types_id_apply]`
      -- which doesn't work; the corresponding `rw` works fine:
      rw [Bifunctor.map_id_comp, Bifunctor.map_id_comp, types_comp_apply, types_comp_apply,
        Bifunctor.map_id, types_id_apply]
#align category_theory.limits.colimit_limit_to_limit_colimit_surjective CategoryTheory.Limits.colimitLimitToLimitColimit_surjective

instance colimitLimitToLimitColimit_isIso : IsIso (colimitLimitToLimitColimit F) :=
  (isIso_iff_bijective _).mpr
    ⟨colimitLimitToLimitColimit_injective F, colimitLimitToLimitColimit_surjective F⟩
#align category_theory.limits.colimit_limit_to_limit_colimit_is_iso CategoryTheory.Limits.colimitLimitToLimitColimit_isIso

instance colimitLimitToLimitColimitCone_iso (F : J ⥤ K ⥤ Type v) :
    IsIso (colimitLimitToLimitColimitCone F) := by
  have : IsIso (colimitLimitToLimitColimitCone F).Hom := by
    suffices : IsIso (colimitLimitToLimitColimit (uncurry.obj F) ≫
      lim.map (whiskerRight (currying.unitIso.app F).inv colim))
    apply IsIso.comp_isIso
    infer_instance
  apply Cones.cone_iso_of_hom_iso
#align category_theory.limits.colimit_limit_to_limit_colimit_cone_iso CategoryTheory.Limits.colimitLimitToLimitColimitCone_iso

noncomputable instance filteredColimPreservesFiniteLimitsOfTypes :
    PreservesFiniteLimits (colim : (K ⥤ Type v) ⥤ _) := by
  apply preservesFiniteLimitsOfPreservesFiniteLimitsOfSize.{v}
  intro J _ _
  refine ⟨fun {F} => ⟨fun {c} hc => IsLimit.ofIsoLimit (limit.isLimit _) ?_⟩⟩
  symm
  trans colim.mapCone (limit.cone F)
  · exact Functor.mapIso _ (hc.uniqueUpToIso (limit.isLimit F))
  · exact asIso (colimitLimitToLimitColimitCone.{v, v + 1} F)
#align category_theory.limits.filtered_colim_preserves_finite_limits_of_types CategoryTheory.Limits.filteredColimPreservesFiniteLimitsOfTypes

variable {C : Type u} [Category.{v} C] [ConcreteCategory.{v} C]

section

variable [HasLimitsOfShape J C] [HasColimitsOfShape K C]

variable [ReflectsLimitsOfShape J (forget C)] [PreservesColimitsOfShape K (forget C)]

variable [PreservesLimitsOfShape J (forget C)]

noncomputable instance filteredColimPreservesFiniteLimits :
    PreservesLimitsOfShape J (colim : (K ⥤ C) ⥤ _) :=
  haveI : PreservesLimitsOfShape J ((colim : (K ⥤ C) ⥤ _) ⋙ forget C) :=
    preservesLimitsOfShapeOfNatIso (preservesColimitNatIso _).symm
  preservesLimitsOfShapeOfReflectsOfPreserves _ (forget C)
#align category_theory.limits.filtered_colim_preserves_finite_limits CategoryTheory.Limits.filteredColimPreservesFiniteLimits

end

attribute [local instance] reflectsLimitsOfShapeOfReflectsIsomorphisms

noncomputable instance [PreservesFiniteLimits (forget C)] [PreservesFilteredColimits (forget C)]
    [HasFiniteLimits C] [HasColimitsOfShape K C] [ReflectsIsomorphisms (forget C)] :
    PreservesFiniteLimits (colim : (K ⥤ C) ⥤ _) := by
  apply preservesFiniteLimitsOfPreservesFiniteLimitsOfSize.{v}
  intro J _ _
  infer_instance

section

variable [HasLimitsOfShape J C] [HasColimitsOfShape K C]

variable [ReflectsLimitsOfShape J (forget C)] [PreservesColimitsOfShape K (forget C)]

variable [PreservesLimitsOfShape J (forget C)]

/-- A curried version of the fact that filtered colimits commute with finite limits. -/
noncomputable def colimitLimitIso (F : J ⥤ K ⥤ C) : colimit (limit F) ≅ limit (colimit F.flip) :=
  (isLimitOfPreserves colim (limit.isLimit _)).conePointUniqueUpToIso (limit.isLimit _) ≪≫
    HasLimit.isoOfNatIso (colimitFlipIsoCompColim _).symm
#align category_theory.limits.colimit_limit_iso CategoryTheory.Limits.colimitLimitIso

@[reassoc (attr := simp)]
theorem ι_colimitLimitIso_limit_π (F : J ⥤ K ⥤ C) (a) (b) :
    colimit.ι (limit F) a ≫ (colimitLimitIso F).hom ≫ limit.π (colimit F.flip) b =
      (limit.π F b).app a ≫ (colimit.ι F.flip a).app b := by
  dsimp [colimitLimitIso]
  simp only [Functor.mapCone_π_app, Iso.symm_hom,
    Limits.limit.conePointUniqueUpToIso_hom_comp_assoc, Limits.limit.cone_π,
    Limits.colimit.ι_map_assoc, Limits.colimitFlipIsoCompColim_inv_app, assoc,
    Limits.HasLimit.isoOfNatIso_hom_π]
  congr 1
  simp only [← Category.assoc, Iso.comp_inv_eq,
    Limits.colimitObjIsoColimitCompEvaluation_ι_app_hom,
    Limits.HasColimit.isoOfNatIso_ι_hom, NatIso.ofComponents_hom_app]
  dsimp
  simp
#align category_theory.limits.ι_colimit_limit_iso_limit_π CategoryTheory.Limits.ι_colimitLimitIso_limit_π

end

end CategoryTheory.Limits
