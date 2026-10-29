-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Iso.Variantd264dd1b357c81b3f1dc1d1449c343102402aa9596260551cbbd011a1515d085","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d264dd1b357c81b3f1dc1d1449c343102402aa9596260551cbbd011a1515d085","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Iso.Variantd264dd1b357c81b3f1dc1d1449c343102402aa9596260551cbbd011a1515d085","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"d264dd1b357c81b3f1dc1d1449c343102402aa9596260551cbbd011a1515d085","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Iso.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Tim Baumann, Stephen Morgan, Scott Morrison, Floris van Doorn
-/
import Mathlib.Tactic.CategoryTheory.Reassoc


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Iso.Variantd264dd1b357c81b3f1dc1d1449c343102402aa9596260551cbbd011a1515d085

#align_import category_theory.isomorphism from "leanprover-community/mathlib"@"8350c34a64b9bc3fc64335df8006bffcadc7baa6"

/-!
# Isomorphisms

This file defines isomorphisms between objects of a category.

## Main definitions

- `structure Iso` : a bundled isomorphism between two objects of a category;
- `class IsIso` : an unbundled version of `iso`;
  note that `IsIso f` is a `Prop`, and only asserts the existence of an inverse.
  Of course, this inverse is unique, so it doesn't cost us much to use choice to retrieve it.
- `inv f`, for the inverse of a morphism with `[IsIso f]`
- `asIso` : convert from `IsIso` to `Iso` (noncomputable);
- `of_iso` : convert from `Iso` to `IsIso`;
- standard operations on isomorphisms (composition, inverse etc)

## Notations

- `X ≅ Y` : same as `Iso X Y`;
- `α ≪≫ β` : composition of two isomorphisms; it is called `Iso.trans`

## Tags

category, category theory, isomorphism
-/

universe v u

-- morphism levels before object levels. See note [CategoryTheory universes].
namespace CategoryTheory

open Category

/-- An isomorphism (a.k.a. an invertible morphism) between two objects of a category.
The inverse morphism is bundled.

See also `CategoryTheory.Core` for the category with the same objects and isomorphisms playing
the role of morphisms.

See <https://stacks.math.columbia.edu/tag/0017>.
-/
structure Iso {C : Type u} [Category.{v} C] (X Y : C) where
  /-- The forward direction of an isomorphism. -/
  hom : X ⟶ Y
  /-- The backwards direction of an isomorphism. -/
  inv : Y ⟶ X
  /-- Composition of the two directions of an isomorphism is the identity on the source. -/
  hom_inv_id : hom ≫ inv = 𝟙 X := by aesop_cat
  /-- Composition of the two directions of an isomorphism in reverse order
  is the identity on the target. -/
  inv_hom_id : inv ≫ hom = 𝟙 Y := by aesop_cat
#align category_theory.iso CategoryTheory.Iso
#align category_theory.iso.hom CategoryTheory.Iso.hom
#align category_theory.iso.inv CategoryTheory.Iso.inv
#align category_theory.iso.inv_hom_id CategoryTheory.Iso.inv_hom_id
#align category_theory.iso.hom_inv_id CategoryTheory.Iso.hom_inv_id

attribute [reassoc (attr := simp)] Iso.hom_inv_id Iso.inv_hom_id
#align category_theory.iso.hom_inv_id_assoc CategoryTheory.Iso.hom_inv_id_assoc
#align category_theory.iso.inv_hom_id_assoc CategoryTheory.Iso.inv_hom_id_assoc

-- Pretty printer support for additional arguments when in a concrete category
attribute [pp_dot] Iso.hom Iso.inv

/-- Notation for an isomorphism in a category. -/
infixr:10 " ≅ " => Iso -- type as \cong or \iso

variable {C : Type u} [Category.{v} C] {X Y Z : C}

namespace Iso

@[ext]
theorem ext ⦃α β : X ≅ Y⦄ (w : α.hom = β.hom) : α = β :=
  suffices α.inv = β.inv by
    cases α
    cases β
    cases w
    cases this
    rfl
  calc
    α.inv = α.inv ≫ β.hom ≫ β.inv   := by rw [Iso.hom_inv_id, Category.comp_id]
    _     = (α.inv ≫ α.hom) ≫ β.inv := by rw [Category.assoc, ← w]
    _     = β.inv                   := by rw [Iso.inv_hom_id, Category.id_comp]
#align category_theory.iso.ext CategoryTheory.Iso.ext

/-- Inverse isomorphism. -/
@[symm, pp_dot]
def symm (I : X ≅ Y) : Y ≅ X where
  hom := I.inv
  inv := I.hom
#align category_theory.iso.symm CategoryTheory.Iso.symm

