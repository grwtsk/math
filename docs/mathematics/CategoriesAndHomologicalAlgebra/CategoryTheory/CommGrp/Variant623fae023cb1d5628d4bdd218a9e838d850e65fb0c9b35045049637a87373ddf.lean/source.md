# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommGrp.Variant623fae023cb1d5628d4bdd218a9e838d850e65fb0c9b35045049637a87373ddf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b0b58bda69091a9b413e809f60acf537822bf0a` · SHA-256 `09e08f9245df5e08f30b8abc08b9ad8e99b2216fe6d7b6f60cf4da08cb411773`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variantf2d58ead9537a2b9313dba61d88032b48aac4ad60cb952d688775d91fa4c05bd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f2d58ead9537a2b9313dba61d88032b48aac4ad60cb952d688775d91fa4c05bd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Functor.Variantf2d58ead9537a2b9313dba61d88032b48aac4ad60cb952d688775d91fa4c05bd","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"f2d58ead9537a2b9313dba61d88032b48aac4ad60cb952d688775d91fa4c05bd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Monoidal/Internal/Types/CommGrp_.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

public import Mathlib.CategoryTheory.Monoidal.Internal.Types.Grp
public import Mathlib.CategoryTheory.Monoidal.CommGrp_

/-!
# `CommGrp (Type u) ≌ CommGrpCat.{u}`

The category of internal commutative group objects in `Type`
is equivalent to the category of "native" bundled commutative groups.

Moreover, this equivalence is compatible with the forgetful functors to `Type`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variantf2d58ead9537a2b9313dba61d88032b48aac4ad60cb952d688775d91fa4c05bd

@[expose] public section

assert_not_exists Field

universe v u

open CategoryTheory MonObj ConcreteCategory

namespace CommGrpTypeEquivalenceCommGrp

instance commGrpCommGroup (A : Type u) [GrpObj A] [IsCommMonObj A] : CommGroup A :=
  { GrpTypeEquivalenceGrp.grpGroup A with
    mul_comm := fun x y => by
      convert! congr_hom (CC := fun X ↦ X) (IsCommMonObj.mul_comm A) (y, x) }

/-- Converting a commutative group object in `Type u` into a group. -/
noncomputable def functor : CommGrp (Type u) ⥤ CommGrpCat.{u} where
  obj A := ↧A.X
  map f := CommGrpCat.ofHom (GrpTypeEquivalenceGrp.functor.map f.hom).hom

/-- Converting a group into a group object in `Type u`. -/
noncomputable def inverse : CommGrpCat.{u} ⥤ CommGrp (Type u) where
  obj A :=
    { grpTypeEquivalenceGrp.inverse.obj ((forget₂ CommGrpCat GrpCat).obj A) with
      comm :=
        { mul_comm := by
            ext ⟨x : A, y : A⟩
            exact CommMonoid.mul_comm y x } }
  map f := InducedCategory.homMk
    (GrpTypeEquivalenceGrp.inverse.map ((forget₂ CommGrpCat GrpCat).map f))

@[simp]
theorem inverse_obj_X {A : CommGrpCat.{u}} : (inverse.obj A).X = A := rfl

@[simp]
theorem inverse_obj_one {A : CommGrpCat.{u}} {x} : dsimp% η[(inverse.obj A).X] x = (1 : A) := rfl

@[simp]
theorem inverse_obj_mul {A : CommGrpCat.{u}} {p} :
    dsimp% μ[(inverse.obj A).X] p = (p.1 : A) * p.2 :=
  rfl

@[simp]
theorem inverse_obj_inv {A : CommGrpCat.{u}} {x} : dsimp% ι[(inverse.obj A).X] x = (x : A)⁻¹ := rfl

end CommGrpTypeEquivalenceCommGrp

/-- The category of commutative group objects in `Type u` is equivalent to the category of
commutative groups. -/
noncomputable def commGrpTypeEquivalenceCommGrp : CommGrp (Type u) ≌ CommGrpCat.{u} where
  functor := CommGrpTypeEquivalenceCommGrp.functor
  inverse := CommGrpTypeEquivalenceCommGrp.inverse
  unitIso := Iso.refl _
  counitIso := NatIso.ofComponents
    (fun A => MulEquiv.toCommGrpIso { Equiv.refl _ with map_mul' := fun _ _ => rfl })
    (by cat_disch)

/-- The equivalences `Grp (Type u) ≌ GrpCat.{u}` and `CommGrp (Type u) ≌ CommGrpCat.{u}`
are naturally compatible with the forgetful functors to `GrpCat` and `Grp (Type u)`.
-/
noncomputable def commGrpTypeEquivalenceCommGrpForgetGrp :
    CommGrpTypeEquivalenceCommGrp.functor ⋙ forget₂ CommGrpCat GrpCat ≅
      CommGrp.forget₂Grp (Type u) ⋙ GrpTypeEquivalenceGrp.functor :=
  Iso.refl _

/-- The equivalences `CommMon (Type u) ≌ CommMonCat.{u}` and `CommGrp (Type u) ≌ CommGrpCat.{u}`
are naturally compatible with the forgetful functors to `GrpCat` and `Grp (Type u)`.
-/
noncomputable def commGrpTypeEquivalenceCommGrpForgetCommMon :
    CommGrpTypeEquivalenceCommGrp.functor ⋙ forget₂ CommGrpCat CommMonCat ≅
      CommGrp.forget₂CommMon (Type u) ⋙ CommMonTypeEquivalenceCommMon.functor :=
  Iso.refl _
```
