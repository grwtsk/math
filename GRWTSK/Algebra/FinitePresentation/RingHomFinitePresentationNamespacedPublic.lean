-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.FinitePresentationStableUnderComposition.Varianteb7af8b34d1937aab4fc2e6624921deb157f2972596f47b83d2d003133ce2d05","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eb7af8b34d1937aab4fc2e6624921deb157f2972596f47b83d2d003133ce2d05","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.FinitePresentationStableUnderComposition.Varianteb7af8b34d1937aab4fc2e6624921deb157f2972596f47b83d2d003133ce2d05","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"eb7af8b34d1937aab4fc2e6624921deb157f2972596f47b83d2d003133ce2d05","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/RingHom/FinitePresentation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
module

public import Mathlib.RingTheory.Localization.Finiteness
public import Mathlib.RingTheory.Localization.Away.AdjoinRoot
public import Mathlib.RingTheory.Finiteness.FinitePresentationLocal
public import Mathlib.RingTheory.FiniteStability
public import Mathlib.RingTheory.LocalProperties.Basic

/-!

# The meta properties of finitely-presented ring homomorphisms.

The main result is `RingHom.finitePresentation_isLocal`.

-/


namespace GRWTSK.Algebra.FinitePresentationStableUnderComposition.Varianteb7af8b34d1937aab4fc2e6624921deb157f2972596f47b83d2d003133ce2d05

public section

open scoped Pointwise TensorProduct

namespace RingHom

/-- Being finitely-presented is stable under composition. -/
theorem finitePresentation_stableUnderComposition : StableUnderComposition @FinitePresentation := by
  introv R hf hg
  exact hg.comp hf

/-- Being finitely-presented respects isomorphisms. -/
theorem finitePresentation_respectsIso : RingHom.RespectsIso @RingHom.FinitePresentation :=
  finitePresentation_stableUnderComposition.respectsIso
    fun e ↦ .of_surjective _ e.surjective <| by simpa using! Submodule.fg_bot

/-- Being finitely-presented is stable under base change. -/
theorem finitePresentation_isStableUnderBaseChange :
    IsStableUnderBaseChange @FinitePresentation := by
  apply IsStableUnderBaseChange.mk
  · exact finitePresentation_respectsIso
  · simp only [finitePresentation_algebraMap]
    intros
    infer_instance

/-- Being finitely-presented is preserved by localizations. -/
theorem finitePresentation_localizationPreserves : LocalizationPreserves @FinitePresentation :=
  finitePresentation_isStableUnderBaseChange.localizationPreserves

/-- If `R` is a ring, then `Rᵣ` is `R`-finitely-presented for any `r : R`. -/
theorem finitePresentation_holdsForLocalizationAway :
    HoldsForLocalizationAway @FinitePresentation := by
  introv R _
  rw [finitePresentation_algebraMap]
  exact IsLocalization.Away.finitePresentation r

/-- Finite-presentation can be checked on a standard covering of the target. -/
theorem finitePresentation_ofLocalizationSpanTarget :
    OfLocalizationSpanTarget @FinitePresentation := by
  introv R hs H
  algebraize [f]
  replace H : ∀ r ∈ s, Algebra.FinitePresentation R (Localization.Away (r : S)) := by
    intro r hr; simp_rw [RingHom.FinitePresentation] at H; convert! H ⟨r, hr⟩; ext
    simp_rw [Algebra.smul_def]; rfl
  exact Algebra.FinitePresentation.of_span_eq_top_target s hs H

/-- Being finitely-presented is a local property of rings. -/
theorem finitePresentation_isLocal : PropertyIsLocal @FinitePresentation :=
  ⟨finitePresentation_localizationPreserves.away,
    finitePresentation_ofLocalizationSpanTarget,
    finitePresentation_ofLocalizationSpanTarget.ofLocalizationSpan
      (finitePresentation_stableUnderComposition.stableUnderCompositionWithLocalizationAway
        finitePresentation_holdsForLocalizationAway).left,
    (finitePresentation_stableUnderComposition.stableUnderCompositionWithLocalizationAway
      finitePresentation_holdsForLocalizationAway).right⟩

end RingHom
