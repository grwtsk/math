-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ConcreteCategory.Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ConcreteCategory.Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/ConcreteCategory/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison, Johannes Hölzl, Reid Barton, Sean Leather, Yury Kudryashov
-/
import Mathlib.CategoryTheory.Types
import Mathlib.CategoryTheory.Functor.EpiMono
import Mathlib.CategoryTheory.Limits.Constructions.EpiMono


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ConcreteCategory.Variant5c6202079331ca02eee2421399b9e15d0ac37bbb3519f159f8aa5a92acf549e7

#align_import category_theory.concrete_category.basic from "leanprover-community/mathlib"@"311ef8c4b4ae2804ea76b8a611bc5ea1d9c16872"

/-!
# Concrete categories

A concrete category is a category `C` with a fixed faithful functor
`forget : C ⥤ Type*`.  We define concrete categories using `class ConcreteCategory`.
In particular, we impose no restrictions on the
carrier type `C`, so `Type` is a concrete category with the identity
forgetful functor.

Each concrete category `C` comes with a canonical faithful functor
`forget C : C ⥤ Type*`.  We say that a concrete category `C` admits a
*forgetful functor* to a concrete category `D`, if it has a functor
`forget₂ C D : C ⥤ D` such that `(forget₂ C D) ⋙ (forget D) = forget C`,
see `class HasForget₂`.  Due to `Faithful.div_comp`, it suffices
to verify that `forget₂.obj` and `forget₂.map` agree with the equality
above; then `forget₂` will satisfy the functor laws automatically, see
`HasForget₂.mk'`.

Two classes helping construct concrete categories in the two most
common cases are provided in the files `BundledHom` and
`UnbundledHom`, see their documentation for details.

## References

See [Ahrens and Lumsdaine, *Displayed Categories*][ahrens2017] for
related work.
-/


universe w w' v v' u u'

namespace CategoryTheory

open CategoryTheory.Limits

/-- A concrete category is a category `C` with a fixed faithful functor `Forget : C ⥤ Type`.

Note that `ConcreteCategory` potentially depends on three independent universe levels,
* the universe level `w` appearing in `Forget : C ⥤ Type w`
* the universe level `v` of the morphisms (i.e. we have a `Category.{v} C`)
* the universe level `u` of the objects (i.e `C : Type u`)
They are specified that order, to avoid unnecessary universe annotations.
-/
class ConcreteCategory (C : Type u) [Category.{v} C] where
  /-- We have a functor to Type -/
  protected forget : C ⥤ Type w
  /-- That functor is faithful -/
  [forget_faithful : Faithful forget]
#align category_theory.concrete_category CategoryTheory.ConcreteCategory
#align category_theory.concrete_category.forget CategoryTheory.ConcreteCategory.forget

attribute [reducible] ConcreteCategory.forget
attribute [instance] ConcreteCategory.forget_faithful

/-- The forgetful functor from a concrete category to `Type u`. -/
@[reducible]
def forget (C : Type u) [Category.{v} C] [ConcreteCategory.{w} C] : C ⥤ Type w :=
  ConcreteCategory.forget
#align category_theory.forget CategoryTheory.forget

-- this is reducible because we want `forget (Type u)` to unfold to `𝟭 _`
@[reducible]
instance ConcreteCategory.types : ConcreteCategory.{u, u, u+1} (Type u) where
  forget := 𝟭 _
#align category_theory.concrete_category.types CategoryTheory.ConcreteCategory.types

/-- Provide a coercion to `Type u` for a concrete category. This is not marked as an instance
as it could potentially apply to every type, and so is too expensive in typeclass search.

You can use it on particular examples as:
```
instance : HasCoeToSort X := ConcreteCategory.hasCoeToSort X
```
-/
def ConcreteCategory.hasCoeToSort (C : Type u) [Category.{v} C] [ConcreteCategory.{w} C] :
    CoeSort C (Type w) where
  coe := fun X => (forget C).obj X
#align category_theory.concrete_category.has_coe_to_sort CategoryTheory.ConcreteCategory.hasCoeToSort

section

attribute [local instance] ConcreteCategory.hasCoeToSort

variable {C : Type u} [Category.{v} C] [ConcreteCategory.{w} C]

