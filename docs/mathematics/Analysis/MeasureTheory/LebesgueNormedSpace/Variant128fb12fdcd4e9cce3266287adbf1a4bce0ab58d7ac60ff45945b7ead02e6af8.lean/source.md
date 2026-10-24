# Complete source: GRWTSK.Analysis.MeasureTheory.LebesgueNormedSpace.Variant128fb12fdcd4e9cce3266287adbf1a4bce0ab58d7ac60ff45945b7ead02e6af8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `624e243e4fbe9d3f39906e9eb0a5b73545d82faf` · SHA-256 `e1a4fa9afcd47047d271eee38f171e9acf481b1798233a8929c7f35078b5e2cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.AemeasurableWithDensityIff.Variantfc8b2bae26293622759a2c93443b1e7a932fe1829ac8244527702fbbadc4ad51","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc8b2bae26293622759a2c93443b1e7a932fe1829ac8244527702fbbadc4ad51","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.AemeasurableWithDensityIff.Variantfc8b2bae26293622759a2c93443b1e7a932fe1829ac8244527702fbbadc4ad51","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"fc8b2bae26293622759a2c93443b1e7a932fe1829ac8244527702fbbadc4ad51","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/MeasureTheory/Integral/LebesgueNormedSpace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
import Mathlib.MeasureTheory.Integral.Lebesgue
import Mathlib.Analysis.NormedSpace.Basic


namespace GRWTSK.Analysis.MeasureTheory.AemeasurableWithDensityIff.Variantfc8b2bae26293622759a2c93443b1e7a932fe1829ac8244527702fbbadc4ad51

#align_import measure_theory.integral.lebesgue_normed_space from "leanprover-community/mathlib"@"bf6a01357ff5684b1ebcd0f1a13be314fc82c0bf"

/-! # A lemma about measurability with density under scalar multiplication in normed spaces -/


open MeasureTheory Filter ENNReal Set

open NNReal ENNReal

variable {α β γ δ : Type*} {m : MeasurableSpace α} {μ : MeasureTheory.Measure α}

theorem aemeasurable_withDensity_iff {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    [TopologicalSpace.SecondCountableTopology E] [MeasurableSpace E] [BorelSpace E] {f : α → ℝ≥0}
    (hf : Measurable f) {g : α → E} :
    AEMeasurable g (μ.withDensity fun x => (f x : ℝ≥0∞)) ↔
      AEMeasurable (fun x => (f x : ℝ) • g x) μ := by
  constructor
  · rintro ⟨g', g'meas, hg'⟩
    have A : MeasurableSet { x : α | f x ≠ 0 } := (hf (measurableSet_singleton 0)).compl
    refine' ⟨fun x => (f x : ℝ) • g' x, hf.coe_nnreal_real.smul g'meas, _⟩
    apply @ae_of_ae_restrict_of_ae_restrict_compl _ _ _ { x | f x ≠ 0 }
    · rw [EventuallyEq, ae_withDensity_iff hf.coe_nnreal_ennreal] at hg'
      rw [ae_restrict_iff' A]
      filter_upwards [hg']
      intro a ha h'a
      have : (f a : ℝ≥0∞) ≠ 0 := by simpa only [Ne.def, coe_eq_zero] using h'a
      rw [ha this]
    · filter_upwards [ae_restrict_mem A.compl]
      intro x hx
      simp only [Classical.not_not, mem_setOf_eq, mem_compl_iff] at hx
      simp [hx]
  · rintro ⟨g', g'meas, hg'⟩
    refine' ⟨fun x => (f x : ℝ)⁻¹ • g' x, hf.coe_nnreal_real.inv.smul g'meas, _⟩
    rw [EventuallyEq, ae_withDensity_iff hf.coe_nnreal_ennreal]
    filter_upwards [hg']
    intro x hx h'x
    rw [← hx, smul_smul, _root_.inv_mul_cancel, one_smul]
    simp only [Ne.def, coe_eq_zero] at h'x
    simpa only [NNReal.coe_eq_zero, Ne.def] using h'x
#align ae_measurable_with_density_iff aemeasurable_withDensity_iff
```
