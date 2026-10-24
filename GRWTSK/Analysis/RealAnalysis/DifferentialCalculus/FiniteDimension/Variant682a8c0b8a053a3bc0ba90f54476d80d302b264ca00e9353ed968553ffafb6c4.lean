-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ContDiffOnClmApply.Variant2d81bdee99ab1a986473e52963910d53a54cab32f5e55b6414aff5e4efd34a98","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d81bdee99ab1a986473e52963910d53a54cab32f5e55b6414aff5e4efd34a98","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ContDiffOnClmApply.Variant2d81bdee99ab1a986473e52963910d53a54cab32f5e55b6414aff5e4efd34a98","mathematical_subject":"Analysis.Calculus","original_sha256":"2d81bdee99ab1a986473e52963910d53a54cab32f5e55b6414aff5e4efd34a98","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Calculus/ContDiff/FiniteDimension.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel, Floris van Doorn
-/
import Mathlib.Analysis.Calculus.ContDiff.Operations
import Mathlib.Analysis.Normed.Module.FiniteDimension

/-!
# Higher differentiability in finite dimensions.

-/



namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ContDiffOnClmApply.Variant2d81bdee99ab1a986473e52963910d53a54cab32f5e55b6414aff5e4efd34a98

noncomputable section

universe uD uE uF

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
  {D : Type uD} [NormedAddCommGroup D] [NormedSpace 𝕜 D]
  {E : Type uE} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
  {F : Type uF} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
  {n : WithTop ℕ∞} {f : D → E} {s : Set D}

/-! ### Finite dimensional results -/

section FiniteDimensional

open Function Module

open scoped ContDiff

variable [CompleteSpace 𝕜]


/-- A family of continuous linear maps is `C^n` on `s` if all its applications are. -/
theorem contDiffOn_clm_apply {f : D → E →L[𝕜] F} {s : Set D} [FiniteDimensional 𝕜 E] :
    ContDiffOn 𝕜 n f s ↔ ∀ y, ContDiffOn 𝕜 n (fun x => f x y) s := by
  refine ⟨fun h y => h.clm_apply contDiffOn_const, fun h => ?_⟩
  let d := finrank 𝕜 E
  have hd : d = finrank 𝕜 (Fin d → 𝕜) := (finrank_fin_fun 𝕜).symm
  let e₁ := ContinuousLinearEquiv.ofFinrankEq hd
  let e₂ := (e₁.arrowCongr (1 : F ≃L[𝕜] F)).trans (ContinuousLinearEquiv.piRing (Fin d))
  rw [← id_comp f, ← e₂.symm_comp_self]
  exact e₂.symm.contDiff.comp_contDiffOn (contDiffOn_pi.mpr fun i => h _)

theorem contDiff_clm_apply_iff {f : D → E →L[𝕜] F} [FiniteDimensional 𝕜 E] :
    ContDiff 𝕜 n f ↔ ∀ y, ContDiff 𝕜 n fun x => f x y := by
  simp_rw [← contDiffOn_univ, contDiffOn_clm_apply]

/-- This is a useful lemma to prove that a certain operation preserves functions being `C^n`.
When you do induction on `n`, this gives a useful characterization of a function being `C^(n+1)`,
assuming you have already computed the derivative. The advantage of this version over
`contDiff_succ_iff_fderiv` is that both occurrences of `ContDiff` are for functions with the same
domain and codomain (`D` and `E`). This is not the case for `contDiff_succ_iff_fderiv`, which
often requires an inconvenient need to generalize `F`, which results in universe issues
(see the discussion in the section of `ContDiff.comp`).

This lemma avoids these universe issues, but only applies for finite dimensional `D`. -/
theorem contDiff_succ_iff_fderiv_apply [FiniteDimensional 𝕜 D] :
    ContDiff 𝕜 (n + 1) f ↔ Differentiable 𝕜 f ∧
      (n = ω → AnalyticOnNhd 𝕜 f Set.univ) ∧ ∀ y, ContDiff 𝕜 n fun x => fderiv 𝕜 f x y := by
  rw [contDiff_succ_iff_fderiv, contDiff_clm_apply_iff]

theorem contDiffOn_succ_of_fderiv_apply [FiniteDimensional 𝕜 D]
    (hf : DifferentiableOn 𝕜 f s) (h'f : n = ω → AnalyticOn 𝕜 f s)
    (h : ∀ y, ContDiffOn 𝕜 n (fun x => fderivWithin 𝕜 f s x y) s) :
    ContDiffOn 𝕜 (n + 1) f s :=
  contDiffOn_succ_of_fderivWithin hf h'f <| contDiffOn_clm_apply.mpr h

theorem contDiffOn_succ_iff_fderiv_apply [FiniteDimensional 𝕜 D] (hs : UniqueDiffOn 𝕜 s) :
    ContDiffOn 𝕜 (n + 1) f s ↔
      DifferentiableOn 𝕜 f s ∧ (n = ω → AnalyticOn 𝕜 f s) ∧
      ∀ y, ContDiffOn 𝕜 n (fun x => fderivWithin 𝕜 f s x y) s := by
  rw [contDiffOn_succ_iff_fderivWithin hs, contDiffOn_clm_apply]

end FiniteDimensional