-- Porting note: forget_obj_eq_coe has become a syntactic tautology.
#noalign category_theory.forget_obj_eq_coe

@[reducible]
def ConcreteCategory.funLike {X Y : C} : FunLike (X ⟶ Y) X (fun _ => Y) where
  coe f := (forget C).map f
  coe_injective' _ _ h := (forget C).map_injective h
attribute [local instance] ConcreteCategory.funLike

/-- In any concrete category, we can test equality of morphisms by pointwise evaluations.-/
@[ext low] -- Porting note: lowered priority
theorem ConcreteCategory.hom_ext {X Y : C} (f g : X ⟶ Y) (w : ∀ x : X, f x = g x) : f = g := by
  apply @Faithful.map_injective C _ (Type w) _ (forget C) _ X Y
  dsimp [forget]
  funext x
  exact w x
#align category_theory.concrete_category.hom_ext CategoryTheory.ConcreteCategory.hom_ext

theorem forget_map_eq_coe {X Y : C} (f : X ⟶ Y) : (forget C).map f = f := rfl
#align category_theory.forget_map_eq_coe CategoryTheory.forget_map_eq_coe

/-- Analogue of `congr_fun h x`,
when `h : f = g` is an equality between morphisms in a concrete category.
-/
theorem congr_hom {X Y : C} {f g : X ⟶ Y} (h : f = g) (x : X) : f x = g x :=
  congrFun (congrArg (fun k : X ⟶ Y => (k : X → Y)) h) x
#align category_theory.congr_hom CategoryTheory.congr_hom

theorem coe_id {X : C} : (𝟙 X : X → X) = id :=
  (forget _).map_id X
#align category_theory.coe_id CategoryTheory.coe_id

theorem coe_comp {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) : (f ≫ g : X → Z) = g ∘ f :=
  (forget _).map_comp f g
#align category_theory.coe_comp CategoryTheory.coe_comp

@[simp] theorem id_apply {X : C} (x : X) : (𝟙 X : X → X) x = x :=
  congr_fun ((forget _).map_id X) x
#align category_theory.id_apply CategoryTheory.id_apply

@[simp] theorem comp_apply {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) (x : X) : (f ≫ g) x = g (f x) :=
  congr_fun ((forget _).map_comp _ _) x
#align category_theory.comp_apply CategoryTheory.comp_apply

theorem comp_apply' {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) (x : X) :
  (forget C).map (f ≫ g) x = (forget C).map g ((forget C).map f x) := comp_apply f g x

theorem ConcreteCategory.congr_hom {X Y : C} {f g : X ⟶ Y} (h : f = g) (x : X) : f x = g x :=
  congr_fun (congr_arg (fun f : X ⟶ Y => (f : X → Y)) h) x
#align category_theory.concrete_category.congr_hom CategoryTheory.ConcreteCategory.congr_hom

theorem ConcreteCategory.congr_arg {X Y : C} (f : X ⟶ Y) {x x' : X} (h : x = x') : f x = f x' :=
  congrArg (f : X → Y) h
#align category_theory.concrete_category.congr_arg CategoryTheory.ConcreteCategory.congr_arg

/-- In any concrete category, injective morphisms are monomorphisms. -/
theorem ConcreteCategory.mono_of_injective {X Y : C} (f : X ⟶ Y) (i : Function.Injective f) :
    Mono f :=
  (forget C).mono_of_mono_map ((mono_iff_injective f).2 i)
#align category_theory.concrete_category.mono_of_injective CategoryTheory.ConcreteCategory.mono_of_injective

theorem ConcreteCategory.injective_of_mono_of_preservesPullback {X Y : C} (f : X ⟶ Y) [Mono f]
    [PreservesLimitsOfShape WalkingCospan (forget C)] : Function.Injective f :=
  (mono_iff_injective ((forget C).map f)).mp inferInstance
#align category_theory.concrete_category.injective_of_mono_of_preserves_pullback CategoryTheory.ConcreteCategory.injective_of_mono_of_preservesPullback

