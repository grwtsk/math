# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommGrp.Variant5c6ad1cce040cfee5e22734c57ddffcb9adfcdd7f040651d61fb4b1146065f7f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf78cb28a83abc8962394642463be5614ef87308` · SHA-256 `460d498bf74ac37adf227a1e4e3c98c086df48d1035d6d951a0509815f68c00c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variant54dccdff7aef544d35065d1aec8bbef8efa274976ed0068ec46de3ff4c3bc4ba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"54dccdff7aef544d35065d1aec8bbef8efa274976ed0068ec46de3ff4c3bc4ba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Functor.Variant54dccdff7aef544d35065d1aec8bbef8efa274976ed0068ec46de3ff4c3bc4ba","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"54dccdff7aef544d35065d1aec8bbef8efa274976ed0068ec46de3ff4c3bc4ba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Monoidal/Internal/Types/CommGrp_.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Monoidal.Internal.Types.Grp_
import Mathlib.CategoryTheory.Monoidal.CommGrp_

/-!
# `CommGrp_ (Type u) ≌ CommGrp.{u}`

The category of internal commutative group objects in `Type`
is equivalent to the category of "native" bundled commutative groups.

Moreover, this equivalence is compatible with the forgetful functors to `Type`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variant54dccdff7aef544d35065d1aec8bbef8efa274976ed0068ec46de3ff4c3bc4ba

universe v u

open CategoryTheory

namespace CommGrpTypeEquivalenceCommGrp

instance commGrpCommGroup (A : CommGrp_ (Type u)) : CommGroup A.X :=
  { GrpTypeEquivalenceGrp.grpGroup A.toGrp_ with
    mul_comm := fun x y => by convert congr_fun A.mul_comm (y, x) }

/-- Converting a commutative group object in `Type u` into a group. -/
noncomputable def functor : CommGrp_ (Type u) ⥤ CommGrp.{u} where
  obj A := CommGrp.of A.X
  map f := CommGrp.ofHom (GrpTypeEquivalenceGrp.functor.map f).hom

/-- Converting a group into a group object in `Type u`. -/
noncomputable def inverse : CommGrp.{u} ⥤ CommGrp_ (Type u) where
  obj A :=
    { grpTypeEquivalenceGrp.inverse.obj ((forget₂ CommGrp Grp).obj A) with
      mul_comm := by
        ext ⟨x : A, y : A⟩
        exact CommMonoid.mul_comm y x }
  map f := GrpTypeEquivalenceGrp.inverse.map ((forget₂ CommGrp Grp).map f)

@[simp]
theorem inverse_obj_X {A : CommGrp.{u}} : (inverse.obj A).X = A := rfl
@[simp]
theorem inverse_obj_one {A : CommGrp.{u}} {x} : (inverse.obj A).one x = (1 : A) := rfl
@[simp]
theorem inverse_obj_mul {A : CommGrp.{u}} {p} : (inverse.obj A).mul p = (p.1 : A) * p.2 := rfl
@[simp]
theorem inverse_obj_inv {A : CommGrp.{u}} {x} : (inverse.obj A).inv x = (x : A)⁻¹ := rfl

end CommGrpTypeEquivalenceCommGrp

/-- The category of commutative group objects in `Type u` is equivalent to the category of
commutative groups. -/
noncomputable def commGrpTypeEquivalenceCommGrp : CommGrp_ (Type u) ≌ CommGrp.{u} where
  functor := CommGrpTypeEquivalenceCommGrp.functor
  inverse := CommGrpTypeEquivalenceCommGrp.inverse
  unitIso := Iso.refl _
  counitIso := NatIso.ofComponents
    (fun A => MulEquiv.toCommGrpIso { Equiv.refl _ with map_mul' := fun _ _ => rfl })
    (by aesop_cat)

/-- The equivalences `Grp_ (Type u) ≌ Grp.{u}` and `CommGrp_ (Type u) ≌ CommGrp.{u}`
are naturally compatible with the forgetful functors to `Grp` and `Grp_ (Type u)`.
-/
noncomputable def commGrpTypeEquivalenceCommGrpForgetGrp :
    CommGrpTypeEquivalenceCommGrp.functor ⋙ forget₂ CommGrp Grp ≅
      CommGrp_.forget₂Grp_ (Type u) ⋙ GrpTypeEquivalenceGrp.functor :=
  Iso.refl _

/-- The equivalences `CommMon_ (Type u) ≌ CommMonCat.{u}` and `CommGrp_ (Type u) ≌ CommGrp.{u}`
are naturally compatible with the forgetful functors to `Grp` and `Grp_ (Type u)`.
-/
noncomputable def commGrpTypeEquivalenceCommGrpForgetCommMon :
    CommGrpTypeEquivalenceCommGrp.functor ⋙ forget₂ CommGrp CommMonCat ≅
      CommGrp_.forget₂CommMon_ (Type u) ⋙ CommMonTypeEquivalenceCommMon.functor :=
  Iso.refl _
```
