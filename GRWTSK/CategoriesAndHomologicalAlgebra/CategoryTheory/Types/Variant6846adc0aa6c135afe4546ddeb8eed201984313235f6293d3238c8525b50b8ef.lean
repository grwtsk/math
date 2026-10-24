-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TypesHom.Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.TypesHom.Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Types.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Stephen Morgan, Scott Morrison, Johannes Hölzl
-/
import Mathlib.CategoryTheory.EpiMono
import Mathlib.CategoryTheory.Functor.FullyFaithful
import Mathlib.Logic.Equiv.Basic
import Mathlib.Data.Set.Basic
import Mathlib.Tactic.PPWithUniv


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TypesHom.Variant6168b9cc778af15c8d6b1f21bced9a9f0a6847b17228c6c959216ac0a02c0582

#align_import category_theory.types from "leanprover-community/mathlib"@"48085f140e684306f9e7da907cd5932056d1aded"

/-!
# The category `Type`.

In this section we set up the theory so that Lean's types and functions between them
can be viewed as a `LargeCategory` in our framework.

Lean can not transparently view a function as a morphism in this category, and needs a hint in
order to be able to type check. We provide the abbreviation `asHom f` to guide type checking,
as well as a corresponding notation `↾ f`. (Entered as `\upr `.)

We provide various simplification lemmas for functors and natural transformations valued in `Type`.

We define `uliftFunctor`, from `Type u` to `Type (max u v)`, and show that it is fully faithful
(but not, of course, essentially surjective).

We prove some basic facts about the category `Type`:
*  epimorphisms are surjections and monomorphisms are injections,
* `Iso` is both `Iso` and `Equiv` to `Equiv` (at least within a fixed universe),
* every type level `IsLawfulFunctor` gives a categorical functor `Type ⥤ Type`
  (the corresponding fact about monads is in `Mathlib/CategoryTheory/Monad/Types.lean`).
-/


namespace CategoryTheory

-- morphism levels before object levels. See note [CategoryTheory universes].
universe v v' w u u'

/- The `@[to_additive]` attribute is just a hint that expressions involving this instance can
  still be additivized. -/
@[to_additive existing CategoryTheory.types]
instance types : LargeCategory (Type u)
    where
  Hom a b := a → b
  id a := id
  comp f g := g ∘ f
#align category_theory.types CategoryTheory.types

theorem types_hom {α β : Type u} : (α ⟶ β) = (α → β) :=
  rfl
#align category_theory.types_hom CategoryTheory.types_hom

-- porting note: this lemma was not here in Lean 3. Lean 3 `ext` would solve this goal
-- because of its "if all else fails, apply all `ext` lemmas" policy,
-- which apparently we want to move away from.
@[ext] theorem types_ext {α β : Type u} (f g : α ⟶ β) (h : ∀ a : α, f a = g a) : f = g := by
  funext x
  exact h x

theorem types_id (X : Type u) : 𝟙 X = id :=
  rfl
#align category_theory.types_id CategoryTheory.types_id

theorem types_comp {X Y Z : Type u} (f : X ⟶ Y) (g : Y ⟶ Z) : f ≫ g = g ∘ f :=
  rfl
#align category_theory.types_comp CategoryTheory.types_comp

@[simp]
theorem types_id_apply (X : Type u) (x : X) : (𝟙 X : X → X) x = x :=
  rfl
#align category_theory.types_id_apply CategoryTheory.types_id_apply

@[simp]
theorem types_comp_apply {X Y Z : Type u} (f : X ⟶ Y) (g : Y ⟶ Z) (x : X) : (f ≫ g) x = g (f x) :=
  rfl
#align category_theory.types_comp_apply CategoryTheory.types_comp_apply

@[simp]
theorem hom_inv_id_apply {X Y : Type u} (f : X ≅ Y) (x : X) : f.inv (f.hom x) = x :=
  congr_fun f.hom_inv_id x
