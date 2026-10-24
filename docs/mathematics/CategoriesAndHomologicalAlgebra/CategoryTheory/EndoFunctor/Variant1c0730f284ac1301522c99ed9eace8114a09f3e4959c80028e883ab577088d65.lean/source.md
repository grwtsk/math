# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EndoFunctor.Variant1c0730f284ac1301522c99ed9eace8114a09f3e4959c80028e883ab577088d65

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4aa2eb8da5adb77a426a834d31fe5ac352e3312c` · SHA-256 `e2da0c0e72fa0d15dc9b2913e167b8c195bef31b1de1c5a2fcdcdfd2d42ce4a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preadditive.Variant4a53942fa96bbf2f952d0a08a0c335e89da5a280d8f315d41c29ed11600fa469","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4a53942fa96bbf2f952d0a08a0c335e89da5a280d8f315d41c29ed11600fa469","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Preadditive.Variant4a53942fa96bbf2f952d0a08a0c335e89da5a280d8f315d41c29ed11600fa469","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"4a53942fa96bbf2f952d0a08a0c335e89da5a280d8f315d41c29ed11600fa469","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Preadditive/EndoFunctor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Julian Kuelshammer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julian Kuelshammer
-/
import Mathlib.CategoryTheory.Preadditive.Basic
import Mathlib.CategoryTheory.Endofunctor.Algebra
import Mathlib.CategoryTheory.Preadditive.AdditiveFunctor

/-!
# Preadditive structure on algebras over a monad

If `C` is a preadditive category and `F` is an additive endofunctor on `C` then `Algebra F` is
also preadditive. Dually, the category `Coalgebra F` is also preadditive.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preadditive.Variant4a53942fa96bbf2f952d0a08a0c335e89da5a280d8f315d41c29ed11600fa469

universe v₁ u₁

-- morphism levels before object levels. See note [category_theory universes].
namespace CategoryTheory

variable (C : Type u₁) [Category.{v₁} C] [Preadditive C] (F : C ⥤ C) [Functor.Additive (F : C ⥤ C)]

open CategoryTheory.Limits Preadditive

/-- The category of algebras over an additive endofunctor on a preadditive category is preadditive.
-/
@[simps]
instance Endofunctor.algebraPreadditive : Preadditive (Endofunctor.Algebra F) where
  homGroup A₁ A₂ :=
    { add := fun α β =>
        { f := α.f + β.f
          h := by simp only [Functor.map_add, add_comp, Endofunctor.Algebra.Hom.h, comp_add] }
      zero :=
        { f := 0
          h := by simp only [Functor.map_zero, zero_comp, comp_zero] }
      nsmul := fun n α =>
        { f := n • α.f
          h := by rw [comp_nsmul, Functor.map_nsmul, nsmul_comp, Endofunctor.Algebra.Hom.h] }
      neg := fun α =>
        { f := -α.f
          h := by simp only [Functor.map_neg, neg_comp, Endofunctor.Algebra.Hom.h, comp_neg] }
      sub := fun α β =>
        { f := α.f - β.f
          h := by simp only [Functor.map_sub, sub_comp, Endofunctor.Algebra.Hom.h, comp_sub] }
      zsmul := fun r α =>
        { f := r • α.f
          h := by rw [comp_zsmul, Functor.map_zsmul, zsmul_comp, Endofunctor.Algebra.Hom.h] }
      add_assoc := by
        intros
        apply Algebra.Hom.ext
        apply add_assoc
      zero_add := by
        intros
        apply Algebra.Hom.ext
        apply zero_add
      add_zero := by
        intros
        apply Algebra.Hom.ext
        apply add_zero
      nsmul_zero := by
        intros
        apply Algebra.Hom.ext
        apply zero_smul
      nsmul_succ := by
        intros
        apply Algebra.Hom.ext
        apply succ_nsmul
      sub_eq_add_neg := by
        intros
        apply Algebra.Hom.ext
        apply sub_eq_add_neg
      zsmul_zero' := by
        intros
        apply Algebra.Hom.ext
        apply zero_smul
      zsmul_succ' := by
        intros
        apply Algebra.Hom.ext
        simp only [natCast_zsmul, succ_nsmul]
        rfl
      zsmul_neg' := by
        intros
        apply Algebra.Hom.ext
        simp only [negSucc_zsmul, neg_inj, ← Nat.cast_smul_eq_nsmul ℤ]
      neg_add_cancel := by
        intros
        apply Algebra.Hom.ext
        apply neg_add_cancel
      add_comm := by
        intros
        apply Algebra.Hom.ext
        apply add_comm }
  add_comp := by
    intros
    apply Algebra.Hom.ext
    apply add_comp
  comp_add := by
    intros
    apply Algebra.Hom.ext
    apply comp_add

instance Algebra.forget_additive : (Endofunctor.Algebra.forget F).Additive where

@[simps]
instance Endofunctor.coalgebraPreadditive : Preadditive (Endofunctor.Coalgebra F) where
  homGroup A₁ A₂ :=
    { add := fun α β =>
        { f := α.f + β.f
          h := by simp only [Functor.map_add, comp_add, Endofunctor.Coalgebra.Hom.h, add_comp] }
      zero :=
        { f := 0
          h := by simp only [Functor.map_zero, zero_comp, comp_zero] }
      nsmul := fun n α =>
        { f := n • α.f
          h := by rw [Functor.map_nsmul, comp_nsmul, Endofunctor.Coalgebra.Hom.h, nsmul_comp] }
      neg := fun α =>
        { f := -α.f
          h := by simp only [Functor.map_neg, comp_neg, Endofunctor.Coalgebra.Hom.h, neg_comp] }
      sub := fun α β =>
        { f := α.f - β.f
          h := by simp only [Functor.map_sub, comp_sub, Endofunctor.Coalgebra.Hom.h, sub_comp] }
      zsmul := fun r α =>
        { f := r • α.f
          h := by rw [Functor.map_zsmul, comp_zsmul, Endofunctor.Coalgebra.Hom.h, zsmul_comp] }
      add_assoc := by
        intros
        apply Coalgebra.Hom.ext
        apply add_assoc
      zero_add := by
        intros
        apply Coalgebra.Hom.ext
        apply zero_add
      add_zero := by
        intros
        apply Coalgebra.Hom.ext
        apply add_zero
      nsmul_zero := by
        intros
        apply Coalgebra.Hom.ext
        apply zero_smul
      nsmul_succ := by
        intros
        apply Coalgebra.Hom.ext
        apply succ_nsmul
      sub_eq_add_neg := by
        intros
        apply Coalgebra.Hom.ext
        apply sub_eq_add_neg
      zsmul_zero' := by
        intros
        apply Coalgebra.Hom.ext
        apply zero_smul
      zsmul_succ' := by
        intros
        apply Coalgebra.Hom.ext
        simp only [natCast_zsmul, succ_nsmul]
        rfl
      zsmul_neg' := by
        intros
        apply Coalgebra.Hom.ext
        simp only [negSucc_zsmul, neg_inj, ← Nat.cast_smul_eq_nsmul ℤ]
      neg_add_cancel := by
        intros
        apply Coalgebra.Hom.ext
        apply neg_add_cancel
      add_comm := by
        intros
        apply Coalgebra.Hom.ext
        apply add_comm }
  add_comp := by
    intros
    apply Coalgebra.Hom.ext
    apply add_comp
  comp_add := by
    intros
    apply Coalgebra.Hom.ext
    apply comp_add

instance Coalgebra.forget_additive : (Endofunctor.Coalgebra.forget F).Additive where

end CategoryTheory
```
