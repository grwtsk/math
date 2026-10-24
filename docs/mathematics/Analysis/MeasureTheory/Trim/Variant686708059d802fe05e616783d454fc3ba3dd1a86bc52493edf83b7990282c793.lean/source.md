# Complete source: GRWTSK.Analysis.MeasureTheory.Trim.Variant686708059d802fe05e616783d454fc3ba3dd1a86bc52493edf83b7990282c793

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `11c48599950e5b397c9c00c9aec8ff5024c2d5e1` · SHA-256 `ab32fb739526792ea33f673ff6920c447824fd85a7a18419b504f243fbf2edd1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.ELpNormPrimeTrim.Variant294c32b829b71b2afb563b2db61c3f8dadcc6a9df3c84b537d641ece0fad1f3d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"294c32b829b71b2afb563b2db61c3f8dadcc6a9df3c84b537d641ece0fad1f3d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.ELpNormPrimeTrim.Variant294c32b829b71b2afb563b2db61c3f8dadcc6a9df3c84b537d641ece0fad1f3d","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"294c32b829b71b2afb563b2db61c3f8dadcc6a9df3c84b537d641ece0fad1f3d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/MeasureTheory/Function/LpSeminorm/Trim.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/
module

public import Mathlib.MeasureTheory.Function.LpSeminorm.Basic

/-!
# Lp seminorm with respect to trimmed measure

In this file we prove basic properties of the Lp-seminorm of a function
with respect to the restriction of a measure to a sub-σ-algebra.
-/


namespace GRWTSK.Analysis.MeasureTheory.ELpNormPrimeTrim.Variant294c32b829b71b2afb563b2db61c3f8dadcc6a9df3c84b537d641ece0fad1f3d

public section

namespace MeasureTheory

open Filter
open scoped ENNReal

variable {α ε : Type*} {m m0 : MeasurableSpace α} {p : ℝ≥0∞} {q : ℝ} {μ : Measure α}
  [TopologicalSpace ε] [ContinuousENorm ε]

theorem eLpNorm'_trim (hm : m ≤ m0) {f : α → ε} (hf : StronglyMeasurable[m] f) :
    eLpNorm' f q (μ.trim hm) = eLpNorm' f q μ := by
  simp_rw [eLpNorm']
  congr 1
  exact lintegral_trim hm (by fun_prop)

theorem limsup_trim (hm : m ≤ m0) {f : α → ℝ≥0∞} (hf : Measurable[m] f) :
    limsup f (ae (μ.trim hm)) = limsup f (ae μ) := by
  simp_rw [limsup_eq]
  suffices h_set_eq : { a : ℝ≥0∞ | ∀ᵐ n ∂μ.trim hm, f n ≤ a } = { a : ℝ≥0∞ | ∀ᵐ n ∂μ, f n ≤ a } by
    rw [h_set_eq]
  ext1 a
  suffices h_meas_eq : μ { x | ¬f x ≤ a } = μ.trim hm { x | ¬f x ≤ a } by
    simp_rw [Set.mem_ofPred_eq, ae_iff, h_meas_eq]
  refine (trim_measurableSet_eq hm ?_).symm
  exact (measurableSet_le hf measurable_const).compl

theorem essSup_trim (hm : m ≤ m0) {f : α → ℝ≥0∞} (hf : Measurable[m] f) :
    essSup f (μ.trim hm) = essSup f μ := by
  simp_rw [essSup]
  exact limsup_trim hm hf

theorem eLpNormEssSup_trim (hm : m ≤ m0) {f : α → ε} (hf : StronglyMeasurable[m] f) :
    eLpNormEssSup f (μ.trim hm) = eLpNormEssSup f μ :=
  essSup_trim _ (@StronglyMeasurable.enorm _ m _ _ _ _ hf)

theorem eLpNorm_trim (hm : m ≤ m0) {f : α → ε} (hf : StronglyMeasurable[m] f) :
    eLpNorm f p (μ.trim hm) = eLpNorm f p μ := by
  have hfμ : AEStronglyMeasurable f μ := (hf.mono hm).aestronglyMeasurable
  by_cases h0 : p = 0
  · subst p
    rw [eLpNorm_exponent_zero (hf.aestronglyMeasurable (μ := μ.trim hm)),
      eLpNorm_exponent_zero hfμ]
  by_cases h_top : p = ∞
  · simpa only [h_top, eLpNorm_exponent_top (hf.aestronglyMeasurable (μ := μ.trim hm)),
      eLpNorm_exponent_top hfμ] using
      eLpNormEssSup_trim hm hf
  rw [eLpNorm_eq_eLpNorm' h0 h_top (hf.aestronglyMeasurable (μ := μ.trim hm)),
    eLpNorm_eq_eLpNorm' h0 h_top hfμ]
  exact eLpNorm'_trim hm hf

theorem eLpNorm_trim_ae (hm : m ≤ m0) {f : α → ε} (hf : AEStronglyMeasurable[m] f (μ.trim hm)) :
    eLpNorm f p (μ.trim hm) = eLpNorm f p μ := by
  have hfμ := aestronglyMeasurable_of_aestronglyMeasurable_trim hm hf
  rw [eLpNorm_congr_ae hf.ae_eq_mk,
    eLpNorm_congr_ae (ae_eq_of_ae_eq_trim hf.ae_eq_mk)]
  exact eLpNorm_trim hm hf.stronglyMeasurable_mk

theorem memLp_of_memLp_trim (hm : m ≤ m0) {f : α → ε} (hf : MemLp f p (μ.trim hm)) : MemLp f p μ :=
  (le_of_eq (eLpNorm_trim_ae hm hf.aestronglyMeasurable).symm).trans_lt hf

end MeasureTheory
```
