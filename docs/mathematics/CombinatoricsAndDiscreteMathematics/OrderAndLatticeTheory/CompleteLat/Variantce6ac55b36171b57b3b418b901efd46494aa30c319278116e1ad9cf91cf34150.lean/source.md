# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CompleteLat.Variantce6ac55b36171b57b3b418b901efd46494aa30c319278116e1ad9cf91cf34150

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6822fb586133076957fc0da9ab2bd5f1ec88cac3` · SHA-256 `80c131b62a6a50d0976f12fad20e41bfdfbbe385a559e0bb4bb1fccec1d7f989`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CompleteLat.Variantde890be7f7924d3dc30ee39908fccd12b382761837d195871227a99e4d9ad7c2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"de890be7f7924d3dc30ee39908fccd12b382761837d195871227a99e4d9ad7c2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.CompleteLat.Variantde890be7f7924d3dc30ee39908fccd12b382761837d195871227a99e4d9ad7c2","mathematical_subject":"Algebra.OrderTheory","original_sha256":"de890be7f7924d3dc30ee39908fccd12b382761837d195871227a99e4d9ad7c2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/Category/CompleteLat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Order.Category.BddLat
public import Mathlib.Order.Hom.CompleteLattice

/-!
# The category of complete lattices

This file defines `CompleteLat`, the category of complete lattices.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CompleteLat.Variantde890be7f7924d3dc30ee39908fccd12b382761837d195871227a99e4d9ad7c2

@[expose] public section


universe u

open CategoryTheory

/-- The category of complete lattices. -/
structure CompleteLat where
  /-- Construct a bundled `CompleteLat` from the underlying type and typeclass. -/
  of ::
  /-- The underlying lattice. -/
  (carrier : Type*)
  [str : CompleteLattice carrier]

attribute [instance] CompleteLat.str

initialize_simps_projections CompleteLat (carrier → coe, -str)

namespace CompleteLat

open Lean.PrettyPrinter.Delaborator in
/-- This prints `CompleteLat.of X` as `↧X`. -/
@[app_delab CompleteLat.of]
meta def delabOf : Delab := CategoryTheory.delabOf

instance : CoeSort CompleteLat (Type _) :=
  ⟨CompleteLat.carrier⟩

attribute [coe] CompleteLat.carrier

theorem coe_of (α : Type*) [CompleteLattice α] : ↥(of α) = α :=
  rfl

instance : Inhabited CompleteLat :=
  ⟨of PUnit⟩

instance : LargeCategory.{u} CompleteLat where
  Hom X Y := CompleteLatticeHom X Y
  id X := CompleteLatticeHom.id X
  comp f g := g.comp f

instance : ConcreteCategory CompleteLat (CompleteLatticeHom · ·) where
  hom f := f
  ofHom f := f

instance hasForgetToBddLat : HasForget₂ CompleteLat BddLat where
  forget₂.obj X := ↧X
  forget₂.map f := BddLat.ofHom (CompleteLatticeHom.toBoundedLatticeHom f)

/-- Constructs an isomorphism of complete lattices from an order isomorphism between them. -/
@[simps]
def Iso.mk {α β : CompleteLat.{u}} (e : α ≃o β) : α ≅ β where
  hom := ConcreteCategory.ofHom e
  inv := ConcreteCategory.ofHom e.symm
  hom_inv_id := by ext; exact e.symm_apply_apply _
  inv_hom_id := by ext; exact e.apply_symm_apply _

/-- `OrderDual` as a functor. -/
@[simps map]
def dual : CompleteLat ⥤ CompleteLat where
  obj X := of Xᵒᵈ
  map {_ _} := CompleteLatticeHom.dual

/-- The equivalence between `CompleteLat` and itself induced by `OrderDual` both ways. -/
@[simps functor inverse]
def dualEquiv : CompleteLat ≌ CompleteLat where
  functor := dual
  inverse := dual
  unitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X
  counitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X

end CompleteLat

theorem completeLat_dual_comp_forget_to_bddLat :
    CompleteLat.dual ⋙ forget₂ CompleteLat BddLat =
    forget₂ CompleteLat BddLat ⋙ BddLat.dual :=
  rfl
```
