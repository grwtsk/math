# Complete source: GRWTSK.Topology.MetricTopology.UpperLower.Varianta9baec96740a758c94388a4b78737b9972436b6861a5c2705cebf394398f1d22

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a2f15edd1badcc7fc5d81d2995b070d7e00c6b3` · SHA-256 `7f2f9ad07b1b88d2e0bdb7fbbe7ce42e89fb6551603b619dd553f81e5f1c7893`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.IsUpperSetThickeningPrime.Variantcb7757278521b1ad0c61c8e2b8f8e1142c4ad97d8d55d4cefb6d29496eb8f952","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb7757278521b1ad0c61c8e2b8f8e1142c4ad97d8d55d4cefb6d29496eb8f952","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.IsUpperSetThickeningPrime.Variantcb7757278521b1ad0c61c8e2b8f8e1142c4ad97d8d55d4cefb6d29496eb8f952","mathematical_subject":"Topology.MetricSpaces","original_sha256":"cb7757278521b1ad0c61c8e2b8f8e1142c4ad97d8d55d4cefb6d29496eb8f952","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/Normed/Order/UpperLower.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Order.Field.Pi
import Mathlib.Analysis.Normed.Group.Pointwise
import Mathlib.Analysis.Normed.Order.Basic
import Mathlib.Topology.Algebra.Order.UpperLower


namespace GRWTSK.Topology.MetricTopology.IsUpperSetThickeningPrime.Variantcb7757278521b1ad0c61c8e2b8f8e1142c4ad97d8d55d4cefb6d29496eb8f952

#align_import analysis.normed.order.upper_lower from "leanprover-community/mathlib"@"992efbda6f85a5c9074375d3c7cb9764c64d8f72"

/-!
# Upper/lower/order-connected sets in normed groups

The topological closure and interior of an upper/lower/order-connected set is an
upper/lower/order-connected set (with the notable exception of the closure of an order-connected
set).

We also prove lemmas specific to `ℝⁿ`. Those are helpful to prove that order-connected sets in `ℝⁿ`
are measurable.
-/


open Function Metric Set

variable {α ι : Type*}

section MetricSpace

variable [NormedOrderedGroup α] {s : Set α}

@[to_additive IsUpperSet.thickening]
protected theorem IsUpperSet.thickening' (hs : IsUpperSet s) (ε : ℝ) :
    IsUpperSet (thickening ε s) := by
  rw [← ball_mul_one]
  exact hs.mul_left
#align is_upper_set.thickening' IsUpperSet.thickening'
#align is_upper_set.thickening IsUpperSet.thickening

@[to_additive IsLowerSet.thickening]
protected theorem IsLowerSet.thickening' (hs : IsLowerSet s) (ε : ℝ) :
    IsLowerSet (thickening ε s) := by
  rw [← ball_mul_one]
  exact hs.mul_left
#align is_lower_set.thickening' IsLowerSet.thickening'
#align is_lower_set.thickening IsLowerSet.thickening

@[to_additive IsUpperSet.cthickening]
protected theorem IsUpperSet.cthickening' (hs : IsUpperSet s) (ε : ℝ) :
    IsUpperSet (cthickening ε s) := by
  rw [cthickening_eq_iInter_thickening'']
  exact isUpperSet_iInter₂ fun δ _ => hs.thickening' _
#align is_upper_set.cthickening' IsUpperSet.cthickening'
#align is_upper_set.cthickening IsUpperSet.cthickening

@[to_additive IsLowerSet.cthickening]
protected theorem IsLowerSet.cthickening' (hs : IsLowerSet s) (ε : ℝ) :
    IsLowerSet (cthickening ε s) := by
  rw [cthickening_eq_iInter_thickening'']
  exact isLowerSet_iInter₂ fun δ _ => hs.thickening' _
#align is_lower_set.cthickening' IsLowerSet.cthickening'
#align is_lower_set.cthickening IsLowerSet.cthickening

end MetricSpace

/-! ### `ℝⁿ` -/


section Finite

variable [Finite ι] {s : Set (ι → ℝ)} {x y : ι → ℝ} {δ : ℝ}

theorem IsUpperSet.mem_interior_of_forall_lt (hs : IsUpperSet s) (hx : x ∈ closure s)
    (h : ∀ i, x i < y i) : y ∈ interior s := by
  cases nonempty_fintype ι
  obtain ⟨ε, hε, hxy⟩ := Pi.exists_forall_pos_add_lt h
  obtain ⟨z, hz, hxz⟩ := Metric.mem_closure_iff.1 hx _ hε
  rw [dist_pi_lt_iff hε] at hxz
  have hyz : ∀ i, z i < y i := by
    refine' fun i => (hxy _).trans_le' (sub_le_iff_le_add'.1 <| (le_abs_self _).trans _)
    rw [← Real.norm_eq_abs, ← dist_eq_norm']
    exact (hxz _).le
  obtain ⟨δ, hδ, hyz⟩ := Pi.exists_forall_pos_add_lt hyz
  refine' mem_interior.2 ⟨ball y δ, _, isOpen_ball, mem_ball_self hδ⟩
  rintro w hw
  refine' hs (fun i => _) hz
  simp_rw [ball_pi _ hδ, Real.ball_eq_Ioo] at hw
  exact ((lt_sub_iff_add_lt.2 <| hyz _).trans (hw _ <| mem_univ _).1).le
#align is_upper_set.mem_interior_of_forall_lt IsUpperSet.mem_interior_of_forall_lt

theorem IsLowerSet.mem_interior_of_forall_lt (hs : IsLowerSet s) (hx : x ∈ closure s)
    (h : ∀ i, y i < x i) : y ∈ interior s := by
  cases nonempty_fintype ι
  obtain ⟨ε, hε, hxy⟩ := Pi.exists_forall_pos_add_lt h
  obtain ⟨z, hz, hxz⟩ := Metric.mem_closure_iff.1 hx _ hε
  rw [dist_pi_lt_iff hε] at hxz
  have hyz : ∀ i, y i < z i := by
    refine' fun i =>
      (lt_sub_iff_add_lt.2 <| hxy _).trans_le (sub_le_comm.1 <| (le_abs_self _).trans _)
    rw [← Real.norm_eq_abs, ← dist_eq_norm]
    exact (hxz _).le
  obtain ⟨δ, hδ, hyz⟩ := Pi.exists_forall_pos_add_lt hyz
  refine' mem_interior.2 ⟨ball y δ, _, isOpen_ball, mem_ball_self hδ⟩
  rintro w hw
  refine' hs (fun i => _) hz
  simp_rw [ball_pi _ hδ, Real.ball_eq_Ioo] at hw
  exact ((hw _ <| mem_univ _).2.trans <| hyz _).le
#align is_lower_set.mem_interior_of_forall_lt IsLowerSet.mem_interior_of_forall_lt

end Finite

section Fintype

variable [Fintype ι] {s : Set (ι → ℝ)} {x y : ι → ℝ} {δ : ℝ}

theorem IsUpperSet.exists_subset_ball (hs : IsUpperSet s) (hx : x ∈ closure s) (hδ : 0 < δ) :
    ∃ y, closedBall y (δ / 4) ⊆ closedBall x δ ∧ closedBall y (δ / 4) ⊆ interior s := by
  refine' ⟨x + const _ (3 / 4 * δ), closedBall_subset_closedBall' _, _⟩
  · rw [dist_self_add_left]
    refine' (add_le_add_left (pi_norm_const_le <| 3 / 4 * δ) _).trans_eq _
    simp [Real.norm_of_nonneg, hδ.le, zero_le_three]
    simp [abs_of_pos, abs_of_pos hδ]
    ring
  obtain ⟨y, hy, hxy⟩ := Metric.mem_closure_iff.1 hx _ (div_pos hδ zero_lt_four)
  refine' fun z hz => hs.mem_interior_of_forall_lt (subset_closure hy) fun i => _
  rw [mem_closedBall, dist_eq_norm'] at hz
  rw [dist_eq_norm] at hxy
  replace hxy := (norm_le_pi_norm _ i).trans hxy.le
  replace hz := (norm_le_pi_norm _ i).trans hz
  dsimp at hxy hz
  rw [abs_sub_le_iff] at hxy hz
  linarith
#align is_upper_set.exists_subset_ball IsUpperSet.exists_subset_ball

theorem IsLowerSet.exists_subset_ball (hs : IsLowerSet s) (hx : x ∈ closure s) (hδ : 0 < δ) :
    ∃ y, closedBall y (δ / 4) ⊆ closedBall x δ ∧ closedBall y (δ / 4) ⊆ interior s := by
  refine' ⟨x - const _ (3 / 4 * δ), closedBall_subset_closedBall' _, _⟩
  · rw [dist_self_sub_left]
    refine' (add_le_add_left (pi_norm_const_le <| 3 / 4 * δ) _).trans_eq _
    simp [abs_of_pos, abs_of_pos hδ]
    ring
  obtain ⟨y, hy, hxy⟩ := Metric.mem_closure_iff.1 hx _ (div_pos hδ zero_lt_four)
  refine' fun z hz => hs.mem_interior_of_forall_lt (subset_closure hy) fun i => _
  rw [mem_closedBall, dist_eq_norm'] at hz
  rw [dist_eq_norm] at hxy
  replace hxy := (norm_le_pi_norm _ i).trans hxy.le
  replace hz := (norm_le_pi_norm _ i).trans hz
  dsimp at hxy hz
  rw [abs_sub_le_iff] at hxy hz
  linarith
#align is_lower_set.exists_subset_ball IsLowerSet.exists_subset_ball

end Fintype
```
