# Complete source: GRWTSK.Analysis.MeasureTheory.Trim.Variant55dbde7374069de2ccd25a6aabbc788dd9c06e6f0af8565f8fa249b3b41922bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cdb55ee2ff7f11072b33f0f97d7d53a102dae043` · SHA-256 `39b8175a55e122c0128793e60e6af8df1dd4b4ea66ba05066994cc4528ae9171`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.ELpNormPrimeTrim.Variant1c7411f2787fa5be17cc0e4eb02799826c91caf191c5a7a0a9ba10885e35ed7a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1c7411f2787fa5be17cc0e4eb02799826c91caf191c5a7a0a9ba10885e35ed7a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.ELpNormPrimeTrim.Variant1c7411f2787fa5be17cc0e4eb02799826c91caf191c5a7a0a9ba10885e35ed7a","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"1c7411f2787fa5be17cc0e4eb02799826c91caf191c5a7a0a9ba10885e35ed7a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/Function/LpSeminorm/Trim.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/
import Mathlib.MeasureTheory.Function.LpSeminorm.Basic

/-!
# Lp seminorm with respect to trimmed measure

In this file we prove basic properties of the Lp-seminorm of a function
with respect to the restriction of a measure to a sub-σ-algebra.
-/


namespace GRWTSK.Analysis.MeasureTheory.ELpNormPrimeTrim.Variant1c7411f2787fa5be17cc0e4eb02799826c91caf191c5a7a0a9ba10885e35ed7a

namespace MeasureTheory

open Filter
open scoped ENNReal

variable {α E ε : Type*} {m m0 : MeasurableSpace α} {p : ℝ≥0∞} {q : ℝ} {μ : Measure α}
  [NormedAddCommGroup E] [TopologicalSpace ε] [ContinuousENorm ε]

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
    simp_rw [Set.mem_setOf_eq, ae_iff, h_meas_eq]
  refine (trim_measurableSet_eq hm ?_).symm
  refine @MeasurableSet.compl _ _ m (@measurableSet_le ℝ≥0∞ _ _ _ _ m _ _ _ _ _ hf ?_)
  exact @measurable_const _ _ _ m _

theorem essSup_trim (hm : m ≤ m0) {f : α → ℝ≥0∞} (hf : Measurable[m] f) :
    essSup f (μ.trim hm) = essSup f μ := by
  simp_rw [essSup]
  exact limsup_trim hm hf

theorem eLpNormEssSup_trim (hm : m ≤ m0) {f : α → ε} (hf : StronglyMeasurable[m] f) :
    eLpNormEssSup f (μ.trim hm) = eLpNormEssSup f μ :=
  essSup_trim _ (@StronglyMeasurable.enorm _ m _ _ _ _ hf)

theorem eLpNorm_trim (hm : m ≤ m0) {f : α → ε} (hf : StronglyMeasurable[m] f) :
    eLpNorm f p (μ.trim hm) = eLpNorm f p μ := by
  by_cases h0 : p = 0
  · simp [h0]
  by_cases h_top : p = ∞
  · simpa only [h_top, eLpNorm_exponent_top] using eLpNormEssSup_trim hm hf
  simpa only [eLpNorm_eq_eLpNorm' h0 h_top] using eLpNorm'_trim hm hf

theorem eLpNorm_trim_ae (hm : m ≤ m0) {f : α → ε} (hf : AEStronglyMeasurable[m] f (μ.trim hm)) :
    eLpNorm f p (μ.trim hm) = eLpNorm f p μ := by
  rw [eLpNorm_congr_ae hf.ae_eq_mk, eLpNorm_congr_ae (ae_eq_of_ae_eq_trim hf.ae_eq_mk)]
  exact eLpNorm_trim hm hf.stronglyMeasurable_mk

theorem memLp_of_memLp_trim (hm : m ≤ m0) {f : α → ε} (hf : MemLp f p (μ.trim hm)) : MemLp f p μ :=
  ⟨aestronglyMeasurable_of_aestronglyMeasurable_trim hm hf.1,
    (le_of_eq (eLpNorm_trim_ae hm hf.1).symm).trans_lt hf.2⟩

@[deprecated (since := "2025-02-21")]
alias memℒp_of_memℒp_trim := memLp_of_memLp_trim

end MeasureTheory
```
