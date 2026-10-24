# Complete source: GRWTSK.NumberTheory.AutomorphicForms.ModularForms.Basic.Variant460494b5305339d04ff5a7a0cd790411de5d430d3cfafc26c8d0e14f256d2a42

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `abafa2680456df6ea78dc9a5ffeb88b3f78281a2` · SHA-256 `4cebcdb4a1a84f60f1bb6a6744c73e44148c5a7fa3f77a175a4204d5f6e62b50`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AutomorphicForms.ModularForms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AutomorphicForms.ModularForms.ExistsOneHalfLeImAndNormLe.Variant8cf3396d28c9cdb394c60d3cf554789ba153a217c54e5f2ef21196741ee32542","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8cf3396d28c9cdb394c60d3cf554789ba153a217c54e5f2ef21196741ee32542","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ModularForms.SourceCorpus.ExistsOneHalfLeImAndNormLe.Variant8cf3396d28c9cdb394c60d3cf554789ba153a217c54e5f2ef21196741ee32542","mathematical_subject":"NumberTheory.ModularForms","original_sha256":"8cf3396d28c9cdb394c60d3cf554789ba153a217c54e5f2ef21196741ee32542","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/NumberTheory/ModularForms/LevelOne/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Chris Birkbeck. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Birkbeck
-/
module

public import Mathlib.Analysis.Complex.AbsMax
public import Mathlib.LinearAlgebra.Matrix.FixedDetMatrices
public import Mathlib.NumberTheory.Modular
public import Mathlib.NumberTheory.ModularForms.QExpansion
/-!
# Level one modular forms

This file contains results specific to modular forms of level one, i.e. modular forms for
`SL(2, ℤ)`.

Finite-dimensionality of these spaces is proved in a later file
(`Mathlib/NumberTheory/ModularForms/LevelOne/DimensionFormula.lean`).
-/


namespace GRWTSK.NumberTheory.AutomorphicForms.ModularForms.ExistsOneHalfLeImAndNormLe.Variant8cf3396d28c9cdb394c60d3cf554789ba153a217c54e5f2ef21196741ee32542

public section

open UpperHalfPlane ModularGroup SlashInvariantForm ModularForm Complex
  CongruenceSubgroup Real Function SlashInvariantFormClass ModularFormClass Periodic

open scoped MatrixGroups

local notation "𝕢" => qParam

variable {F : Type*} [FunLike F ℍ ℂ] {k : ℤ}

namespace SlashInvariantForm

variable [SlashInvariantFormClass F 𝒮ℒ k]

lemma exists_one_half_le_im_and_norm_le (hk : k ≤ 0) (f : F) (τ : ℍ) :
    ∃ ξ : ℍ, 1 / 2 ≤ ξ.im ∧ ‖f τ‖ ≤ ‖f ξ‖ :=
  let ⟨γ, hγ, hdenom⟩ := exists_one_half_le_im_smul_and_norm_denom_le τ
  ⟨γ • τ, hγ, by
    have : SlashInvariantFormClass F Γ(1) k := Gamma_one_coe_eq_SL ▸ ‹_›
    simpa only [slash_action_eqn_SL'' _ (mem_Gamma_one γ), norm_mul, norm_zpow]
      using le_mul_of_one_le_left (norm_nonneg _) <|
        one_le_zpow_of_nonpos₀ (norm_pos_iff.2 (denom_ne_zero _ _)) hdenom hk⟩

