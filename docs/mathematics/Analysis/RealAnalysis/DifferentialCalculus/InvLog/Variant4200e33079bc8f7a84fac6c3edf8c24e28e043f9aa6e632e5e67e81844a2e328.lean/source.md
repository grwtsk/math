# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.InvLog.Variant4200e33079bc8f7a84fac6c3edf8c24e28e043f9aa6e632e5e67e81844a2e328

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09b53ea2bc8614a4b821513b01889248b2017f34` · SHA-256 `72f45de96ffd8674d73af4edf0712178d6267600566a3ae7a5a01564912083ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.NotDifferentiableAtInvLogZero.Variantfbcc833e8a06129b1a28e67bcb511a7faa4aa0d80ce87579a0f4ef6b35ce29b7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fbcc833e8a06129b1a28e67bcb511a7faa4aa0d80ce87579a0f4ef6b35ce29b7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.NotDifferentiableAtInvLogZero.Variantfbcc833e8a06129b1a28e67bcb511a7faa4aa0d80ce87579a0f4ef6b35ce29b7","mathematical_subject":"Analysis.Calculus","original_sha256":"fbcc833e8a06129b1a28e67bcb511a7faa4aa0d80ce87579a0f4ef6b35ce29b7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/SpecialFunctions/Log/InvLog.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Alastair Irving. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alastair Irving, Michael Stoll, Terence Tao
-/

module

public import Mathlib.Analysis.SpecialFunctions.Log.Deriv
public import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics

/-!
# Multiplicative inverse and iteration of real logarithm

We prove properties of the functions `x ↦ (log x)⁻¹` and `x ↦ log (log x)`.

## Main results

- `deriv_inv_log` gives a formula for the derivative of `x ↦ (log x)⁻¹` which holds for all values.
- `deriv_log_log` gives a formula for the derivative of `x ↦ log (log x)` which holds for all
  values.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.NotDifferentiableAtInvLogZero.Variantfbcc833e8a06129b1a28e67bcb511a7faa4aa0d80ce87579a0f4ef6b35ce29b7

public section

namespace Real

open Filter Asymptotics Bornology Metric IsOrderBornology DifferentiableAt

/- ## Derivative of the inverse logarithm -/

lemma not_differentiableAt_inv_log_zero : ¬ DifferentiableAt ℝ (fun x ↦ (log x)⁻¹) 0 := by
  simp only [← hasDerivAt_deriv_iff, hasDerivAt_iff_tendsto_slope_zero, zero_add, log_zero,
    inv_zero, sub_zero, smul_eq_mul, ← mul_inv, mul_comm _ (log _)]
  refine fun H ↦ (tendsto_nhdsWithin_mono_left (by grind : Set.Iio (0 : ℝ) ⊆ _) H).not_tendsto
    (by simp) (tendsto_inv_nhdsGT_zero.comp ?_)
  refine tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within _
    tendsto_log_mul_self_nhdsLT_zero ?_
  simp only [← nhdsWithin_Ioo_eq_nhdsLT neg_one_lt_zero, Set.mem_Ioi]
  refine eventually_nhdsWithin_of_forall fun x ⟨hx₁, hx₂⟩ ↦ mul_pos_of_neg_of_neg ?_ hx₂
  apply log_neg_eq_log x ▸ log_neg <;> grind

lemma not_continuousAt_inv_log_one : ¬ ContinuousAt (fun x ↦ (log x)⁻¹) 1 := by
  suffices Tendsto (fun x ↦ (log x)⁻¹) (nhdsWithin 1 {1}ᶜ) (cobounded ℝ) from
    not_continuousAt_of_tendsto this nhdsWithin_le_nhds (disjoint_nhds_cobounded _)
  exact tendsto_inv₀_nhdsNE_zero.comp <| log_one ▸
    HasDerivAt.tendsto_nhdsNE (by simpa using hasDerivAt_log one_ne_zero) one_ne_zero