@[simp]
theorem symm_hom (α : X ≅ Y) : α.symm.hom = α.inv :=
  rfl
#align category_theory.iso.symm_hom CategoryTheory.Iso.symm_hom

@[simp]
theorem symm_inv (α : X ≅ Y) : α.symm.inv = α.hom :=
  rfl
#align category_theory.iso.symm_inv CategoryTheory.Iso.symm_inv

@[simp]
theorem symm_mk {X Y : C} (hom : X ⟶ Y) (inv : Y ⟶ X) (hom_inv_id) (inv_hom_id) :
    Iso.symm { hom, inv, hom_inv_id := hom_inv_id, inv_hom_id := inv_hom_id } =
      { hom := inv, inv := hom, hom_inv_id := inv_hom_id, inv_hom_id := hom_inv_id } :=
  rfl
#align category_theory.iso.symm_mk CategoryTheory.Iso.symm_mk

@[simp]
theorem symm_symm_eq {X Y : C} (α : X ≅ Y) : α.symm.symm = α := by cases α; rfl
#align category_theory.iso.symm_symm_eq CategoryTheory.Iso.symm_symm_eq

@[simp]
theorem symm_eq_iff {X Y : C} {α β : X ≅ Y} : α.symm = β.symm ↔ α = β :=
  ⟨fun h => symm_symm_eq α ▸ symm_symm_eq β ▸ congr_arg symm h, congr_arg symm⟩
#align category_theory.iso.symm_eq_iff CategoryTheory.Iso.symm_eq_iff

theorem nonempty_iso_symm (X Y : C) : Nonempty (X ≅ Y) ↔ Nonempty (Y ≅ X) :=
  ⟨fun h => ⟨h.some.symm⟩, fun h => ⟨h.some.symm⟩⟩
#align category_theory.iso.nonempty_iso_symm CategoryTheory.Iso.nonempty_iso_symm

/-- Identity isomorphism. -/
@[refl, simps]
def refl (X : C) : X ≅ X where
  hom := 𝟙 X
  inv := 𝟙 X
#align category_theory.iso.refl CategoryTheory.Iso.refl
#align category_theory.iso.refl_inv CategoryTheory.Iso.refl_inv
#align category_theory.iso.refl_hom CategoryTheory.Iso.refl_hom

instance : Inhabited (X ≅ X) := ⟨Iso.refl X⟩

theorem nonempty_iso_refl (X : C) : Nonempty (X ≅ X) := ⟨default⟩

@[simp]
theorem refl_symm (X : C) : (Iso.refl X).symm = Iso.refl X := rfl
#align category_theory.iso.refl_symm CategoryTheory.Iso.refl_symm

-- Porting note: It seems that the trans `trans` attribute isn't working properly
-- in this case, so we have to manually add a `Trans` instance (with a `simps` tag).
/-- Composition of two isomorphisms -/
@[trans, simps]
def trans (α : X ≅ Y) (β : Y ≅ Z) : X ≅ Z where
  hom := α.hom ≫ β.hom
  inv := β.inv ≫ α.inv
#align category_theory.iso.trans CategoryTheory.Iso.trans
#align category_theory.iso.trans_hom CategoryTheory.Iso.trans_hom
#align category_theory.iso.trans_inv CategoryTheory.Iso.trans_inv

@[simps]
instance instTransIso : Trans (α := C) (· ≅ ·) (· ≅ ·) (· ≅ ·) where
  trans := trans

/-- Notation for composition of isomorphisms. -/
infixr:80 " ≪≫ " => Iso.trans -- type as `\ll \gg`.

@[simp]
theorem trans_mk {X Y Z : C} (hom : X ⟶ Y) (inv : Y ⟶ X) (hom_inv_id) (inv_hom_id)
    (hom' : Y ⟶ Z) (inv' : Z ⟶ Y) (hom_inv_id') (inv_hom_id') (hom_inv_id'') (inv_hom_id'') :
    Iso.trans ⟨hom, inv, hom_inv_id, inv_hom_id⟩ ⟨hom', inv', hom_inv_id', inv_hom_id'⟩ =
     ⟨hom ≫ hom', inv' ≫ inv, hom_inv_id'', inv_hom_id''⟩ :=
  rfl
#align category_theory.iso.trans_mk CategoryTheory.Iso.trans_mk

@[simp]
theorem trans_symm (α : X ≅ Y) (β : Y ≅ Z) : (α ≪≫ β).symm = β.symm ≪≫ α.symm :=
  rfl
#align category_theory.iso.trans_symm CategoryTheory.Iso.trans_symm

