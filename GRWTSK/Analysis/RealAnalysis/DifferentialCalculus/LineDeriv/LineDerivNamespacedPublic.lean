-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.IsExtrFilterHasLineDerivAtEqZero.Varianta2555c8e1b2135078a496be36884880facc74e3fd8011528ab48a83c27296680","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a2555c8e1b2135078a496be36884880facc74e3fd8011528ab48a83c27296680","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.IsExtrFilterHasLineDerivAtEqZero.Varianta2555c8e1b2135078a496be36884880facc74e3fd8011528ab48a83c27296680","mathematical_subject":"Analysis.Calculus","original_sha256":"a2555c8e1b2135078a496be36884880facc74e3fd8011528ab48a83c27296680","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Calculus/LocalExtr/LineDeriv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

public import Mathlib.Analysis.Calculus.LocalExtr.Basic
public import Mathlib.Analysis.Calculus.LineDeriv.Basic

/-!
# Local extremum and line derivatives

If `f` has a local extremum at a point, then the derivative at this point is zero.
In this file we prove several versions of this fact for line derivatives.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.IsExtrFilterHasLineDerivAtEqZero.Varianta2555c8e1b2135078a496be36884880facc74e3fd8011528ab48a83c27296680

public section

open Function Set Filter
open scoped Topology

section Module