variable (k) in
/-- If a constant function is modular of weight `k`, then either `k = 0`, or the constant is `0`. -/
lemma wt_eq_zero_of_eq_const {f : F} {c : ℂ} (hf : ⇑f = Function.const _ c) :
    k = 0 ∨ c = 0 := by
  have : SlashInvariantFormClass F Γ(1) k := Gamma_one_coe_eq_SL ▸ ‹_›
  have hI := slash_action_eqn_SL'' f (mem_Gamma_one S) I
  have h2I2 := slash_action_eqn_SL'' f (mem_Gamma_one S) ((⟨2, two_pos⟩ : {x : ℝ // 0 < x}) • .I)
  simp_rw [sl_moeb, hf, Function.const, denom_S] at hI h2I2
  suffices (2 : ℂ) ^ k = 1 ↔ k = 0 by
    simpa [mul_zpow, zpow_ne_zero, this] using h2I2.symm.trans hI
  simpa using ofReal_inj.trans <| zpow_eq_one_iff_right₀ (two_pos.le : (0 : ℝ) ≤ 2) (by norm_num1)

theorem slash_action_generators_SL2Z {f : ℍ → ℂ} {k : ℤ}
    (hS : f ∣[k] S = f) (hT : f ∣[k] T = f) : ∀ γ : SL(2, ℤ), f ∣[k] γ = f := by
  intro γ
  have h𝒮ℒ : 𝒮ℒ = Subgroup.closure ({↑S, ↑T} : Set (GL (Fin 2) ℝ)) := by
    rw [MonoidHom.range_eq_map, ← SpecialLinearGroup.SL2Z_generators, MonoidHom.map_closure,
      Set.image_pair]
    rfl
  exact (slash_action_generators h𝒮ℒ).mpr (fun g hg ↦ by rcases hg with rfl | rfl <;> assumption)
    _ (MonoidHom.mem_range.mpr ⟨γ, rfl⟩)

end SlashInvariantForm

lemma one_mem_strictPeriods_SL : (1 : ℝ) ∈ (𝒮ℒ).strictPeriods := by simp

namespace ModularFormClass

variable [ModularFormClass F 𝒮ℒ k]

private theorem cuspFunction_eqOn_const_of_nonpos_wt (hk : k ≤ 0) (f : F) :
    Set.EqOn (cuspFunction 1 f) (const ℂ (cuspFunction 1 f 0)) (Metric.ball 0 1) := by
  refine eq_const_of_exists_le (fun q hq ↦ ?_) (exp_nonneg (-π)) ?_ (fun q hq ↦ ?_)
  · exact (ModularFormClass.differentiableAt_cuspFunction f one_pos one_mem_strictPeriods_SL
      (mem_ball_zero_iff.mp hq)).differentiableWithinAt
  · simp [pi_pos]
  · simp only [Metric.mem_closedBall, dist_zero_right]
    rcases eq_or_ne q 0 with rfl | hq'
    · refine ⟨0, by simpa only [norm_zero] using exp_nonneg _, le_rfl⟩
    · obtain ⟨ξ, hξ, hξ₂⟩ := exists_one_half_le_im_and_norm_le hk f
        ⟨_, im_invQParam_pos_of_norm_lt_one Real.zero_lt_one (mem_ball_zero_iff.mp hq) hq'⟩
      exact ⟨_, norm_qParam_le_of_one_half_le_im hξ,
        by simpa [← SlashInvariantFormClass.eq_cuspFunction f _ one_mem_strictPeriods_SL
            one_ne_zero, qParam_right_inv one_ne_zero hq'] using hξ₂⟩

private theorem levelOne_nonpos_wt_const (hk : k ≤ 0) (f : F) :
    f = Function.const ℍ (cuspFunction 1 f 0) := by
  ext z
  have hQ : 𝕢 1 z ∈ (Metric.ball 0 1) := by
    simpa using (norm_qParam_lt_iff zero_lt_one 0 z.1).mpr z.2
  simpa [← SlashInvariantFormClass.eq_cuspFunction f _ one_mem_strictPeriods_SL one_ne_zero]
    using cuspFunction_eqOn_const_of_nonpos_wt hk f hQ

lemma levelOne_neg_weight_eq_zero (hk : k < 0) (f : F) : ⇑f = 0 := by
  have hf := levelOne_nonpos_wt_const hk.le f
  rcases wt_eq_zero_of_eq_const k hf with rfl | hf₀
  · exact (lt_irrefl _ hk).elim
  · rw [hf, hf₀, const_zero]

lemma levelOne_weight_zero_const [ModularFormClass F 𝒮ℒ 0] (f : F) :
    ∃ c, ⇑f = Function.const _ c :=
  ⟨_, levelOne_nonpos_wt_const le_rfl f⟩

end ModularFormClass

lemma ModularForm.levelOne_weight_zero_rank_one : Module.rank ℂ (ModularForm 𝒮ℒ 0) = 1 := by
  refine rank_eq_one (const 1) (by simp [DFunLike.ne_iff]) fun g ↦ ?_
  obtain ⟨c', hc'⟩ := levelOne_weight_zero_const g
  aesop

lemma ModularForm.levelOne_neg_weight_rank_zero (hk : k < 0) :
    Module.rank ℂ (ModularForm 𝒮ℒ k) = 0 := by
  refine rank_eq_zero_iff.mpr fun f ↦ ⟨_, one_ne_zero, ?_⟩
  simpa [← FunLike.coe_zero_iff] using levelOne_neg_weight_eq_zero hk f
```