@[simp]
theorem trans_assoc {Z' : C} (α : X ≅ Y) (β : Y ≅ Z) (γ : Z ≅ Z') :
    (α ≪≫ β) ≪≫ γ = α ≪≫ β ≪≫ γ := by
  ext; simp only [trans_hom, Category.assoc]
#align category_theory.iso.trans_assoc CategoryTheory.Iso.trans_assoc

@[simp]
theorem refl_trans (α : X ≅ Y) : Iso.refl X ≪≫ α = α := by ext; apply Category.id_comp
#align category_theory.iso.refl_trans CategoryTheory.Iso.refl_trans

@[simp]
theorem trans_refl (α : X ≅ Y) : α ≪≫ Iso.refl Y = α := by ext; apply Category.comp_id
#align category_theory.iso.trans_refl CategoryTheory.Iso.trans_refl

@[simp]
theorem symm_self_id (α : X ≅ Y) : α.symm ≪≫ α = Iso.refl Y :=
  ext α.inv_hom_id
#align category_theory.iso.symm_self_id CategoryTheory.Iso.symm_self_id

@[simp]
theorem self_symm_id (α : X ≅ Y) : α ≪≫ α.symm = Iso.refl X :=
  ext α.hom_inv_id
#align category_theory.iso.self_symm_id CategoryTheory.Iso.self_symm_id

@[simp]
theorem symm_self_id_assoc (α : X ≅ Y) (β : Y ≅ Z) : α.symm ≪≫ α ≪≫ β = β := by
  rw [← trans_assoc, symm_self_id, refl_trans]
#align category_theory.iso.symm_self_id_assoc CategoryTheory.Iso.symm_self_id_assoc

@[simp]
theorem self_symm_id_assoc (α : X ≅ Y) (β : X ≅ Z) : α ≪≫ α.symm ≪≫ β = β := by
  rw [← trans_assoc, self_symm_id, refl_trans]
#align category_theory.iso.self_symm_id_assoc CategoryTheory.Iso.self_symm_id_assoc

theorem inv_comp_eq (α : X ≅ Y) {f : X ⟶ Z} {g : Y ⟶ Z} : α.inv ≫ f = g ↔ f = α.hom ≫ g :=
  ⟨fun H => by simp [H.symm], fun H => by simp [H]⟩
#align category_theory.iso.inv_comp_eq CategoryTheory.Iso.inv_comp_eq

theorem eq_inv_comp (α : X ≅ Y) {f : X ⟶ Z} {g : Y ⟶ Z} : g = α.inv ≫ f ↔ α.hom ≫ g = f :=
  (inv_comp_eq α.symm).symm
#align category_theory.iso.eq_inv_comp CategoryTheory.Iso.eq_inv_comp

theorem comp_inv_eq (α : X ≅ Y) {f : Z ⟶ Y} {g : Z ⟶ X} : f ≫ α.inv = g ↔ f = g ≫ α.hom :=
  ⟨fun H => by simp [H.symm], fun H => by simp [H]⟩
#align category_theory.iso.comp_inv_eq CategoryTheory.Iso.comp_inv_eq

theorem eq_comp_inv (α : X ≅ Y) {f : Z ⟶ Y} {g : Z ⟶ X} : g = f ≫ α.inv ↔ g ≫ α.hom = f :=
  (comp_inv_eq α.symm).symm
#align category_theory.iso.eq_comp_inv CategoryTheory.Iso.eq_comp_inv

theorem inv_eq_inv (f g : X ≅ Y) : f.inv = g.inv ↔ f.hom = g.hom :=
  have : ∀ {X Y : C} (f g : X ≅ Y), f.hom = g.hom → f.inv = g.inv := fun f g h => by rw [ext h]
  ⟨this f.symm g.symm, this f g⟩
#align category_theory.iso.inv_eq_inv CategoryTheory.Iso.inv_eq_inv

theorem hom_comp_eq_id (α : X ≅ Y) {f : Y ⟶ X} : α.hom ≫ f = 𝟙 X ↔ f = α.inv := by
  rw [← eq_inv_comp, comp_id]
#align category_theory.iso.hom_comp_eq_id CategoryTheory.Iso.hom_comp_eq_id

theorem comp_hom_eq_id (α : X ≅ Y) {f : Y ⟶ X} : f ≫ α.hom = 𝟙 Y ↔ f = α.inv := by
  rw [← eq_comp_inv, id_comp]
#align category_theory.iso.comp_hom_eq_id CategoryTheory.Iso.comp_hom_eq_id

theorem inv_comp_eq_id (α : X ≅ Y) {f : X ⟶ Y} : α.inv ≫ f = 𝟙 Y ↔ f = α.hom :=
  hom_comp_eq_id α.symm
#align category_theory.iso.inv_comp_eq_id CategoryTheory.Iso.inv_comp_eq_id