variable {E : Type*} [AddCommGroup E] [Module ℝ E] {f : E → ℝ} {s : Set E} {a b : E} {f' : ℝ}

theorem IsExtrFilter.hasLineDerivAt_eq_zero {l : Filter E} (h : IsExtrFilter f l a)
    (hd : HasLineDerivAt ℝ f f' a b) (h' : Tendsto (fun t : ℝ ↦ a + t • b) (𝓝 0) l) : f' = 0 :=
  IsLocalExtr.hasDerivAt_eq_zero (IsExtrFilter.comp_tendsto (by simpa using h) h') hd

theorem IsExtrFilter.lineDeriv_eq_zero {l : Filter E} (h : IsExtrFilter f l a)
    (h' : Tendsto (fun t : ℝ ↦ a + t • b) (𝓝 0) l) : lineDeriv ℝ f a b = 0 := by
  classical
  exact if hd : LineDifferentiableAt ℝ f a b then
    h.hasLineDerivAt_eq_zero hd.hasLineDerivAt h'
  else
    lineDeriv_zero_of_not_lineDifferentiableAt hd

theorem IsExtrOn.hasLineDerivAt_eq_zero (h : IsExtrOn f s a) (hd : HasLineDerivAt ℝ f f' a b)
    (h' : ∀ᶠ t : ℝ in 𝓝 0, a + t • b ∈ s) : f' = 0 :=
  IsExtrFilter.hasLineDerivAt_eq_zero h hd <| tendsto_principal.2 h'

theorem IsExtrOn.lineDeriv_eq_zero (h : IsExtrOn f s a) (h' : ∀ᶠ t : ℝ in 𝓝 0, a + t • b ∈ s) :
    lineDeriv ℝ f a b = 0 :=
  IsExtrFilter.lineDeriv_eq_zero h <| tendsto_principal.2 h'

theorem IsMinOn.hasLineDerivAt_eq_zero (h : IsMinOn f s a) (hd : HasLineDerivAt ℝ f f' a b)
    (h' : ∀ᶠ t : ℝ in 𝓝 0, a + t • b ∈ s) : f' = 0 :=
  h.isExtr.hasLineDerivAt_eq_zero hd h'

theorem IsMinOn.lineDeriv_eq_zero (h : IsMinOn f s a) (h' : ∀ᶠ t : ℝ in 𝓝 0, a + t • b ∈ s) :
    lineDeriv ℝ f a b = 0 :=
  h.isExtr.lineDeriv_eq_zero h'

theorem IsMaxOn.hasLineDerivAt_eq_zero (h : IsMaxOn f s a) (hd : HasLineDerivAt ℝ f f' a b)
    (h' : ∀ᶠ t : ℝ in 𝓝 0, a + t • b ∈ s) : f' = 0 :=
  h.isExtr.hasLineDerivAt_eq_zero hd h'

theorem IsMaxOn.lineDeriv_eq_zero (h : IsMaxOn f s a) (h' : ∀ᶠ t : ℝ in 𝓝 0, a + t • b ∈ s) :
    lineDeriv ℝ f a b = 0 :=
  h.isExtr.lineDeriv_eq_zero h'

theorem IsExtrOn.hasLineDerivWithinAt_eq_zero (h : IsExtrOn f s a)
    (hd : HasLineDerivWithinAt ℝ f f' s a b) (h' : ∀ᶠ t : ℝ in 𝓝 0, a + t • b ∈ s) : f' = 0 :=
  h.hasLineDerivAt_eq_zero (hd.hasLineDerivAt' h') h'

theorem IsExtrOn.lineDerivWithin_eq_zero (h : IsExtrOn f s a)
    (h' : ∀ᶠ t : ℝ in 𝓝 0, a + t • b ∈ s) : lineDerivWithin ℝ f s a b = 0 := by
  classical
  exact if hd : LineDifferentiableWithinAt ℝ f s a b then
    h.hasLineDerivWithinAt_eq_zero hd.hasLineDerivWithinAt h'
  else
    lineDerivWithin_zero_of_not_lineDifferentiableWithinAt hd

theorem IsMinOn.hasLineDerivWithinAt_eq_zero (h : IsMinOn f s a)
    (hd : HasLineDerivWithinAt ℝ f f' s a b) (h' : ∀ᶠ t : ℝ in 𝓝 0, a + t • b ∈ s) : f' = 0 :=
  h.isExtr.hasLineDerivWithinAt_eq_zero hd h'

theorem IsMinOn.lineDerivWithin_eq_zero (h : IsMinOn f s a)
    (h' : ∀ᶠ t : ℝ in 𝓝 0, a + t • b ∈ s) : lineDerivWithin ℝ f s a b = 0 :=
  h.isExtr.lineDerivWithin_eq_zero h'

theorem IsMaxOn.hasLineDerivWithinAt_eq_zero (h : IsMaxOn f s a)
    (hd : HasLineDerivWithinAt ℝ f f' s a b) (h' : ∀ᶠ t : ℝ in 𝓝 0, a + t • b ∈ s) : f' = 0 :=
  h.isExtr.hasLineDerivWithinAt_eq_zero hd h'

theorem IsMaxOn.lineDerivWithin_eq_zero (h : IsMaxOn f s a)
    (h' : ∀ᶠ t : ℝ in 𝓝 0, a + t • b ∈ s) : lineDerivWithin ℝ f s a b = 0 :=
  h.isExtr.lineDerivWithin_eq_zero h'
end Module

variable {E : Type*} [AddCommGroup E] [Module ℝ E]
  [TopologicalSpace E] [ContinuousAdd E] [ContinuousSMul ℝ E]
  {f : E → ℝ} {a b : E} {f' : ℝ}

theorem IsLocalExtr.hasLineDerivAt_eq_zero (h : IsLocalExtr f a) (hd : HasLineDerivAt ℝ f f' a b) :
    f' = 0 :=
  IsExtrFilter.hasLineDerivAt_eq_zero h hd <| Continuous.tendsto' (by fun_prop) _ _ (by simp)

theorem IsLocalExtr.lineDeriv_eq_zero (h : IsLocalExtr f a) : lineDeriv ℝ f a = 0 :=
  funext fun b ↦ IsExtrFilter.lineDeriv_eq_zero h <| Continuous.tendsto' (by fun_prop) _ _ (by simp)

theorem IsLocalMin.hasLineDerivAt_eq_zero (h : IsLocalMin f a) (hd : HasLineDerivAt ℝ f f' a b) :
    f' = 0 :=
  IsLocalExtr.hasLineDerivAt_eq_zero (.inl h) hd

theorem IsLocalMin.lineDeriv_eq_zero (h : IsLocalMin f a) : lineDeriv ℝ f a = 0 :=
  IsLocalExtr.lineDeriv_eq_zero (.inl h)

theorem IsLocalMax.hasLineDerivAt_eq_zero (h : IsLocalMax f a) (hd : HasLineDerivAt ℝ f f' a b) :
    f' = 0 :=
  IsLocalExtr.hasLineDerivAt_eq_zero (.inr h) hd

theorem IsLocalMax.lineDeriv_eq_zero (h : IsLocalMax f a) : lineDeriv ℝ f a = 0 :=
  IsLocalExtr.lineDeriv_eq_zero (.inr h)
