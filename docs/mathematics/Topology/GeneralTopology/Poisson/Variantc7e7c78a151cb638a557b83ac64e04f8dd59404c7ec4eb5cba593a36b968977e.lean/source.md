# Complete source: GRWTSK.Topology.GeneralTopology.Poisson.Variantc7e7c78a151cb638a557b83ac64e04f8dd59404c7ec4eb5cba593a36b968977e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `adafd9c56f6ed43efd5d54bdac30205c00e490e2` · SHA-256 `bc6f080232e6c3fae45e051c1ff3968fda21826fb73a1cea1b1fcb47da55d715`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ContinuousOnHerglotzRiesz.Varianta5278b4fed15bcda26ea54577980c54587567e7d4d218549fa9ff9dab4abcdf2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a5278b4fed15bcda26ea54577980c54587567e7d4d218549fa9ff9dab4abcdf2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ContinuousOnHerglotzRiesz.Varianta5278b4fed15bcda26ea54577980c54587567e7d4d218549fa9ff9dab4abcdf2","mathematical_subject":"Topology.GeneralTopology","original_sha256":"a5278b4fed15bcda26ea54577980c54587567e7d4d218549fa9ff9dab4abcdf2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Complex/Harmonic/Poisson.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Stefan Kebekus. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mihai Iancu, Stefan Kebekus, Sebastian Schleissinger
-/
module

public import Mathlib.Analysis.Complex.Poisson
public import Mathlib.Analysis.Complex.Harmonic.Analytic
public import Mathlib.Analysis.InnerProductSpace.Harmonic.HarmonicContOnCl

/-!
# Poisson Integral Formula

This file establishes several versions of the **Poisson Integral Formula** for harmonic functions on
arbitrary disks in the complex plane, formulated with the real part of the Herglotz–Riesz kernel of
integration and with the Poisson kernel, respectively.

TODO: Extend this formula to vector-valued harmonic functions
-/


namespace GRWTSK.Topology.GeneralTopology.ContinuousOnHerglotzRiesz.Varianta5278b4fed15bcda26ea54577980c54587567e7d4d218549fa9ff9dab4abcdf2

public section

open Complex InnerProductSpace Metric Real

variable
  {f : ℂ → ℝ} {c w : ℂ} {R : ℝ}

namespace InnerProductSpace

private lemma continuousOn_herglotz_riesz (_ : w ∈ ball c R) :
    ContinuousOn (fun x ↦ ((x - c + (w - c)) / (x - c - (w - c))).re)
      {z | ‖z - c‖ ∈ Set.Ioc ‖w - c‖ R} := by
  have : ∀ x ∈ {z | ‖z - c‖ ∈ Set.Ioc ‖w - c‖ R}, x - c - (w - c) ≠ 0 := by
    grind [mem_ball, mem_sphere]
  fun_prop

/--
**Poisson integral formula** for harmonic functions on arbitrary disks in the complex plane,
formulated with the real part of the Herglotz–Riesz kernel of integration.
-/
theorem HarmonicOnNhd.circleAverage_re_herglotzRieszKernel_smul
    (hf : HarmonicOnNhd f (closedBall c R)) (hw : w ∈ ball c R) :
    Real.circleAverage ((re ∘ herglotzRieszKernel c w) • f) c R = f w := by
  obtain ⟨e, h₁e, h₂e⟩ := (isCompact_closedBall c R).exists_thickening_subset_open
    (isOpen_setOfPred_harmonicAt f) (by aesop)
  rw [thickening_closedBall h₁e (pos_of_mem_ball hw).le] at h₂e
  obtain ⟨F, h₁F, h₂F⟩ := HarmonicOnNhd.exists_analyticOnNhd_ball_re_eq h₂e
  have h₃F : DifferentiableOn ℂ F (closure (ball c R)) := by
    intro x hx
    apply (h₁F x _).differentiableWithinAt
    grind [mem_ball, mem_closedBall.1 (closure_ball_subset_closedBall hx)]
  have h₄F : Set.EqOn (re ∘ herglotzRieszKernel c w • f)
      (reCLM ∘ (fun z ↦ ((z - c + (w - c)) / (z - c - (w - c))).re • F z))
      (sphere c R) := by
    intro x hx
    simp [h₂F (sphere_subset_ball (lt_add_of_pos_left R h₁e) hx), herglotzRieszKernel_def]
  rw [← abs_of_pos (pos_of_mem_ball hw)] at h₄F
  rw [circleAverage_congr_sphere h₄F, reCLM.circleAverage_comp_comm,
    h₃F.diffContOnCl.circleAverage_re_herglotzRieszKernel_smul' hw]
  · apply h₂F
    grind [mem_ball]
  -- CircleIntegrable (fun z ↦ ((z - c + (w - c)) / (z - c - (w - c))).re • F z) c R
  apply (ContinuousOn.fun_smul _ _).circleIntegrable'
  · apply (continuousOn_herglotz_riesz hw).mono
    grind [mem_ball, dist_eq_norm, mem_sphere_iff_norm, (pos_of_mem_ball hw)]
  · apply (h₁F.mono _).continuousOn (𝕜 := ℂ)
    grind [mem_sphere, mem_ball, (pos_of_mem_ball hw)]

/--
**Poisson integral formula** for harmonic functions on arbitrary disks in the complex plane,
formulated with the real part of the Herglotz–Riesz kernel of integration.
-/
theorem HarmonicContOnCl.circleAverage_re_herglotzRieszKernel_smul
    (hf : HarmonicContOnCl f (ball c R)) (hw : w ∈ ball c R) :
    Real.circleAverage ((re ∘ herglotzRieszKernel c w) • f) c R = f w := by
  apply ContinuousOn.eq_of_eqOn_Ioo (r := ‖w - c‖)
  · apply ContinuousOn.circleAverage
    · rw [herglotzRieszKernel_fun_def]
      apply (continuousOn_herglotz_riesz hw).smul (hf.2.mono _)
      grind [closure_ball c (pos_of_mem_ball hw).ne', mem_closedBall_iff_norm]
    · grind [norm_nonneg (w - c)]
  · grind [mem_ball_iff_norm]
  · intro r hr
    rw [HarmonicOnNhd.circleAverage_re_herglotzRieszKernel_smul
      (hf.1.mono (closedBall_subset_ball hr.2)) (by grind [mem_ball_iff_norm])]

/--
**Poisson integral formula** for harmonic functions on arbitrary disks in the complex plane,
formulated with the Poisson kernel of integration.
-/
theorem HarmonicOnNhd.circleAverage_poissonKernel_smul
    (hf : HarmonicOnNhd f (closedBall c R)) (hw : w ∈ ball c R) :
    Real.circleAverage (poissonKernel c w • f) c R = f w := by
  rw [← hf.circleAverage_re_herglotzRieszKernel_smul hw]
  apply circleAverage_congr_sphere
    (fun _ _ ↦ by simp_rw [← poissonKernel_eq_re_herglotzRieszKernel])

/--
**Poisson integral formula** for harmonic functions on arbitrary disks in the complex plane,
formulated with the Poisson kernel of integration.
-/
theorem HarmonicContOnCl.circleAverage_poissonKernel_smul
    (hf : HarmonicContOnCl f (ball c R)) (hw : w ∈ ball c R) :
    Real.circleAverage (poissonKernel c w • f) c R = f w := by
  rw [← hf.circleAverage_re_herglotzRieszKernel_smul hw]
  apply circleAverage_congr_sphere
    (fun _ _ ↦ by simp_rw [← poissonKernel_eq_re_herglotzRieszKernel])

end InnerProductSpace
```
