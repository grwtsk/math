# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant8c407976374f407c536c641e11771fdcc96e74b5aa6d10d6071d0f0d3768b8af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f02b95f4acab2fcd1e12a2eb85fd46a3a28479d` · SHA-256 `fc4665d5a6080a67113e5314e819b94de1c161a2b393c6623915d5481f67f24f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variant2b357eb71f78282d35d166f71063dd5121cae208b31ba6e5533a067dee7476d0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b357eb71f78282d35d166f71063dd5121cae208b31ba6e5533a067dee7476d0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Functor.Variant2b357eb71f78282d35d166f71063dd5121cae208b31ba6e5533a067dee7476d0","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"2b357eb71f78282d35d166f71063dd5121cae208b31ba6e5533a067dee7476d0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Monoidal/Internal/Types/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Category.MonCat.Basic
import Mathlib.CategoryTheory.Monoidal.CommMon_
import Mathlib.CategoryTheory.Monoidal.Types.Basic

/-!
# `Mon_ (Type u) ≌ MonCat.{u}`

The category of internal monoid objects in `Type`
is equivalent to the category of "native" bundled monoids.

Moreover, this equivalence is compatible with the forgetful functors to `Type`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variant2b357eb71f78282d35d166f71063dd5121cae208b31ba6e5533a067dee7476d0

assert_not_exists MonoidWithZero

universe v u

open CategoryTheory

namespace MonTypeEquivalenceMon

instance monMonoid (A : Mon_ (Type u)) : Monoid A.X where
  one := A.one PUnit.unit
  mul x y := A.mul (x, y)
  one_mul x := by convert congr_fun A.one_mul (PUnit.unit, x)
  mul_one x := by convert congr_fun A.mul_one (x, PUnit.unit)
  mul_assoc x y z := by convert congr_fun A.mul_assoc ((x, y), z)

/-- Converting a monoid object in `Type` to a bundled monoid.
-/
noncomputable def functor : Mon_ (Type u) ⥤ MonCat.{u} where
  obj A := MonCat.of A.X
  map f := MonCat.ofHom
    { toFun := f.hom
      map_one' := congr_fun f.one_hom PUnit.unit
      map_mul' := fun x y => congr_fun f.mul_hom (x, y) }

/-- Converting a bundled monoid to a monoid object in `Type`.
-/
noncomputable def inverse : MonCat.{u} ⥤ Mon_ (Type u) where
  obj A :=
    { X := A
      one := fun _ => 1
      mul := fun p => p.1 * p.2
      one_mul := by ext ⟨_, _⟩; dsimp; simp
      mul_one := by ext ⟨_, _⟩; dsimp; simp
      mul_assoc := by ext ⟨⟨x, y⟩, z⟩; simp [mul_assoc] }
  map f := { hom := f }

end MonTypeEquivalenceMon

open MonTypeEquivalenceMon

/-- The category of internal monoid objects in `Type`
is equivalent to the category of "native" bundled monoids.
-/
noncomputable def monTypeEquivalenceMon : Mon_ (Type u) ≌ MonCat.{u} where
  functor := functor
  inverse := inverse
  unitIso := Iso.refl _
  counitIso := NatIso.ofComponents
    (fun A => MulEquiv.toMonCatIso { Equiv.refl _ with map_mul' := fun _ _ => rfl })
    (by aesop_cat)

/-- The equivalence `Mon_ (Type u) ≌ MonCat.{u}`
is naturally compatible with the forgetful functors to `Type u`.
-/
noncomputable def monTypeEquivalenceMonForget :
    MonTypeEquivalenceMon.functor ⋙ forget MonCat ≅ Mon_.forget (Type u) :=
  NatIso.ofComponents (fun _ => Iso.refl _) (by aesop_cat)

noncomputable instance monTypeInhabited : Inhabited (Mon_ (Type u)) :=
  ⟨MonTypeEquivalenceMon.inverse.obj (MonCat.of PUnit)⟩

namespace CommMonTypeEquivalenceCommMon

instance commMonCommMonoid (A : CommMon_ (Type u)) : CommMonoid A.X :=
  { MonTypeEquivalenceMon.monMonoid A.toMon_ with
    mul_comm := fun x y => by convert congr_fun A.mul_comm (y, x) }

/-- Converting a commutative monoid object in `Type` to a bundled commutative monoid.
-/
noncomputable def functor : CommMon_ (Type u) ⥤ CommMonCat.{u} where
  obj A := CommMonCat.of A.X
  map f := CommMonCat.ofHom (MonTypeEquivalenceMon.functor.map f).hom

/-- Converting a bundled commutative monoid to a commutative monoid object in `Type`.
-/
noncomputable def inverse : CommMonCat.{u} ⥤ CommMon_ (Type u) where
  obj A :=
    { MonTypeEquivalenceMon.inverse.obj ((forget₂ CommMonCat MonCat).obj A) with
      mul_comm := by
        ext ⟨x : A, y : A⟩
        exact CommMonoid.mul_comm y x }
  map f := MonTypeEquivalenceMon.inverse.map ((forget₂ CommMonCat MonCat).map f)

end CommMonTypeEquivalenceCommMon

open CommMonTypeEquivalenceCommMon

/-- The category of internal commutative monoid objects in `Type`
is equivalent to the category of "native" bundled commutative monoids.
-/
noncomputable def commMonTypeEquivalenceCommMon : CommMon_ (Type u) ≌ CommMonCat.{u} where
  functor := functor
  inverse := inverse
  unitIso := Iso.refl _
  counitIso := NatIso.ofComponents
    (fun A => MulEquiv.toCommMonCatIso { Equiv.refl _ with map_mul' := fun _ _ => rfl })
    (by aesop_cat)

/-- The equivalences `Mon_ (Type u) ≌ MonCat.{u}` and `CommMon_ (Type u) ≌ CommMonCat.{u}`
are naturally compatible with the forgetful functors to `MonCat` and `Mon_ (Type u)`.
-/
noncomputable def commMonTypeEquivalenceCommMonForget :
    CommMonTypeEquivalenceCommMon.functor ⋙ forget₂ CommMonCat MonCat ≅
      CommMon_.forget₂Mon_ (Type u) ⋙ MonTypeEquivalenceMon.functor :=
  Iso.refl _
```