theorem comp_inv_eq_id (α : X ≅ Y) {f : X ⟶ Y} : f ≫ α.inv = 𝟙 X ↔ f = α.hom :=
  comp_hom_eq_id α.symm
#align category_theory.iso.comp_inv_eq_id CategoryTheory.Iso.comp_inv_eq_id

theorem hom_eq_inv (α : X ≅ Y) (β : Y ≅ X) : α.hom = β.inv ↔ β.hom = α.inv := by
  erw [inv_eq_inv α.symm β, eq_comm]
  rfl
#align category_theory.iso.hom_eq_inv CategoryTheory.Iso.hom_eq_inv

end Iso

/-- `IsIso` typeclass expressing that a morphism is invertible. -/
class IsIso (f : X ⟶ Y) : Prop where
  /-- The existence of an inverse morphism. -/
  out : ∃ inv : Y ⟶ X, f ≫ inv = 𝟙 X ∧ inv ≫ f = 𝟙 Y
#align category_theory.is_iso CategoryTheory.IsIso

/-- The inverse of a morphism `f` when we have `[IsIso f]`.
-/
noncomputable def inv (f : X ⟶ Y) [I : IsIso f] : Y ⟶ X :=
  Classical.choose I.1
#align category_theory.inv CategoryTheory.inv

namespace IsIso

@[simp]
theorem hom_inv_id (f : X ⟶ Y) [I : IsIso f] : f ≫ inv f = 𝟙 X :=
  (Classical.choose_spec I.1).left
#align category_theory.is_iso.hom_inv_id CategoryTheory.IsIso.hom_inv_id

@[simp]
theorem inv_hom_id (f : X ⟶ Y) [I : IsIso f] : inv f ≫ f = 𝟙 Y :=
  (Classical.choose_spec I.1).right
#align category_theory.is_iso.inv_hom_id CategoryTheory.IsIso.inv_hom_id

-- FIXME putting @[reassoc] on the `hom_inv_id` above somehow unfolds `inv`
-- This happens even if we make `inv` irreducible!
-- I don't understand how this is happening: it is likely a bug.

-- attribute [reassoc] hom_inv_id inv_hom_id
-- #print hom_inv_id_assoc
--   theorem CategoryTheory.IsIso.hom_inv_id_assoc {X Y : C} (f : X ⟶ Y) [I : IsIso f]
--     {Z : C} (h : X ⟶ Z),
--     f ≫ Classical.choose (_ : Exists fun inv ↦ f ≫ inv = 𝟙 X ∧ inv ≫ f = 𝟙 Y) ≫ h = h := ...

@[simp]
theorem hom_inv_id_assoc (f : X ⟶ Y) [I : IsIso f] {Z} (g : X ⟶ Z) : f ≫ inv f ≫ g = g := by
  simp [← Category.assoc]
#align category_theory.is_iso.hom_inv_id_assoc CategoryTheory.IsIso.hom_inv_id_assoc

@[simp]
theorem inv_hom_id_assoc (f : X ⟶ Y) [I : IsIso f] {Z} (g : Y ⟶ Z) : inv f ≫ f ≫ g = g := by
  simp [← Category.assoc]
#align category_theory.is_iso.inv_hom_id_assoc CategoryTheory.IsIso.inv_hom_id_assoc

end IsIso

open IsIso

/-- Reinterpret a morphism `f` with an `IsIso f` instance as an `Iso`. -/
noncomputable def asIso (f : X ⟶ Y) [IsIso f] : X ≅ Y :=
  ⟨f, inv f, hom_inv_id f, inv_hom_id f⟩
#align category_theory.as_iso CategoryTheory.asIso

-- Porting note: the `IsIso f` argument had been instance implicit,
-- but we've changed it to implicit as a `rw` in `Mathlib.CategoryTheory.Closed.Functor`
-- was failing to generate it by typeclass search.
@[simp]
theorem asIso_hom (f : X ⟶ Y) {_ : IsIso f} : (asIso f).hom = f :=
  rfl
#align category_theory.as_iso_hom CategoryTheory.asIso_hom

-- Porting note: the `IsIso f` argument had been instance implicit,
-- but we've changed it to implicit as a `rw` in `Mathlib.CategoryTheory.Closed.Functor`
-- was failing to generate it by typeclass search.
@[simp]
theorem asIso_inv (f : X ⟶ Y) {_ : IsIso f} : (asIso f).inv = inv f :=
  rfl
#align category_theory.as_iso_inv CategoryTheory.asIso_inv

namespace IsIso

-- see Note [lower instance priority]
instance (priority := 100) epi_of_iso (f : X ⟶ Y) [IsIso f] : Epi f where
  left_cancellation g h w := by
    rw [← IsIso.inv_hom_id_assoc f g, w, IsIso.inv_hom_id_assoc f h]
