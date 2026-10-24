# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LatCat.Variant67f101f49ddc07d2719982aa00e40c7eeb3c39aab6a2c92dcb1112842a36f47d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a7b56320fa3d11ac2b9944b1dea52ca6113b027` · SHA-256 `669185ace6ce6de1394038e1c29caecad2edbb7f8b3262bd1e704428ae1a9fdf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LatCat.Variant1f5466586bbb37d6aa9f8db84957d6c8c574c33e541004c1effea26df312524b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1f5466586bbb37d6aa9f8db84957d6c8c574c33e541004c1effea26df312524b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.LatCat.Variant1f5466586bbb37d6aa9f8db84957d6c8c574c33e541004c1effea26df312524b","mathematical_subject":"Algebra.OrderTheory","original_sha256":"1f5466586bbb37d6aa9f8db84957d6c8c574c33e541004c1effea26df312524b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Order/Category/LatCat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Order.Category.PartOrdCat
import Mathlib.Order.Hom.Lattice


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LatCat.Variant1f5466586bbb37d6aa9f8db84957d6c8c574c33e541004c1effea26df312524b

#align_import order.category.Lat from "leanprover-community/mathlib"@"e8ac6315bcfcbaf2d19a046719c3b553206dac75"

/-!
# The category of lattices

This defines `LatCat`, the category of lattices.

Note that `LatCat` doesn't correspond to the literature definition of [`LatCat`]
(https://ncatlab.org/nlab/show/Lat) as we don't require bottom or top elements. Instead, `LatCat`
corresponds to `BddLatCat`.

## TODO

The free functor from `LatCat` to `BddLat` is `X → WithTop (WithBot X)`.
-/


universe u

open CategoryTheory

/-- The category of lattices. -/
def LatCat :=
  Bundled Lattice
set_option linter.uppercaseLean3 false
#align Lat LatCat

namespace LatCat

instance : CoeSort LatCat (Type*) :=
  Bundled.coeSort

instance (X : LatCat) : Lattice X :=
  X.str

/-- Construct a bundled `LatCat` from a `Lattice`. -/
def of (α : Type*) [Lattice α] : LatCat :=
  Bundled.of α
#align Lat.of LatCat.of

@[simp]
theorem coe_of (α : Type*) [Lattice α] : ↥(of α) = α :=
  rfl
#align Lat.coe_of LatCat.coe_of

instance : Inhabited LatCat :=
  ⟨of Bool⟩

instance : BundledHom @LatticeHom where
  toFun _ _ f := f.toFun
  id := @LatticeHom.id
  comp := @LatticeHom.comp
  hom_ext _ _ _ _ h := FunLike.coe_injective h

instance : LargeCategory.{u} LatCat :=
  BundledHom.category LatticeHom

instance : ConcreteCategory LatCat :=
  BundledHom.concreteCategory LatticeHom

instance hasForgetToPartOrd : HasForget₂ LatCat PartOrdCat where
  forget₂ :=
    { obj := fun X => Bundled.mk X inferInstance
      map := fun {X Y} (f : LatticeHom X Y) => (f : OrderHom X Y) }
#align Lat.has_forget_to_PartOrd LatCat.hasForgetToPartOrd

/-- Constructs an isomorphism of lattices from an order isomorphism between them. -/
@[simps]
def Iso.mk {α β : LatCat.{u}} (e : α ≃o β) : α ≅ β where
  hom := (e : LatticeHom _ _)
  inv := (e.symm : LatticeHom _ _)
  hom_inv_id := by
    ext
    exact e.symm_apply_apply _
  inv_hom_id := by
    ext
    exact e.apply_symm_apply _
#align Lat.iso.mk LatCat.Iso.mk

/-- `OrderDual` as a functor. -/
@[simps]
def dual : LatCat ⥤ LatCat where
  obj X := of Xᵒᵈ
  map := LatticeHom.dual
#align Lat.dual LatCat.dual

/-- The equivalence between `LatCat` and itself induced by `OrderDual` both ways. -/
@[simps functor inverse]
def dualEquiv : LatCat ≌ LatCat where
  functor := dual
  inverse := dual
  unitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X
  counitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X
#align Lat.dual_equiv LatCat.dualEquiv

end LatCat

theorem latCat_dual_comp_forget_to_partOrdCat :
    LatCat.dual ⋙ forget₂ LatCat PartOrdCat = forget₂ LatCat PartOrdCat ⋙ PartOrdCat.dual :=
  rfl
#align Lat_dual_comp_forget_to_PartOrd latCat_dual_comp_forget_to_partOrdCat
```
