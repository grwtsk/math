# Complete source: GRWTSK.Topology.MetricTopology.StrictConvexBetween.Varianta1981f9c35dd7198cae69fb32d0b2b7074ac93e5976d166a5397aaaa862544b4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c865d37a730e5b142b22f9f5def2cdd9c80e45c8` · SHA-256 `051aa5731434cbec96e66f0fdb18fd20fce973a35035c362d6723ced7e5d6eef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.SbtwDistLtMaxDist.Variantd238486d9e73ac203346dcb35e3bd208e09f1e98d5dbd2bb948c88e1a6ed187e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d238486d9e73ac203346dcb35e3bd208e09f1e98d5dbd2bb948c88e1a6ed187e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.SbtwDistLtMaxDist.Variantd238486d9e73ac203346dcb35e3bd208e09f1e98d5dbd2bb948c88e1a6ed187e","mathematical_subject":"Topology.MetricSpaces","original_sha256":"d238486d9e73ac203346dcb35e3bd208e09f1e98d5dbd2bb948c88e1a6ed187e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/Convex/StrictConvexBetween.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Joseph Myers. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joseph Myers
-/
import Mathlib.Analysis.Convex.Between
import Mathlib.Analysis.Convex.StrictConvexSpace


namespace GRWTSK.Topology.MetricTopology.SbtwDistLtMaxDist.Variantd238486d9e73ac203346dcb35e3bd208e09f1e98d5dbd2bb948c88e1a6ed187e

#align_import analysis.convex.strict_convex_between from "leanprover-community/mathlib"@"e1730698f86560a342271c0471e4cb72d021aabf"

/-!
# Betweenness in affine spaces for strictly convex spaces

This file proves results about betweenness for points in an affine space for a strictly convex
space.

-/


variable {V P : Type*} [NormedAddCommGroup V] [NormedSpace ℝ V] [PseudoMetricSpace P]

variable [NormedAddTorsor V P] [StrictConvexSpace ℝ V]

theorem Sbtw.dist_lt_max_dist (p : P) {p₁ p₂ p₃ : P} (h : Sbtw ℝ p₁ p₂ p₃) :
    dist p₂ p < max (dist p₁ p) (dist p₃ p) := by
  have hp₁p₃ : p₁ -ᵥ p ≠ p₃ -ᵥ p := by simpa using h.left_ne_right
  rw [Sbtw, ← wbtw_vsub_const_iff p, Wbtw, affineSegment_eq_segment, ← insert_endpoints_openSegment,
    Set.mem_insert_iff, Set.mem_insert_iff] at h
  rcases h with ⟨h | h | h, hp₂p₁, hp₂p₃⟩
  · rw [vsub_left_cancel_iff] at h
    exact False.elim (hp₂p₁ h)
  · rw [vsub_left_cancel_iff] at h
    exact False.elim (hp₂p₃ h)
  · rw [openSegment_eq_image, Set.mem_image] at h
    rcases h with ⟨r, ⟨hr0, hr1⟩, hr⟩
    simp_rw [@dist_eq_norm_vsub V, ← hr]
    exact
      norm_combo_lt_of_ne (le_max_left _ _) (le_max_right _ _) hp₁p₃ (sub_pos.2 hr1) hr0 (by abel)
#align sbtw.dist_lt_max_dist Sbtw.dist_lt_max_dist

theorem Wbtw.dist_le_max_dist (p : P) {p₁ p₂ p₃ : P} (h : Wbtw ℝ p₁ p₂ p₃) :
    dist p₂ p ≤ max (dist p₁ p) (dist p₃ p) := by
  by_cases hp₁ : p₂ = p₁; · simp [hp₁]
  by_cases hp₃ : p₂ = p₃; · simp [hp₃]
  have hs : Sbtw ℝ p₁ p₂ p₃ := ⟨h, hp₁, hp₃⟩
  exact (hs.dist_lt_max_dist _).le
#align wbtw.dist_le_max_dist Wbtw.dist_le_max_dist

/-- Given three collinear points, two (not equal) with distance `r` from `p` and one with
distance at most `r` from `p`, the third point is weakly between the other two points. -/
theorem Collinear.wbtw_of_dist_eq_of_dist_le {p p₁ p₂ p₃ : P} {r : ℝ}
    (h : Collinear ℝ ({p₁, p₂, p₃} : Set P)) (hp₁ : dist p₁ p = r) (hp₂ : dist p₂ p ≤ r)
    (hp₃ : dist p₃ p = r) (hp₁p₃ : p₁ ≠ p₃) : Wbtw ℝ p₁ p₂ p₃ := by
  rcases h.wbtw_or_wbtw_or_wbtw with (hw | hw | hw)
  · exact hw
  · by_cases hp₃p₂ : p₃ = p₂
    · simp [hp₃p₂]
    have hs : Sbtw ℝ p₂ p₃ p₁ := ⟨hw, hp₃p₂, hp₁p₃.symm⟩
    have hs' := hs.dist_lt_max_dist p
    rw [hp₁, hp₃, lt_max_iff, lt_self_iff_false, or_false_iff] at hs'
    exact False.elim (hp₂.not_lt hs')
  · by_cases hp₁p₂ : p₁ = p₂
    · simp [hp₁p₂]
    have hs : Sbtw ℝ p₃ p₁ p₂ := ⟨hw, hp₁p₃, hp₁p₂⟩
    have hs' := hs.dist_lt_max_dist p
    rw [hp₁, hp₃, lt_max_iff, lt_self_iff_false, false_or_iff] at hs'
    exact False.elim (hp₂.not_lt hs')
#align collinear.wbtw_of_dist_eq_of_dist_le Collinear.wbtw_of_dist_eq_of_dist_le

/-- Given three collinear points, two (not equal) with distance `r` from `p` and one with
distance less than `r` from `p`, the third point is strictly between the other two points. -/
theorem Collinear.sbtw_of_dist_eq_of_dist_lt {p p₁ p₂ p₃ : P} {r : ℝ}
    (h : Collinear ℝ ({p₁, p₂, p₃} : Set P)) (hp₁ : dist p₁ p = r) (hp₂ : dist p₂ p < r)
    (hp₃ : dist p₃ p = r) (hp₁p₃ : p₁ ≠ p₃) : Sbtw ℝ p₁ p₂ p₃ := by
  refine' ⟨h.wbtw_of_dist_eq_of_dist_le hp₁ hp₂.le hp₃ hp₁p₃, _, _⟩
  · rintro rfl
    exact hp₂.ne hp₁
  · rintro rfl
    exact hp₂.ne hp₃
#align collinear.sbtw_of_dist_eq_of_dist_lt Collinear.sbtw_of_dist_eq_of_dist_lt
```
