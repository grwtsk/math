# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CartesianMonoidal.Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `add6afb09405b46dad43d897daa65ee1f092130e` · SHA-256 `75a904631a76ab11cd76684b16dd75c08b29e934c6ce2babeab0901e5f17b84a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BinaryProductLimitCone.Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.BinaryProductLimitCone.Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/Grp/CartesianMonoidal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.Algebra.Category.Grp.Biproducts
import Mathlib.Algebra.Category.Grp.Zero
import Mathlib.CategoryTheory.Monoidal.Types.Basic

/-!
# Chosen finite products in `Grp` and friends
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BinaryProductLimitCone.Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e

open CategoryTheory Limits MonoidalCategory

universe u

namespace Grp

/-- Construct limit data for a binary product in `Grp`, using `Grp.of (G × H)` -/
@[simps! cone_pt isLimit_lift]
def binaryProductLimitCone (G H : Grp.{u}) : LimitCone (pair G H) where
  cone := BinaryFan.mk (ofHom (MonoidHom.fst G H)) (ofHom (MonoidHom.snd G H))
  isLimit := BinaryFan.IsLimit.mk _ (fun l r => ofHom (MonoidHom.prod l.hom r.hom))
    (fun _ _ => rfl) (fun _ _ => rfl) (by aesop_cat)

/-- We choose `Grp.of (G × H)` as the product of `G` and `H` and `Grp.of PUnit` as
the terminal object. -/
noncomputable instance cartesianMonoidalCategoryGrp : CartesianMonoidalCategory Grp.{u} :=
  .ofChosenFiniteProducts ⟨_, (isZero_of_subsingleton (Grp.of PUnit.{u + 1})).isTerminal⟩
    fun G H ↦ binaryProductLimitCone G H

noncomputable instance : BraidedCategory Grp.{u} := .ofCartesianMonoidalCategory

noncomputable instance : (forget Grp.{u}).Braided := .ofChosenFiniteProducts _

theorem tensorObj_eq (G H : Grp.{u}) : (G ⊗ H) = of (G × H) := rfl

@[simp]
theorem μ_forget_apply {G H : Grp.{u}} (p : G) (q : H) :
    Functor.LaxMonoidal.μ (forget Grp.{u}) G H (p, q) = (p, q) := by
  apply Prod.ext
  · exact congrFun (Functor.Monoidal.μ_fst (forget Grp.{u}) G H) (p, q)
  · exact congrFun (Functor.Monoidal.μ_snd (forget Grp.{u}) G H) (p, q)

end Grp

namespace AddGrp

/-- Construct limit data for a binary product in `AddGrp`, using `AddGrp.of (G × H)` -/
@[simps! cone_pt isLimit_lift]
def binaryProductLimitCone (G H : AddGrp.{u}) : LimitCone (pair G H) where
  cone := BinaryFan.mk (ofHom (AddMonoidHom.fst G H)) (ofHom (AddMonoidHom.snd G H))
  isLimit := BinaryFan.IsLimit.mk _ (fun l r => ofHom (AddMonoidHom.prod l.hom r.hom))
    (fun _ _ => rfl) (fun _ _ => rfl) (by aesop_cat)

/-- We choose `AddGrp.of (G × H)` as the product of `G` and `H` and `AddGrp.of PUnit` as
the terminal object. -/
noncomputable instance cartesianMonoidalCategoryAddGrp : CartesianMonoidalCategory AddGrp.{u} :=
  .ofChosenFiniteProducts ⟨_, (isZero_of_subsingleton (AddGrp.of PUnit.{u + 1})).isTerminal⟩
    fun G H ↦ binaryProductLimitCone G H

noncomputable instance : BraidedCategory AddGrp.{u} := .ofCartesianMonoidalCategory

noncomputable instance : (forget AddGrp.{u}).Braided := .ofChosenFiniteProducts _

theorem tensorObj_eq (G H : AddGrp.{u}) : (G ⊗ H) = of (G × H) := rfl

