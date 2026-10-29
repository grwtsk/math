-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EffectiveEpiStructOfRegularEpi.Variantde7e07f540f0d49201ca679b94e8c766e9792cab32ea0718774fd500aa16da46","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"de7e07f540f0d49201ca679b94e8c766e9792cab32ea0718774fd500aa16da46","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.EffectiveEpiStructOfRegularEpi.Variantde7e07f540f0d49201ca679b94e8c766e9792cab32ea0718774fd500aa16da46","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"de7e07f540f0d49201ca679b94e8c766e9792cab32ea0718774fd500aa16da46","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/EffectiveEpi/RegularEpi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Limits.Shapes.RegularMono
import Mathlib.CategoryTheory.EffectiveEpi.Basic
/-!

# The relationship between effective and regular epimorphisms.

This file proves that the notions of regular epi and effective epi are equivalent for morphisms with
kernel pairs, and that regular epi implies effective epi in general.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EffectiveEpiStructOfRegularEpi.Variantde7e07f540f0d49201ca679b94e8c766e9792cab32ea0718774fd500aa16da46

namespace CategoryTheory

open Limits RegularEpi

variable {C : Type*} [Category C]

/-- The data of an `EffectiveEpi` structure on a `RegularEpi`. -/
def effectiveEpiStructOfRegularEpi {B X : C} (f : X ⟶ B) [RegularEpi f] :
    EffectiveEpiStruct f where
  desc _ h := Cofork.IsColimit.desc isColimit _ (h _ _ w)
  fac _ _ := Cofork.IsColimit.π_desc' isColimit _ _
  uniq _ _ _ hg := Cofork.IsColimit.hom_ext isColimit (hg.trans
    (Cofork.IsColimit.π_desc' _ _ _).symm)

instance {B X : C} (f : X ⟶ B) [RegularEpi f] : EffectiveEpi f :=
  ⟨⟨effectiveEpiStructOfRegularEpi f⟩⟩

/-- A morphism which is a coequalizer for its kernel pair is an effective epi. -/
theorem effectiveEpiOfKernelPair {B X : C} (f : X ⟶ B) [HasPullback f f]
    (hc : IsColimit (Cofork.ofπ f pullback.condition)) : EffectiveEpi f :=
  let _ := regularEpiOfKernelPair f hc
  inferInstance

/-- An effective epi which has a kernel pair is a regular epi. -/
noncomputable instance regularEpiOfEffectiveEpi {B X : C} (f : X ⟶ B) [HasPullback f f]
    [EffectiveEpi f] : RegularEpi f where
  W := pullback f f
  left := pullback.fst f f
  right := pullback.snd f f
  w := pullback.condition
  isColimit := {
    desc := fun s ↦ EffectiveEpi.desc f (s.ι.app WalkingParallelPair.one) fun g₁ g₂ hg ↦ (by
      simp only [Cofork.app_one_eq_π]
      rw [← pullback.lift_snd g₁ g₂ hg, Category.assoc, ← Cofork.app_zero_eq_comp_π_right]
      simp)
    fac := by
      intro s j
      have := EffectiveEpi.fac f (s.ι.app WalkingParallelPair.one) fun g₁ g₂ hg ↦ (by
          simp only [Cofork.app_one_eq_π]
          rw [← pullback.lift_snd g₁ g₂ hg, Category.assoc, ← Cofork.app_zero_eq_comp_π_right]
          simp)
      simp only [Functor.const_obj_obj, Cofork.app_one_eq_π] at this
      cases j with
      | zero => simp [this]
      | one => simp [this]
    uniq := fun _ _ h ↦ EffectiveEpi.uniq f _ _ _ (h WalkingParallelPair.one) }

end CategoryTheory