#align category_theory.hom_inv_id_apply CategoryTheory.hom_inv_id_apply

@[simp]
theorem inv_hom_id_apply {X Y : Type u} (f : X ≅ Y) (y : Y) : f.hom (f.inv y) = y :=
  congr_fun f.inv_hom_id y
#align category_theory.inv_hom_id_apply CategoryTheory.inv_hom_id_apply

-- Unfortunately without this wrapper we can't use `CategoryTheory` idioms, such as `IsIso f`.
/-- `asHom f` helps Lean type check a function as a morphism in the category `Type`. -/
abbrev asHom {α β : Type u} (f : α → β) : α ⟶ β :=
  f
#align category_theory.as_hom CategoryTheory.asHom

@[inherit_doc]
scoped notation "↾" f:200 => CategoryTheory.asHom f

section

-- We verify the expected type checking behaviour of `asHom`
variable (α β γ : Type u) (f : α → β) (g : β → γ)

example : α → γ :=
  ↾f ≫ ↾g

example [IsIso (↾f)] : Mono (↾f) := by infer_instance

example [IsIso (↾f)] : ↾f ≫ inv (↾f) = 𝟙 α := by simp

end

namespace Functor

variable {J : Type u} [Category.{v} J]

/-- The sections of a functor `J ⥤ Type` are
the choices of a point `u j : F.obj j` for each `j`,
such that `F.map f (u j) = u j` for every morphism `f : j ⟶ j'`.

We later use these to define limits in `Type` and in many concrete categories.
-/
def sections (F : J ⥤ Type w) : Set (∀ j, F.obj j) :=
  { u | ∀ {j j'} (f : j ⟶ j'), F.map f (u j) = u j' }
#align category_theory.functor.sections CategoryTheory.Functor.sections

-- porting note: added this simp lemma
@[simp]
lemma sections_property {F : J ⥤ Type w} (s : (F.sections : Type _))
  {j j' : J} (f : j ⟶ j') : F.map f (s.val j) = s.val j' :=
  s.property f

end Functor

namespace FunctorToTypes

variable {C : Type u} [Category.{v} C] (F G H : C ⥤ Type w) {X Y Z : C}

variable (σ : F ⟶ G) (τ : G ⟶ H)

@[simp]
theorem map_comp_apply (f : X ⟶ Y) (g : Y ⟶ Z) (a : F.obj X) :
    (F.map (f ≫ g)) a = (F.map g) ((F.map f) a) := by simp [types_comp]
#align category_theory.functor_to_types.map_comp_apply CategoryTheory.FunctorToTypes.map_comp_apply

@[simp]
theorem map_id_apply (a : F.obj X) : (F.map (𝟙 X)) a = a := by simp [types_id]
#align category_theory.functor_to_types.map_id_apply CategoryTheory.FunctorToTypes.map_id_apply

theorem naturality (f : X ⟶ Y) (x : F.obj X) : σ.app Y ((F.map f) x) = (G.map f) (σ.app X x) :=
  congr_fun (σ.naturality f) x
#align category_theory.functor_to_types.naturality CategoryTheory.FunctorToTypes.naturality

@[simp]
theorem comp (x : F.obj X) : (σ ≫ τ).app X x = τ.app X (σ.app X x) :=
  rfl
#align category_theory.functor_to_types.comp CategoryTheory.FunctorToTypes.comp

variable {D : Type u'} [𝒟 : Category.{u'} D] (I J : D ⥤ C) (ρ : I ⟶ J) {W : D}

@[simp]
theorem hcomp (x : (I ⋙ F).obj W) : (ρ ◫ σ).app W x = (G.map (ρ.app W)) (σ.app (I.obj W) x) :=
  rfl
#align category_theory.functor_to_types.hcomp CategoryTheory.FunctorToTypes.hcomp