@[simp]
theorem μ_forget_apply {G H : AddGrp.{u}} (p : G) (q : H) :
    Functor.LaxMonoidal.μ (forget AddGrp.{u}) G H (p, q) = (p, q) := by
  apply Prod.ext
  · exact congrFun (Functor.Monoidal.μ_fst (forget AddGrp.{u}) G H) (p, q)
  · exact congrFun (Functor.Monoidal.μ_snd (forget AddGrp.{u}) G H) (p, q)

end AddGrp

namespace CommGrp

/-- Construct limit data for a binary product in `CommGrp`, using `CommGrp.of (G × H)` -/
@[simps! cone_pt isLimit_lift]
def binaryProductLimitCone (G H : CommGrp.{u}) : LimitCone (pair G H) where
  cone := BinaryFan.mk (ofHom (MonoidHom.fst G H)) (ofHom (MonoidHom.snd G H))
  isLimit := BinaryFan.IsLimit.mk _ (fun l r => ofHom (MonoidHom.prod l.hom r.hom))
    (fun _ _ => rfl) (fun _ _ => rfl) (by aesop_cat)

/-- We choose `CommGrp.of (G × H)` as the product of `G` and `H` and `CommGrp.of PUnit` as
the terminal object. -/
noncomputable instance cartesianMonoidalCategoryCommGrp : CartesianMonoidalCategory CommGrp.{u} :=
  .ofChosenFiniteProducts ⟨_, (isZero_of_subsingleton (CommGrp.of PUnit.{u + 1})).isTerminal⟩
    fun G H ↦ binaryProductLimitCone G H

noncomputable instance : BraidedCategory CommGrp.{u} := .ofCartesianMonoidalCategory

noncomputable instance : (forget CommGrp.{u}).Braided := .ofChosenFiniteProducts _

theorem tensorObj_eq (G H : CommGrp.{u}) : (G ⊗ H) = of (G × H) := rfl

@[simp]
theorem μ_forget_apply {G H : CommGrp.{u}} (p : G) (q : H) :
    Functor.LaxMonoidal.μ (forget CommGrp.{u}) G H (p, q) = (p, q) := by
  apply Prod.ext
  · exact congrFun (Functor.Monoidal.μ_fst (forget CommGrp.{u}) G H) (p, q)
  · exact congrFun (Functor.Monoidal.μ_snd (forget CommGrp.{u}) G H) (p, q)

end CommGrp

namespace AddCommGrp

/-- We choose `AddCommGrp.of (G × H)` as the product of `G` and `H` and `AddGrp.of PUnit` as
the terminal object. -/
noncomputable def cartesianMonoidalCategoryAddCommGrp : CartesianMonoidalCategory AddCommGrp.{u} :=
  .ofChosenFiniteProducts ⟨_, (isZero_of_subsingleton (AddCommGrp.of PUnit.{u + 1})).isTerminal⟩
    fun G H ↦ binaryProductLimitCone G H

@[deprecated (since := "2025-05-15")]
alias chosenFiniteProductsAddCommGrp := cartesianMonoidalCategoryAddCommGrp

attribute [local instance] cartesianMonoidalCategoryAddCommGrp

noncomputable instance : BraidedCategory AddCommGrp.{u} := .ofCartesianMonoidalCategory

noncomputable instance : (forget AddCommGrp.{u}).Braided := .ofChosenFiniteProducts _

theorem tensorObj_eq (G H : AddCommGrp.{u}) : (G ⊗ H) = of (G × H) := rfl

@[simp]
theorem μ_forget_apply {G H : AddCommGrp.{u}} (p : G) (q : H) :
    Functor.LaxMonoidal.μ (forget AddCommGrp.{u}) G H (p, q) = (p, q) := by
  apply Prod.ext
  · exact congrFun (Functor.Monoidal.μ_fst (forget AddCommGrp.{u}) G H) (p, q)
  · exact congrFun (Functor.Monoidal.μ_snd (forget AddCommGrp.{u}) G H) (p, q)

end AddCommGrp
```
