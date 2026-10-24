# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Biproducts.Variantfe7b3fb3ccf676e4d511ea166df302836c3dfdf1230a106f5de32090514b6c60

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99d0b5ff61e96c3dbb3e2b497c98b9d38a9d2c05` · SHA-256 `9374acd9b8802854b79427506fcfbc3df9959867f44e6529f49e872b4cd92160`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BinaryProductLimitCone.Variantad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.BinaryProductLimitCone.Variantad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Category/GroupCat/Biproducts.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.Algebra.Group.Pi
import Mathlib.Algebra.Category.GroupCat.Preadditive
import Mathlib.CategoryTheory.Preadditive.Biproducts
import Mathlib.Algebra.Category.GroupCat.Limits


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BinaryProductLimitCone.Variantad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08

#align_import algebra.category.Group.biproducts from "leanprover-community/mathlib"@"234ddfeaa5572bc13716dd215c6444410a679a8e"

/-!
# The category of abelian groups has finite biproducts
-/


open CategoryTheory

open CategoryTheory.Limits

open BigOperators

universe w u

namespace AddCommGroupCat
set_option linter.uppercaseLean3 false -- `AddCommGroup`

-- As `AddCommGroupCat` is preadditive, and has all limits, it automatically has biproducts.
instance : HasBinaryBiproducts AddCommGroupCat :=
  HasBinaryBiproducts.of_hasBinaryProducts

instance : HasFiniteBiproducts AddCommGroupCat :=
  HasFiniteBiproducts.of_hasFiniteProducts

-- We now construct explicit limit data,
-- so we can compare the biproducts to the usual unbundled constructions.
/-- Construct limit data for a binary product in `AddCommGroupCat`, using
`AddCommGroupCat.of (G × H)`.
-/
@[simps cone_pt isLimit_lift]
def binaryProductLimitCone (G H : AddCommGroupCat.{u}) : Limits.LimitCone (pair G H) where
  cone :=
    { pt := AddCommGroupCat.of (G × H)
      π :=
        { app := fun j =>
            Discrete.casesOn j fun j =>
              WalkingPair.casesOn j (AddMonoidHom.fst G H) (AddMonoidHom.snd G H)
          naturality := by rintro ⟨⟨⟩⟩ ⟨⟨⟩⟩ ⟨⟨⟨⟩⟩⟩ <;> rfl } }
  isLimit :=
    { lift := fun s => AddMonoidHom.prod (s.π.app ⟨WalkingPair.left⟩) (s.π.app ⟨WalkingPair.right⟩)
      fac := by rintro s (⟨⟩ | ⟨⟩) <;> rfl
      uniq := fun s m w => by
        simp_rw [← w ⟨WalkingPair.left⟩, ← w ⟨WalkingPair.right⟩]
        rfl }
#align AddCommGroup.binary_product_limit_cone AddCommGroupCat.binaryProductLimitCone

@[simp]
theorem binaryProductLimitCone_cone_π_app_left (G H : AddCommGroupCat.{u}) :
    (binaryProductLimitCone G H).cone.π.app ⟨WalkingPair.left⟩ = AddMonoidHom.fst G H :=
  rfl
#align AddCommGroup.binary_product_limit_cone_cone_π_app_left AddCommGroupCat.binaryProductLimitCone_cone_π_app_left

@[simp]
theorem binaryProductLimitCone_cone_π_app_right (G H : AddCommGroupCat.{u}) :
    (binaryProductLimitCone G H).cone.π.app ⟨WalkingPair.right⟩ = AddMonoidHom.snd G H :=
  rfl
#align AddCommGroup.binary_product_limit_cone_cone_π_app_right AddCommGroupCat.binaryProductLimitCone_cone_π_app_right

/-- We verify that the biproduct in `AddCommGroupCat` is isomorphic to
the cartesian product of the underlying types:
-/
@[simps! hom_apply]
noncomputable def biprodIsoProd (G H : AddCommGroupCat.{u}) :
    (G ⊞ H : AddCommGroupCat) ≅ AddCommGroupCat.of (G × H) :=
  IsLimit.conePointUniqueUpToIso (BinaryBiproduct.isLimit G H) (binaryProductLimitCone G H).isLimit
#align AddCommGroup.biprod_iso_prod AddCommGroupCat.biprodIsoProd

@[simp, elementwise]
theorem biprodIsoProd_inv_comp_fst (G H : AddCommGroupCat.{u}) :
    (biprodIsoProd G H).inv ≫ biprod.fst = AddMonoidHom.fst G H :=
  IsLimit.conePointUniqueUpToIso_inv_comp _ _ (Discrete.mk WalkingPair.left)
#align AddCommGroup.biprod_iso_prod_inv_comp_fst AddCommGroupCat.biprodIsoProd_inv_comp_fst

@[simp, elementwise]
theorem biprodIsoProd_inv_comp_snd (G H : AddCommGroupCat.{u}) :
    (biprodIsoProd G H).inv ≫ biprod.snd = AddMonoidHom.snd G H :=
  IsLimit.conePointUniqueUpToIso_inv_comp _ _ (Discrete.mk WalkingPair.right)
#align AddCommGroup.biprod_iso_prod_inv_comp_snd AddCommGroupCat.biprodIsoProd_inv_comp_snd

namespace HasLimit

variable {J : Type w} (f : J → AddCommGroupCat.{max w u})

/-- The map from an arbitrary cone over an indexed family of abelian groups
to the cartesian product of those groups.
-/
@[simps]
def lift (s : Fan f) : s.pt ⟶ AddCommGroupCat.of (∀ j, f j) where
  toFun x j := s.π.app ⟨j⟩ x
  map_zero' := by
    simp only [Functor.const_obj_obj, map_zero]
    rfl
  map_add' x y := by
    simp only [Functor.const_obj_obj, map_add]
    rfl
#align AddCommGroup.has_limit.lift AddCommGroupCat.HasLimit.lift

/-- Construct limit data for a product in `AddCommGroupCat`, using
`AddCommGroupCat.of (∀ j, F.obj j)`.
-/
@[simps]
def productLimitCone : Limits.LimitCone (Discrete.functor f) where
  cone :=
    { pt := AddCommGroupCat.of (∀ j, f j)
      π := Discrete.natTrans fun j => Pi.evalAddMonoidHom (fun j => f j) j.as }
  isLimit :=
    { lift := lift.{_, u} f
      fac := fun s j => rfl
      uniq := fun s m w => by
        ext x
        funext j
        exact congr_arg (fun g : s.pt ⟶ f j => (g : s.pt → f j) x) (w ⟨j⟩) }
#align AddCommGroup.has_limit.product_limit_cone AddCommGroupCat.HasLimit.productLimitCone

end HasLimit

open HasLimit

variable {J : Type} [Fintype J]

/-- We verify that the biproduct we've just defined is isomorphic to the `AddCommGroupCat` structure
on the dependent function type.
-/
@[simps! hom_apply]
noncomputable def biproductIsoPi (f : J → AddCommGroupCat.{u}) :
    (⨁ f : AddCommGroupCat) ≅ AddCommGroupCat.of (∀ j, f j) :=
  IsLimit.conePointUniqueUpToIso (biproduct.isLimit f) (productLimitCone f).isLimit
#align AddCommGroup.biproduct_iso_pi AddCommGroupCat.biproductIsoPi

@[simp, elementwise]
theorem biproductIsoPi_inv_comp_π (f : J → AddCommGroupCat.{u}) (j : J) :
    (biproductIsoPi f).inv ≫ biproduct.π f j = Pi.evalAddMonoidHom (fun j => f j) j :=
  IsLimit.conePointUniqueUpToIso_inv_comp _ _ (Discrete.mk j)
#align AddCommGroup.biproduct_iso_pi_inv_comp_π AddCommGroupCat.biproductIsoPi_inv_comp_π

end AddCommGroupCat
```