#align category_theory.is_iso.epi_of_iso CategoryTheory.IsIso.epi_of_iso

-- see Note [lower instance priority]
instance (priority := 100) mono_of_iso (f : X ⟶ Y) [IsIso f] : Mono f where
  right_cancellation g h w := by
    rw [← Category.comp_id g, ← Category.comp_id h, ← IsIso.hom_inv_id f,
      ← Category.assoc, w, ← Category.assoc]
#align category_theory.is_iso.mono_of_iso CategoryTheory.IsIso.mono_of_iso

-- Porting note: `@[ext]` used to accept lemmas like this. Now we add an aesop rule
@[aesop apply safe (rule_sets [CategoryTheory])]
theorem inv_eq_of_hom_inv_id {f : X ⟶ Y} [IsIso f] {g : Y ⟶ X} (hom_inv_id : f ≫ g = 𝟙 X) :
    inv f = g := by
  apply (cancel_epi f).mp
  simp [hom_inv_id]
#align category_theory.is_iso.inv_eq_of_hom_inv_id CategoryTheory.IsIso.inv_eq_of_hom_inv_id

theorem inv_eq_of_inv_hom_id {f : X ⟶ Y} [IsIso f] {g : Y ⟶ X} (inv_hom_id : g ≫ f = 𝟙 Y) :
    inv f = g := by
  apply (cancel_mono f).mp
  simp [inv_hom_id]
#align category_theory.is_iso.inv_eq_of_inv_hom_id CategoryTheory.IsIso.inv_eq_of_inv_hom_id

-- Porting note: `@[ext]` used to accept lemmas like this.
@[aesop apply safe (rule_sets [CategoryTheory])]
theorem eq_inv_of_hom_inv_id {f : X ⟶ Y} [IsIso f] {g : Y ⟶ X} (hom_inv_id : f ≫ g = 𝟙 X) :
    g = inv f :=
  (inv_eq_of_hom_inv_id hom_inv_id).symm
#align category_theory.is_iso.eq_inv_of_hom_inv_id CategoryTheory.IsIso.eq_inv_of_hom_inv_id

theorem eq_inv_of_inv_hom_id {f : X ⟶ Y} [IsIso f] {g : Y ⟶ X} (inv_hom_id : g ≫ f = 𝟙 Y) :
    g = inv f :=
  (inv_eq_of_inv_hom_id inv_hom_id).symm
#align category_theory.is_iso.eq_inv_of_inv_hom_id CategoryTheory.IsIso.eq_inv_of_inv_hom_id

instance id (X : C) : IsIso (𝟙 X) := ⟨⟨𝟙 X, by simp⟩⟩
#align category_theory.is_iso.id CategoryTheory.IsIso.id

instance of_iso (f : X ≅ Y) : IsIso f.hom := ⟨⟨f.inv, by simp⟩⟩
#align category_theory.is_iso.of_iso CategoryTheory.IsIso.of_iso

instance of_iso_inv (f : X ≅ Y) : IsIso f.inv := IsIso.of_iso f.symm
#align category_theory.is_iso.of_iso_inv CategoryTheory.IsIso.of_iso_inv

variable {f g : X ⟶ Y} {h : Y ⟶ Z}

instance inv_isIso [IsIso f] : IsIso (inv f) :=
  IsIso.of_iso_inv (asIso f)
#align category_theory.is_iso.inv_is_iso CategoryTheory.IsIso.inv_isIso

/- The following instance has lower priority for the following reason:
Suppose we are given `f : X ≅ Y` with `X Y : Type u`.
Without the lower priority, typeclass inference cannot deduce `IsIso f.hom`
because `f.hom` is defeq to `(fun x ↦ x) ≫ f.hom`, triggering a loop. -/
instance (priority := 900) comp_isIso [IsIso f] [IsIso h] : IsIso (f ≫ h) :=
  IsIso.of_iso <| asIso f ≪≫ asIso h
#align category_theory.is_iso.comp_is_iso CategoryTheory.IsIso.comp_isIso

@[simp]
theorem inv_id : inv (𝟙 X) = 𝟙 X := by
  apply inv_eq_of_hom_inv_id
  simp
#align category_theory.is_iso.inv_id CategoryTheory.IsIso.inv_id

@[simp]
theorem inv_comp [IsIso f] [IsIso h] : inv (f ≫ h) = inv h ≫ inv f := by
  apply inv_eq_of_hom_inv_id
  simp
#align category_theory.is_iso.inv_comp CategoryTheory.IsIso.inv_comp

@[simp]
theorem inv_inv [IsIso f] : inv (inv f) = f := by
  apply inv_eq_of_hom_inv_id
  simp