@[simp]
theorem map_inv_map_hom_apply (f : X ≅ Y) (x : F.obj X) : F.map f.inv (F.map f.hom x) = x :=
  congr_fun (F.mapIso f).hom_inv_id x
#align category_theory.functor_to_types.map_inv_map_hom_apply CategoryTheory.FunctorToTypes.map_inv_map_hom_apply

@[simp]
theorem map_hom_map_inv_apply (f : X ≅ Y) (y : F.obj Y) : F.map f.hom (F.map f.inv y) = y :=
  congr_fun (F.mapIso f).inv_hom_id y
#align category_theory.functor_to_types.map_hom_map_inv_apply CategoryTheory.FunctorToTypes.map_hom_map_inv_apply

@[simp]
theorem hom_inv_id_app_apply (α : F ≅ G) (X) (x) : α.inv.app X (α.hom.app X x) = x :=
  congr_fun (α.hom_inv_id_app X) x
#align category_theory.functor_to_types.hom_inv_id_app_apply CategoryTheory.FunctorToTypes.hom_inv_id_app_apply

@[simp]
theorem inv_hom_id_app_apply (α : F ≅ G) (X) (x) : α.hom.app X (α.inv.app X x) = x :=
  congr_fun (α.inv_hom_id_app X) x
#align category_theory.functor_to_types.inv_hom_id_app_apply CategoryTheory.FunctorToTypes.inv_hom_id_app_apply

end FunctorToTypes

/-- The isomorphism between a `Type` which has been `ULift`ed to the same universe,
and the original type.
-/
def uliftTrivial (V : Type u) : ULift.{u} V ≅ V where
  hom a := a.1
  inv a := .up a
#align category_theory.ulift_trivial CategoryTheory.uliftTrivial

/-- The functor embedding `Type u` into `Type (max u v)`.
Write this as `uliftFunctor.{5, 2}` to get `Type 2 ⥤ Type 5`.
-/
@[pp_with_univ]
def uliftFunctor : Type u ⥤ Type max u v
    where
  obj X := ULift.{v} X
  map {X} {Y} f := fun x : ULift.{v} X => ULift.up (f x.down)
#align category_theory.ulift_functor CategoryTheory.uliftFunctor

@[simp]
theorem uliftFunctor_map {X Y : Type u} (f : X ⟶ Y) (x : ULift.{v} X) :
    uliftFunctor.map f x = ULift.up (f x.down) :=
  rfl
#align category_theory.ulift_functor_map CategoryTheory.uliftFunctor_map

instance uliftFunctorFull : Full.{u} uliftFunctor where preimage f x := (f (ULift.up x)).down
#align category_theory.ulift_functor_full CategoryTheory.uliftFunctorFull

instance uliftFunctor_faithful : Faithful uliftFunctor
    where map_injective {_X} {_Y} f g p :=
    funext fun x =>
      congr_arg ULift.down (congr_fun p (ULift.up x) : ULift.up (f x) = ULift.up (g x))
#align category_theory.ulift_functor_faithful CategoryTheory.uliftFunctor_faithful

/-- The functor embedding `Type u` into `Type u` via `ULift` is isomorphic to the identity functor.
 -/
def uliftFunctorTrivial : uliftFunctor.{u, u} ≅ 𝟭 _ :=
  NatIso.ofComponents uliftTrivial
#align category_theory.ulift_functor_trivial CategoryTheory.uliftFunctorTrivial

-- TODO We should connect this to a general story about concrete categories
-- whose forgetful functor is representable.
/-- Any term `x` of a type `X` corresponds to a morphism `PUnit ⟶ X`. -/
def homOfElement {X : Type u} (x : X) : PUnit ⟶ X := fun _ => x
#align category_theory.hom_of_element CategoryTheory.homOfElement

theorem homOfElement_eq_iff {X : Type u} (x y : X) : homOfElement x = homOfElement y ↔ x = y :=
  ⟨fun H => congr_fun H PUnit.unit, by aesop⟩
