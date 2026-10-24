# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Grp.Variant9c803929550c9955db57a803b8dc0b90389bee532fe86e7daf4224f585cd9b22

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f9f6ca74bdf0437e5eed1064698a3836c36a7c0` · SHA-256 `b6a53ed5957928af6702ce5eb8cdf5c52d876d371281800bdb975d998f65c434`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variantb51f1a4809f0751abce55483fbe3fd419026742dc2c53643cc0acb38270e6c72","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b51f1a4809f0751abce55483fbe3fd419026742dc2c53643cc0acb38270e6c72","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Functor.Variantb51f1a4809f0751abce55483fbe3fd419026742dc2c53643cc0acb38270e6c72","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"b51f1a4809f0751abce55483fbe3fd419026742dc2c53643cc0acb38270e6c72","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Monoidal/Internal/Types/Grp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

public import Mathlib.CategoryTheory.Monoidal.Internal.Types.Basic
public import Mathlib.CategoryTheory.Monoidal.Grp
public import Mathlib.Algebra.Category.Grp.Basic

/-!
# `Grp (Type u) ≌ GrpCat.{u}`

The category of internal group objects in `Type`
is equivalent to the category of "native" bundled groups.

Moreover, this equivalence is compatible with the forgetful functors to `Type`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variantb51f1a4809f0751abce55483fbe3fd419026742dc2c53643cc0acb38270e6c72

@[expose] public section

assert_not_exists Field

universe v u

open CategoryTheory MonObj

namespace GrpTypeEquivalenceGrp

instance grpGroup (A : Type u) [GrpObj A] : Group A :=
  { MonTypeEquivalenceMon.monMonoid A with
    inv := ι[A]
    inv_mul_cancel a := ConcreteCategory.congr_hom (GrpObj.left_inv A) a }

/-- Converting a group object in `Type u` into a group. -/
noncomputable def functor : Grp (Type u) ⥤ GrpCat.{u} where
  obj A := ↧A.X
  map f := GrpCat.ofHom (MonTypeEquivalenceMon.functor.map f.hom).hom

/-- Converting a group into a group object in `Type u`. -/
noncomputable def inverse : GrpCat.{u} ⥤ Grp (Type u) where
  obj A :=
    { MonTypeEquivalenceMon.inverse.obj ((forget₂ GrpCat MonCat).obj A) with
      grp :=
        { inv := ↾((·⁻¹) : A → A)
          left_inv := by
            ext x
            exact inv_mul_cancel (G := A) x
          right_inv := by
            ext x
            exact mul_inv_cancel (G := A) x } }
  map f := Grp.homMk' (MonTypeEquivalenceMon.inverse.map ((forget₂ GrpCat MonCat).map f))

end GrpTypeEquivalenceGrp

/-- The category of group objects in `Type u` is equivalent to the category of groups. -/
noncomputable def grpTypeEquivalenceGrp : Grp (Type u) ≌ GrpCat.{u} where
  functor := GrpTypeEquivalenceGrp.functor
  inverse := GrpTypeEquivalenceGrp.inverse
  unitIso := Iso.refl _
  counitIso := NatIso.ofComponents
    (fun A => MulEquiv.toGrpIso { Equiv.refl _ with map_mul' := fun _ _ => rfl })
    (by cat_disch)

/-- The equivalences `Mon (Type u) ≌ MonCat.{u}` and `Grp (Type u) ≌ GrpCat.{u}`
are naturally compatible with the forgetful functors to `MonCat` and `Mon (Type u)`.
-/
noncomputable def grpTypeEquivalenceGrpForget :
    GrpTypeEquivalenceGrp.functor ⋙ forget₂ GrpCat MonCat ≅
      Grp.forget₂Mon (Type u) ⋙ MonTypeEquivalenceMon.functor :=
  Iso.refl _
```
