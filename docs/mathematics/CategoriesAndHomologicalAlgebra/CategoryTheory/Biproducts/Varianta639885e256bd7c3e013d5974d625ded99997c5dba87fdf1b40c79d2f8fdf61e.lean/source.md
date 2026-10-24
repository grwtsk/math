# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Biproducts.Varianta639885e256bd7c3e013d5974d625ded99997c5dba87fdf1b40c79d2f8fdf61e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2e6ca675cf5674beb4a9a522c50077733d5d96b` · SHA-256 `68532f99c5048649bb12476e32f319cce81eee0985a4c78ed7228f3f9562b36a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BinaryProductLimitCone.Variant55d1f9a80df38b213d46f229198b6c8b6e56c4605022a3791102d55960356177","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"55d1f9a80df38b213d46f229198b6c8b6e56c4605022a3791102d55960356177","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.BinaryProductLimitCone.Variant55d1f9a80df38b213d46f229198b6c8b6e56c4605022a3791102d55960356177","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"55d1f9a80df38b213d46f229198b6c8b6e56c4605022a3791102d55960356177","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/Grp/Biproducts.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Group.Pi.Lemmas
import Mathlib.Algebra.Category.Grp.Preadditive
import Mathlib.CategoryTheory.Preadditive.Biproducts
import Mathlib.Algebra.Category.Grp.Limits
import Mathlib.Tactic.CategoryTheory.Elementwise

/-!
# The category of abelian groups has finite biproducts
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BinaryProductLimitCone.Variant55d1f9a80df38b213d46f229198b6c8b6e56c4605022a3791102d55960356177

open CategoryTheory

open CategoryTheory.Limits

universe w u

namespace AddCommGrp

-- As `AddCommGrp` is preadditive, and has all limits, it automatically has biproducts.
instance : HasBinaryBiproducts AddCommGrp :=
  HasBinaryBiproducts.of_hasBinaryProducts

instance : HasFiniteBiproducts AddCommGrp :=
  HasFiniteBiproducts.of_hasFiniteProducts

-- We now construct explicit limit data,
-- so we can compare the biproducts to the usual unbundled constructions.
/-- Construct limit data for a binary product in `AddCommGrp`, using
`AddCommGrp.of (G × H)`.
-/
@[simps! cone_pt isLimit_lift]
def binaryProductLimitCone (G H : AddCommGrp.{u}) : Limits.LimitCone (pair G H) where
  cone := BinaryFan.mk (ofHom (AddMonoidHom.fst G H)) (ofHom (AddMonoidHom.snd G H))
  isLimit := BinaryFan.IsLimit.mk _ (fun l r => ofHom (AddMonoidHom.prod l.hom r.hom))
    (fun _ _ => rfl) (fun _ _ => rfl) (by aesop_cat)

@[simp]
theorem binaryProductLimitCone_cone_π_app_left (G H : AddCommGrp.{u}) :
    (binaryProductLimitCone G H).cone.π.app ⟨WalkingPair.left⟩ = ofHom (AddMonoidHom.fst G H) :=
  rfl

@[simp]
theorem binaryProductLimitCone_cone_π_app_right (G H : AddCommGrp.{u}) :
    (binaryProductLimitCone G H).cone.π.app ⟨WalkingPair.right⟩ = ofHom (AddMonoidHom.snd G H) :=
  rfl

/-- We verify that the biproduct in `AddCommGrp` is isomorphic to
the cartesian product of the underlying types:
-/
noncomputable def biprodIsoProd (G H : AddCommGrp.{u}) :
    (G ⊞ H : AddCommGrp) ≅ AddCommGrp.of (G × H) :=
  IsLimit.conePointUniqueUpToIso (BinaryBiproduct.isLimit G H) (binaryProductLimitCone G H).isLimit

@[simp, elementwise]
theorem biprodIsoProd_inv_comp_fst (G H : AddCommGrp.{u}) :
    (biprodIsoProd G H).inv ≫ biprod.fst = ofHom (AddMonoidHom.fst G H) :=
  IsLimit.conePointUniqueUpToIso_inv_comp _ _ (Discrete.mk WalkingPair.left)

@[simp, elementwise]
theorem biprodIsoProd_inv_comp_snd (G H : AddCommGrp.{u}) :
    (biprodIsoProd G H).inv ≫ biprod.snd = ofHom (AddMonoidHom.snd G H) :=
  IsLimit.conePointUniqueUpToIso_inv_comp _ _ (Discrete.mk WalkingPair.right)

namespace HasLimit

variable {J : Type w} (f : J → AddCommGrp.{max w u})

/-- The map from an arbitrary cone over an indexed family of abelian groups
to the cartesian product of those groups.
-/
@[simps!]
def lift (s : Fan f) : s.pt ⟶ AddCommGrp.of (∀ j, f j) :=
  ofHom
  { toFun x j := s.π.app ⟨j⟩ x
    map_zero' := by
      simp only [Functor.const_obj_obj, map_zero]
      rfl
    map_add' x y := by
      simp only [Functor.const_obj_obj, map_add]
      rfl }

/-- Construct limit data for a product in `AddCommGrp`, using
`AddCommGrp.of (∀ j, F.obj j)`.
-/
@[simps]
def productLimitCone : Limits.LimitCone (Discrete.functor f) where
  cone :=
    { pt := AddCommGrp.of (∀ j, f j)
      π := Discrete.natTrans fun j => ofHom <| Pi.evalAddMonoidHom (fun j => f j) j.as }
  isLimit :=
    { lift := lift.{_, u} f
      fac := fun _ _ => rfl
      uniq := fun s m w => by
        ext x j
        exact CategoryTheory.congr_fun (w ⟨j⟩) x }

end HasLimit

open HasLimit

variable {J : Type} [Finite J]

/-- We verify that the biproduct we've just defined is isomorphic to the `AddCommGrp` structure
on the dependent function type.
-/
noncomputable def biproductIsoPi (f : J → AddCommGrp.{u}) :
    (⨁ f : AddCommGrp) ≅ AddCommGrp.of (∀ j, f j) :=
  IsLimit.conePointUniqueUpToIso (biproduct.isLimit f) (productLimitCone f).isLimit

@[simp, elementwise]
theorem biproductIsoPi_inv_comp_π (f : J → AddCommGrp.{u}) (j : J) :
    (biproductIsoPi f).inv ≫ biproduct.π f j = ofHom (Pi.evalAddMonoidHom (fun j => f j) j) :=
  IsLimit.conePointUniqueUpToIso_inv_comp _ _ (Discrete.mk j)

end AddCommGrp
```
