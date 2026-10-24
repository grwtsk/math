# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FinBddDistLatCat.Variant5f90cdeec63828152b149cf9bc37f63b18e59ab5bd1d8d3f05b235f24cc63178

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55e2cf3936773bfa24736c6ce0b90264615dbc2d` · SHA-256 `e0542536643ac8e6dab698c66818421412e3c88d28d738f615adbf46e2505828`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FinBddDistLatCat.Variant09b8be2e64267376a290539526eee5c34cbd9703500c52ee410ce91c64b94e69","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"09b8be2e64267376a290539526eee5c34cbd9703500c52ee410ce91c64b94e69","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.FinBddDistLatCat.Variant09b8be2e64267376a290539526eee5c34cbd9703500c52ee410ce91c64b94e69","mathematical_subject":"Algebra.OrderTheory","original_sha256":"09b8be2e64267376a290539526eee5c34cbd9703500c52ee410ce91c64b94e69","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Order/Category/FinBddDistLatCat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Data.Fintype.Order
import Mathlib.Order.Category.BddDistLatCat
import Mathlib.Order.Category.FinPartOrd


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FinBddDistLatCat.Variant09b8be2e64267376a290539526eee5c34cbd9703500c52ee410ce91c64b94e69

#align_import order.category.FinBddDistLat from "leanprover-community/mathlib"@"937b1c59c58710ef8ed91f8727ef402d49d621a2"

/-!
# The category of finite bounded distributive lattices

This file defines `FinBddDistLatCat`, the category of finite distributive lattices with
bounded lattice homomorphisms.
-/

set_option linter.uppercaseLean3 false

universe u

open CategoryTheory

/-- The category of finite distributive lattices with bounded lattice morphisms. -/
structure FinBddDistLatCat where
  toBddDistLatCat : BddDistLatCat
  [isFintype : Fintype toBddDistLatCat]
#align FinBddDistLat FinBddDistLatCat

namespace FinBddDistLatCat

instance : CoeSort FinBddDistLatCat (Type*) :=
  ⟨fun X => X.toBddDistLatCat⟩

instance (X : FinBddDistLatCat) : DistribLattice X :=
  X.toBddDistLatCat.toDistLatCat.str

instance (X : FinBddDistLatCat) : BoundedOrder X :=
  X.toBddDistLatCat.isBoundedOrder

attribute [instance] FinBddDistLatCat.isFintype

/-- Construct a bundled `FinBddDistLatCat` from a `Nonempty` `BoundedOrder` `DistribLattice`. -/
def of (α : Type*) [DistribLattice α] [BoundedOrder α] [Fintype α] : FinBddDistLatCat :=
  -- Porting note: was `⟨⟨⟨α⟩⟩⟩`
  -- see https://github.com/leanprover-community/mathlib4/issues/4998
  ⟨⟨{α := α}⟩⟩
#align FinBddDistLat.of FinBddDistLatCat.of

/-- Construct a bundled `FinBddDistLatCat` from a `Nonempty` `BoundedOrder` `DistribLattice`. -/
def of' (α : Type*) [DistribLattice α] [Fintype α] [Nonempty α] : FinBddDistLatCat :=
  haveI := Fintype.toBoundedOrder α
  -- Porting note: was `⟨⟨⟨α⟩⟩⟩`
  -- see https://github.com/leanprover-community/mathlib4/issues/4998
  ⟨⟨{α := α}⟩⟩
#align FinBddDistLat.of' FinBddDistLatCat.of'

instance : Inhabited FinBddDistLatCat :=
  ⟨of PUnit⟩

instance largeCategory : LargeCategory FinBddDistLatCat :=
  InducedCategory.category toBddDistLatCat
#align FinBddDistLat.large_category FinBddDistLatCat.largeCategory

instance concreteCategory : ConcreteCategory FinBddDistLatCat :=
  InducedCategory.concreteCategory toBddDistLatCat
#align FinBddDistLat.concrete_category FinBddDistLatCat.concreteCategory

instance hasForgetToBddDistLatCat : HasForget₂ FinBddDistLatCat BddDistLatCat :=
  InducedCategory.hasForget₂ FinBddDistLatCat.toBddDistLatCat
#align FinBddDistLat.has_forget_to_BddDistLat FinBddDistLatCat.hasForgetToBddDistLatCat

instance hasForgetToFinPartOrd : HasForget₂ FinBddDistLatCat FinPartOrd
    where forget₂ :=
    { obj := fun X => FinPartOrd.of X
      map := fun {X Y} f => (show BoundedLatticeHom X Y from f : X →o Y) }
#align FinBddDistLat.has_forget_to_FinPartOrd FinBddDistLatCat.hasForgetToFinPartOrd

/-- Constructs an equivalence between finite distributive lattices from an order isomorphism
between them. -/
@[simps]
def Iso.mk {α β : FinBddDistLatCat.{u}} (e : α ≃o β) : α ≅ β where
  hom := (e : BoundedLatticeHom α β)
  inv := (e.symm : BoundedLatticeHom β α)
  hom_inv_id := by ext; exact e.symm_apply_apply _
  inv_hom_id := by ext; exact e.apply_symm_apply _
#align FinBddDistLat.iso.mk FinBddDistLatCat.Iso.mk

example {X Y : FinBddDistLatCat} : (X ⟶ Y) = BoundedLatticeHom X Y :=
  rfl

/-- `OrderDual` as a functor. -/
@[simps]
def dual : FinBddDistLatCat ⥤ FinBddDistLatCat where
  obj X := of Xᵒᵈ
  map {X Y} := BoundedLatticeHom.dual
#align FinBddDistLat.dual FinBddDistLatCat.dual

/-- The equivalence between `FinBddDistLatCat` and itself induced by `OrderDual` both ways. -/
@[simps functor inverse]
def dualEquiv : FinBddDistLatCat ≌ FinBddDistLatCat where
  functor := dual
  inverse := dual
  unitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X
  counitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X
#align FinBddDistLat.dual_equiv FinBddDistLatCat.dualEquiv

end FinBddDistLatCat

theorem finBddDistLatCat_dual_comp_forget_to_bddDistLatCat :
    FinBddDistLatCat.dual ⋙ forget₂ FinBddDistLatCat BddDistLatCat =
      forget₂ FinBddDistLatCat BddDistLatCat ⋙ BddDistLatCat.dual :=
  rfl
#align FinBddDistLat_dual_comp_forget_to_BddDistLat finBddDistLatCat_dual_comp_forget_to_bddDistLatCat
```