#align category_theory.hom_of_element_eq_iff CategoryTheory.homOfElement_eq_iff

/-- A morphism in `Type` is a monomorphism if and only if it is injective.

See <https://stacks.math.columbia.edu/tag/003C>.
-/
theorem mono_iff_injective {X Y : Type u} (f : X ⟶ Y) : Mono f ↔ Function.Injective f := by
  constructor
  · intro H x x' h
    skip
    rw [← homOfElement_eq_iff] at h ⊢
    exact (cancel_mono f).mp h
  · exact fun H => ⟨fun g g' h => H.comp_left h⟩
#align category_theory.mono_iff_injective CategoryTheory.mono_iff_injective

theorem injective_of_mono {X Y : Type u} (f : X ⟶ Y) [hf : Mono f] : Function.Injective f :=
  (mono_iff_injective f).1 hf
#align category_theory.injective_of_mono CategoryTheory.injective_of_mono

/-- A morphism in `Type` is an epimorphism if and only if it is surjective.

See <https://stacks.math.columbia.edu/tag/003C>.
-/
theorem epi_iff_surjective {X Y : Type u} (f : X ⟶ Y) : Epi f ↔ Function.Surjective f := by
  constructor
  · rintro ⟨H⟩
    refine' Function.surjective_of_right_cancellable_Prop fun g₁ g₂ hg => _
    rw [← Equiv.ulift.symm.injective.comp_left.eq_iff]
    apply H
    change ULift.up ∘ g₁ ∘ f = ULift.up ∘ g₂ ∘ f
    rw [hg]
  · exact fun H => ⟨fun g g' h => H.injective_comp_right h⟩
#align category_theory.epi_iff_surjective CategoryTheory.epi_iff_surjective

theorem surjective_of_epi {X Y : Type u} (f : X ⟶ Y) [hf : Epi f] : Function.Surjective f :=
  (epi_iff_surjective f).1 hf
#align category_theory.surjective_of_epi CategoryTheory.surjective_of_epi

section

/-- `ofTypeFunctor m` converts from Lean's `Type`-based `Category` to `CategoryTheory`. This
allows us to use these functors in category theory. -/
def ofTypeFunctor (m : Type u → Type v) [_root_.Functor m] [LawfulFunctor m] : Type u ⥤ Type v
    where
  obj := m
  map f := Functor.map f
  map_id := fun α => by funext X; apply id_map  /- Porting note: original proof is via
  `fun α => _root_.Functor.map_id` but I cannot get Lean to find this. Reproduced its
  original proof -/
  map_comp f g := funext fun a => LawfulFunctor.comp_map f g _
#align category_theory.of_type_functor CategoryTheory.ofTypeFunctor

variable (m : Type u → Type v) [_root_.Functor m] [LawfulFunctor m]

@[simp]
theorem ofTypeFunctor_obj : (ofTypeFunctor m).obj = m :=
  rfl
#align category_theory.of_type_functor_obj CategoryTheory.ofTypeFunctor_obj

@[simp]
theorem ofTypeFunctor_map {α β} (f : α → β) :
    (ofTypeFunctor m).map f = (Functor.map f : m α → m β) :=
  rfl
#align category_theory.of_type_functor_map CategoryTheory.ofTypeFunctor_map

end

end CategoryTheory

-- Isomorphisms in Type and equivalences.
namespace Equiv

universe u

variable {X Y : Type u}

/-- Any equivalence between types in the same universe gives
a categorical isomorphism between those types.
-/
def toIso (e : X ≃ Y) : X ≅ Y where
  hom := e.toFun
  inv := e.invFun
  hom_inv_id := funext e.left_inv
  inv_hom_id := funext e.right_inv
#align equiv.to_iso Equiv.toIso

@[simp]
theorem toIso_hom {e : X ≃ Y} : e.toIso.hom = e :=
  rfl
#align equiv.to_iso_hom Equiv.toIso_hom