theorem ConcreteCategory.mono_iff_injective_of_preservesPullback {X Y : C} (f : X ⟶ Y)
    [PreservesLimitsOfShape WalkingCospan (forget C)] : Mono f ↔ Function.Injective f :=
  ((forget C).mono_map_iff_mono _).symm.trans (mono_iff_injective _)
#align category_theory.concrete_category.mono_iff_injective_of_preserves_pullback CategoryTheory.ConcreteCategory.mono_iff_injective_of_preservesPullback

/-- In any concrete category, surjective morphisms are epimorphisms. -/
theorem ConcreteCategory.epi_of_surjective {X Y : C} (f : X ⟶ Y) (s : Function.Surjective f) :
    Epi f :=
  (forget C).epi_of_epi_map ((epi_iff_surjective f).2 s)
#align category_theory.concrete_category.epi_of_surjective CategoryTheory.ConcreteCategory.epi_of_surjective

theorem ConcreteCategory.surjective_of_epi_of_preservesPushout {X Y : C} (f : X ⟶ Y) [Epi f]
    [PreservesColimitsOfShape WalkingSpan (forget C)] : Function.Surjective f :=
  (epi_iff_surjective ((forget C).map f)).mp inferInstance
#align category_theory.concrete_category.surjective_of_epi_of_preserves_pushout CategoryTheory.ConcreteCategory.surjective_of_epi_of_preservesPushout

theorem ConcreteCategory.epi_iff_surjective_of_preservesPushout {X Y : C} (f : X ⟶ Y)
    [PreservesColimitsOfShape WalkingSpan (forget C)] : Epi f ↔ Function.Surjective f :=
  ((forget C).epi_map_iff_epi _).symm.trans (epi_iff_surjective _)
#align category_theory.concrete_category.epi_iff_surjective_of_preserves_pushout CategoryTheory.ConcreteCategory.epi_iff_surjective_of_preservesPushout

theorem ConcreteCategory.bijective_of_isIso {X Y : C} (f : X ⟶ Y) [IsIso f] :
    Function.Bijective ((forget C).map f) := by
  rw [← isIso_iff_bijective]
  infer_instance
#align category_theory.concrete_category.bijective_of_is_iso CategoryTheory.ConcreteCategory.bijective_of_isIso

@[simp]
theorem ConcreteCategory.hasCoeToFun_Type {X Y : Type u} (f : X ⟶ Y) : CoeFun.coe f = f := rfl
#align category_theory.concrete_category.has_coe_to_fun_Type CategoryTheory.ConcreteCategory.hasCoeToFun_Type

end

