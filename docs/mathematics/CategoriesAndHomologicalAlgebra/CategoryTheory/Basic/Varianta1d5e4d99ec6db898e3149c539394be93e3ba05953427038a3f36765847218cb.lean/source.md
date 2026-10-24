# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Varianta1d5e4d99ec6db898e3149c539394be93e3ba05953427038a3f36765847218cb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e22456f1e16bc1b66d3188b089a6bb8bc5bd1f6f` · SHA-256 `3ca185863e1db6a9c96a25d46208040b9e313c1badc7509524b4ecd7f337efc8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variantbd6af4efdfc25ed48b7b0b0a1ed119f04dd06c1cd425ad75e871fccce4d09b60","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bd6af4efdfc25ed48b7b0b0a1ed119f04dd06c1cd425ad75e871fccce4d09b60","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Functor.Variantbd6af4efdfc25ed48b7b0b0a1ed119f04dd06c1cd425ad75e871fccce4d09b60","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"bd6af4efdfc25ed48b7b0b0a1ed119f04dd06c1cd425ad75e871fccce4d09b60","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Monoidal/Internal/Types/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Algebra.Category.MonCat.Basic
public import Mathlib.CategoryTheory.Monoidal.CommMon_
public import Mathlib.CategoryTheory.Monoidal.Types.Basic

/-!
# `Mon Type u ≌ MonCat.{u}`

The category of internal monoid objects in `Type`
is equivalent to the category of "native" bundled monoids.

Moreover, this equivalence is compatible with the forgetful functors to `Type`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variantbd6af4efdfc25ed48b7b0b0a1ed119f04dd06c1cd425ad75e871fccce4d09b60

@[expose] public section

assert_not_exists MonoidWithZero

universe v u

open CategoryTheory MonObj ConcreteCategory

namespace MonTypeEquivalenceMon

instance monMonoid (A : Type u) [MonObj A] : Monoid A where
  one := η[A] PUnit.unit
  mul x y := μ[A] (x, y)
  one_mul x := by convert! congr_hom (CC := fun X ↦ X) (one_mul A) (PUnit.unit, x)
  mul_one x := by convert! congr_hom (CC := fun X ↦ X) (mul_one A) (x, PUnit.unit)
  mul_assoc x y z := by convert! congr_hom (CC := fun X ↦ X) (mul_assoc A) ((x, y), z)

/-- Converting a monoid object in `Type` to a bundled monoid.
-/
noncomputable def functor : Mon (Type u) ⥤ MonCat.{u} where
  obj A := ↧A.X
  map f := MonCat.ofHom
    { toFun := f.hom
      map_one' := congr_hom (IsMonHom.one_hom f.hom) PUnit.unit
      map_mul' x y := congr_hom (CC := fun X ↦ X) (IsMonHom.mul_hom f.hom) (x, y) }

attribute [local simp] types_tensorObj_def types_tensorUnit_def in
/-- Converting a bundled monoid to a monoid object in `Type`.
-/
noncomputable def inverse : MonCat.{u} ⥤ Mon (Type u) where
  obj A :=
    { X := A
      mon :=
        { one := ↾fun _ => 1
          mul := ↾fun p => p.1 * p.2
          one_mul := by cat_disch
          mul_one := by cat_disch
          mul_assoc := by ext ⟨⟨x, y⟩, z⟩; simp [_root_.mul_assoc] } }
  map f := .mk' (↾f)
    (one_f := by
      #adaptation_note /-- Prior to https://github.com/leanprover/lean4/pull/12244
      this argument was provided by the auto_param. -/
      simp +instances only
      cat_disch)
    (mul_f := by
      #adaptation_note /-- Prior to https://github.com/leanprover/lean4/pull/12244
      this argument was provided by the auto_param. -/
      simp +instances only
      cat_disch)

end MonTypeEquivalenceMon

open MonTypeEquivalenceMon

/-- The category of internal monoid objects in `Type`
is equivalent to the category of "native" bundled monoids.
-/
noncomputable def monTypeEquivalenceMon : Mon (Type u) ≌ MonCat.{u} where
  functor := functor
  inverse := inverse
  unitIso := Iso.refl _
  counitIso := NatIso.ofComponents
    (fun A => MulEquiv.toMonCatIso { Equiv.refl _ with map_mul' := fun _ _ => rfl })
    (by cat_disch)

/-- The equivalence `Mon (Type u) ≌ MonCat.{u}`
is naturally compatible with the forgetful functors to `Type u`.
-/
noncomputable def monTypeEquivalenceMonForget :
    MonTypeEquivalenceMon.functor ⋙ forget MonCat ≅ Mon.forget (Type u) :=
  NatIso.ofComponents (fun _ => Iso.refl _) (by cat_disch)

noncomputable instance monTypeInhabited : Inhabited (Mon (Type u)) :=
  ⟨MonTypeEquivalenceMon.inverse.obj ↧PUnit⟩

namespace CommMonTypeEquivalenceCommMon

instance commMonCommMonoid (A : Type u) [MonObj A] [IsCommMonObj A] : CommMonoid A :=
  { MonTypeEquivalenceMon.monMonoid A with
    mul_comm := fun x y => by
      convert! congr_hom (CC := fun X ↦ X) (IsCommMonObj.mul_comm A) (y, x) }

/-- Converting a commutative monoid object in `Type` to a bundled commutative monoid.
-/
noncomputable def functor : CommMon (Type u) ⥤ CommMonCat.{u} where
  obj A := ↧A.X
  map f := CommMonCat.ofHom (MonTypeEquivalenceMon.functor.map f.hom).hom

/-- Converting a bundled commutative monoid to a commutative monoid object in `Type`.
-/
noncomputable def inverse : CommMonCat.{u} ⥤ CommMon (Type u) where
  obj A :=
    { MonTypeEquivalenceMon.inverse.obj ((forget₂ CommMonCat MonCat).obj A) with
      comm :=
        { mul_comm := by
            ext ⟨x : A, y : A⟩
            exact CommMonoid.mul_comm y x } }
  map f := CommMon.homMk (MonTypeEquivalenceMon.inverse.map ((forget₂ CommMonCat MonCat).map f))

end CommMonTypeEquivalenceCommMon

open CommMonTypeEquivalenceCommMon

/-- The category of internal commutative monoid objects in `Type`
is equivalent to the category of "native" bundled commutative monoids.
-/
noncomputable def commMonTypeEquivalenceCommMon : CommMon (Type u) ≌ CommMonCat.{u} where
  functor := functor
  inverse := inverse
  unitIso := Iso.refl _
  counitIso := NatIso.ofComponents
    (fun A => MulEquiv.toCommMonCatIso { Equiv.refl _ with map_mul' := fun _ _ => rfl })
    (by cat_disch)

/-- The equivalences `Mon (Type u) ≌ MonCat.{u}` and `CommMon (Type u) ≌ CommMonCat.{u}`
are naturally compatible with the forgetful functors to `MonCat` and `Mon (Type u)`.
-/
noncomputable def commMonTypeEquivalenceCommMonForget :
    CommMonTypeEquivalenceCommMon.functor ⋙ forget₂ CommMonCat MonCat ≅
      CommMon.forget₂Mon (Type u) ⋙ MonTypeEquivalenceMon.functor :=
  Iso.refl _
```
