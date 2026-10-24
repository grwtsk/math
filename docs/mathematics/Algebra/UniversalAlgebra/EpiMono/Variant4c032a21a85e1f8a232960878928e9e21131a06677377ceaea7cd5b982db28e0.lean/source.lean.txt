-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.EpiOfSurjective.Variant58f830dc4435dab9bf0571143ee2a6adc92aef87657f5d26d16205d9919a7a31","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"58f830dc4435dab9bf0571143ee2a6adc92aef87657f5d26d16205d9919a7a31","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.EpiOfSurjective.Variant58f830dc4435dab9bf0571143ee2a6adc92aef87657f5d26d16205d9919a7a31","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"58f830dc4435dab9bf0571143ee2a6adc92aef87657f5d26d16205d9919a7a31","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/ModuleCat/Presheaf/EpiMono.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/

import Mathlib.Algebra.Category.ModuleCat.Presheaf.Colimits
import Mathlib.Algebra.Category.ModuleCat.Presheaf.Limits

/-!
# Epimorphisms and monomorphisms in the category of presheaves of modules

In this file, we give characterizations of epimorphisms and monomorphisms
in the category of presheaves of modules.

-/


namespace GRWTSK.Algebra.UniversalAlgebra.EpiOfSurjective.Variant58f830dc4435dab9bf0571143ee2a6adc92aef87657f5d26d16205d9919a7a31

universe v v₁ u₁ u

open CategoryTheory

namespace PresheafOfModules

variable {C : Type u₁} [Category.{v₁} C] {R : Cᵒᵖ ⥤ RingCat.{u}}
  {M₁ M₂ : PresheafOfModules.{v} R} {f : M₁ ⟶ M₂}

lemma epi_of_surjective (hf : ∀ ⦃X : Cᵒᵖ⦄, Function.Surjective (f.app X)) : Epi f where
  left_cancellation g₁ g₂ hg := by
    ext X m₂
    obtain ⟨m₁, rfl⟩ := hf m₂
    exact congr_fun ((evaluation R X ⋙ forget _).congr_map hg) m₁

lemma mono_of_injective (hf : ∀ ⦃X : Cᵒᵖ⦄, Function.Injective (f.app X)) : Mono f where
  right_cancellation {M} g₁ g₂ hg := by
    ext X m
    exact hf (congr_fun ((evaluation R X ⋙ forget _).congr_map hg) m)

variable (f)

instance [Epi f] (X : Cᵒᵖ) : Epi (f.app X) :=
  inferInstanceAs (Epi ((evaluation R X).map f))

instance [Mono f] (X : Cᵒᵖ) : Mono (f.app X) :=
  inferInstanceAs (Mono ((evaluation R X).map f))

lemma surjective_of_epi [Epi f] (X : Cᵒᵖ) :
    Function.Surjective (f.app X) := by
  rw [← ModuleCat.epi_iff_surjective]
  infer_instance

lemma injective_of_mono [Mono f] (X : Cᵒᵖ) :
    Function.Injective (f.app X) := by
  rw [← ModuleCat.mono_iff_injective]
  infer_instance

lemma epi_iff_surjective :
    Epi f ↔ ∀ ⦃X : Cᵒᵖ⦄, Function.Surjective (f.app X) :=
  ⟨fun _ ↦ surjective_of_epi f, epi_of_surjective⟩

lemma mono_iff_surjective :
    Mono f ↔ ∀ ⦃X : Cᵒᵖ⦄, Function.Injective (f.app X) :=
  ⟨fun _ ↦ injective_of_mono f, mono_of_injective⟩

end PresheafOfModules