/-- `HasForget₂ C D`, where `C` and `D` are both concrete categories, provides a functor
`forget₂ C D : C ⥤ D` and a proof that `forget₂ ⋙ (forget D) = forget C`.
-/
class HasForget₂ (C : Type u) (D : Type u') [Category.{v} C] [ConcreteCategory.{w} C]
  [Category.{v'} D] [ConcreteCategory.{w} D] where
  /-- A functor from `C` to `D` -/
  forget₂ : C ⥤ D
  /-- It covers the `ConcreteCategory.forget` for `C` and `D` -/
  forget_comp : forget₂ ⋙ forget D = forget C := by aesop
#align category_theory.has_forget₂ CategoryTheory.HasForget₂

/-- The forgetful functor `C ⥤ D` between concrete categories for which we have an instance
`HasForget₂ C `. -/
@[reducible]
def forget₂ (C : Type u) (D : Type u') [Category.{v} C] [ConcreteCategory.{w} C]
    [Category.{v'} D] [ConcreteCategory.{w} D] [HasForget₂ C D] : C ⥤ D :=
  HasForget₂.forget₂
#align category_theory.forget₂ CategoryTheory.forget₂

instance forget₂_faithful (C : Type u) (D : Type u') [Category.{v} C] [ConcreteCategory.{w} C]
    [Category.{v'} D] [ConcreteCategory.{w} D] [HasForget₂ C D] : Faithful (forget₂ C D) :=
  HasForget₂.forget_comp.faithful_of_comp
#align category_theory.forget₂_faithful CategoryTheory.forget₂_faithful

instance forget₂_preservesMonomorphisms (C : Type u) (D : Type u')
    [Category.{v} C] [ConcreteCategory.{w} C] [Category.{v'} D] [ConcreteCategory.{w} D]
    [HasForget₂ C D] [(forget C).PreservesMonomorphisms] :
    (forget₂ C D).PreservesMonomorphisms :=
  have : (forget₂ C D ⋙ forget D).PreservesMonomorphisms := by
    simp only [HasForget₂.forget_comp]
    infer_instance
  Functor.preservesMonomorphisms_of_preserves_of_reflects _ (forget D)
#align category_theory.forget₂_preserves_monomorphisms CategoryTheory.forget₂_preservesMonomorphisms

instance forget₂_preservesEpimorphisms (C : Type u) (D : Type u')
    [Category.{v} C] [ConcreteCategory.{w} C] [Category.{v'} D] [ConcreteCategory.{w} D]
    [HasForget₂ C D] [(forget C).PreservesEpimorphisms] :
    (forget₂ C D).PreservesEpimorphisms :=
  have : (forget₂ C D ⋙ forget D).PreservesEpimorphisms := by
    simp only [HasForget₂.forget_comp]
    infer_instance
  Functor.preservesEpimorphisms_of_preserves_of_reflects _ (forget D)
#align category_theory.forget₂_preserves_epimorphisms CategoryTheory.forget₂_preservesEpimorphisms

instance InducedCategory.concreteCategory {C : Type u} {D : Type u'}
    [Category.{v'} D] [ConcreteCategory.{w} D] (f : C → D) :
      ConcreteCategory (InducedCategory D f) where
  forget := inducedFunctor f ⋙ forget D
#align category_theory.induced_category.concrete_category CategoryTheory.InducedCategory.concreteCategory

instance InducedCategory.hasForget₂ {C : Type u} {D : Type u'} [Category.{v} D]
    [ConcreteCategory.{w} D] (f : C → D) : HasForget₂ (InducedCategory D f) D where
  forget₂ := inducedFunctor f
  forget_comp := rfl
#align category_theory.induced_category.has_forget₂ CategoryTheory.InducedCategory.hasForget₂

instance FullSubcategory.concreteCategory {C : Type u} [Category.{v} C] [ConcreteCategory.{w} C]
    (Z : C → Prop) : ConcreteCategory (FullSubcategory Z) where
  forget := fullSubcategoryInclusion Z ⋙ forget C
#align category_theory.full_subcategory.concrete_category CategoryTheory.FullSubcategoryₓ.concreteCategory

instance FullSubcategory.hasForget₂ {C : Type u} [Category.{v} C] [ConcreteCategory.{w} C]
    (Z : C → Prop) : HasForget₂ (FullSubcategory Z) C where
  forget₂ := fullSubcategoryInclusion Z
  forget_comp := rfl
#align category_theory.full_subcategory.has_forget₂ CategoryTheory.FullSubcategoryₓ.hasForget₂

/-- In order to construct a “partially forgetting” functor, we do not need to verify functor laws;
it suffices to ensure that compositions agree with `forget₂ C D ⋙ forget D = forget C`.
-/
def HasForget₂.mk' {C : Type u} {D : Type u'} [Category.{v} C] [ConcreteCategory.{w} C]
    [Category.{v'} D] [ConcreteCategory.{w} D]
    (obj : C → D) (h_obj : ∀ X, (forget D).obj (obj X) = (forget C).obj X)
    (map : ∀ {X Y}, (X ⟶ Y) → (obj X ⟶ obj Y))
    (h_map : ∀ {X Y} {f : X ⟶ Y}, HEq ((forget D).map (map f)) ((forget C).map f)) : HasForget₂ C D
    where
  forget₂ := Faithful.div _ _ _ @h_obj _ @h_map
  forget_comp := by apply Faithful.div_comp
#align category_theory.has_forget₂.mk' CategoryTheory.HasForget₂.mk'

/-- Every forgetful functor factors through the identity functor. This is not a global instance as
    it is prone to creating type class resolution loops. -/
def hasForgetToType (C : Type u) [Category.{v} C] [ConcreteCategory.{w} C] :
    HasForget₂ C (Type w) where
  forget₂ := forget C
  forget_comp := Functor.comp_id _
#align category_theory.has_forget_to_Type CategoryTheory.hasForgetToType

end CategoryTheory
