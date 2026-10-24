# Complete source: GRWTSK.Analysis.ComplexAnalysis.Constructions.Varianta66edd9be69fcb286cab37fdbff19f1e0ad12fd1e9fb13647c21a2cd7757b7bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97c7faedfe431a64e3ae34f0fad58d60ffc9141a` · SHA-256 `95820d1dedb72ce1431eb4d608856600e6e076c6c1d334490dfb1014c6d07acb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.ContDiffAtHarmonicAt.Variant0351be3705c49bfc6affbab90f4a0b1d7511a4f97ec7517594c30d2f6478256e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0351be3705c49bfc6affbab90f4a0b1d7511a4f97ec7517594c30d2f6478256e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.ContDiffAtHarmonicAt.Variant0351be3705c49bfc6affbab90f4a0b1d7511a4f97ec7517594c30d2f6478256e","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"0351be3705c49bfc6affbab90f4a0b1d7511a4f97ec7517594c30d2f6478256e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/InnerProductSpace/Harmonic/Constructions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Stefan Kebekus. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Stefan Kebekus
-/
module

public import Mathlib.Analysis.InnerProductSpace.Harmonic.Basic
public import Mathlib.Analysis.Calculus.ContDiff.RestrictScalars
public import Mathlib.Analysis.SpecialFunctions.Complex.Analytic

/-!
# Construction of Harmonic Functions

This file constructs examples of harmonic functions.

If `f : ℂ → F` is complex-differentiable, then `f` is harmonic. If `F = ℂ`, then so is its real
part, imaginary part, and complex conjugate. If `f` has no zero, then `log ‖f‖` is harmonic.
-/


namespace GRWTSK.Analysis.ComplexAnalysis.ContDiffAtHarmonicAt.Variant0351be3705c49bfc6affbab90f4a0b1d7511a4f97ec7517594c30d2f6478256e

public section

open Complex InnerProductSpace

open scoped ComplexConjugate Topology

variable
  {F : Type*} [NormedAddCommGroup F] [NormedSpace ℂ F]
  {f : ℂ → F} {x : ℂ}

/-!
## Harmonicity of Analytic Functions on the Complex Plane
-/

/--
Continuously complex-differentiable functions on ℂ are harmonic.
-/
theorem ContDiffAt.harmonicAt (h : ContDiffAt ℂ 2 f x) : HarmonicAt f x := by
  refine ⟨h.restrict_scalars ℝ, ?_⟩
  filter_upwards [h.restrictScalars_iteratedFDeriv_eventuallyEq (𝕜 := ℝ)] with a ha
  have : (iteratedFDeriv ℂ 2 f a) (I • ![1, 1])
      = (∏ i, I) • ((iteratedFDeriv ℂ 2 f a) ![1, 1]) :=
    (iteratedFDeriv ℂ 2 f a).map_smul_univ (fun _ ↦ I) ![1, 1]
  simp_all [laplacian_eq_iteratedFDeriv_complexPlane f, ← ha,
    ContinuousMultilinearMap.coe_restrictScalars]

/-- Analytic functions on ℂ are harmonic. -/
theorem AnalyticAt.harmonicAt [CompleteSpace F] (h : AnalyticAt ℂ f x) : HarmonicAt f x :=
  h.contDiffAt.harmonicAt

/--
If `f : ℂ → ℂ` is complex-analytic, then its real part is harmonic.
-/
theorem AnalyticAt.harmonicAt_re {f : ℂ → ℂ} (h : AnalyticAt ℂ f x) :
    HarmonicAt (fun z ↦ (f z).re) x := h.harmonicAt.comp_CLM reCLM

/--
If `f : ℂ → ℂ` is complex-analytic, then its imaginary part is harmonic.
-/
theorem AnalyticAt.harmonicAt_im {f : ℂ → ℂ} (h : AnalyticAt ℂ f x) :
    HarmonicAt (fun z ↦ (f z).im) x :=
  h.harmonicAt.comp_CLM imCLM

/--
If `f : ℂ → ℂ` is complex-analytic, then its complex conjugate is harmonic.
-/
theorem AnalyticAt.harmonicAt_conj {f : ℂ → ℂ} (h : AnalyticAt ℂ f x) : HarmonicAt (conj f) x :=
  (harmonicAt_comp_CLE_iff conjCLE).2 h.harmonicAt

