-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.ENNRealFinStronglyMeasurableOfMeasurable.Variantc9741b21783005bdb213809b4ad94fd6ced43c027d879ae4730f8681b22ae773","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c9741b21783005bdb213809b4ad94fd6ced43c027d879ae4730f8681b22ae773","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.ENNRealFinStronglyMeasurableOfMeasurable.Variantc9741b21783005bdb213809b4ad94fd6ced43c027d879ae4730f8681b22ae773","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"c9741b21783005bdb213809b4ad94fd6ced43c027d879ae4730f8681b22ae773","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/Function/StronglyMeasurable/ENNReal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/

import Mathlib.MeasureTheory.Function.StronglyMeasurable.AEStronglyMeasurable
import Mathlib.MeasureTheory.Integral.Lebesgue.Add

/-!
# Finitely strongly measurable functions with value in ENNReal

A measurable function with finite Lebesgue integral can be approximated by simple functions
whose support has finite measure.

-/


namespace GRWTSK.Analysis.MeasureTheory.ENNRealFinStronglyMeasurableOfMeasurable.Variantc9741b21783005bdb213809b4ad94fd6ced43c027d879ae4730f8681b22ae773

open MeasureTheory
open scoped ENNReal

variable {α : Type*} {m : MeasurableSpace α} {μ : Measure α} {f : α → ℝ≥0∞}

lemma ENNReal.finStronglyMeasurable_of_measurable (hf : ∫⁻ x, f x ∂μ ≠ ∞)
    (hf_meas : Measurable f) :
    FinStronglyMeasurable f μ :=
  ⟨SimpleFunc.eapprox f, measure_support_eapprox_lt_top hf_meas hf,
    SimpleFunc.tendsto_eapprox hf_meas⟩

lemma ENNReal.aefinStronglyMeasurable_of_aemeasurable (hf : ∫⁻ x, f x ∂μ ≠ ∞)
    (hf_meas : AEMeasurable f μ) :
    AEFinStronglyMeasurable f μ := by
  refine ⟨hf_meas.mk f, ENNReal.finStronglyMeasurable_of_measurable ?_ hf_meas.measurable_mk,
    hf_meas.ae_eq_mk⟩
  rwa [lintegral_congr_ae hf_meas.ae_eq_mk.symm]
