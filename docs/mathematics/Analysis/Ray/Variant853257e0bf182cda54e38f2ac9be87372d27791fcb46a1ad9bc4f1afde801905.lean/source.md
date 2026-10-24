# Complete source: GRWTSK.Analysis.Ray.Variant853257e0bf182cda54e38f2ac9be87372d27791fcb46a1ad9bc4f1afde801905

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24335fd63ebcce973c5250a20e17ac5a39866ade` · SHA-256 `47d91e8d95266c02337f52b818dae6cbef83ab574f4d0439e394a628845a5081`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.NormAdd.Variant9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.NormAdd.Variant9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Normed/Module/Ray.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov, Yaël Dillies
-/
import Mathlib.LinearAlgebra.Ray
import Mathlib.Analysis.NormedSpace.Real

/-!
# Rays in a real normed vector space

In this file we prove some lemmas about the `SameRay` predicate in case of a real normed space. In
this case, for two vectors `x y` in the same ray, the norm of their sum is equal to the sum of their
norms and `‖y‖ • x = ‖x‖ • y`.
-/



namespace GRWTSK.Analysis.NormAdd.Variant9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6

open Real

variable {E : Type*} [SeminormedAddCommGroup E] [NormedSpace ℝ E] {F : Type*}
[NormedAddCommGroup F] [NormedSpace ℝ F]

namespace SameRay

variable {x y : E}

/-- If `x` and `y` are on the same ray, then the triangle inequality becomes the equality: the norm
of `x + y` is the sum of the norms of `x` and `y`. The converse is true for a strictly convex
space. -/
theorem norm_add (h : SameRay ℝ x y) : ‖x + y‖ = ‖x‖ + ‖y‖ := by
  rcases h.exists_eq_smul with ⟨u, a, b, ha, hb, -, rfl, rfl⟩
  rw [← add_smul, norm_smul_of_nonneg (add_nonneg ha hb), norm_smul_of_nonneg ha,
    norm_smul_of_nonneg hb, add_mul]

theorem norm_sub (h : SameRay ℝ x y) : ‖x - y‖ = |‖x‖ - ‖y‖| := by
  rcases h.exists_eq_smul with ⟨u, a, b, ha, hb, -, rfl, rfl⟩
  wlog hab : b ≤ a generalizing a b with H
  · rw [SameRay.sameRay_comm] at h
    rw [norm_sub_rev, abs_sub_comm]
    exact H b a hb ha h (le_of_not_le hab)
  rw [← sub_nonneg] at hab
  rw [← sub_smul, norm_smul_of_nonneg hab, norm_smul_of_nonneg ha, norm_smul_of_nonneg hb, ←
    sub_mul, abs_of_nonneg (mul_nonneg hab (norm_nonneg _))]

theorem norm_smul_eq (h : SameRay ℝ x y) : ‖x‖ • y = ‖y‖ • x := by
  rcases h.exists_eq_smul with ⟨u, a, b, ha, hb, -, rfl, rfl⟩
  simp only [norm_smul_of_nonneg, *, mul_smul]
  rw [smul_comm, smul_comm b, smul_comm a b u]

end SameRay

variable {x y : F}

theorem norm_injOn_ray_left (hx : x ≠ 0) : { y | SameRay ℝ x y }.InjOn norm := by
  rintro y hy z hz h
  rcases hy.exists_nonneg_left hx with ⟨r, hr, rfl⟩
  rcases hz.exists_nonneg_left hx with ⟨s, hs, rfl⟩
  rw [norm_smul, norm_smul, mul_left_inj' (norm_ne_zero_iff.2 hx), norm_of_nonneg hr,
    norm_of_nonneg hs] at h
  rw [h]

theorem norm_injOn_ray_right (hy : y ≠ 0) : { x | SameRay ℝ x y }.InjOn norm := by
  simpa only [SameRay.sameRay_comm] using norm_injOn_ray_left hy

theorem sameRay_iff_norm_smul_eq : SameRay ℝ x y ↔ ‖x‖ • y = ‖y‖ • x :=
  ⟨SameRay.norm_smul_eq, fun h =>
    or_iff_not_imp_left.2 fun hx =>
      or_iff_not_imp_left.2 fun hy => ⟨‖y‖, ‖x‖, norm_pos_iff.2 hy, norm_pos_iff.2 hx, h.symm⟩⟩

/-- Two nonzero vectors `x y` in a real normed space are on the same ray if and only if the unit
vectors `‖x‖⁻¹ • x` and `‖y‖⁻¹ • y` are equal. -/
theorem sameRay_iff_inv_norm_smul_eq_of_ne (hx : x ≠ 0) (hy : y ≠ 0) :
    SameRay ℝ x y ↔ ‖x‖⁻¹ • x = ‖y‖⁻¹ • y := by
  rw [inv_smul_eq_iff₀, smul_comm, eq_comm, inv_smul_eq_iff₀, sameRay_iff_norm_smul_eq] <;>
    rwa [norm_ne_zero_iff]

alias ⟨SameRay.inv_norm_smul_eq, _⟩ := sameRay_iff_inv_norm_smul_eq_of_ne

/-- Two vectors `x y` in a real normed space are on the ray if and only if one of them is zero or
the unit vectors `‖x‖⁻¹ • x` and `‖y‖⁻¹ • y` are equal. -/
theorem sameRay_iff_inv_norm_smul_eq : SameRay ℝ x y ↔ x = 0 ∨ y = 0 ∨ ‖x‖⁻¹ • x = ‖y‖⁻¹ • y := by
  rcases eq_or_ne x 0 with (rfl | hx); · simp [SameRay.zero_left]
  rcases eq_or_ne y 0 with (rfl | hy); · simp [SameRay.zero_right]
  simp only [sameRay_iff_inv_norm_smul_eq_of_ne hx hy, *, false_or]

/-- Two vectors of the same norm are on the same ray if and only if they are equal. -/
theorem sameRay_iff_of_norm_eq (h : ‖x‖ = ‖y‖) : SameRay ℝ x y ↔ x = y := by
  obtain rfl | hy := eq_or_ne y 0
  · rw [norm_zero, norm_eq_zero] at h
    exact iff_of_true (SameRay.zero_right _) h
  · exact ⟨fun hxy => norm_injOn_ray_right hy hxy SameRay.rfl h, fun hxy => hxy ▸ SameRay.rfl⟩

theorem not_sameRay_iff_of_norm_eq (h : ‖x‖ = ‖y‖) : ¬SameRay ℝ x y ↔ x ≠ y :=
  (sameRay_iff_of_norm_eq h).not

/-- If two points on the same ray have the same norm, then they are equal. -/
theorem SameRay.eq_of_norm_eq (h : SameRay ℝ x y) (hn : ‖x‖ = ‖y‖) : x = y :=
  (sameRay_iff_of_norm_eq hn).mp h

/-- The norms of two vectors on the same ray are equal if and only if they are equal. -/
theorem SameRay.norm_eq_iff (h : SameRay ℝ x y) : ‖x‖ = ‖y‖ ↔ x = y :=
  ⟨h.eq_of_norm_eq, fun h => h ▸ rfl⟩
```