@[simp]
theorem toIso_inv {e : X ≃ Y} : e.toIso.inv = e.symm :=
  rfl
#align equiv.to_iso_inv Equiv.toIso_inv

end Equiv

universe u

namespace CategoryTheory.Iso

open CategoryTheory

variable {X Y : Type u}

/-- Any isomorphism between types gives an equivalence. -/
@[pp_dot]
def toEquiv (i : X ≅ Y) : X ≃ Y where
  toFun := i.hom
  invFun := i.inv
  left_inv x := congr_fun i.hom_inv_id x
  right_inv y := congr_fun i.inv_hom_id y
#align category_theory.iso.to_equiv CategoryTheory.Iso.toEquiv

@[simp]
theorem toEquiv_fun (i : X ≅ Y) : (i.toEquiv : X → Y) = i.hom :=
  rfl
#align category_theory.iso.to_equiv_fun CategoryTheory.Iso.toEquiv_fun

@[simp]
theorem toEquiv_symm_fun (i : X ≅ Y) : (i.toEquiv.symm : Y → X) = i.inv :=
  rfl
#align category_theory.iso.to_equiv_symm_fun CategoryTheory.Iso.toEquiv_symm_fun

@[simp]
theorem toEquiv_id (X : Type u) : (Iso.refl X).toEquiv = Equiv.refl X :=
  rfl
#align category_theory.iso.to_equiv_id CategoryTheory.Iso.toEquiv_id

@[simp]
theorem toEquiv_comp {X Y Z : Type u} (f : X ≅ Y) (g : Y ≅ Z) :
    (f ≪≫ g).toEquiv = f.toEquiv.trans g.toEquiv :=
  rfl
#align category_theory.iso.to_equiv_comp CategoryTheory.Iso.toEquiv_comp

end CategoryTheory.Iso

namespace CategoryTheory

/-- A morphism in `Type u` is an isomorphism if and only if it is bijective. -/
theorem isIso_iff_bijective {X Y : Type u} (f : X ⟶ Y) : IsIso f ↔ Function.Bijective f :=
  Iff.intro (fun _ => (asIso f : X ≅ Y).toEquiv.bijective) fun b =>
    IsIso.of_iso (Equiv.ofBijective f b).toIso
#align category_theory.is_iso_iff_bijective CategoryTheory.isIso_iff_bijective

instance : SplitEpiCategory (Type u)
    where isSplitEpi_of_epi f hf :=
    IsSplitEpi.mk' <|
      { section_ := Function.surjInv <| (epi_iff_surjective f).1 hf
        id := funext <| Function.rightInverse_surjInv <| (epi_iff_surjective f).1 hf }

end CategoryTheory

-- We prove `equivIsoIso` and then use that to sneakily construct `equivEquivIso`.
-- (In this order the proofs are handled by `obviously`.)
/-- Equivalences (between types in the same universe) are the same as (isomorphic to) isomorphisms
of types. -/
@[simps]
def equivIsoIso {X Y : Type u} : X ≃ Y ≅ X ≅ Y
    where
  hom e := e.toIso
  inv i := i.toEquiv
#align equiv_iso_iso equivIsoIso

/-- Equivalences (between types in the same universe) are the same as (equivalent to) isomorphisms
of types. -/
def equivEquivIso {X Y : Type u} : X ≃ Y ≃ (X ≅ Y) :=
  equivIsoIso.toEquiv
#align equiv_equiv_iso equivEquivIso

@[simp]
theorem equivEquivIso_hom {X Y : Type u} (e : X ≃ Y) : equivEquivIso e = e.toIso :=
  rfl
#align equiv_equiv_iso_hom equivEquivIso_hom

@[simp]
theorem equivEquivIso_inv {X Y : Type u} (e : X ≅ Y) : equivEquivIso.symm e = e.toEquiv :=
  rfl
#align equiv_equiv_iso_inv equivEquivIso_inv
