# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasIterationOfShape.Variant1d868ffd6f161cebb8e4981e9f426a6454d0042cb066b025ff294c195b2ca21e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6eb6ed56889f24d63d16dbf05eacc271d7e08b4e` · SHA-256 `ed964733e3646b50ae462292409302e0b691352b9964a1de8fcf3798ca7ec11a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasIterationOfShape.Variant94bc726869c22cfce9fd0b0534281f68c69b2e7a2f487b89e604e664d91c964e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"94bc726869c22cfce9fd0b0534281f68c69b2e7a2f487b89e604e664d91c964e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HasIterationOfShape.Variant94bc726869c22cfce9fd0b0534281f68c69b2e7a2f487b89e604e664d91c964e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"94bc726869c22cfce9fd0b0534281f68c69b2e7a2f487b89e604e664d91c964e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Shapes/Preorder/HasIterationOfShape.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Limits.Comma
import Mathlib.CategoryTheory.Limits.FunctorCategory.Basic
import Mathlib.CategoryTheory.Limits.Shapes.Preorder.Basic
import Mathlib.Order.SuccPred.Limit
import Mathlib.Order.Interval.Set.InitialSeg

/-!
# An assumption for constructions by transfinite induction

In this file, we introduce the typeclass `HasIterationOfShape J C` which is
an assumption in order to do constructions by transfinite induction indexed by
a well-ordered type `J` in a category `C` (see `CategoryTheory.SmallObject`).

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasIterationOfShape.Variant94bc726869c22cfce9fd0b0534281f68c69b2e7a2f487b89e604e664d91c964e

universe w v v' u u'

namespace CategoryTheory.Limits

variable (J : Type w) [LinearOrder J] (C : Type u) [Category.{v} C]
  (K : Type u') [Category.{v'} K]

/-- A category `C` has iterations of shape a linearly ordered type `J`
when certain specific shapes of colimits exists: colimits indexed by `J`,
and by `Set.Iio j` for `j : J`. -/
class HasIterationOfShape : Prop where
  hasColimitsOfShape_of_isSuccLimit (j : J) (hj : Order.IsSuccLimit j) :
    HasColimitsOfShape (Set.Iio j) C := by infer_instance
  hasColimitsOfShape : HasColimitsOfShape J C := by infer_instance

attribute [instance] HasIterationOfShape.hasColimitsOfShape

instance [HasColimitsOfSize.{w, w} C] : HasIterationOfShape J C where

variable [HasIterationOfShape J C]

variable {J} in
lemma hasColimitsOfShape_of_isSuccLimit (j : J)
    (hj : Order.IsSuccLimit j) :
    HasColimitsOfShape (Set.Iio j) C :=
  HasIterationOfShape.hasColimitsOfShape_of_isSuccLimit j hj

variable {J} in
lemma hasColimitsOfShape_of_isSuccLimit'
    {α : Type*} [PartialOrder α] (h : α <i J) (hα : Order.IsSuccLimit h.top) :
    HasColimitsOfShape α C := by
  have := hasColimitsOfShape_of_isSuccLimit C h.top hα
  exact hasColimitsOfShape_of_equivalence h.orderIsoIio.equivalence.symm

instance : HasIterationOfShape J (Arrow C) where
  hasColimitsOfShape_of_isSuccLimit j hj := by
    have := hasColimitsOfShape_of_isSuccLimit C j hj
    infer_instance

instance : HasIterationOfShape J (K ⥤ C) where
  hasColimitsOfShape_of_isSuccLimit j hj := by
    have := hasColimitsOfShape_of_isSuccLimit C j hj
    infer_instance

variable {J} [SuccOrder J] [WellFoundedLT J]

lemma hasColimitsOfShape_of_initialSeg
    {α : Type*} [PartialOrder α] (f : α ≤i J) [Nonempty α] :
    HasColimitsOfShape α C := by
  by_cases hf : Function.Surjective f
  · exact hasColimitsOfShape_of_equivalence
      (OrderIso.ofRelIsoLT (RelIso.ofSurjective f.toRelEmbedding hf)).equivalence.symm
  · let s := f.toPrincipalSeg hf
    obtain ⟨i, hi₀⟩ : ∃ i, i = s.top := ⟨_, rfl⟩
    induction i using SuccOrder.limitRecOn with
    | isMin i hi =>
      subst hi₀
      exact (hi.not_lt (s.lt_top (Classical.arbitrary _))).elim
    | succ i hi _ =>
      obtain ⟨a, rfl⟩ := (s.mem_range_iff_rel (b := i)).2 (by
        simpa only [← hi₀] using Order.lt_succ_of_not_isMax hi)
      have : OrderTop α :=
        { top := a
          le_top b := by
            rw [← s.le_iff_le]
            exact Order.le_of_lt_succ (by simpa only [hi₀] using s.lt_top b) }
      infer_instance
    | isSuccLimit i hi =>
      subst hi₀
      exact hasColimitsOfShape_of_isSuccLimit' C s hi

lemma hasIterationOfShape_of_initialSeg {α : Type*} [LinearOrder α]
    (h : α ≤i J) [Nonempty α] :
    HasIterationOfShape α C where
  hasColimitsOfShape := hasColimitsOfShape_of_initialSeg C h
  hasColimitsOfShape_of_isSuccLimit j hj := by
    have : Nonempty (Set.Iio j) := by
      obtain ⟨a, ha⟩ := not_isMin_iff.1 hj.1
      exact ⟨⟨a, ha⟩⟩
    exact hasColimitsOfShape_of_initialSeg  _
      (InitialSeg.trans (Set.principalSegIio j) h)

instance (j : J) : HasIterationOfShape (Set.Iic j) C :=
  hasIterationOfShape_of_initialSeg C (Set.initialSegIic j)

end CategoryTheory.Limits
```
