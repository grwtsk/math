-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.LintegralMulLeftEqSelf.Variant92ff892590cf69f2642839af9b4aadb9d37aba38910b57bebe1ab49cf9419c95","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"92ff892590cf69f2642839af9b4aadb9d37aba38910b57bebe1ab49cf9419c95","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.LintegralMulLeftEqSelf.Variant92ff892590cf69f2642839af9b4aadb9d37aba38910b57bebe1ab49cf9419c95","mathematical_subject":"Analysis.Integration","original_sha256":"92ff892590cf69f2642839af9b4aadb9d37aba38910b57bebe1ab49cf9419c95","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/MeasureTheory/Group/LIntegral.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Mathlib.MeasureTheory.Group.Measure

/-!
# Lebesgue Integration on Groups

We develop properties of integrals with a group as domain.
This file contains properties about Lebesgue integration.
-/

-- assert_not_exists NormedSpace -- this doesn't work after #6225, but will hopefully work soon


namespace GRWTSK.Analysis.RealAnalysis.Integration.LintegralMulLeftEqSelf.Variant92ff892590cf69f2642839af9b4aadb9d37aba38910b57bebe1ab49cf9419c95

namespace MeasureTheory

open Measure TopologicalSpace

open scoped ENNReal

variable {G : Type*} [MeasurableSpace G] {μ : Measure G} {g : G}

section MeasurableMul

variable [Group G] [MeasurableMul G]

/-- Translating a function by left-multiplication does not change its Lebesgue integral
with respect to a left-invariant measure. -/
@[to_additive
      "Translating a function by left-addition does not change its Lebesgue integral with
      respect to a left-invariant measure."]
theorem lintegral_mul_left_eq_self [IsMulLeftInvariant μ] (f : G → ℝ≥0∞) (g : G) :
    (∫⁻ x, f (g * x) ∂μ) = ∫⁻ x, f x ∂μ := by
  convert (lintegral_map_equiv f <| MeasurableEquiv.mulLeft g).symm
  simp [map_mul_left_eq_self μ g]
#align measure_theory.lintegral_mul_left_eq_self MeasureTheory.lintegral_mul_left_eq_self
#align measure_theory.lintegral_add_left_eq_self MeasureTheory.lintegral_add_left_eq_self

/-- Translating a function by right-multiplication does not change its Lebesgue integral
with respect to a right-invariant measure. -/
@[to_additive
      "Translating a function by right-addition does not change its Lebesgue integral with
      respect to a right-invariant measure."]
theorem lintegral_mul_right_eq_self [IsMulRightInvariant μ] (f : G → ℝ≥0∞) (g : G) :
    (∫⁻ x, f (x * g) ∂μ) = ∫⁻ x, f x ∂μ := by
  convert (lintegral_map_equiv f <| MeasurableEquiv.mulRight g).symm using 1
  simp [map_mul_right_eq_self μ g]
#align measure_theory.lintegral_mul_right_eq_self MeasureTheory.lintegral_mul_right_eq_self
#align measure_theory.lintegral_add_right_eq_self MeasureTheory.lintegral_add_right_eq_self

@[to_additive] -- Porting note: was `@[simp]`
theorem lintegral_div_right_eq_self [IsMulRightInvariant μ] (f : G → ℝ≥0∞) (g : G) :
    (∫⁻ x, f (x / g) ∂μ) = ∫⁻ x, f x ∂μ := by
  simp_rw [div_eq_mul_inv, lintegral_mul_right_eq_self f g⁻¹]
#align measure_theory.lintegral_div_right_eq_self MeasureTheory.lintegral_div_right_eq_self
#align measure_theory.lintegral_sub_right_eq_self MeasureTheory.lintegral_sub_right_eq_self

end MeasurableMul

section TopologicalGroup

variable [TopologicalSpace G] [Group G] [TopologicalGroup G] [BorelSpace G] [IsMulLeftInvariant μ]

/-- For nonzero regular left invariant measures, the integral of a continuous nonnegative function
  `f` is 0 iff `f` is 0. -/
@[to_additive
      "For nonzero regular left invariant measures, the integral of a continuous nonnegative
      function `f` is 0 iff `f` is 0."]
theorem lintegral_eq_zero_of_isMulLeftInvariant [Regular μ] (hμ : μ ≠ 0) {f : G → ℝ≥0∞}
    (hf : Continuous f) : ∫⁻ x, f x ∂μ = 0 ↔ f = 0 := by
  haveI := isOpenPosMeasure_of_mulLeftInvariant_of_regular hμ
  rw [lintegral_eq_zero_iff hf.measurable, hf.ae_eq_iff_eq μ continuous_zero]
#align measure_theory.lintegral_eq_zero_of_is_mul_left_invariant MeasureTheory.lintegral_eq_zero_of_isMulLeftInvariant
#align measure_theory.lintegral_eq_zero_of_is_add_left_invariant MeasureTheory.lintegral_eq_zero_of_isAddLeftInvariant

end TopologicalGroup

end MeasureTheory
