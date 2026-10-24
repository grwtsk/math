# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monomorphisms.Variant8262379bd2b7e4ed505c93784f1df74decbc66f5979cd3d71a2883dfd4996826

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `716a3432f67658bf2d00077175e95d5e96182e71` · SHA-256 `0110d66c177d2ceebf2402d44900d431bff2c950d7f4b88ce62f9d91dc079000`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Connected.Variantef3dafc9ab245025092d1fafa7a27a7fec3a3243649502aec9c11784965af334","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ef3dafc9ab245025092d1fafa7a27a7fec3a3243649502aec9c11784965af334","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Connected.Variantef3dafc9ab245025092d1fafa7a27a7fec3a3243649502aec9c11784965af334","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ef3dafc9ab245025092d1fafa7a27a7fec3a3243649502aec9c11784965af334","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Types/Monomorphisms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Limits.Connected
public import Mathlib.CategoryTheory.Limits.Types.Filtered
public import Mathlib.CategoryTheory.Limits.Types.Pushouts
public import Mathlib.CategoryTheory.Limits.Types.Coproducts
public import Mathlib.CategoryTheory.MorphismProperty.Limits

/-!
# Stability properties of monomorphisms in `Type`

In this file, we show that in the category `Type u`, monomorphisms
are stable under cobase change, filtered colimits.
After importing `Mathlib/CategoryTheory/MorphismProperty/TransfiniteComposition.lean`,
the fact that monomorphisms are stable under transfinite composition
will also be inferred automatically.

(The stability by retracts holds in any category: it is shown
in the file `Mathlib/CategoryTheory/MorphismProperty/Retract.lean`.)

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Connected.Variantef3dafc9ab245025092d1fafa7a27a7fec3a3243649502aec9c11784965af334

public section

universe v' u' u

namespace CategoryTheory.Types

open MorphismProperty Limits ConcreteCategory

instance : (monomorphisms (Type u)).IsStableUnderCobaseChange where
  of_isPushout {X₁ X₂ X₃ X₄ t l r b} sq ht := by
    simp only [monomorphisms.iff] at ht ⊢
    exact Limits.Types.pushoutCocone_inr_mono_of_isColimit sq.flip.isColimit

set_option backward.defeqAttrib.useBackward true in
instance : MorphismProperty.IsStableUnderFilteredColimits.{v', u'}
    (monomorphisms (Type u)) where
  isStableUnderColimitsOfShape J _ _ := ⟨fun F₁ F₂ c₁ c₂ hc₁ hc₂ f hf φ hφ ↦ by
    simp only [functorCategory, monomorphisms.iff, mono_iff_injective] at hf ⊢
    replace hφ (j : J) := congr_hom (hφ j)
    simp only [Functor.const_obj_obj, comp_apply] at hφ
    intro x₁ y₁ h
    obtain ⟨j, x₁, y₁, rfl, rfl⟩ : ∃ (j : J) (x₁' y₁' : F₁.obj j),
        x₁ = c₁.ι.app j x₁' ∧ y₁ = c₁.ι.app j y₁' := by
      obtain ⟨j, x₁, rfl⟩ := Types.jointly_surjective_of_isColimit hc₁ x₁
      obtain ⟨l, y₁, rfl⟩ := Types.jointly_surjective_of_isColimit hc₁ y₁
      exact ⟨_,  _, _, congr_hom (c₁.w (IsFiltered.leftToMax j l)).symm _,
        congr_hom (c₁.w (IsFiltered.rightToMax j l)).symm _⟩
    simp only [Functor.const_obj_obj, hφ] at h
    obtain ⟨k, α, hk⟩ := (Types.FilteredColimit.isColimit_eq_iff' hc₂ _ _).1 h
    simp only [← NatTrans.naturality_apply] at hk
    rw [← c₁.w α, comp_apply, comp_apply, hf _ hk]⟩

instance (T : Type u') : MorphismProperty.IsStableUnderCoproductsOfShape
    (monomorphisms (Type u)) T :=
  IsStableUnderCoproductsOfShape.mk _ _ (by
    intro X₁ X₂ _ _ f h
    simp only [monomorphisms.iff, mono_iff_injective] at h ⊢
    intro x₁ x₂ hx
    obtain ⟨i₁, x₁, rfl⟩ := Cofan.inj_jointly_surjective_of_isColimit
      (coproductIsCoproduct X₁) x₁
    obtain ⟨i₂, x₂, rfl⟩ := Cofan.inj_jointly_surjective_of_isColimit
      (coproductIsCoproduct X₁) x₂
    simp only [cofan_mk_inj] at hx ⊢
    replace hx : Sigma.ι X₂ i₁ (f i₁ x₁) = Sigma.ι X₂ i₂ (f i₂ x₂) := by
      have h₁ := congr_hom (Sigma.ι_map f i₁) x₁
      have h₂ := congr_hom (Sigma.ι_map f i₂) x₂
      simp only [comp_apply] at h₁ h₂ hx
      simpa [← h₁, ← h₂]
    obtain rfl := Cofan.eq_of_inj_apply_eq_of_isColimit (coproductIsCoproduct X₂) _ _ hx
    obtain rfl := h _ (Cofan.inj_injective_of_isColimit (coproductIsCoproduct X₂) i₁ hx)
    rfl)

instance : MorphismProperty.IsStableUnderCoproducts (monomorphisms (Type u)) where

end CategoryTheory.Types
```
