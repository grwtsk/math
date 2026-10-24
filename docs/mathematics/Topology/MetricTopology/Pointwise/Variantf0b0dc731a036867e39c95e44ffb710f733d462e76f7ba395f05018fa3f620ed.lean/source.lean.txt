-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.EdiamSmulLe.Variantfc006facbb37b3e08265fd4c0340dff30860e3ff83c1469726d02d3b806e01bb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc006facbb37b3e08265fd4c0340dff30860e3ff83c1469726d02d3b806e01bb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.EdiamSmulLe.Variantfc006facbb37b3e08265fd4c0340dff30860e3ff83c1469726d02d3b806e01bb","mathematical_subject":"Topology.MetricSpaces","original_sha256":"fc006facbb37b3e08265fd4c0340dff30860e3ff83c1469726d02d3b806e01bb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/NormedSpace/Pointwise.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["root_references_require_identity_review","same_file_root_reference_mapping","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel, Yaël Dillies
-/
import Mathlib.Analysis.Normed.Group.Pointwise
import Mathlib.Analysis.NormedSpace.Basic


namespace GRWTSK.Topology.MetricTopology.EdiamSmulLe.Variantfc006facbb37b3e08265fd4c0340dff30860e3ff83c1469726d02d3b806e01bb

#align_import analysis.normed_space.pointwise from "leanprover-community/mathlib"@"bc91ed7093bf098d253401e69df601fc33dde156"

/-!
# Properties of pointwise scalar multiplication of sets in normed spaces.

We explore the relationships between scalar multiplication of sets in vector spaces, and the norm.
Notably, we express arbitrary balls as rescaling of other balls, and we show that the
multiplication of bounded sets remain bounded.
-/


open Metric Set

open Pointwise Topology

variable {𝕜 E : Type*}

section SMulZeroClass

variable [SeminormedAddCommGroup 𝕜] [SeminormedAddCommGroup E]

variable [SMulZeroClass 𝕜 E] [BoundedSMul 𝕜 E]

theorem ediam_smul_le (c : 𝕜) (s : Set E) : EMetric.diam (c • s) ≤ ‖c‖₊ • EMetric.diam s :=
  (lipschitzWith_smul c).ediam_image_le s
#align ediam_smul_le ediam_smul_le

end SMulZeroClass

section DivisionRing

variable [NormedDivisionRing 𝕜] [SeminormedAddCommGroup E]

variable [Module 𝕜 E] [BoundedSMul 𝕜 E]

theorem ediam_smul₀ (c : 𝕜) (s : Set E) : EMetric.diam (c • s) = ‖c‖₊ • EMetric.diam s := by
  refine' le_antisymm (ediam_smul_le c s) _
  obtain rfl | hc := eq_or_ne c 0
  · obtain rfl | hs := s.eq_empty_or_nonempty
    · simp
    simp [zero_smul_set hs, ← Set.singleton_zero]
  · have := (lipschitzWith_smul c⁻¹).ediam_image_le (c • s)
    rwa [← smul_eq_mul, ← ENNReal.smul_def, Set.image_smul, inv_smul_smul₀ hc s, nnnorm_inv,
      ENNReal.le_inv_smul_iff (nnnorm_ne_zero_iff.mpr hc)] at this
#align ediam_smul₀ ediam_smul₀

theorem diam_smul₀ (c : 𝕜) (x : Set E) : diam (c • x) = ‖c‖ * diam x := by
  simp_rw [diam, ediam_smul₀, ENNReal.toReal_smul, NNReal.smul_def, coe_nnnorm, smul_eq_mul]
#align diam_smul₀ diam_smul₀

theorem infEdist_smul₀ {c : 𝕜} (hc : c ≠ 0) (s : Set E) (x : E) :
    EMetric.infEdist (c • x) (c • s) = ‖c‖₊ • EMetric.infEdist x s := by
  simp_rw [EMetric.infEdist]
  have : Function.Surjective ((c • ·) : E → E) :=
    Function.RightInverse.surjective (smul_inv_smul₀ hc)
  trans ⨅ (y) (_ : y ∈ s), ‖c‖₊ • edist x y
  · refine' (this.iInf_congr _ fun y => _).symm
    simp_rw [smul_mem_smul_set_iff₀ hc, edist_smul₀]
  · have : (‖c‖₊ : ENNReal) ≠ 0 := by simp [hc]
    simp_rw [ENNReal.smul_def, smul_eq_mul, ENNReal.mul_iInf_of_ne this ENNReal.coe_ne_top]
#align inf_edist_smul₀ infEdist_smul₀

theorem infDist_smul₀ {c : 𝕜} (hc : c ≠ 0) (s : Set E) (x : E) :
    Metric.infDist (c • x) (c • s) = ‖c‖ * Metric.infDist x s := by
  simp_rw [Metric.infDist, infEdist_smul₀ hc s, ENNReal.toReal_smul, NNReal.smul_def, coe_nnnorm,
    smul_eq_mul]
#align inf_dist_smul₀ infDist_smul₀

end DivisionRing


variable [NormedField 𝕜]

section SeminormedAddCommGroup

variable [SeminormedAddCommGroup E] [NormedSpace 𝕜 E]

theorem smul_ball {c : 𝕜} (hc : c ≠ 0) (x : E) (r : ℝ) : c • ball x r = ball (c • x) (‖c‖ * r) := by
  ext y
  rw [mem_smul_set_iff_inv_smul_mem₀ hc]
  conv_lhs => rw [← inv_smul_smul₀ hc x]
  simp [← div_eq_inv_mul, div_lt_iff (norm_pos_iff.2 hc), mul_comm _ r, dist_smul₀]
#align smul_ball smul_ball

theorem smul_unitBall {c : 𝕜} (hc : c ≠ 0) : c • ball (0 : E) (1 : ℝ) = ball (0 : E) ‖c‖ := by
  rw [_root_.GRWTSK.Topology.MetricTopology.EdiamSmulLe.Variantfc006facbb37b3e08265fd4c0340dff30860e3ff83c1469726d02d3b806e01bb.smul_ball hc, smul_zero, mul_one]
#align smul_unit_ball smul_unitBall

theorem smul_sphere' {c : 𝕜} (hc : c ≠ 0) (x : E) (r : ℝ) :
    c • sphere x r = sphere (c • x) (‖c‖ * r) := by
  ext y
  rw [mem_smul_set_iff_inv_smul_mem₀ hc]
  conv_lhs => rw [← inv_smul_smul₀ hc x]
  simp only [mem_sphere, dist_smul₀, norm_inv, ← div_eq_inv_mul, div_eq_iff (norm_pos_iff.2 hc).ne',
    mul_comm r]
#align smul_sphere' smul_sphere'

theorem smul_closedBall' {c : 𝕜} (hc : c ≠ 0) (x : E) (r : ℝ) :
    c • closedBall x r = closedBall (c • x) (‖c‖ * r) := by
  simp only [← ball_union_sphere, Set.smul_set_union, _root_.GRWTSK.Topology.MetricTopology.EdiamSmulLe.Variantfc006facbb37b3e08265fd4c0340dff30860e3ff83c1469726d02d3b806e01bb.smul_ball hc, smul_sphere' hc]
#align smul_closed_ball' smul_closedBall'

/-- Image of a bounded set in a normed space under scalar multiplication by a constant is
bounded. See also `Metric.Bounded.smul` for a similar lemma about an isometric action. -/
theorem Metric.Bounded.smul₀ {s : Set E} (hs : Bounded s) (c : 𝕜) : Bounded (c • s) :=
  (lipschitzWith_smul c).bounded_image hs
#align metric.bounded.smul Metric.Bounded.smul₀

/-- If `s` is a bounded set, then for small enough `r`, the set `{x} + r • s` is contained in any
fixed neighborhood of `x`. -/
theorem eventually_singleton_add_smul_subset {x : E} {s : Set E} (hs : Bounded s) {u : Set E}
    (hu : u ∈ 𝓝 x) : ∀ᶠ r in 𝓝 (0 : 𝕜), {x} + r • s ⊆ u := by
  obtain ⟨ε, εpos, hε⟩ : ∃ ε : ℝ, 0 < ε ∧ closedBall x ε ⊆ u := nhds_basis_closedBall.mem_iff.1 hu
  obtain ⟨R, Rpos, hR⟩ : ∃ R : ℝ, 0 < R ∧ s ⊆ closedBall 0 R := hs.subset_ball_lt 0 0
  have : Metric.closedBall (0 : 𝕜) (ε / R) ∈ 𝓝 (0 : 𝕜) := closedBall_mem_nhds _ (div_pos εpos Rpos)
  filter_upwards [this]with r hr
  simp only [image_add_left, singleton_add]
  intro y hy
  obtain ⟨z, zs, hz⟩ : ∃ z : E, z ∈ s ∧ r • z = -x + y := by simpa [mem_smul_set] using hy
  have I : ‖r • z‖ ≤ ε :=
    calc
      ‖r • z‖ = ‖r‖ * ‖z‖ := norm_smul _ _
      _ ≤ ε / R * R :=
        (mul_le_mul (mem_closedBall_zero_iff.1 hr) (mem_closedBall_zero_iff.1 (hR zs))
          (norm_nonneg _) (div_pos εpos Rpos).le)
      _ = ε := by field_simp
  have : y = x + r • z := by simp only [hz, add_neg_cancel_left]
  apply hε
  simpa only [this, dist_eq_norm, add_sub_cancel', mem_closedBall] using I
#align eventually_singleton_add_smul_subset eventually_singleton_add_smul_subset

variable [NormedSpace ℝ E] {x y z : E} {δ ε : ℝ}

/-- In a real normed space, the image of the unit ball under scalar multiplication by a positive
constant `r` is the ball of radius `r`. -/
theorem smul_unitBall_of_pos {r : ℝ} (hr : 0 < r) : r • ball (0 : E) 1 = ball (0 : E) r := by
  rw [smul_unitBall hr.ne', Real.norm_of_nonneg hr.le]
#align smul_unit_ball_of_pos smul_unitBall_of_pos

-- This is also true for `ℚ`-normed spaces
theorem exists_dist_eq (x z : E) {a b : ℝ} (ha : 0 ≤ a) (hb : 0 ≤ b) (hab : a + b = 1) :
    ∃ y, dist x y = b * dist x z ∧ dist y z = a * dist x z := by
  use a • x + b • z
  nth_rw 1 [← one_smul ℝ x]
  nth_rw 4 [← one_smul ℝ z]
  simp [dist_eq_norm, ← hab, add_smul, ← smul_sub, norm_smul_of_nonneg, ha, hb]
#align exists_dist_eq exists_dist_eq

theorem exists_dist_le_le (hδ : 0 ≤ δ) (hε : 0 ≤ ε) (h : dist x z ≤ ε + δ) :
    ∃ y, dist x y ≤ δ ∧ dist y z ≤ ε := by
  obtain rfl | hε' := hε.eq_or_lt
  · exact ⟨z, by rwa [zero_add] at h, (dist_self _).le⟩
  have hεδ := add_pos_of_pos_of_nonneg hε' hδ
  refine' (exists_dist_eq x z (div_nonneg hε <| add_nonneg hε hδ)
    (div_nonneg hδ <| add_nonneg hε hδ) <| by
      rw [← add_div, div_self hεδ.ne']).imp
    fun y hy => _
  rw [hy.1, hy.2, div_mul_comm, div_mul_comm ε]
  rw [← div_le_one hεδ] at h
  exact ⟨mul_le_of_le_one_left hδ h, mul_le_of_le_one_left hε h⟩
#align exists_dist_le_le exists_dist_le_le

-- This is also true for `ℚ`-normed spaces
theorem exists_dist_le_lt (hδ : 0 ≤ δ) (hε : 0 < ε) (h : dist x z < ε + δ) :
    ∃ y, dist x y ≤ δ ∧ dist y z < ε := by
  refine' (exists_dist_eq x z (div_nonneg hε.le <| add_nonneg hε.le hδ)
    (div_nonneg hδ <| add_nonneg hε.le hδ) <| by
      rw [← add_div, div_self (add_pos_of_pos_of_nonneg hε hδ).ne']).imp
    fun y hy => _
  rw [hy.1, hy.2, div_mul_comm, div_mul_comm ε]
  rw [← div_lt_one (add_pos_of_pos_of_nonneg hε hδ)] at h
  exact ⟨mul_le_of_le_one_left hδ h.le, mul_lt_of_lt_one_left hε h⟩
#align exists_dist_le_lt exists_dist_le_lt

-- This is also true for `ℚ`-normed spaces
theorem exists_dist_lt_le (hδ : 0 < δ) (hε : 0 ≤ ε) (h : dist x z < ε + δ) :
    ∃ y, dist x y < δ ∧ dist y z ≤ ε := by
  obtain ⟨y, yz, xy⟩ :=
    exists_dist_le_lt hε hδ (show dist z x < δ + ε by simpa only [dist_comm, add_comm] using h)
  exact ⟨y, by simp [dist_comm x y, dist_comm y z, *]⟩
#align exists_dist_lt_le exists_dist_lt_le

-- This is also true for `ℚ`-normed spaces
theorem exists_dist_lt_lt (hδ : 0 < δ) (hε : 0 < ε) (h : dist x z < ε + δ) :
    ∃ y, dist x y < δ ∧ dist y z < ε := by
  refine' (exists_dist_eq x z (div_nonneg hε.le <| add_nonneg hε.le hδ.le)
    (div_nonneg hδ.le <| add_nonneg hε.le hδ.le) <| by
      rw [← add_div, div_self (add_pos hε hδ).ne']).imp
    fun y hy => _
  rw [hy.1, hy.2, div_mul_comm, div_mul_comm ε]
  rw [← div_lt_one (add_pos hε hδ)] at h
  exact ⟨mul_lt_of_lt_one_left hδ h, mul_lt_of_lt_one_left hε h⟩
#align exists_dist_lt_lt exists_dist_lt_lt

-- This is also true for `ℚ`-normed spaces
theorem disjoint_ball_ball_iff (hδ : 0 < δ) (hε : 0 < ε) :
    Disjoint (ball x δ) (ball y ε) ↔ δ + ε ≤ dist x y := by
  refine' ⟨fun h => le_of_not_lt fun hxy => _, ball_disjoint_ball⟩
  rw [add_comm] at hxy
  obtain ⟨z, hxz, hzy⟩ := exists_dist_lt_lt hδ hε hxy
  rw [dist_comm] at hxz
  exact h.le_bot ⟨hxz, hzy⟩
#align disjoint_ball_ball_iff disjoint_ball_ball_iff

-- This is also true for `ℚ`-normed spaces
theorem disjoint_ball_closedBall_iff (hδ : 0 < δ) (hε : 0 ≤ ε) :
    Disjoint (ball x δ) (closedBall y ε) ↔ δ + ε ≤ dist x y := by
  refine' ⟨fun h => le_of_not_lt fun hxy => _, ball_disjoint_closedBall⟩
  rw [add_comm] at hxy
  obtain ⟨z, hxz, hzy⟩ := exists_dist_lt_le hδ hε hxy
  rw [dist_comm] at hxz
  exact h.le_bot ⟨hxz, hzy⟩
#align disjoint_ball_closed_ball_iff disjoint_ball_closedBall_iff

-- This is also true for `ℚ`-normed spaces
theorem disjoint_closedBall_ball_iff (hδ : 0 ≤ δ) (hε : 0 < ε) :
    Disjoint (closedBall x δ) (ball y ε) ↔ δ + ε ≤ dist x y := by
  rw [disjoint_comm, disjoint_ball_closedBall_iff hε hδ, add_comm, dist_comm]
#align disjoint_closed_ball_ball_iff disjoint_closedBall_ball_iff

theorem disjoint_closedBall_closedBall_iff (hδ : 0 ≤ δ) (hε : 0 ≤ ε) :
    Disjoint (closedBall x δ) (closedBall y ε) ↔ δ + ε < dist x y := by
  refine' ⟨fun h => lt_of_not_ge fun hxy => _, closedBall_disjoint_closedBall⟩
  rw [add_comm] at hxy
  obtain ⟨z, hxz, hzy⟩ := exists_dist_le_le hδ hε hxy
  rw [dist_comm] at hxz
  exact h.le_bot ⟨hxz, hzy⟩
#align disjoint_closed_ball_closed_ball_iff disjoint_closedBall_closedBall_iff

open EMetric ENNReal

@[simp]
theorem infEdist_thickening (hδ : 0 < δ) (s : Set E) (x : E) :
    infEdist x (thickening δ s) = infEdist x s - ENNReal.ofReal δ := by
  obtain hs | hs := lt_or_le (infEdist x s) (ENNReal.ofReal δ)
  · rw [infEdist_zero_of_mem, tsub_eq_zero_of_le hs.le]
    exact hs
  refine' (tsub_le_iff_right.2 infEdist_le_infEdist_thickening_add).antisymm' _
  refine' le_sub_of_add_le_right ofReal_ne_top _
  refine' le_infEdist.2 fun z hz => le_of_forall_lt' fun r h => _
  cases' r with r
  · exact add_lt_top.2 ⟨lt_top_iff_ne_top.2 <| infEdist_ne_top ⟨z, self_subset_thickening hδ _ hz⟩,
      ofReal_lt_top⟩
  have hr : 0 < ↑r - δ := by
    refine' sub_pos_of_lt _
    have := hs.trans_lt ((infEdist_le_edist_of_mem hz).trans_lt h)
    rw [ofReal_eq_coe_nnreal hδ.le, some_eq_coe] at this
    exact_mod_cast this
  rw [some_eq_coe, edist_lt_coe, ← dist_lt_coe, ← add_sub_cancel'_right δ ↑r] at h
  obtain ⟨y, hxy, hyz⟩ := exists_dist_lt_lt hr hδ h
  refine' (ENNReal.add_lt_add_right ofReal_ne_top <|
    infEdist_lt_iff.2 ⟨_, mem_thickening_iff.2 ⟨_, hz, hyz⟩, edist_lt_ofReal.2 hxy⟩).trans_le _
  rw [← ofReal_add hr.le hδ.le, sub_add_cancel, ofReal_coe_nnreal]
  exact le_rfl
#align inf_edist_thickening infEdist_thickening

@[simp]
theorem thickening_thickening (hε : 0 < ε) (hδ : 0 < δ) (s : Set E) :
    thickening ε (thickening δ s) = thickening (ε + δ) s :=
  (thickening_thickening_subset _ _ _).antisymm fun x => by
    simp_rw [mem_thickening_iff]
    rintro ⟨z, hz, hxz⟩
    rw [add_comm] at hxz
    obtain ⟨y, hxy, hyz⟩ := exists_dist_lt_lt hε hδ hxz
    exact ⟨y, ⟨_, hz, hyz⟩, hxy⟩
#align thickening_thickening thickening_thickening

@[simp]
theorem cthickening_thickening (hε : 0 ≤ ε) (hδ : 0 < δ) (s : Set E) :
    cthickening ε (thickening δ s) = cthickening (ε + δ) s :=
  (cthickening_thickening_subset hε _ _).antisymm fun x => by
    simp_rw [mem_cthickening_iff, ENNReal.ofReal_add hε hδ.le, infEdist_thickening hδ]
    exact tsub_le_iff_right.2
#align cthickening_thickening cthickening_thickening

-- Note: `interior (cthickening δ s) ≠ thickening δ s` in general
@[simp]
theorem closure_thickening (hδ : 0 < δ) (s : Set E) :
    closure (thickening δ s) = cthickening δ s := by
  rw [← cthickening_zero, cthickening_thickening le_rfl hδ, zero_add]
#align closure_thickening closure_thickening

@[simp]
theorem infEdist_cthickening (δ : ℝ) (s : Set E) (x : E) :
    infEdist x (cthickening δ s) = infEdist x s - ENNReal.ofReal δ := by
  obtain hδ | hδ := le_or_lt δ 0
  · rw [cthickening_of_nonpos hδ, infEdist_closure, ofReal_of_nonpos hδ, tsub_zero]
  · rw [← closure_thickening hδ, infEdist_closure, infEdist_thickening hδ]
#align inf_edist_cthickening infEdist_cthickening

@[simp]
theorem thickening_cthickening (hε : 0 < ε) (hδ : 0 ≤ δ) (s : Set E) :
    thickening ε (cthickening δ s) = thickening (ε + δ) s := by
  obtain rfl | hδ := hδ.eq_or_lt
  · rw [cthickening_zero, thickening_closure, add_zero]
  · rw [← closure_thickening hδ, thickening_closure, thickening_thickening hε hδ]
#align thickening_cthickening thickening_cthickening

@[simp]
theorem cthickening_cthickening (hε : 0 ≤ ε) (hδ : 0 ≤ δ) (s : Set E) :
    cthickening ε (cthickening δ s) = cthickening (ε + δ) s :=
  (cthickening_cthickening_subset hε hδ _).antisymm fun x => by
    simp_rw [mem_cthickening_iff, ENNReal.ofReal_add hε hδ, infEdist_cthickening]
    exact tsub_le_iff_right.2
#align cthickening_cthickening cthickening_cthickening

@[simp]
theorem thickening_ball (hε : 0 < ε) (hδ : 0 < δ) (x : E) :
    thickening ε (ball x δ) = ball x (ε + δ) := by
  rw [← thickening_singleton, thickening_thickening hε hδ, thickening_singleton]
#align thickening_ball thickening_ball

@[simp]
theorem thickening_closedBall (hε : 0 < ε) (hδ : 0 ≤ δ) (x : E) :
    thickening ε (closedBall x δ) = ball x (ε + δ) := by
  rw [← cthickening_singleton _ hδ, thickening_cthickening hε hδ, thickening_singleton]
#align thickening_closed_ball thickening_closedBall

@[simp]
theorem cthickening_ball (hε : 0 ≤ ε) (hδ : 0 < δ) (x : E) :
    cthickening ε (ball x δ) = closedBall x (ε + δ) := by
  rw [← thickening_singleton, cthickening_thickening hε hδ,
      cthickening_singleton _ (add_nonneg hε hδ.le)]
#align cthickening_ball cthickening_ball

@[simp]
theorem cthickening_closedBall (hε : 0 ≤ ε) (hδ : 0 ≤ δ) (x : E) :
    cthickening ε (closedBall x δ) = closedBall x (ε + δ) := by
  rw [← cthickening_singleton _ hδ, cthickening_cthickening hε hδ,
      cthickening_singleton _ (add_nonneg hε hδ)]
#align cthickening_closed_ball cthickening_closedBall

theorem ball_add_ball (hε : 0 < ε) (hδ : 0 < δ) (a b : E) :
    ball a ε + ball b δ = ball (a + b) (ε + δ) := by
  rw [ball_add, thickening_ball hε hδ b, Metric.vadd_ball, vadd_eq_add]
#align ball_add_ball ball_add_ball

theorem ball_sub_ball (hε : 0 < ε) (hδ : 0 < δ) (a b : E) :
    ball a ε - ball b δ = ball (a - b) (ε + δ) := by
  simp_rw [sub_eq_add_neg, neg_ball, ball_add_ball hε hδ]
#align ball_sub_ball ball_sub_ball

theorem ball_add_closedBall (hε : 0 < ε) (hδ : 0 ≤ δ) (a b : E) :
    ball a ε + closedBall b δ = ball (a + b) (ε + δ) := by
  rw [ball_add, thickening_closedBall hε hδ b, Metric.vadd_ball, vadd_eq_add]
#align ball_add_closed_ball ball_add_closedBall

theorem ball_sub_closedBall (hε : 0 < ε) (hδ : 0 ≤ δ) (a b : E) :
    ball a ε - closedBall b δ = ball (a - b) (ε + δ) := by
  simp_rw [sub_eq_add_neg, neg_closedBall, ball_add_closedBall hε hδ]
#align ball_sub_closed_ball ball_sub_closedBall

theorem closedBall_add_ball (hε : 0 ≤ ε) (hδ : 0 < δ) (a b : E) :
    closedBall a ε + ball b δ = ball (a + b) (ε + δ) := by
  rw [add_comm, ball_add_closedBall hδ hε b, add_comm, add_comm δ]
#align closed_ball_add_ball closedBall_add_ball

theorem closedBall_sub_ball (hε : 0 ≤ ε) (hδ : 0 < δ) (a b : E) :
    closedBall a ε - ball b δ = ball (a - b) (ε + δ) := by
  simp_rw [sub_eq_add_neg, neg_ball, closedBall_add_ball hε hδ]
#align closed_ball_sub_ball closedBall_sub_ball

theorem closedBall_add_closedBall [ProperSpace E] (hε : 0 ≤ ε) (hδ : 0 ≤ δ) (a b : E) :
    closedBall a ε + closedBall b δ = closedBall (a + b) (ε + δ) := by
  rw [(isCompact_closedBall _ _).add_closedBall hδ b, cthickening_closedBall hδ hε a,
    Metric.vadd_closedBall, vadd_eq_add, add_comm, add_comm δ]
#align closed_ball_add_closed_ball closedBall_add_closedBall

theorem closedBall_sub_closedBall [ProperSpace E] (hε : 0 ≤ ε) (hδ : 0 ≤ δ) (a b : E) :
    closedBall a ε - closedBall b δ = closedBall (a - b) (ε + δ) := by
  rw [sub_eq_add_neg, neg_closedBall, closedBall_add_closedBall hε hδ, sub_eq_add_neg]
#align closed_ball_sub_closed_ball closedBall_sub_closedBall

end SeminormedAddCommGroup

section NormedAddCommGroup

variable [NormedAddCommGroup E] [NormedSpace 𝕜 E]

theorem smul_closedBall (c : 𝕜) (x : E) {r : ℝ} (hr : 0 ≤ r) :
    c • closedBall x r = closedBall (c • x) (‖c‖ * r) := by
  rcases eq_or_ne c 0 with (rfl | hc)
  · simp [hr, zero_smul_set, Set.singleton_zero, ← nonempty_closedBall]
  · exact smul_closedBall' hc x r
#align smul_closed_ball smul_closedBall

theorem smul_closedUnitBall (c : 𝕜) : c • closedBall (0 : E) (1 : ℝ) = closedBall (0 : E) ‖c‖ :=
  by rw [smul_closedBall _ _ zero_le_one, smul_zero, mul_one]
#align smul_closed_unit_ball smul_closedUnitBall

variable [NormedSpace ℝ E]

/-- In a real normed space, the image of the unit closed ball under multiplication by a nonnegative
number `r` is the closed ball of radius `r` with center at the origin. -/
theorem smul_closedUnitBall_of_nonneg {r : ℝ} (hr : 0 ≤ r) :
    r • closedBall (0 : E) 1 = closedBall (0 : E) r := by
  rw [smul_closedUnitBall, Real.norm_of_nonneg hr]
#align smul_closed_unit_ball_of_nonneg smul_closedUnitBall_of_nonneg

/-- In a nontrivial real normed space, a sphere is nonempty if and only if its radius is
nonnegative. -/
@[simp]
theorem NormedSpace.sphere_nonempty [Nontrivial E] {x : E} {r : ℝ} :
    (sphere x r).Nonempty ↔ 0 ≤ r := by
  obtain ⟨y, hy⟩ := exists_ne x
  refine' ⟨fun h => nonempty_closedBall.1 (h.mono sphere_subset_closedBall), fun hr =>
    ⟨r • ‖y - x‖⁻¹ • (y - x) + x, _⟩⟩
  have : ‖y - x‖ ≠ 0 := by simpa [sub_eq_zero]
  simp [norm_smul, this, Real.norm_of_nonneg hr]
  rw [inv_mul_cancel this, mul_one, abs_eq_self.mpr hr]
#align normed_space.sphere_nonempty NormedSpace.sphere_nonempty

theorem smul_sphere [Nontrivial E] (c : 𝕜) (x : E) {r : ℝ} (hr : 0 ≤ r) :
    c • sphere x r = sphere (c • x) (‖c‖ * r) := by
  rcases eq_or_ne c 0 with (rfl | hc)
  · simp [zero_smul_set, Set.singleton_zero, hr]
  · exact smul_sphere' hc x r
#align smul_sphere smul_sphere

/-- Any ball `Metric.ball x r`, `0 < r` is the image of the unit ball under `fun y ↦ x + r • y`. -/
theorem affinity_unitBall {r : ℝ} (hr : 0 < r) (x : E) : x +ᵥ r • ball (0 : E) 1 = ball x r := by
  rw [smul_unitBall_of_pos hr, vadd_ball_zero]
#align affinity_unit_ball affinity_unitBall

/-- Any closed ball `Metric.closedBall x r`, `0 ≤ r` is the image of the unit closed ball under
`fun y ↦ x + r • y`. -/
theorem affinity_unitClosedBall {r : ℝ} (hr : 0 ≤ r) (x : E) :
    x +ᵥ r • closedBall (0 : E) 1 = closedBall x r := by
  rw [smul_closedUnitBall, Real.norm_of_nonneg hr, vadd_closedBall_zero]
#align affinity_unit_closed_ball affinity_unitClosedBall

end NormedAddCommGroup
