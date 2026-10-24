# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CardinalArrow.Variant64e4bac18dc90e5815a3c9c36e73a2522049058bc7c0691caa27c50b26711745

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `415c127f4dbdd5e45e029a980f7353c0bc31b777` · SHA-256 `e4390b3d87cc60257c31984c73b2f446512130e09bad145e93b5ae14d5bfb8cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ArrowFiniteIff.Variant801b455730d0225da59968d633eec2c3b573946b2adb3e489de29e48b38277c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"801b455730d0225da59968d633eec2c3b573946b2adb3e489de29e48b38277c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ArrowFiniteIff.Variant801b455730d0225da59968d633eec2c3b573946b2adb3e489de29e48b38277c9","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"801b455730d0225da59968d633eec2c3b573946b2adb3e489de29e48b38277c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Comma/CardinalArrow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/

import Mathlib.CategoryTheory.Comma.Arrow
import Mathlib.CategoryTheory.FinCategory.Basic
import Mathlib.CategoryTheory.EssentiallySmall
import Mathlib.Data.Set.Finite.Basic
import Mathlib.SetTheory.Cardinal.HasCardinalLT

/-!
# Cardinal of Arrow

We obtain various results about the cardinality of `Arrow C`. For example,
If `A` is a (small) category, `Arrow C` is finite iff `FinCategory C` holds.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ArrowFiniteIff.Variant801b455730d0225da59968d633eec2c3b573946b2adb3e489de29e48b38277c9

universe w w' v u

namespace CategoryTheory

lemma Arrow.finite_iff (C : Type u) [SmallCategory C] :
    Finite (Arrow C) ↔ Nonempty (FinCategory C) := by
  constructor
  · intro
    refine ⟨?_, fun a b ↦ ?_⟩
    · have := Finite.of_injective (fun (a : C) ↦ Arrow.mk (𝟙 a))
        (fun _ _  ↦ congr_arg Comma.left)
      apply Fintype.ofFinite
    · have := Finite.of_injective (fun (f : a ⟶ b) ↦ Arrow.mk f)
        (fun f g h ↦ by
          change (Arrow.mk f).hom = (Arrow.mk g).hom
          congr)
      apply Fintype.ofFinite
  · rintro ⟨_⟩
    have := Fintype.ofEquiv  _ (Arrow.equivSigma C).symm
    infer_instance

instance Arrow.finite {C : Type u} [SmallCategory C] [FinCategory C] :
    Finite (Arrow C) := by
  rw [Arrow.finite_iff]
  exact ⟨inferInstance⟩

/-- The bijection `Arrow Cᵒᵖ ≃ Arrow C`. -/
def Arrow.opEquiv (C : Type u) [Category.{v} C] : Arrow Cᵒᵖ ≃ Arrow C where
  toFun f := Arrow.mk f.hom.unop
  invFun g := Arrow.mk g.hom.op
  left_inv _ := rfl
  right_inv _ := rfl

@[simp]
lemma hasCardinalLT_arrow_op_iff (C : Type u) [Category.{v} C] (κ : Cardinal.{w}) :
    HasCardinalLT (Arrow Cᵒᵖ) κ ↔ HasCardinalLT (Arrow C) κ :=
  hasCardinalLT_iff_of_equiv (Arrow.opEquiv C) κ

@[simp]
lemma hasCardinalLT_arrow_discrete_iff {X : Type u} (κ : Cardinal.{w}) :
    HasCardinalLT (Arrow (Discrete X)) κ ↔ HasCardinalLT X κ :=
  hasCardinalLT_iff_of_equiv (Arrow.discreteEquiv X) κ

lemma small_of_small_arrow (C : Type u) [Category.{v} C] [Small.{w} (Arrow C)] :
    Small.{w} C :=
  small_of_injective (f := fun X ↦ Arrow.mk (𝟙 X)) (fun _ _ h ↦ congr_arg Comma.left h)

lemma locallySmall_of_small_arrow (C : Type u) [Category.{v} C] [Small.{w} (Arrow C)] :
    LocallySmall.{w} C where
  hom_small X Y :=
    small_of_injective (f := fun f ↦ Arrow.mk f) (fun f g h ↦ by
      change (Arrow.mk f).hom = (Arrow.mk g).hom
      congr)

/-- The bijection `Arrow.{w} (ShrinkHoms C) ≃ Arrow C`. -/
noncomputable def Arrow.shrinkHomsEquiv (C : Type u) [Category.{v} C] [LocallySmall.{w} C] :
    Arrow.{w} (ShrinkHoms C) ≃ Arrow C where
  toFun := (ShrinkHoms.equivalence C).inverse.mapArrow.obj
  invFun := (ShrinkHoms.equivalence C).functor.mapArrow.obj
  left_inv _ := by simp
  right_inv _ := by simp

/-- The bijection `Arrow (Shrink C) ≃ Arrow C`. -/
noncomputable def Arrow.shrinkEquiv (C : Type u) [Category.{v} C] [Small.{w} C] :
    Arrow (Shrink.{w} C) ≃ Arrow C where
  toFun := (Shrink.equivalence C).inverse.mapArrow.obj
  invFun := (Shrink.equivalence C).functor.mapArrow.obj
  left_inv _ := Arrow.ext (Equiv.apply_symm_apply _ _)
      ((Equiv.apply_symm_apply _ _)) (by simp; rfl)
  right_inv _ := Arrow.ext (by simp [Shrink.equivalence])
    (by simp [Shrink.equivalence]) (by simp [Shrink.equivalence])

@[simp]
lemma hasCardinalLT_arrow_shrinkHoms_iff (C : Type u) [Category.{v} C] [LocallySmall.{w'} C]
    (κ : Cardinal.{w}) :
    HasCardinalLT (Arrow.{w'} (ShrinkHoms C)) κ ↔ HasCardinalLT (Arrow C) κ :=
  hasCardinalLT_iff_of_equiv (Arrow.shrinkHomsEquiv C) κ

@[simp]
lemma hasCardinalLT_arrow_shrink_iff (C : Type u) [Category.{v} C] [Small.{w'} C]
    (κ : Cardinal.{w}) :
    HasCardinalLT (Arrow (Shrink.{w'} C)) κ ↔ HasCardinalLT (Arrow C) κ :=
  hasCardinalLT_iff_of_equiv (Arrow.shrinkEquiv C) κ

lemma hasCardinalLT_of_hasCardinalLT_arrow
    {C : Type u} [Category.{v} C] {κ : Cardinal.{w}} (h : HasCardinalLT (Arrow C) κ) :
    HasCardinalLT C κ :=
  h.of_injective (fun X ↦ Arrow.mk (𝟙 X)) (fun _ _ h ↦ congr_arg Comma.left h)

end CategoryTheory
```
