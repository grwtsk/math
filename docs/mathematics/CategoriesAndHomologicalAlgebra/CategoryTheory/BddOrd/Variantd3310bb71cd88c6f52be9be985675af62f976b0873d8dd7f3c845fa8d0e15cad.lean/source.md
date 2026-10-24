# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BddOrd.Variantd3310bb71cd88c6f52be9be985675af62f976b0873d8dd7f3c845fa8d0e15cad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3eb5dd1f9b7386e4a2a2e62470ce230d0cfb7d3` · SHA-256 `3e273354d2b7b5f1cda042e1c700f748e134c6ff1105fe798e16a5ab02e4b63a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BddOrd.Variant9f5a4db71829e251da9a329bde07dbc0c78201ed301bcb8dc37ee400f3d3bf29","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9f5a4db71829e251da9a329bde07dbc0c78201ed301bcb8dc37ee400f3d3bf29","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.BddOrd.Variant9f5a4db71829e251da9a329bde07dbc0c78201ed301bcb8dc37ee400f3d3bf29","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"9f5a4db71829e251da9a329bde07dbc0c78201ed301bcb8dc37ee400f3d3bf29","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/Category/BddOrd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.CategoryTheory.Category.Bipointed
public import Mathlib.Order.Category.PartOrd
public import Mathlib.Order.Hom.Bounded

/-!
# The category of bounded orders

This defines `BddOrd`, the category of bounded orders.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BddOrd.Variant9f5a4db71829e251da9a329bde07dbc0c78201ed301bcb8dc37ee400f3d3bf29

@[expose] public section


universe u v

open CategoryTheory

/-- The category of bounded orders with monotone functions. -/
structure BddOrd extends PartOrd where
  [isBoundedOrder : BoundedOrder toPartOrd]

/-- The underlying object in the category of partial orders. -/
add_decl_doc BddOrd.toPartOrd

attribute [instance] BddOrd.isBoundedOrder

initialize_simps_projections BddOrd (carrier → coe, -str)

namespace BddOrd

instance : CoeSort BddOrd Type* :=
  InducedCategory.hasCoeToSort toPartOrd

/-- Construct a bundled `BddOrd` from the underlying type and typeclass. -/
abbrev of (X : Type*) [PartialOrder X] [BoundedOrder X] : BddOrd where
  carrier := X

open Lean.PrettyPrinter.Delaborator in
/-- This prints `BddOrd.of X` as `↧X`. -/
@[app_delab BddOrd.of]
meta def delabOf : Delab := CategoryTheory.delabOf

/-- The type of morphisms in `BddOrd R`. -/
@[ext]
structure Hom (X Y : BddOrd.{u}) where
  _mkInternal ::
  /-- The underlying `BoundedOrderHom`. -/
  hom' : BoundedOrderHom X Y

instance : Category BddOrd.{u} where
  Hom X Y := Hom X Y
  id _ := ⟨BoundedOrderHom.id _⟩
  comp f g := ⟨g.hom'.comp f.hom'⟩

instance : ConcreteCategory BddOrd (BoundedOrderHom · ·) where
  hom := Hom.hom'
  ofHom := Hom._mkInternal

/-- Turn a morphism in `BddOrd` back into a `BoundedOrderHom`. -/
abbrev Hom.hom {X Y : BddOrd.{u}} (f : Hom X Y) :=
  ConcreteCategory.hom (C := BddOrd) f

/-- Typecheck a `BoundedOrderHom` as a morphism in `BddOrd`. -/
abbrev ofHom {X Y : Type u} [PartialOrder X] [BoundedOrder X] [PartialOrder Y] [BoundedOrder Y]
    (f : BoundedOrderHom X Y) : of X ⟶ of Y :=
  ConcreteCategory.ofHom (C := BddOrd) f

variable {R} in
/-- Use the `ConcreteCategory.hom` projection for `@[simps]` lemmas. -/
def Hom.Simps.hom (X Y : BddOrd.{u}) (f : Hom X Y) :=
  f.hom

