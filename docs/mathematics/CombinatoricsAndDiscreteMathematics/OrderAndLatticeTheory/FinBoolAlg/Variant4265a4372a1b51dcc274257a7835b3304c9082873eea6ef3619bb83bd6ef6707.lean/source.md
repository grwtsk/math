# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FinBoolAlg.Variant4265a4372a1b51dcc274257a7835b3304c9082873eea6ef3619bb83bd6ef6707

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ec163dc587506b4dfdf7d0f4c488bce5877542c` · SHA-256 `3b0744b803d7ae58a1bb092d2c722d53764d551617132bcdf194a9cb4a967f79`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FinBoolAlg.Variant805b81a4b5ccba139edf25baeaa8bb41762155c1d6d49794e198fb352757e7c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"805b81a4b5ccba139edf25baeaa8bb41762155c1d6d49794e198fb352757e7c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.FinBoolAlg.Variant805b81a4b5ccba139edf25baeaa8bb41762155c1d6d49794e198fb352757e7c1","mathematical_subject":"Algebra.OrderTheory","original_sha256":"805b81a4b5ccba139edf25baeaa8bb41762155c1d6d49794e198fb352757e7c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/Category/FinBoolAlg.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Data.Fintype.Powerset
public import Mathlib.Order.Category.BoolAlg
public import Mathlib.Order.Category.FinBddDistLat
public import Mathlib.Order.Hom.CompleteLattice
public import Mathlib.Data.Set.Subsingleton

/-!
# The category of finite Boolean algebras

This file defines `FinBoolAlg`, the category of finite Boolean algebras.

## TODO

Birkhoff's representation for finite Boolean algebras.

```
FintypeCat_to_FinBoolAlg_op.left_op ⋙ FinBoolAlg.dual ≅
FintypeCat_to_FinBoolAlg_op.left_op
```

`FinBoolAlg` is essentially small.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FinBoolAlg.Variant805b81a4b5ccba139edf25baeaa8bb41762155c1d6d49794e198fb352757e7c1

@[expose] public section


universe u

open CategoryTheory OrderDual Opposite

/-- The category of finite Boolean algebras with bounded lattice morphisms. -/
structure FinBoolAlg extends BoolAlg where
  [isFintype : Fintype toBoolAlg]

attribute [instance] FinBoolAlg.isFintype

namespace FinBoolAlg

instance : CoeSort FinBoolAlg Type* :=
  ⟨fun X => X.carrier⟩

/-- Construct a bundled `FinBoolAlg` from `BooleanAlgebra` + `Fintype`. -/
abbrev of (α : Type*) [BooleanAlgebra α] [Fintype α] : FinBoolAlg where
  carrier := α

open Lean.PrettyPrinter.Delaborator in
/-- This prints `FinBoolAlg.of X` as `↧X`. -/
@[app_delab FinBoolAlg.of]
meta def delabOf : Delab := CategoryTheory.delabOf

theorem coe_of (α : Type*) [BooleanAlgebra α] [Fintype α] : ↥(of α) = α :=
  rfl

instance : Inhabited FinBoolAlg :=
  ⟨of PUnit⟩

instance largeCategory : LargeCategory FinBoolAlg :=
  inferInstanceAs <| Category (InducedCategory _ toBoolAlg)

instance concreteCategory : ConcreteCategory FinBoolAlg (BoundedLatticeHom · ·) :=
  inferInstanceAs <| ConcreteCategory (InducedCategory _ toBoolAlg) _

instance hasForgetToBoolAlg : HasForget₂ FinBoolAlg BoolAlg :=
  inferInstanceAs <| HasForget₂ (InducedCategory _ toBoolAlg) _

instance hasForgetToFinBddDistLat : HasForget₂ FinBoolAlg FinBddDistLat where
  forget₂.obj X := ↧X
  forget₂.map f := FinBddDistLat.ofHom f.hom.hom

instance forgetToBoolAlg_full : (forget₂ FinBoolAlg BoolAlg).Full :=
  InducedCategory.full _

instance forgetToBoolAlgFaithful : (forget₂ FinBoolAlg BoolAlg).Faithful :=
  InducedCategory.faithful _

@[simps]
instance hasForgetToFinPartOrd : HasForget₂ FinBoolAlg FinPartOrd where
  forget₂.obj X := ↧X
  forget₂.map {X Y} f := InducedCategory.homMk (PartOrd.ofHom f.hom.hom)

instance forgetToFinPartOrdFaithful : (forget₂ FinBoolAlg FinPartOrd).Faithful where
  map_injective h := by
    ext x
    exact CategoryTheory.congr_fun h x

/-- Constructs an equivalence between finite Boolean algebras from an order isomorphism between
them. -/
@[simps]
def Iso.mk {α β : FinBoolAlg.{u}} (e : α ≃o β) : α ≅ β where
  hom := InducedCategory.homMk (BoolAlg.ofHom e)
  inv := InducedCategory.homMk (BoolAlg.ofHom e.symm)
  hom_inv_id := by ext; exact e.symm_apply_apply _
  inv_hom_id := by ext; exact e.apply_symm_apply _

/-- `OrderDual` as a functor. -/
@[simps map]
def dual : FinBoolAlg ⥤ FinBoolAlg where
  obj X := of Xᵒᵈ
  map f := InducedCategory.homMk (BoolAlg.ofHom f.hom.hom.dual)

/-- The equivalence between `FinBoolAlg` and itself induced by `OrderDual` both ways. -/
@[simps functor inverse]
def dualEquiv : FinBoolAlg ≌ FinBoolAlg where
  functor := dual
  inverse := dual
  unitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X
  counitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X

end FinBoolAlg

theorem finBoolAlg_dual_comp_forget_to_finBddDistLat :
    FinBoolAlg.dual ⋙ forget₂ FinBoolAlg FinBddDistLat =
      forget₂ FinBoolAlg FinBddDistLat ⋙ FinBddDistLat.dual :=
  rfl

attribute [local instance] FintypeCat.fintype in
/-- The powerset functor. `Set` as a functor. -/
@[simps]
noncomputable def fintypeToFinBoolAlgOp : FintypeCat ⥤ FinBoolAlgᵒᵖ where
  obj X := op ↧(Set X)
  map {X Y} f :=
    Quiver.Hom.op <| InducedCategory.homMk <|
      BoolAlg.ofHom <| CompleteLatticeHom.setPreimage f
````
