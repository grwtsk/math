# Complete source: GRWTSK.Algebra.UniversalAlgebra.Adjunctions.Variant783ac5e310a13dd46335a798f8b1e49bc3525ea9b291ef360b2cdf58ee6a0024

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8fef4958b999d6dcdb18de7efe78fe1b9fda7b82` · SHA-256 `52019f28039b5fc1e87450d5ef7fe53de9a01b2edecec1e9c8d21979864231b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.AdjoinOne.Variant48c6aa5b76a2325a51d33c979648afa27b98ea5014994363b92aa69f3c1e9dad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"48c6aa5b76a2325a51d33c979648afa27b98ea5014994363b92aa69f3c1e9dad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.AdjoinOne.Variant48c6aa5b76a2325a51d33c979648afa27b98ea5014994363b92aa69f3c1e9dad","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"48c6aa5b76a2325a51d33c979648afa27b98ea5014994363b92aa69f3c1e9dad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/MonCat/Adjunctions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Julian Kuelshammer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julian Kuelshammer
-/
module

public import Mathlib.Algebra.Category.MonCat.Basic
public import Mathlib.Algebra.Category.Semigrp.Basic
public import Mathlib.Algebra.FreeMonoid.Basic
public import Mathlib.Algebra.Group.WithOne.Basic
public import Mathlib.Algebra.Module.NatInt
public import Mathlib.Data.Finsupp.Basic
public import Mathlib.Data.Finsupp.SMulWithZero
public import Mathlib.CategoryTheory.Adjunction.Basic

/-!
# Adjunctions regarding the category of monoids

This file proves the adjunction between adjoining a unit to a semigroup and the forgetful functor
from monoids to semigroups.

## TODO

* free-forgetful adjunction for monoids
* adjunctions related to commutative monoids
-/


namespace GRWTSK.Algebra.UniversalAlgebra.AdjoinOne.Variant48c6aa5b76a2325a51d33c979648afa27b98ea5014994363b92aa69f3c1e9dad

@[expose] public section


universe u

open CategoryTheory

namespace MonCat

/-- The functor of adjoining a neutral element `one` to a semigroup. -/
@[to_additive (attr := simps)
/-- The functor of adjoining a neutral element `zero` to a semigroup -/]
def adjoinOne : Semigrp.{u} ⥤ MonCat.{u} where
  obj S := ↧(WithOne S)
  map f := ofHom (WithOne.mapMulHom f.hom)
  map_id _ := MonCat.hom_ext WithOne.mapMulHom_id
  map_comp _ _ := MonCat.hom_ext (WithOne.mapMulHom_comp _ _)

@[to_additive]
instance hasForgetToSemigroup : HasForget₂ MonCat Semigrp where
  forget₂ :=
    { obj := fun M => ↧M
      map f := Semigrp.ofHom f.hom.toMulHom }

/-- The `adjoinOne`-forgetful adjunction from `Semigrp` to `MonCat`. -/
@[to_additive /-- The `adjoinZero`-forgetful adjunction from `AddSemigrp` to `AddMonCat` -/]
def adjoinOneAdj : adjoinOne ⊣ forget₂ MonCat.{u} Semigrp.{u} :=
  Adjunction.mkOfHomEquiv
    { homEquiv X Y :=
        ConcreteCategory.homEquiv.trans (WithOne.lift.symm.trans
          (ConcreteCategory.homEquiv (X := X) (Y := (forget₂ _ _).obj Y)).symm)
      homEquiv_naturality_left_symm := by
        intros
        ext ⟨_ | _⟩ <;> simp <;> rfl }

/-- The free functor `Type u ⥤ MonCat` sending a type `X` to the free monoid on `X`. -/
@[to_additive
/-- The free functor `Type u ⥤ AddMonCat` sending a type `X` to the free additive monoid on `X`. -/]
def free : Type u ⥤ MonCat.{u} where
  obj α := ↧(FreeMonoid α)
  map f := ofHom (FreeMonoid.map f)
  map_id _ := MonCat.hom_ext (FreeMonoid.hom_eq fun _ => rfl)
  map_comp _ _ := MonCat.hom_ext (FreeMonoid.hom_eq fun _ => rfl)

/-- The free-forgetful adjunction for monoids. -/
@[to_additive /-- The free-forgetful adjunction for additive monoids. -/]
def adj : free ⊣ forget MonCat.{u} :=
  Adjunction.mkOfHomEquiv
    -- The hint `(C := MonCat)` below speeds up the declaration by 10 times.
    { homEquiv X Y := (ConcreteCategory.homEquiv (C := MonCat)).trans (FreeMonoid.lift.symm.trans
        TypeCat.homEquiv.symm)
      homEquiv_naturality_left_symm _ _ := ConcreteCategory.ext (FreeMonoid.hom_eq fun _ ↦ by rfl) }

instance : (forget MonCat.{u}).IsRightAdjoint :=
  ⟨_, ⟨adj⟩⟩

end MonCat

namespace AddCommMonCat

/-- The free functor `Type u ⥤ AddCommMonCat`
sending a type `X` to the free commutative monoid on `X`. -/
@[simps]
noncomputable
def free : Type u ⥤ AddCommMonCat.{u} where
  obj α := ↧(α →₀ ℕ)
  map f := ofHom (Finsupp.mapDomain.addMonoidHom f)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The free-forgetful adjunction for commutative monoids. -/
noncomputable
def adj : free ⊣ forget AddCommMonCat.{u} where
  unit := { app X := ↾fun i ↦ Finsupp.single i 1 }
  counit :=
  { app M := ofHom (Finsupp.liftAddHom (multiplesHom M))
    naturality {M N} f := by ext1; apply Finsupp.liftAddHom.symm.injective; cat_disch }

instance : free.IsLeftAdjoint := ⟨_, ⟨adj⟩⟩

instance : (forget AddCommMonCat.{u}).IsRightAdjoint := ⟨_, ⟨adj⟩⟩

end AddCommMonCat

namespace CommMonCat

instance : (forget CommMonCat.{u}).IsRightAdjoint :=
  ⟨_, ⟨AddCommMonCat.adj.comp AddCommMonCat.equivalence.toAdjunction⟩⟩

end CommMonCat
```