#align category_theory.is_iso.inv_inv CategoryTheory.IsIso.inv_inv

@[simp]
theorem Iso.inv_inv (f : X ≅ Y) : inv f.inv = f.hom := by
  apply inv_eq_of_hom_inv_id
  simp
#align category_theory.is_iso.iso.inv_inv CategoryTheory.IsIso.Iso.inv_inv

@[simp]
theorem Iso.inv_hom (f : X ≅ Y) : inv f.hom = f.inv := by
  apply inv_eq_of_hom_inv_id
  simp
#align category_theory.is_iso.iso.inv_hom CategoryTheory.IsIso.Iso.inv_hom

@[simp]
theorem inv_comp_eq (α : X ⟶ Y) [IsIso α] {f : X ⟶ Z} {g : Y ⟶ Z} : inv α ≫ f = g ↔ f = α ≫ g :=
  (asIso α).inv_comp_eq
#align category_theory.is_iso.inv_comp_eq CategoryTheory.IsIso.inv_comp_eq

@[simp]
theorem eq_inv_comp (α : X ⟶ Y) [IsIso α] {f : X ⟶ Z} {g : Y ⟶ Z} : g = inv α ≫ f ↔ α ≫ g = f :=
  (asIso α).eq_inv_comp
#align category_theory.is_iso.eq_inv_comp CategoryTheory.IsIso.eq_inv_comp

@[simp]
theorem comp_inv_eq (α : X ⟶ Y) [IsIso α] {f : Z ⟶ Y} {g : Z ⟶ X} : f ≫ inv α = g ↔ f = g ≫ α :=
  (asIso α).comp_inv_eq
#align category_theory.is_iso.comp_inv_eq CategoryTheory.IsIso.comp_inv_eq

@[simp]
theorem eq_comp_inv (α : X ⟶ Y) [IsIso α] {f : Z ⟶ Y} {g : Z ⟶ X} : g = f ≫ inv α ↔ g ≫ α = f :=
  (asIso α).eq_comp_inv
#align category_theory.is_iso.eq_comp_inv CategoryTheory.IsIso.eq_comp_inv

theorem of_isIso_comp_left {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) [IsIso f] [IsIso (f ≫ g)] :
    IsIso g := by
  rw [← id_comp g, ← inv_hom_id f, assoc]
  infer_instance
#align category_theory.is_iso.of_is_iso_comp_left CategoryTheory.IsIso.of_isIso_comp_left

theorem of_isIso_comp_right {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) [IsIso g] [IsIso (f ≫ g)] :
    IsIso f := by
  rw [← comp_id f, ← hom_inv_id g, ← assoc]
  infer_instance
#align category_theory.is_iso.of_is_iso_comp_right CategoryTheory.IsIso.of_isIso_comp_right

theorem of_isIso_fac_left {X Y Z : C} {f : X ⟶ Y} {g : Y ⟶ Z} {h : X ⟶ Z} [IsIso f]
    [hh : IsIso h] (w : f ≫ g = h) : IsIso g := by
  rw [← w] at hh
  haveI := hh
  exact of_isIso_comp_left f g
#align category_theory.is_iso.of_is_iso_fac_left CategoryTheory.IsIso.of_isIso_fac_left

theorem of_isIso_fac_right {X Y Z : C} {f : X ⟶ Y} {g : Y ⟶ Z} {h : X ⟶ Z} [IsIso g]
    [hh : IsIso h] (w : f ≫ g = h) : IsIso f := by
  rw [← w] at hh
  haveI := hh
  exact of_isIso_comp_right f g
#align category_theory.is_iso.of_is_iso_fac_right CategoryTheory.IsIso.of_isIso_fac_right

end IsIso

open IsIso

theorem eq_of_inv_eq_inv {f g : X ⟶ Y} [IsIso f] [IsIso g] (p : inv f = inv g) : f = g := by
  apply (cancel_epi (inv f)).1
  erw [inv_hom_id, p, inv_hom_id]
#align category_theory.eq_of_inv_eq_inv CategoryTheory.eq_of_inv_eq_inv

theorem IsIso.inv_eq_inv {f g : X ⟶ Y} [IsIso f] [IsIso g] : inv f = inv g ↔ f = g :=
  Iso.inv_eq_inv (asIso f) (asIso g)
#align category_theory.is_iso.inv_eq_inv CategoryTheory.IsIso.inv_eq_inv

theorem hom_comp_eq_id (g : X ⟶ Y) [IsIso g] {f : Y ⟶ X} : g ≫ f = 𝟙 X ↔ f = inv g :=
  (asIso g).hom_comp_eq_id
