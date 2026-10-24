# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BoolRing.Variantb71b6df7d216dc3b2875b566803b60bd46608077de9a8c68684429cea9b81560

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83e10e3a5e232443145c2da56b1d8ea97e87c0ae` · SHA-256 `7f20a6ce920cd1effd4875bb51333c1ddafc76f1d5f94a801eceb1115f35f1d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BoolRing.Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.BoolRing.Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/BoolRing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Category.Ring.Basic
import Mathlib.Algebra.Ring.BooleanRing
import Mathlib.Order.Category.BoolAlg

/-!
# The category of Boolean rings

This file defines `BoolRing`, the category of Boolean rings.

## TODO

Finish the equivalence with `BoolAlg`.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BoolRing.Variant6a42b9435a071004ed42d4805e7427b3efc25b43d9c08da9bd784397f8bb3391

universe u

open CategoryTheory Order

/-- The category of Boolean rings. -/
structure BoolRing where
  private mk ::
  /-- The underlying type. -/
  carrier : Type u
  [booleanRing : BooleanRing carrier]

namespace BoolRing

initialize_simps_projections BoolRing (-booleanRing)

instance : CoeSort BoolRing Type* :=
  ⟨carrier⟩

attribute [coe] carrier

attribute [instance] booleanRing

/-- Construct a bundled `BoolRing` from a `BooleanRing`. -/
abbrev of (α : Type*) [BooleanRing α] : BoolRing :=
  ⟨α⟩

theorem coe_of (α : Type*) [BooleanRing α] : ↥(of α) = α :=
  rfl

instance : Inhabited BoolRing :=
  ⟨of PUnit⟩

variable {R} in
/-- The type of morphisms in `BoolRing`. -/
@[ext]
structure Hom (R S : BoolRing) where
  private mk ::
  /-- The underlying ring hom. -/
  hom' : R →+* S

instance : Category BoolRing where
  Hom R S := Hom R S
  id R := ⟨RingHom.id R⟩
  comp f g := ⟨g.hom'.comp f.hom'⟩

instance : ConcreteCategory BoolRing (· →+* ·) where
  hom f := f.hom'
  ofHom f := ⟨f⟩

/-- Turn a morphism in `BoolRing` back into a `RingHom`. -/
abbrev Hom.hom {X Y : BoolRing} (f : Hom X Y) :=
  ConcreteCategory.hom (C := BoolRing) f

/-- Typecheck a `RingHom` as a morphism in `BoolRing`. -/
abbrev ofHom {R S : Type u} [BooleanRing R] [BooleanRing S] (f : R →+* S) : of R ⟶ of S :=
  ConcreteCategory.ofHom f

@[ext]
lemma hom_ext {R S : BoolRing} {f g : R ⟶ S} (hf : f.hom = g.hom) : f = g :=
  Hom.ext hf

instance hasForgetToCommRing : HasForget₂ BoolRing CommRingCat where
  forget₂ :=
    { obj := fun R ↦ CommRingCat.of R
      map := fun f ↦ CommRingCat.ofHom f.hom }

/-- Constructs an isomorphism of Boolean rings from a ring isomorphism between them. -/
@[simps]
def Iso.mk {α β : BoolRing.{u}} (e : α ≃+* β) : α ≅ β where
  hom := ⟨e⟩
  inv := ⟨e.symm⟩
  hom_inv_id := by ext; exact e.symm_apply_apply _
  inv_hom_id := by ext; exact e.apply_symm_apply _

end BoolRing

/-! ### Equivalence between `BoolAlg` and `BoolRing` -/

-- We have to add this instance since Lean doesn't see through `X.toBddDistLat`.
instance {X : BoolAlg} :
    BooleanAlgebra ↑(BddDistLat.toBddLat (X.toBddDistLat)).toLat :=
  BoolAlg.str _

-- We have to add this instance since Lean doesn't see through `R.toBddDistLat`.
instance {R : Type u} [BooleanRing R] :
    BooleanRing (BoolAlg.of (AsBoolAlg ↑R)).toBddDistLat.toBddLat.toLat :=
  inferInstanceAs <| BooleanRing R

@[simps]
instance BoolRing.hasForgetToBoolAlg : HasForget₂ BoolRing BoolAlg where
  forget₂.obj X := .of (AsBoolAlg X)
  forget₂.map f := BoolAlg.ofHom f.hom.asBoolAlg

@[simps]
instance BoolAlg.hasForgetToBoolRing : HasForget₂ BoolAlg BoolRing where
  forget₂.obj X := .of (AsBoolRing X)
  forget₂.map f := BoolRing.ofHom <| BoundedLatticeHom.asBoolRing f.hom

/-- The equivalence between Boolean rings and Boolean algebras. This is actually an isomorphism. -/
@[simps functor inverse]
def boolRingCatEquivBoolAlg : BoolRing ≌ BoolAlg where
  functor := forget₂ BoolRing BoolAlg
  inverse := forget₂ BoolAlg BoolRing
  unitIso := NatIso.ofComponents (fun X => BoolRing.Iso.mk <|
    (RingEquiv.asBoolRingAsBoolAlg X).symm) fun {_ _} _ => rfl
  counitIso := NatIso.ofComponents (fun X => BoolAlg.Iso.mk <|
    OrderIso.asBoolAlgAsBoolRing X) fun {_ _} _ => rfl
```
