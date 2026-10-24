# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CartesianMonoidal.Variante293339e072f408a0a9bf12cbc09a79a318a196fbf362834e2cbbc32a61c5720

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ddebf93d61bfdd947a1c2b2d206561d5bdce353` · SHA-256 `65e31f42049c8dd4947f2de8b35a5d675245bedcf700aae60b0784c9763e83d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TensorProdIsSheaf.Variant0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.TensorProdIsSheaf.Variant0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Sites/CartesianMonoidal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Robin Carlier. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robin Carlier
-/
import Mathlib.CategoryTheory.Monoidal.Cartesian.FunctorCategory
import Mathlib.CategoryTheory.Sites.Limits

/-!
# Chosen finite products on sheaves

In this file, we put a `CartesianMonoidalCategory` instance on `A`-valued sheaves for a
`GrothendieckTopology` whenever `A` has a `CartesianMonoidalCategory` instance.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TensorProdIsSheaf.Variant0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1

universe v₁ v₂ u₁ u₂

namespace CategoryTheory

open Opposite Category Limits Sieve MonoidalCategory CartesianMonoidalCategory

variable {C : Type u₁} [Category.{v₁} C]
variable {A : Type u₂} [Category.{v₂} A]
variable (J : GrothendieckTopology C)
variable [CartesianMonoidalCategory A]

namespace Sheaf
variable (X Y : Sheaf J A)

lemma tensorProd_isSheaf : Presheaf.IsSheaf J (X.val ⊗ Y.val) := by
  apply isSheaf_of_isLimit (E := (Cones.postcompose (pairComp X Y (sheafToPresheaf J A)).inv).obj
    (BinaryFan.mk (fst X.val Y.val) (snd _ _)))
  exact (IsLimit.postcomposeInvEquiv _ _).invFun
    (tensorProductIsBinaryProduct X.val Y.val)

lemma tensorUnit_isSheaf : Presheaf.IsSheaf J (𝟙_ (Cᵒᵖ ⥤ A)) := by
  apply isSheaf_of_isLimit (E := (Cones.postcompose (Functor.uniqueFromEmpty _).inv).obj
    (asEmptyCone (𝟙_ _)))
  · exact (IsLimit.postcomposeInvEquiv _ _).invFun isTerminalTensorUnit
  · exact .empty _

/-- Any `CartesianMonoidalCategory` on `A` induce a
`CartesianMonoidalCategory` structure on `A`-valued sheaves. -/
noncomputable instance cartesianMonoidalCategory : CartesianMonoidalCategory (Sheaf J A) :=
  .ofChosenFiniteProducts
   ({ cone := asEmptyCone { val := 𝟙_ (Cᵒᵖ ⥤ A), cond := tensorUnit_isSheaf _}
      isLimit.lift f := ⟨toUnit f.pt.val⟩
      isLimit.fac := by rintro _ ⟨⟨⟩⟩
      isLimit.uniq x f h := Sheaf.hom_ext _ _ (toUnit_unique f.val _) })
  fun X Y ↦ {
    cone := BinaryFan.mk
        (P := { val := X.val ⊗ Y.val
                cond := tensorProd_isSheaf J X Y})
        ⟨(fst _ _)⟩ ⟨(snd _ _)⟩
    isLimit.lift f := ⟨lift (BinaryFan.fst f).val (BinaryFan.snd f).val⟩
    isLimit.fac := by rintro s ⟨⟨j⟩⟩ <;> apply Sheaf.hom_ext <;> simp
    isLimit.uniq x f h := by
      apply Sheaf.hom_ext
      apply CartesianMonoidalCategory.hom_ext
      · specialize h ⟨.left⟩
        rw [Sheaf.hom_ext_iff] at h
        simpa using h
      · specialize h ⟨.right⟩
        rw [Sheaf.hom_ext_iff] at h
        simpa using h
  }

@[simp] lemma cartesianMonoidalCategoryFst_val : (fst X Y).val = fst X.val Y.val := rfl
@[simp] lemma cartesianMonoidalCategorySnd_val : (snd X Y).val = snd X.val Y.val := rfl

variable {X Y}
variable {W : Sheaf J A} (f : W ⟶ X) (g : W ⟶ Y)

@[simp] lemma cartesianMonoidalCategoryLift_val : (lift f g).val = lift f.val g.val := rfl
@[simp] lemma cartesianMonoidalCategoryWhiskerLeft_val : (X ◁ f).val = X.val ◁ f.val := rfl
@[simp] lemma cartesianMonoidalCategoryWhiskerRight_val : (f ▷ X).val = f.val ▷ X.val := rfl

end Sheaf

/-- The inclusion from sheaves to presheaves is monoidal with respect to the cartesian monoidal
structures. -/
noncomputable instance sheafToPresheafMonoidal : (sheafToPresheaf J A).Monoidal :=
  Functor.CoreMonoidal.toMonoidal
    { εIso := .refl _
      μIso F G := .refl _ }

open Functor.LaxMonoidal Functor.OplaxMonoidal

@[simp] lemma sheafToPresheaf_ε : ε (sheafToPresheaf J A) = 𝟙 _ := rfl
@[simp] lemma sheafToPresheaf_η : η (sheafToPresheaf J A) = 𝟙 _ := rfl

variable {J}

@[simp] lemma sheafToPresheaf_μ (X Y : Sheaf J A) : μ (sheafToPresheaf J A) X Y = 𝟙 _ := rfl
@[simp] lemma sheafToPresheaf_δ (X Y : Sheaf J A) : δ (sheafToPresheaf J A) X Y = 𝟙 _ := rfl

end CategoryTheory
```