/-!
## Harmonicity of `log ‖analytic‖`
-/

/- Helper lemma for AnalyticAt.harmonicAt_log_norm -/
private lemma analyticAt_harmonicAt_log_normSq {z : ℂ} {g : ℂ → ℂ} (h₁g : AnalyticAt ℂ g z)
    (h₂g : g z ≠ 0) (h₃g : g z ∈ slitPlane) :
    HarmonicAt (Real.log ∘ normSq ∘ g) z := by
  rw [harmonicAt_congr_nhds (f₂ := reCLM ∘ (conjCLE ∘ log ∘ g + log ∘ g))]
  · exact (((harmonicAt_comp_CLE_iff conjCLE).2 ((analyticAt_clog h₃g).comp h₁g).harmonicAt).add
      ((analyticAt_clog h₃g).comp h₁g).harmonicAt).comp_CLM reCLM
  · have t₀ := h₁g.differentiableAt.continuousAt.preimage_mem_nhds
      ((isOpen_slitPlane.inter isOpen_ne).mem_nhds ⟨h₃g, h₂g⟩)
    calc Real.log ∘ normSq ∘ g
    _ =ᶠ[𝓝 z] reCLM ∘ ofRealCLM ∘ Real.log ∘ normSq ∘ g := by aesop
    _ =ᶠ[𝓝 z] reCLM ∘ log ∘ ((conjCLE ∘ g) * g) := by
      filter_upwards with x
      simp only [Function.comp_apply, ofRealCLM_apply, Pi.mul_apply, conjCLE_apply]
      rw [ofReal_log, normSq_eq_conj_mul_self]
      exact normSq_nonneg (g x)
    _ =ᶠ[𝓝 z] reCLM ∘ (log ∘ conjCLE ∘ g + log ∘ g) := by
      filter_upwards [t₀] with x hx
      simp only [Function.comp_apply, Pi.mul_apply, conjCLE_apply, Pi.add_apply]
      congr
      rw [Complex.log_mul_eq_add_log_iff _ hx.2, Complex.arg_conj]
      · simp [Complex.slitPlane_arg_ne_pi hx.1, Real.pi_pos, Real.pi_nonneg]
      · simpa [ne_eq, map_eq_zero] using hx.2
    _ =ᶠ[𝓝 z] ⇑reCLM ∘ (⇑conjCLE ∘ log ∘ g + log ∘ g) := by
      apply Filter.eventuallyEq_iff_exists_mem.2
      use g ⁻¹' (Complex.slitPlane ∩ {0}ᶜ), t₀
      intro x hx
      simp only [Function.comp_apply, Pi.add_apply, conjCLE_apply]
      congr 1
      rw [← Complex.log_conj]
      simp [Complex.slitPlane_arg_ne_pi hx.1]

/--
If `f : ℂ → ℂ` is complex-analytic without zero, then `log ‖f‖` is harmonic.
-/
theorem AnalyticAt.harmonicAt_log_norm {f : ℂ → ℂ} {z : ℂ} (h₁f : AnalyticAt ℂ f z)
    (h₂f : f z ≠ 0) :
    HarmonicAt (Real.log ‖f ·‖) z := by
  have : (Real.log ‖f ·‖) = (2 : ℝ)⁻¹ • (Real.log ∘ Complex.normSq ∘ f) := by
    funext z
    simp only [Pi.smul_apply, Function.comp_apply, smul_eq_mul]
    rw [Complex.norm_def, Real.log_sqrt]
    · linarith
    exact (f z).normSq_nonneg
  rw [this]
  apply HarmonicAt.const_smul
  by_cases h₃f : f z ∈ Complex.slitPlane
  · exact analyticAt_harmonicAt_log_normSq h₁f h₂f h₃f
  · rw [(by aesop : Complex.normSq ∘ f = Complex.normSq ∘ (-f))]
    exact analyticAt_harmonicAt_log_normSq h₁f.neg (by simpa)
      ((mem_slitPlane_or_neg_mem_slitPlane h₂f).resolve_left h₃f)
```