initialize_simps_projections Hom (hom' → hom)

/-!
The results below duplicate the `ConcreteCategory` simp lemmas, but we can keep them for `dsimp`.
-/

@[simp]
lemma coe_id {X : BddOrd} : (𝟙 X : X → X) = id := rfl

@[simp]
lemma coe_comp {X Y Z : BddOrd} {f : X ⟶ Y} {g : Y ⟶ Z} : (f ≫ g : X → Z) = g ∘ f := rfl

@[simp]
lemma forget_map {X Y : BddOrd} (f : X ⟶ Y) :
    (forget BddOrd).map f = (f : _ → _) := rfl

@[ext]
lemma ext {X Y : BddOrd} {f g : X ⟶ Y} (w : ∀ x : X, f x = g x) : f = g :=
  ConcreteCategory.hom_ext _ _ w

-- This is not `simp` to avoid rewriting in types of terms.
theorem coe_of (X : Type u) [PartialOrder X] [BoundedOrder X] : (BddOrd.of X : Type u) = X := rfl

@[simp]
lemma hom_id {X : BddOrd} : (𝟙 X : X ⟶ X).hom = BoundedOrderHom.id _ := rfl

/- Provided for rewriting. -/
lemma id_apply (X : BddOrd) (x : X) :
    (𝟙 X : X ⟶ X) x = x := by simp

@[simp]
lemma hom_comp {X Y Z : BddOrd} (f : X ⟶ Y) (g : Y ⟶ Z) :
    (f ≫ g).hom = g.hom.comp f.hom := rfl

/- Provided for rewriting. -/
lemma comp_apply {X Y Z : BddOrd} (f : X ⟶ Y) (g : Y ⟶ Z) (x : X) :
    (f ≫ g) x = g (f x) := by simp

@[ext]
lemma hom_ext {X Y : BddOrd} {f g : X ⟶ Y} (hf : f.hom = g.hom) : f = g :=
  Hom.ext hf

@[simp]
lemma hom_ofHom {X Y : Type u} [PartialOrder X] [BoundedOrder X] [PartialOrder Y] [BoundedOrder Y]
    (f : BoundedOrderHom X Y) :
    (ofHom f).hom = f := rfl

@[simp]
lemma ofHom_hom {X Y : BddOrd} (f : X ⟶ Y) :
    ofHom f.hom = f := rfl

@[simp]
lemma ofHom_id {X : Type u} [PartialOrder X] [BoundedOrder X] :
    ofHom (BoundedOrderHom.id _) = 𝟙 (of X) := rfl

@[simp]
lemma ofHom_comp {X Y Z : Type u} [PartialOrder X] [BoundedOrder X] [PartialOrder Y]
    [BoundedOrder Y] [PartialOrder Z] [BoundedOrder Z]
    (f : BoundedOrderHom X Y) (g : BoundedOrderHom Y Z) :
    ofHom (g.comp f) = ofHom f ≫ ofHom g :=
  rfl

lemma ofHom_apply {X Y : Type u} [PartialOrder X] [BoundedOrder X] [PartialOrder Y] [BoundedOrder Y]
    (f : BoundedOrderHom X Y) (x : X) :
    ofHom f x = f x := rfl

lemma inv_hom_apply {X Y : BddOrd} (e : X ≅ Y) (x : X) : e.inv (e.hom x) = x := by
  simp

lemma hom_inv_apply {X Y : BddOrd} (e : X ≅ Y) (s : Y) : e.hom (e.inv s) = s := by
  simp

instance : Inhabited BddOrd :=
  ⟨of PUnit⟩

instance hasForgetToPartOrd : HasForget₂ BddOrd PartOrd where
  forget₂.obj X := X.toPartOrd
  forget₂.map f := PartOrd.ofHom f.hom.toOrderHom

instance hasForgetToBipointed : HasForget₂ BddOrd Bipointed where
  forget₂ :=
    { obj := fun X => ⟨X, ⊥, ⊤⟩
      map := fun f => ⟨f, f.hom.map_bot', f.hom.map_top'⟩ }
  forget_comp := rfl

/-- `OrderDual` as a functor. -/
@[simps map]
def dual : BddOrd ⥤ BddOrd where
  obj X := of Xᵒᵈ
  map f := ofHom f.hom.dual

/-- Constructs an equivalence between bounded orders from an order isomorphism between them. -/
@[simps]
def Iso.mk {α β : BddOrd.{u}} (e : α ≃o β) : α ≅ β where
  hom := ofHom e
  inv := ofHom e.symm
  hom_inv_id := by ext; exact e.symm_apply_apply _
  inv_hom_id := by ext; exact e.apply_symm_apply _

/-- The equivalence between `BddOrd` and itself induced by `OrderDual` both ways. -/
@[simps functor inverse]
def dualEquiv : BddOrd ≌ BddOrd where
  functor := dual
  inverse := dual
  unitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X
  counitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X

end BddOrd

theorem bddOrd_dual_comp_forget_to_partOrd :
    BddOrd.dual ⋙ forget₂ BddOrd PartOrd =
    forget₂ BddOrd PartOrd ⋙ PartOrd.dual :=
  rfl

theorem bddOrd_dual_comp_forget_to_bipointed :
    BddOrd.dual ⋙ forget₂ BddOrd Bipointed =
    forget₂ BddOrd Bipointed ⋙ Bipointed.swap :=
  rfl
```