#align category_theory.hom_comp_eq_id CategoryTheory.hom_comp_eq_id

theorem comp_hom_eq_id (g : X ⟶ Y) [IsIso g] {f : Y ⟶ X} : f ≫ g = 𝟙 Y ↔ f = inv g :=
  (asIso g).comp_hom_eq_id
#align category_theory.comp_hom_eq_id CategoryTheory.comp_hom_eq_id

theorem inv_comp_eq_id (g : X ⟶ Y) [IsIso g] {f : X ⟶ Y} : inv g ≫ f = 𝟙 Y ↔ f = g :=
  (asIso g).inv_comp_eq_id
#align category_theory.inv_comp_eq_id CategoryTheory.inv_comp_eq_id

theorem comp_inv_eq_id (g : X ⟶ Y) [IsIso g] {f : X ⟶ Y} : f ≫ inv g = 𝟙 X ↔ f = g :=
  (asIso g).comp_inv_eq_id
#align category_theory.comp_inv_eq_id CategoryTheory.comp_inv_eq_id

theorem isIso_of_hom_comp_eq_id (g : X ⟶ Y) [IsIso g] {f : Y ⟶ X} (h : g ≫ f = 𝟙 X) : IsIso f := by
  rw [(hom_comp_eq_id _).mp h]
  infer_instance
#align category_theory.is_iso_of_hom_comp_eq_id CategoryTheory.isIso_of_hom_comp_eq_id

theorem isIso_of_comp_hom_eq_id (g : X ⟶ Y) [IsIso g] {f : Y ⟶ X} (h : f ≫ g = 𝟙 Y) : IsIso f := by
  rw [(comp_hom_eq_id _).mp h]
  infer_instance
#align category_theory.is_iso_of_comp_hom_eq_id CategoryTheory.isIso_of_comp_hom_eq_id

namespace Iso

-- Porting note: `@[ext]` used to accept lemmas like this.
@[aesop apply safe (rule_sets [CategoryTheory])]
theorem inv_ext {f : X ≅ Y} {g : Y ⟶ X} (hom_inv_id : f.hom ≫ g = 𝟙 X) : f.inv = g :=
  ((hom_comp_eq_id f).1 hom_inv_id).symm
#align category_theory.iso.inv_ext CategoryTheory.Iso.inv_ext

-- Porting note: `@[ext]` used to accept lemmas like this.
@[aesop apply safe (rule_sets [CategoryTheory])]
theorem inv_ext' {f : X ≅ Y} {g : Y ⟶ X} (hom_inv_id : f.hom ≫ g = 𝟙 X) : g = f.inv :=
  (hom_comp_eq_id f).1 hom_inv_id
#align category_theory.iso.inv_ext' CategoryTheory.Iso.inv_ext'

/-!
All these cancellation lemmas can be solved by `simp [cancel_mono]` (or `simp [cancel_epi]`),
but with the current design `cancel_mono` is not a good `simp` lemma,
because it generates a typeclass search.

When we can see syntactically that a morphism is a `mono` or an `epi`
because it came from an isomorphism, it's fine to do the cancellation via `simp`.

In the longer term, it might be worth exploring making `mono` and `epi` structures,
rather than typeclasses, with coercions back to `X ⟶ Y`.
Presumably we could write `X ↪ Y` and `X ↠ Y`.
-/


