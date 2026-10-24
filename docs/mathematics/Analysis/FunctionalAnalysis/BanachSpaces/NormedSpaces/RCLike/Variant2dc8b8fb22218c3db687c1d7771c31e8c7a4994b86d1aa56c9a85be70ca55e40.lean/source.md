# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.RCLike.Variant2dc8b8fb22218c3db687c1d7771c31e8c7a4994b86d1aa56c9a85be70ca55e40

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1cba0764778a379a87f71d29e6a1cf4384e5d382` · SHA-256 `52bae9cfcfad071e7aeb8418a2a2cb710ab328074bc43d93767d8f3c39595548`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.RCLikeNormCoeNorm.Variantccbe554ef8ad4d258279b8e91f134f0c419766103c5a142a28305949886d4066","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ccbe554ef8ad4d258279b8e91f134f0c419766103c5a142a28305949886d4066","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.RCLikeNormCoeNorm.Variantccbe554ef8ad4d258279b8e91f134f0c419766103c5a142a28305949886d4066","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"ccbe554ef8ad4d258279b8e91f134f0c419766103c5a142a28305949886d4066","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/NormedSpace/RCLike.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kalle Kytölä. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kalle Kytölä
-/
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Analysis.NormedSpace.OperatorNorm.Basic
import Mathlib.Analysis.NormedSpace.Pointwise

/-!
# Normed spaces over R or C

This file is about results on normed spaces over the fields `ℝ` and `ℂ`.

## Main definitions

None.

## Main theorems

* `ContinuousLinearMap.opNorm_bound_of_ball_bound`: A bound on the norms of values of a linear
  map in a ball yields a bound on the operator norm.

## Notes

This file exists mainly to avoid importing `RCLike` in the main normed space theory files.
-/



namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.RCLikeNormCoeNorm.Variantccbe554ef8ad4d258279b8e91f134f0c419766103c5a142a28305949886d4066

open Metric

variable {𝕜 : Type*} [RCLike 𝕜] {E : Type*} [NormedAddCommGroup E]

theorem RCLike.norm_coe_norm {z : E} : ‖(‖z‖ : 𝕜)‖ = ‖z‖ := by simp

variable [NormedSpace 𝕜 E]

/-- Lemma to normalize a vector in a normed space `E` over either `ℂ` or `ℝ` to unit length. -/
@[simp]
theorem norm_smul_inv_norm {x : E} (hx : x ≠ 0) : ‖(‖x‖⁻¹ : 𝕜) • x‖ = 1 := by
  have : ‖x‖ ≠ 0 := by simp [hx]
  field_simp [norm_smul]

/-- Lemma to normalize a vector in a normed space `E` over either `ℂ` or `ℝ` to length `r`. -/
theorem norm_smul_inv_norm' {r : ℝ} (r_nonneg : 0 ≤ r) {x : E} (hx : x ≠ 0) :
    ‖((r : 𝕜) * (‖x‖ : 𝕜)⁻¹) • x‖ = r := by
  have : ‖x‖ ≠ 0 := by simp [hx]
  field_simp [norm_smul, r_nonneg, rclike_simps]

theorem LinearMap.bound_of_sphere_bound {r : ℝ} (r_pos : 0 < r) (c : ℝ) (f : E →ₗ[𝕜] 𝕜)
    (h : ∀ z ∈ sphere (0 : E) r, ‖f z‖ ≤ c) (z : E) : ‖f z‖ ≤ c / r * ‖z‖ := by
  by_cases z_zero : z = 0
  · rw [z_zero]
    simp only [LinearMap.map_zero, norm_zero, mul_zero]
    exact le_rfl
  set z₁ := ((r : 𝕜) * (‖z‖ : 𝕜)⁻¹) • z with hz₁
  have norm_f_z₁ : ‖f z₁‖ ≤ c := by
    apply h
    rw [mem_sphere_zero_iff_norm]
    exact norm_smul_inv_norm' r_pos.le z_zero
  have r_ne_zero : (r : 𝕜) ≠ 0 := RCLike.ofReal_ne_zero.mpr r_pos.ne'
  have eq : f z = ‖z‖ / r * f z₁ := by
    rw [hz₁, LinearMap.map_smul, smul_eq_mul]
    rw [← mul_assoc, ← mul_assoc, div_mul_cancel₀ _ r_ne_zero, mul_inv_cancel₀, one_mul]
    simp only [z_zero, RCLike.ofReal_eq_zero, norm_eq_zero, Ne, not_false_iff]
  rw [eq, norm_mul, norm_div, RCLike.norm_coe_norm, RCLike.norm_of_nonneg r_pos.le,
    div_mul_eq_mul_div, div_mul_eq_mul_div, mul_comm]
  apply div_le_div₀ _ _ r_pos rfl.ge
  · exact mul_nonneg ((norm_nonneg _).trans norm_f_z₁) (norm_nonneg z)
  apply mul_le_mul norm_f_z₁ rfl.le (norm_nonneg z) ((norm_nonneg _).trans norm_f_z₁)

/-- `LinearMap.bound_of_ball_bound` is a version of this over arbitrary nontrivially normed fields.
It produces a less precise bound so we keep both versions. -/
theorem LinearMap.bound_of_ball_bound' {r : ℝ} (r_pos : 0 < r) (c : ℝ) (f : E →ₗ[𝕜] 𝕜)
    (h : ∀ z ∈ closedBall (0 : E) r, ‖f z‖ ≤ c) (z : E) : ‖f z‖ ≤ c / r * ‖z‖ :=
  f.bound_of_sphere_bound r_pos c (fun z hz => h z hz.le) z

theorem ContinuousLinearMap.opNorm_bound_of_ball_bound {r : ℝ} (r_pos : 0 < r) (c : ℝ)
    (f : E →L[𝕜] 𝕜) (h : ∀ z ∈ closedBall (0 : E) r, ‖f z‖ ≤ c) : ‖f‖ ≤ c / r := by
  apply ContinuousLinearMap.opNorm_le_bound
  · apply div_nonneg _ r_pos.le
    exact
      (norm_nonneg _).trans
        (h 0 (by simp only [norm_zero, mem_closedBall, dist_zero_left, r_pos.le]))
  apply LinearMap.bound_of_ball_bound' r_pos
  exact fun z hz => h z hz

variable (𝕜)
include 𝕜 in
theorem NormedSpace.sphere_nonempty_rclike [Nontrivial E] {r : ℝ} (hr : 0 ≤ r) :
    Nonempty (sphere (0 : E) r) :=
  letI : NormedSpace ℝ E := NormedSpace.restrictScalars ℝ 𝕜 E
  (NormedSpace.sphere_nonempty.mpr hr).coe_sort
```
