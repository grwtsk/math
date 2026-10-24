-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.CompProdWithDensity.Variant7212659354c16068791a9cf3ca1cd1ec1c89fbaed07dce56cb35e0e0809b750e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7212659354c16068791a9cf3ca1cd1ec1c89fbaed07dce56cb35e0e0809b750e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.CompProdWithDensity.Variant7212659354c16068791a9cf3ca1cd1ec1c89fbaed07dce56cb35e0e0809b750e","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"7212659354c16068791a9cf3ca1cd1ec1c89fbaed07dce56cb35e0e0809b750e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Probability/Kernel/CompProdEqIff.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/
import Mathlib.Probability.Kernel.Composition.AbsolutelyContinuous

/-!
# Condition for two kernels to be equal almost everywhere

We prove that two finite kernels `κ, η : Kernel α β` are `μ`-a.e. equal for a finite measure `μ` iff
the composition-products `μ ⊗ₘ κ` and `μ ⊗ₘ η` are equal.
The result requires `α` to be countable or `β` to be a countably generated measurable space.

## Main statements

* `compProd_withDensity`: `μ ⊗ₘ (κ.withDensity f) = (μ ⊗ₘ κ).withDensity (fun p ↦ f p.1 p.2)`
* `compProd_eq_iff`: `μ ⊗ₘ κ = μ ⊗ₘ η ↔ κ =ᵐ[μ] η`

-/


namespace GRWTSK.Analysis.MeasureTheory.CompProdWithDensity.Variant7212659354c16068791a9cf3ca1cd1ec1c89fbaed07dce56cb35e0e0809b750e

open ProbabilityTheory MeasureTheory

open scoped ENNReal

variable {α β : Type*} {mα : MeasurableSpace α} {mβ : MeasurableSpace β}
  {μ : Measure α} {κ : Kernel α β}
  {f : α → β → ℝ≥0∞}

namespace MeasureTheory.Measure

/-- A composition-product of a measure with a kernel defined with `withDensity` is equal to the
`withDensity` of the composition-product. -/
lemma compProd_withDensity [SFinite μ] [IsSFiniteKernel κ] [IsSFiniteKernel (κ.withDensity f)]
    (hf : Measurable (Function.uncurry f)) :
    μ ⊗ₘ (κ.withDensity f) = (μ ⊗ₘ κ).withDensity (fun p ↦ f p.1 p.2) := by
  ext s hs
  rw [compProd_apply hs, withDensity_apply _ hs, ← lintegral_indicator hs,
    lintegral_compProd]
  · congr with a
    rw [Kernel.withDensity_apply' _ hf, ← lintegral_indicator (measurable_prodMk_left hs)]
    rfl
  · exact hf.indicator hs

end MeasureTheory.Measure

namespace ProbabilityTheory.Kernel

variable {η : Kernel α β} [MeasurableSpace.CountableOrCountablyGenerated α β]

lemma ae_eq_of_compProd_eq [IsFiniteMeasure μ] [IsFiniteKernel κ] [IsFiniteKernel η]
    (h : μ ⊗ₘ κ = μ ⊗ₘ η) :
    κ =ᵐ[μ] η := by
  have h_ac : ∀ᵐ a ∂μ, κ a ≪ η a := (Measure.absolutelyContinuous_of_eq h).kernel_of_compProd
  have hκ_eq : ∀ᵐ a ∂μ, κ a = η.withDensity (κ.rnDeriv η) a := by
    filter_upwards [h_ac] with a ha using (Kernel.withDensity_rnDeriv_eq ha).symm
  suffices ∀ᵐ a ∂μ, ∀ᵐ b ∂(η a), κ.rnDeriv η a b = 1 by
    filter_upwards [h_ac, this] with a h_ac h using (rnDeriv_eq_one_iff_eq h_ac).mp h
  refine Measure.ae_ae_of_ae_compProd (p := fun x ↦ κ.rnDeriv η x.1 x.2 = 1) ?_
  refine ae_eq_of_forall_setLIntegral_eq_of_sigmaFinite (by fun_prop) (by fun_prop) fun s hs _ ↦ ?_
  simp only [MeasureTheory.lintegral_const, MeasurableSet.univ, Measure.restrict_apply,
    Set.univ_inter, one_mul]
  calc ∫⁻ x in s, κ.rnDeriv η x.1 x.2 ∂μ ⊗ₘ η
  _ = (μ ⊗ₘ κ) s := by
    rw [Measure.compProd_congr hκ_eq, Measure.compProd_withDensity, withDensity_apply _ hs]
    fun_prop
  _ = (μ ⊗ₘ η) s := by rw [h]

/-- Two finite kernels `κ` and `η` are `μ`-a.e. equal iff the composition-products `μ ⊗ₘ κ`
and `μ ⊗ₘ η` are equal. -/
lemma compProd_eq_iff [IsFiniteMeasure μ] [IsFiniteKernel κ] [IsFiniteKernel η] :
    μ ⊗ₘ κ = μ ⊗ₘ η ↔ κ =ᵐ[μ] η :=
  ⟨Kernel.ae_eq_of_compProd_eq, Measure.compProd_congr⟩

end ProbabilityTheory.Kernel