lemma not_continuousAt_inv_log_neg_one : ¬ ContinuousAt (fun x ↦ (log x)⁻¹) (-1) :=
  fun H ↦ not_continuousAt_inv_log_one
    (by simpa only [log_neg_eq_log] using H.comp' continuousAt_neg)

theorem deriv_inv_log_apply {x : ℝ} : deriv (fun x ↦ (log x)⁻¹) x = -x⁻¹ / log x ^ 2 := by
  have := mt (continuousAt (𝕜 := ℝ)) not_continuousAt_inv_log_neg_one
  have := mt (continuousAt (𝕜 := ℝ)) not_continuousAt_inv_log_one
  have := not_differentiableAt_inv_log_zero
  obtain (⟨_, _, _⟩ | rfl | rfl | rfl) :
      (x ≠ -1 ∧ x ≠ 0 ∧ x ≠ 1) ∨ x = -1 ∨ x = 0 ∨ x = 1 := by tauto
  · simp_all
  all_goals rw [deriv_zero_of_not_differentiableAt ‹_›]; simp

@[simp]
theorem deriv_inv_log : deriv (fun x ↦ (log x)⁻¹) = fun x ↦ -x⁻¹ / log x ^ 2 :=
  funext fun _ ↦ deriv_inv_log_apply

theorem differentiableAt_inv_log {x : ℝ} (hx₀ : x ≠ 0) (hx₁ : x ≠ 1) (hx₂ : x ≠ -1) :
    DifferentiableAt ℝ (fun x ↦ (log x)⁻¹) x := by
  fun_prop (disch := grind [log_ne_zero])

theorem hasDerivAt_inv_log {x : ℝ} (hx₀ : x ≠ 0) (hx₁ : x ≠ 1) (hx₂ : x ≠ -1) :
    HasDerivAt (fun x ↦ (log x)⁻¹) (-x⁻¹ / (log x ^ 2)) x := by
  simpa using (differentiableAt_inv_log hx₀ hx₁ hx₂).hasDerivAt

theorem differentiableOn_inv_log' : DifferentiableOn ℝ (fun x ↦ (log x)⁻¹) {-1,0,1}ᶜ :=
  (differentiableOn_log.mono (by grind)).inv (by simp; tauto)

theorem differentiableOn_inv_log : DifferentiableOn ℝ (fun x ↦ (log x)⁻¹) (.Ioi 1) :=
  differentiableOn_inv_log'.mono (by grind)

theorem inv_log_isLittleO_one : (fun x ↦ (log x)⁻¹) =o[atTop] fun _ ↦ (1 : ℝ) := by
  rw [isLittleO_one_iff]
  convert tendsto_log_atTop.inv_tendsto_atTop

/- ## Derivative of the iterated logarithm -/

lemma not_continuousAt_log_log_zero : ¬ ContinuousAt (fun x ↦ log (log x)) 0 := by
  suffices Tendsto (fun x ↦ log (log x)) (nhdsWithin 0 {0}ᶜ) (cobounded ℝ) from
    not_continuousAt_of_tendsto this nhdsWithin_le_nhds (disjoint_nhds_cobounded _)
  have : Tendsto log atBot atTop := by
    convert tendsto_log_atTop.comp tendsto_neg_atBot_atTop; ext; simp
  exact (this.mono_right atTop_le_cobounded).comp tendsto_log_nhdsNE_zero

lemma not_continuousAt_log_log_one : ¬ ContinuousAt (fun x ↦ log (log x)) 1 := by
  suffices Tendsto (fun x ↦ log (log x)) (nhdsWithin 1 {1}ᶜ) (cobounded ℝ) from
    not_continuousAt_of_tendsto this nhdsWithin_le_nhds (disjoint_nhds_cobounded _)
  exact (tendsto_log_nhdsNE_zero.mono_right atBot_le_cobounded).comp <| log_one ▸
    HasDerivAt.tendsto_nhdsNE (by simpa using hasDerivAt_log one_ne_zero) one_ne_zero

lemma not_continuousAt_log_log_neg_one : ¬ ContinuousAt (fun x ↦ log (log x)) (-1) :=
  fun H ↦ not_continuousAt_log_log_one
    (by simpa only [log_neg_eq_log] using H.comp' continuousAt_neg)

theorem deriv_log_log_apply {x : ℝ} : deriv (fun x ↦ log (log x)) x = x⁻¹ / log x := by
  have := not_continuousAt_log_log_neg_one
  have := not_continuousAt_log_log_zero
  have := not_continuousAt_log_log_one
  obtain (⟨_, _, _⟩ | rfl | rfl | rfl) :
      (x ≠ -1 ∧ x ≠ 0 ∧ x ≠ 1) ∨ x = -1 ∨ x = 0 ∨ x = 1 := by tauto
  · simp_all
  all_goals rw [deriv_zero_of_not_differentiableAt (mt continuousAt ‹_›)]; simp

@[simp]
theorem deriv_log_log : deriv (fun x ↦ log (log x)) = fun x ↦ x⁻¹ / log x :=
  funext fun _ ↦ deriv_log_log_apply

theorem differentiableAt_log_log {x : ℝ} (hx₀ : x ≠ 0) (hx₁ : x ≠ 1) (hx₂ : x ≠ -1) :
    DifferentiableAt ℝ (fun x ↦ log (log x)) x :=
  (differentiableAt_log (by grind)).log (by simp; grind)

theorem hasDerivAt_log_log {x : ℝ} (hx₀ : x ≠ 0) (hx₁ : x ≠ 1) (hx₂ : x ≠ -1) :
    HasDerivAt (fun x ↦ log (log x)) (x⁻¹ / log x) x := by
  simpa using (differentiableAt_log_log hx₀ hx₁ hx₂).hasDerivAt

theorem differentiableOn_log_log' : DifferentiableOn ℝ (fun x ↦ log (log x)) {-1,0,1}ᶜ :=
  (differentiableOn_log.mono (by grind)).log (by simp; tauto)

theorem differentiableOn_log_log : DifferentiableOn ℝ (fun x ↦ log (log x)) (.Ioi 1) :=
  differentiableOn_log_log'.mono (by grind)

theorem one_isLittleO_log_log : (fun _ ↦ (1 : ℝ)) =o[atTop] fun x ↦ log (log x) := by
  simp only [isLittleO_one_left_iff, norm_eq_abs]
  exact tendsto_abs_atTop_atTop.comp (tendsto_log_atTop.comp tendsto_log_atTop)

end Real
```
