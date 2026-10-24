# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lat.Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2951d344c9167953e75d8dbc72f78ef619e6ccc` · SHA-256 `d3189ed4ba4c441c8efbbdfae01a523eb7819e2ff81e00d6042c9d3b7677e74b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lat.Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"be38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.Lat.Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56","mathematical_subject":"Algebra.OrderTheory","original_sha256":"be38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Category/Lat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Order.Category.PartOrd
import Mathlib.Order.Hom.Lattice

/-!
# The category of lattices

This defines `Lat`, the category of lattices.

Note that `Lat` doesn't correspond to the literature definition of [`Lat`]
(https://ncatlab.org/nlab/show/Lat) as we don't require bottom or top elements. Instead, `Lat`
corresponds to `BddLat`.

## TODO

The free functor from `Lat` to `BddLat` is `X → WithTop (WithBot X)`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lat.Variantbe38c401c9273c27a5120def7ce29647d71f0e1cd77dfbe5dd525b4e14b75b56

universe u

open CategoryTheory

/-- The category of lattices. -/
structure Lat where
  /-- The underlying lattices. -/
  (carrier : Type*)
  [str : Lattice carrier]

attribute [instance] Lat.str

initialize_simps_projections Lat (carrier → coe, -str)

namespace Lat

instance : CoeSort Lat (Type _) :=
  ⟨Lat.carrier⟩

attribute [coe] Lat.carrier

/-- Construct a bundled `Lat` from the underlying type and typeclass. -/
abbrev of (X : Type*) [Lattice X] : Lat := ⟨X⟩

/-- The type of morphisms in `Lat R`. -/
@[ext]
structure Hom (X Y : Lat.{u}) where
  private mk ::
  /-- The underlying `LatticeHom`. -/
  hom' : LatticeHom X Y

instance : Category Lat.{u} where
  Hom X Y := Hom X Y
  id X := ⟨LatticeHom.id X⟩
  comp f g := ⟨g.hom'.comp f.hom'⟩

instance : ConcreteCategory Lat (LatticeHom · ·) where
  hom := Hom.hom'
  ofHom := Hom.mk

/-- Turn a morphism in `Lat` back into a `LatticeHom`. -/
abbrev Hom.hom {X Y : Lat.{u}} (f : Hom X Y) :=
  ConcreteCategory.hom (C := Lat) f

/-- Typecheck a `LatticeHom` as a morphism in `Lat`. -/
abbrev ofHom {X Y : Type u} [Lattice X] [Lattice Y] (f : LatticeHom X Y) : of X ⟶ of Y :=
  ConcreteCategory.ofHom (C := Lat) f

variable {R} in
/-- Use the `ConcreteCategory.hom` projection for `@[simps]` lemmas. -/
def Hom.Simps.hom (X Y : Lat.{u}) (f : Hom X Y) :=
  f.hom

initialize_simps_projections Hom (hom' → hom)

/-!
The results below duplicate the `ConcreteCategory` simp lemmas, but we can keep them for `dsimp`.
-/

@[simp]
lemma coe_id {X : Lat} : (𝟙 X : X → X) = id := rfl

@[simp]
lemma coe_comp {X Y Z : Lat} {f : X ⟶ Y} {g : Y ⟶ Z} : (f ≫ g : X → Z) = g ∘ f := rfl

@[simp]
lemma forget_map {X Y : Lat} (f : X ⟶ Y) :
    (forget Lat).map f = f := rfl

@[ext]
lemma ext {X Y : Lat} {f g : X ⟶ Y} (w : ∀ x : X, f x = g x) : f = g :=
  ConcreteCategory.hom_ext _ _ w

-- This is not `simp` to avoid rewriting in types of terms.
theorem coe_of (X : Type u) [Lattice X] : (Lat.of X : Type u) = X := rfl

@[simp]
lemma hom_id {X : Lat} : (𝟙 X : X ⟶ X).hom = LatticeHom.id _ := rfl

/- Provided for rewriting. -/
lemma id_apply (X : Lat) (x : X) :
    (𝟙 X : X ⟶ X) x = x := by simp

@[simp]
lemma hom_comp {X Y Z : Lat} (f : X ⟶ Y) (g : Y ⟶ Z) :
    (f ≫ g).hom = g.hom.comp f.hom := rfl

/- Provided for rewriting. -/
lemma comp_apply {X Y Z : Lat} (f : X ⟶ Y) (g : Y ⟶ Z) (x : X) :
    (f ≫ g) x = g (f x) := by simp

@[ext]
lemma hom_ext {X Y : Lat} {f g : X ⟶ Y} (hf : f.hom = g.hom) : f = g :=
  Hom.ext hf

@[simp]
lemma hom_ofHom {X Y : Type u} [Lattice X] [Lattice Y] (f : LatticeHom X Y) :
  (ofHom f).hom = f := rfl

@[simp]
lemma ofHom_hom {X Y : Lat} (f : X ⟶ Y) :
    ofHom (Hom.hom f) = f := rfl

@[simp]
lemma ofHom_id {X : Type u} [Lattice X] : ofHom (LatticeHom.id _) = 𝟙 (of X) := rfl

@[simp]
lemma ofHom_comp {X Y Z : Type u} [Lattice X] [Lattice Y] [Lattice Z]
    (f : LatticeHom X Y) (g : LatticeHom Y Z) :
    ofHom (g.comp f) = ofHom f ≫ ofHom g :=
  rfl

lemma ofHom_apply {X Y : Type u} [Lattice X] [Lattice Y] (f : LatticeHom X Y) (x : X) :
    (ofHom f) x = f x := rfl

lemma inv_hom_apply {X Y : Lat} (e : X ≅ Y) (x : X) : e.inv (e.hom x) = x := by
  simp

lemma hom_inv_apply {X Y : Lat} (e : X ≅ Y) (s : Y) : e.hom (e.inv s) = s := by
  simp

instance hasForgetToPartOrd : HasForget₂ Lat PartOrd where
  forget₂.obj X := .of X
  forget₂.map f := PartOrd.ofHom f.hom

/-- Constructs an isomorphism of lattices from an order isomorphism between them. -/
@[simps]
def Iso.mk {α β : Lat.{u}} (e : α ≃o β) : α ≅ β where
  hom := ofHom e
  inv := ofHom e.symm

/-- `OrderDual` as a functor. -/
@[simps map]
def dual : Lat ⥤ Lat where
  obj X := of Xᵒᵈ
  map f := ofHom f.hom.dual

/-- The equivalence between `Lat` and itself induced by `OrderDual` both ways. -/
@[simps functor inverse]
def dualEquiv : Lat ≌ Lat where
  functor := dual
  inverse := dual
  unitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X
  counitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X

end Lat

theorem Lat_dual_comp_forget_to_partOrd :
    Lat.dual ⋙ forget₂ Lat PartOrd = forget₂ Lat PartOrd ⋙ PartOrd.dual :=
  rfl
```
