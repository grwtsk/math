# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BddDistLat.Variant04fa04bf39d739e92e7739dadafe1696215bea72000fddfbdcc336d4df02dc8e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a96512ac7ad66642374107ce56f4605f9b607488` · SHA-256 `4a595862f51afba1988c90cf9bde1acdd0196043573031bf990337eb1e976754`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BddDistLat.Variantdc29b8aa44d144e1148938fe3db1c75bbb6671e5a617580454a075bf367c852e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dc29b8aa44d144e1148938fe3db1c75bbb6671e5a617580454a075bf367c852e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.BddDistLat.Variantdc29b8aa44d144e1148938fe3db1c75bbb6671e5a617580454a075bf367c852e","mathematical_subject":"Algebra.OrderTheory","original_sha256":"dc29b8aa44d144e1148938fe3db1c75bbb6671e5a617580454a075bf367c852e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/Category/BddDistLat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Order.Category.BddLat
public import Mathlib.Order.Category.DistLat

/-!
# The category of bounded distributive lattices

This defines `BddDistLat`, the category of bounded distributive lattices.

Note that this category is sometimes called [`DistLat`](https://ncatlab.org/nlab/show/DistLat) when
being a lattice is understood to entail having a bottom and a top element.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BddDistLat.Variantdc29b8aa44d144e1148938fe3db1c75bbb6671e5a617580454a075bf367c852e

@[expose] public section


universe u

open CategoryTheory

/-- The category of bounded distributive lattices with bounded lattice morphisms. -/
structure BddDistLat extends DistLat where
  [isBoundedOrder : BoundedOrder toDistLat]

/-- The underlying distrib lattice of a bounded distributive lattice. -/
add_decl_doc BddDistLat.toDistLat

namespace BddDistLat

instance : CoeSort BddDistLat Type* :=
  ⟨fun X => X.toDistLat⟩

instance (X : BddDistLat) : DistribLattice X :=
  X.toDistLat.str

attribute [instance] BddDistLat.isBoundedOrder

/-- Construct a bundled `BddDistLat` from a `BoundedOrder` `DistribLattice`. -/
abbrev of (α : Type*) [DistribLattice α] [BoundedOrder α] : BddDistLat where
  carrier := α

open Lean.PrettyPrinter.Delaborator in
/-- This prints `BddDistLat.of X` as `↧X`. -/
@[app_delab BddDistLat.of]
meta def delabOf : Delab := CategoryTheory.delabOf

theorem coe_of (α : Type*) [DistribLattice α] [BoundedOrder α] : ↥(of α) = α :=
  rfl

/-- The type of morphisms in `BddDistLat R`. -/
@[ext]
structure Hom (X Y : BddDistLat.{u}) where
  _mkInternal ::
  /-- The underlying `BoundedLatticeHom`. -/
  hom' : BoundedLatticeHom X Y

instance : Category BddDistLat.{u} where
  Hom X Y := Hom X Y
  id X := ⟨BoundedLatticeHom.id X⟩
  comp f g := ⟨g.hom'.comp f.hom'⟩

instance : ConcreteCategory BddDistLat (BoundedLatticeHom · ·) where
  hom := Hom.hom'
  ofHom := Hom._mkInternal

/-- Turn a morphism in `BddDistLat` back into a `BoundedLatticeHom`. -/
abbrev Hom.hom {X Y : BddDistLat.{u}} (f : Hom X Y) :=
  ConcreteCategory.hom (C := BddDistLat) f

/-- Typecheck a `BoundedLatticeHom` as a morphism in `BddDistLat`. -/
abbrev ofHom {X Y : Type u} [DistribLattice X] [BoundedOrder X] [DistribLattice Y] [BoundedOrder Y]
    (f : BoundedLatticeHom X Y) :
    of X ⟶ of Y :=
  ConcreteCategory.ofHom (C := BddDistLat) f

variable {R} in
/-- Use the `ConcreteCategory.hom` projection for `@[simps]` lemmas. -/
def Hom.Simps.hom (X Y : BddDistLat.{u}) (f : Hom X Y) :=
  f.hom

initialize_simps_projections Hom (hom' → hom)

/-!
The results below duplicate the `ConcreteCategory` simp lemmas, but we can keep them for `dsimp`.
-/

@[simp]
lemma coe_id {X : BddDistLat} : (𝟙 X : X → X) = id := rfl

@[simp]
lemma coe_comp {X Y Z : BddDistLat} {f : X ⟶ Y} {g : Y ⟶ Z} : (f ≫ g : X → Z) = g ∘ f := rfl

@[simp]
lemma forget_map {X Y : BddDistLat} (f : X ⟶ Y) :
    (forget BddDistLat).map f = (f : _ → _) := rfl

@[ext]
lemma ext {X Y : BddDistLat} {f g : X ⟶ Y} (w : ∀ x : X, f x = g x) : f = g :=
  ConcreteCategory.hom_ext _ _ w

@[simp]
lemma hom_id {X : BddDistLat} : (𝟙 X : X ⟶ X).hom = BoundedLatticeHom.id _ := rfl

/- Provided for rewriting. -/
lemma id_apply (X : BddDistLat) (x : X) :
    (𝟙 X : X ⟶ X) x = x := by simp

@[simp]
lemma hom_comp {X Y Z : BddDistLat} (f : X ⟶ Y) (g : Y ⟶ Z) :
    (f ≫ g).hom = g.hom.comp f.hom := rfl

/- Provided for rewriting. -/
lemma comp_apply {X Y Z : BddDistLat} (f : X ⟶ Y) (g : Y ⟶ Z) (x : X) :
    (f ≫ g) x = g (f x) := by simp

@[ext]
lemma hom_ext {X Y : BddDistLat} {f g : X ⟶ Y} (hf : f.hom = g.hom) : f = g :=
  Hom.ext hf

@[simp]
lemma hom_ofHom {X Y : Type u} [DistribLattice X] [BoundedOrder X] [DistribLattice Y]
    [BoundedOrder Y] (f : BoundedLatticeHom X Y) :
    (ofHom f).hom = f :=
  rfl

@[simp]
lemma ofHom_hom {X Y : BddDistLat} (f : X ⟶ Y) :
    ofHom (Hom.hom f) = f := rfl

@[simp]
lemma ofHom_id {X : Type u} [DistribLattice X] [BoundedOrder X] :
    ofHom (BoundedLatticeHom.id _) = 𝟙 (of X) := rfl

@[simp]
lemma ofHom_comp {X Y Z : Type u} [DistribLattice X] [BoundedOrder X] [DistribLattice Y]
    [BoundedOrder Y] [DistribLattice Z] [BoundedOrder Z]
    (f : BoundedLatticeHom X Y) (g : BoundedLatticeHom Y Z) :
    ofHom (g.comp f) = ofHom f ≫ ofHom g :=
  rfl

lemma ofHom_apply {X Y : Type u} [DistribLattice X] [BoundedOrder X] [DistribLattice Y]
    [BoundedOrder Y]
    (f : BoundedLatticeHom X Y) (x : X) :
    (ofHom f) x = f x := rfl

lemma inv_hom_apply {X Y : BddDistLat} (e : X ≅ Y) (x : X) : e.inv (e.hom x) = x := by
  simp

lemma hom_inv_apply {X Y : BddDistLat} (e : X ≅ Y) (s : Y) : e.hom (e.inv s) = s := by
  simp

instance : Inhabited BddDistLat :=
  ⟨of PUnit⟩

/-- Turn a `BddDistLat` into a `BddLat` by forgetting it is distributive. -/
def toBddLat (X : BddDistLat) : BddLat :=
  ↧X

@[simp]
theorem coe_toBddLat (X : BddDistLat) : ↥X.toBddLat = ↥X :=
  rfl

instance hasForgetToDistLat : HasForget₂ BddDistLat DistLat where
  forget₂.obj X := ↧X
  forget₂.map f := DistLat.ofHom f.hom.toLatticeHom

instance hasForgetToBddLat : HasForget₂ BddDistLat BddLat where
  forget₂.obj X := ↧X
  forget₂.map f := BddLat.ofHom f.hom

theorem forget_bddLat_lat_eq_forget_distLat_lat :
    forget₂ BddDistLat BddLat ⋙ forget₂ BddLat Lat =
      forget₂ BddDistLat DistLat ⋙ forget₂ DistLat Lat :=
  rfl

/-- Constructs an equivalence between bounded distributive lattices from an order isomorphism
between them. -/
@[simps]
def Iso.mk {α β : BddDistLat.{u}} (e : α ≃o β) : α ≅ β where
  hom := BddDistLat.ofHom e
  inv := BddDistLat.ofHom e.symm

/-- `OrderDual` as a functor. -/
@[simps map]
def dual : BddDistLat ⥤ BddDistLat where
  obj X := of Xᵒᵈ
  map f := BddDistLat.ofHom f.hom.dual

/-- The equivalence between `BddDistLat` and itself induced by `OrderDual` both ways. -/
@[simps functor inverse]
def dualEquiv : BddDistLat ≌ BddDistLat where
  functor := dual
  inverse := dual
  unitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X
  counitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X

end BddDistLat

theorem bddDistLat_dual_comp_forget_to_distLat :
    BddDistLat.dual ⋙ forget₂ BddDistLat DistLat =
      forget₂ BddDistLat DistLat ⋙ DistLat.dual :=
  rfl
```