@[simp]
theorem cancel_iso_hom_left {X Y Z : C} (f : X ≅ Y) (g g' : Y ⟶ Z) :
    f.hom ≫ g = f.hom ≫ g' ↔ g = g' := by
  simp only [cancel_epi]
#align category_theory.iso.cancel_iso_hom_left CategoryTheory.Iso.cancel_iso_hom_left

@[simp]
theorem cancel_iso_inv_left {X Y Z : C} (f : Y ≅ X) (g g' : Y ⟶ Z) :
    f.inv ≫ g = f.inv ≫ g' ↔ g = g' := by
  simp only [cancel_epi]
#align category_theory.iso.cancel_iso_inv_left CategoryTheory.Iso.cancel_iso_inv_left

@[simp]
theorem cancel_iso_hom_right {X Y Z : C} (f f' : X ⟶ Y) (g : Y ≅ Z) :
    f ≫ g.hom = f' ≫ g.hom ↔ f = f' := by
  simp only [cancel_mono]
#align category_theory.iso.cancel_iso_hom_right CategoryTheory.Iso.cancel_iso_hom_right

@[simp]
theorem cancel_iso_inv_right {X Y Z : C} (f f' : X ⟶ Y) (g : Z ≅ Y) :
    f ≫ g.inv = f' ≫ g.inv ↔ f = f' := by
  simp only [cancel_mono]
#align category_theory.iso.cancel_iso_inv_right CategoryTheory.Iso.cancel_iso_inv_right

/-
Unfortunately cancelling an isomorphism from the right of a chain of compositions is awkward.
We would need separate lemmas for each chain length (worse: for each pair of chain lengths).

We provide two more lemmas, for case of three morphisms, because this actually comes up in practice,
but then stop.
-/
@[simp]
theorem cancel_iso_hom_right_assoc {W X X' Y Z : C} (f : W ⟶ X) (g : X ⟶ Y) (f' : W ⟶ X')
    (g' : X' ⟶ Y) (h : Y ≅ Z) : f ≫ g ≫ h.hom = f' ≫ g' ≫ h.hom ↔ f ≫ g = f' ≫ g' := by
  simp only [← Category.assoc, cancel_mono]
#align category_theory.iso.cancel_iso_hom_right_assoc CategoryTheory.Iso.cancel_iso_hom_right_assoc

@[simp]
theorem cancel_iso_inv_right_assoc {W X X' Y Z : C} (f : W ⟶ X) (g : X ⟶ Y) (f' : W ⟶ X')
    (g' : X' ⟶ Y) (h : Z ≅ Y) : f ≫ g ≫ h.inv = f' ≫ g' ≫ h.inv ↔ f ≫ g = f' ≫ g' := by
  simp only [← Category.assoc, cancel_mono]
#align category_theory.iso.cancel_iso_inv_right_assoc CategoryTheory.Iso.cancel_iso_inv_right_assoc

end Iso

namespace Functor

universe u₁ v₁ u₂ v₂

variable {D : Type u₂}

variable [Category.{v₂} D]

/-- A functor `F : C ⥤ D` sends isomorphisms `i : X ≅ Y` to isomorphisms `F.obj X ≅ F.obj Y` -/
@[simps, pp_dot]
def mapIso (F : C ⥤ D) {X Y : C} (i : X ≅ Y) : F.obj X ≅ F.obj Y where
  hom := F.map i.hom
  inv := F.map i.inv
  hom_inv_id := by rw [← map_comp, Iso.hom_inv_id, ← map_id]
  inv_hom_id := by rw [← map_comp, Iso.inv_hom_id, ← map_id]
#align category_theory.functor.map_iso CategoryTheory.Functor.mapIso
#align category_theory.functor.map_iso_inv CategoryTheory.Functor.mapIso_inv
#align category_theory.functor.map_iso_hom CategoryTheory.Functor.mapIso_hom

@[simp]
theorem mapIso_symm (F : C ⥤ D) {X Y : C} (i : X ≅ Y) : F.mapIso i.symm = (F.mapIso i).symm :=
  rfl
#align category_theory.functor.map_iso_symm CategoryTheory.Functor.mapIso_symm

@[simp]
theorem mapIso_trans (F : C ⥤ D) {X Y Z : C} (i : X ≅ Y) (j : Y ≅ Z) :
    F.mapIso (i ≪≫ j) = F.mapIso i ≪≫ F.mapIso j :=
  by ext; apply Functor.map_comp
#align category_theory.functor.map_iso_trans CategoryTheory.Functor.mapIso_trans

@[simp]
theorem mapIso_refl (F : C ⥤ D) (X : C) : F.mapIso (Iso.refl X) = Iso.refl (F.obj X) :=
  Iso.ext <| F.map_id X
#align category_theory.functor.map_iso_refl CategoryTheory.Functor.mapIso_refl

instance map_isIso (F : C ⥤ D) (f : X ⟶ Y) [IsIso f] : IsIso (F.map f) :=
  IsIso.of_iso <| F.mapIso (asIso f)
#align category_theory.functor.map_is_iso CategoryTheory.Functor.map_isIso

@[simp]
theorem map_inv (F : C ⥤ D) {X Y : C} (f : X ⟶ Y) [IsIso f] : F.map (inv f) = inv (F.map f) := by
  apply eq_inv_of_hom_inv_id
  simp [← F.map_comp]
#align category_theory.functor.map_inv CategoryTheory.Functor.map_inv

theorem map_hom_inv (F : C ⥤ D) {X Y : C} (f : X ⟶ Y) [IsIso f] :
    F.map f ≫ F.map (inv f) = 𝟙 (F.obj X) := by simp
#align category_theory.functor.map_hom_inv CategoryTheory.Functor.map_hom_inv

theorem map_inv_hom (F : C ⥤ D) {X Y : C} (f : X ⟶ Y) [IsIso f] :
    F.map (inv f) ≫ F.map f = 𝟙 (F.obj Y) := by simp
#align category_theory.functor.map_inv_hom CategoryTheory.Functor.map_inv_hom

end Functor

end CategoryTheory
