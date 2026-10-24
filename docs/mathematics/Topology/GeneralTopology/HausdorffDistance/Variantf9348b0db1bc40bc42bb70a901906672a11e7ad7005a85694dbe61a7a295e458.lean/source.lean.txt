-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.InfEdist.Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.InfEdist.Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695","mathematical_subject":"Topology.GeneralTopology","original_sha256":"bc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/MetricSpace/HausdorffDistance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Topology.MetricSpace.IsometricSMul
import Mathlib.Topology.Instances.ENNReal


namespace GRWTSK.Topology.GeneralTopology.InfEdist.Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695

#align_import topology.metric_space.hausdorff_distance from "leanprover-community/mathlib"@"bc91ed7093bf098d253401e69df601fc33dde156"

/-!
# Hausdorff distance

The Hausdorff distance on subsets of a metric (or emetric) space.

Given two subsets `s` and `t` of a metric space, their Hausdorff distance is the smallest `d`
such that any point `s` is within `d` of a point in `t`, and conversely. This quantity
is often infinite (think of `s` bounded and `t` unbounded), and therefore better
expressed in the setting of emetric spaces.

## Main definitions

This files introduces:
* `EMetric.infEdist x s`, the infimum edistance of a point `x` to a set `s` in an emetric space
* `EMetric.hausdorffEdist s t`, the Hausdorff edistance of two sets in an emetric space
* Versions of these notions on metric spaces, called respectively `Metric.infDist`
  and `Metric.hausdorffDist`
* `Metric.thickening δ s`, the open thickening by radius `δ` of a set `s` in a pseudo emetric space.
* `Metric.cthickening δ s`, the closed thickening by radius `δ` of a set `s` in a pseudo emetric
  space.
-/


noncomputable section

open Classical NNReal ENNReal Topology Set Function TopologicalSpace Filter Pointwise

universe u v w

variable {ι : Sort*} {α : Type u} {β : Type v}

namespace EMetric

section InfEdist

variable [PseudoEMetricSpace α] [PseudoEMetricSpace β] {x y : α} {s t : Set α} {Φ : α → β}

/-! ### Distance of a point to a set as a function into `ℝ≥0∞`. -/

/-- The minimal edistance of a point to a set -/
def infEdist (x : α) (s : Set α) : ℝ≥0∞ :=
  ⨅ y ∈ s, edist x y
#align emetric.inf_edist EMetric.infEdist

@[simp]
theorem infEdist_empty : infEdist x ∅ = ∞ :=
  iInf_emptyset
#align emetric.inf_edist_empty EMetric.infEdist_empty

theorem le_infEdist {d} : d ≤ infEdist x s ↔ ∀ y ∈ s, d ≤ edist x y := by
  simp only [infEdist, le_iInf_iff]
#align emetric.le_inf_edist EMetric.le_infEdist

/-- The edist to a union is the minimum of the edists -/
@[simp]
theorem infEdist_union : infEdist x (s ∪ t) = infEdist x s ⊓ infEdist x t :=
  iInf_union
#align emetric.inf_edist_union EMetric.infEdist_union

@[simp]
theorem infEdist_iUnion (f : ι → Set α) (x : α) : infEdist x (⋃ i, f i) = ⨅ i, infEdist x (f i) :=
  iInf_iUnion f _
#align emetric.inf_edist_Union EMetric.infEdist_iUnion

/-- The edist to a singleton is the edistance to the single point of this singleton -/
@[simp]
theorem infEdist_singleton : infEdist x {y} = edist x y :=
  iInf_singleton
#align emetric.inf_edist_singleton EMetric.infEdist_singleton

/-- The edist to a set is bounded above by the edist to any of its points -/
theorem infEdist_le_edist_of_mem (h : y ∈ s) : infEdist x s ≤ edist x y :=
  iInf₂_le y h
#align emetric.inf_edist_le_edist_of_mem EMetric.infEdist_le_edist_of_mem

/-- If a point `x` belongs to `s`, then its edist to `s` vanishes -/
theorem infEdist_zero_of_mem (h : x ∈ s) : infEdist x s = 0 :=
  nonpos_iff_eq_zero.1 <| @edist_self _ _ x ▸ infEdist_le_edist_of_mem h
#align emetric.inf_edist_zero_of_mem EMetric.infEdist_zero_of_mem

/-- The edist is antitone with respect to inclusion. -/
theorem infEdist_anti (h : s ⊆ t) : infEdist x t ≤ infEdist x s :=
  iInf_le_iInf_of_subset h
#align emetric.inf_edist_anti EMetric.infEdist_anti

/-- The edist to a set is `< r` iff there exists a point in the set at edistance `< r` -/
theorem infEdist_lt_iff {r : ℝ≥0∞} : infEdist x s < r ↔ ∃ y ∈ s, edist x y < r := by
  simp_rw [infEdist, iInf_lt_iff, exists_prop]
#align emetric.inf_edist_lt_iff EMetric.infEdist_lt_iff

/-- The edist of `x` to `s` is bounded by the sum of the edist of `y` to `s` and
the edist from `x` to `y` -/
theorem infEdist_le_infEdist_add_edist : infEdist x s ≤ infEdist y s + edist x y :=
  calc
    ⨅ z ∈ s, edist x z ≤ ⨅ z ∈ s, edist y z + edist x y :=
      iInf₂_mono fun z _ => (edist_triangle _ _ _).trans_eq (add_comm _ _)
    _ = (⨅ z ∈ s, edist y z) + edist x y := by simp only [ENNReal.iInf_add]
#align emetric.inf_edist_le_inf_edist_add_edist EMetric.infEdist_le_infEdist_add_edist

theorem infEdist_le_edist_add_infEdist : infEdist x s ≤ edist x y + infEdist y s := by
  rw [add_comm]
  exact infEdist_le_infEdist_add_edist
#align emetric.inf_edist_le_edist_add_inf_edist EMetric.infEdist_le_edist_add_infEdist

theorem edist_le_infEdist_add_ediam (hy : y ∈ s) : edist x y ≤ infEdist x s + diam s := by
  simp_rw [infEdist, ENNReal.iInf_add]
  refine le_iInf₂ fun i hi => ?_
  calc
    edist x y ≤ edist x i + edist i y := edist_triangle _ _ _
    _ ≤ edist x i + diam s := add_le_add le_rfl (edist_le_diam_of_mem hi hy)
#align emetric.edist_le_inf_edist_add_ediam EMetric.edist_le_infEdist_add_ediam

/-- The edist to a set depends continuously on the point -/
@[continuity]
theorem continuous_infEdist : Continuous fun x => infEdist x s :=
  continuous_of_le_add_edist 1 (by simp) <| by
    simp only [one_mul, infEdist_le_infEdist_add_edist, forall₂_true_iff]
#align emetric.continuous_inf_edist EMetric.continuous_infEdist

/-- The edist to a set and to its closure coincide -/
theorem infEdist_closure : infEdist x (closure s) = infEdist x s := by
  refine' le_antisymm (infEdist_anti subset_closure) _
  refine' ENNReal.le_of_forall_pos_le_add fun ε εpos h => _
  have ε0 : 0 < (ε / 2 : ℝ≥0∞) := by simpa [pos_iff_ne_zero] using εpos
  have : infEdist x (closure s) < infEdist x (closure s) + ε / 2 :=
    ENNReal.lt_add_right h.ne ε0.ne'
  rcases infEdist_lt_iff.mp this with ⟨y, ycs, hy⟩
  -- y : α, ycs : y ∈ closure s, hy : edist x y < infEdist x (closure s) + ↑ε / 2
  rcases EMetric.mem_closure_iff.1 ycs (ε / 2) ε0 with ⟨z, zs, dyz⟩
  -- z : α, zs : z ∈ s, dyz : edist y z < ↑ε / 2
  calc
    infEdist x s ≤ edist x z := infEdist_le_edist_of_mem zs
    _ ≤ edist x y + edist y z := (edist_triangle _ _ _)
    _ ≤ infEdist x (closure s) + ε / 2 + ε / 2 := (add_le_add (le_of_lt hy) (le_of_lt dyz))
    _ = infEdist x (closure s) + ↑ε := by rw [add_assoc, ENNReal.add_halves]
#align emetric.inf_edist_closure EMetric.infEdist_closure

/-- A point belongs to the closure of `s` iff its infimum edistance to this set vanishes -/
theorem mem_closure_iff_infEdist_zero : x ∈ closure s ↔ infEdist x s = 0 :=
  ⟨fun h => by
    rw [← infEdist_closure]
    exact infEdist_zero_of_mem h,
   fun h =>
    EMetric.mem_closure_iff.2 fun ε εpos => infEdist_lt_iff.mp <| by rwa [h]⟩
#align emetric.mem_closure_iff_inf_edist_zero EMetric.mem_closure_iff_infEdist_zero

/-- Given a closed set `s`, a point belongs to `s` iff its infimum edistance to this set vanishes -/
theorem mem_iff_infEdist_zero_of_closed (h : IsClosed s) : x ∈ s ↔ infEdist x s = 0 := by
  rw [← mem_closure_iff_infEdist_zero, h.closure_eq]
#align emetric.mem_iff_inf_edist_zero_of_closed EMetric.mem_iff_infEdist_zero_of_closed

/-- The infimum edistance of a point to a set is positive if and only if the point is not in the
closure of the set. -/
theorem infEdist_pos_iff_not_mem_closure {x : α} {E : Set α} : 0 < infEdist x E ↔ x ∉ closure E :=
  by rw [mem_closure_iff_infEdist_zero, pos_iff_ne_zero]
#align emetric.inf_edist_pos_iff_not_mem_closure EMetric.infEdist_pos_iff_not_mem_closure

theorem infEdist_closure_pos_iff_not_mem_closure {x : α} {E : Set α} :
    0 < infEdist x (closure E) ↔ x ∉ closure E := by
  rw [infEdist_closure, infEdist_pos_iff_not_mem_closure]
#align emetric.inf_edist_closure_pos_iff_not_mem_closure EMetric.infEdist_closure_pos_iff_not_mem_closure

theorem exists_real_pos_lt_infEdist_of_not_mem_closure {x : α} {E : Set α} (h : x ∉ closure E) :
    ∃ ε : ℝ, 0 < ε ∧ ENNReal.ofReal ε < infEdist x E := by
  rw [← infEdist_pos_iff_not_mem_closure, ENNReal.lt_iff_exists_real_btwn] at h
  rcases h with ⟨ε, ⟨_, ⟨ε_pos, ε_lt⟩⟩⟩
  exact ⟨ε, ⟨ENNReal.ofReal_pos.mp ε_pos, ε_lt⟩⟩
#align emetric.exists_real_pos_lt_inf_edist_of_not_mem_closure EMetric.exists_real_pos_lt_infEdist_of_not_mem_closure

theorem disjoint_closedBall_of_lt_infEdist {r : ℝ≥0∞} (h : r < infEdist x s) :
    Disjoint (closedBall x r) s := by
  rw [disjoint_left]
  intro y hy h'y
  apply lt_irrefl (infEdist x s)
  calc
    infEdist x s ≤ edist x y := infEdist_le_edist_of_mem h'y
    _ ≤ r := by rwa [mem_closedBall, edist_comm] at hy
    _ < infEdist x s := h
#align emetric.disjoint_closed_ball_of_lt_inf_edist EMetric.disjoint_closedBall_of_lt_infEdist

/-- The infimum edistance is invariant under isometries -/
theorem infEdist_image (hΦ : Isometry Φ) : infEdist (Φ x) (Φ '' t) = infEdist x t := by
  simp only [infEdist, iInf_image, hΦ.edist_eq]
#align emetric.inf_edist_image EMetric.infEdist_image

@[to_additive (attr := simp)]
theorem infEdist_smul {M} [SMul M α] [IsometricSMul M α] (c : M) (x : α) (s : Set α) :
    infEdist (c • x) (c • s) = infEdist x s :=
  infEdist_image (isometry_smul _ _)
#align emetric.inf_edist_smul EMetric.infEdist_smul
#align emetric.inf_edist_vadd EMetric.infEdist_vadd

theorem _root_.GRWTSK.Topology.GeneralTopology.InfEdist.Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.IsOpen.exists_iUnion_isClosed {U : Set α} (hU : IsOpen U) :
    ∃ F : ℕ → Set α, (∀ n, IsClosed (F n)) ∧ (∀ n, F n ⊆ U) ∧ ⋃ n, F n = U ∧ Monotone F := by
  obtain ⟨a, a_pos, a_lt_one⟩ : ∃ a : ℝ≥0∞, 0 < a ∧ a < 1 := exists_between zero_lt_one
  let F := fun n : ℕ => (fun x => infEdist x Uᶜ) ⁻¹' Ici (a ^ n)
  have F_subset : ∀ n, F n ⊆ U := fun n x hx ↦ by
    by_contra h
    have : infEdist x Uᶜ ≠ 0 := ((ENNReal.pow_pos a_pos _).trans_le hx).ne'
    exact this (infEdist_zero_of_mem h)
  refine ⟨F, fun n => IsClosed.preimage continuous_infEdist isClosed_Ici, F_subset, ?_, ?_⟩
  show ⋃ n, F n = U
  · refine' Subset.antisymm (by simp only [iUnion_subset_iff, F_subset, forall_const]) fun x hx => _
    have : ¬x ∈ Uᶜ := by simpa using hx
    rw [mem_iff_infEdist_zero_of_closed hU.isClosed_compl] at this
    have B : 0 < infEdist x Uᶜ := by simpa [pos_iff_ne_zero] using this
    have : Filter.Tendsto (fun n => a ^ n) atTop (𝓝 0) :=
      ENNReal.tendsto_pow_atTop_nhds_0_of_lt_1 a_lt_one
    rcases((tendsto_order.1 this).2 _ B).exists with ⟨n, hn⟩
    simp only [mem_iUnion, mem_Ici, mem_preimage]
    exact ⟨n, hn.le⟩
  show Monotone F
  · intro m n hmn x hx
    simp only [mem_Ici, mem_preimage] at hx ⊢
    apply le_trans (pow_le_pow_of_le_one' a_lt_one.le hmn) hx
#align is_open.exists_Union_is_closed IsOpen.exists_iUnion_isClosed

theorem _root_.GRWTSK.Topology.GeneralTopology.InfEdist.Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.IsCompact.exists_infEdist_eq_edist (hs : IsCompact s) (hne : s.Nonempty) (x : α) :
    ∃ y ∈ s, infEdist x s = edist x y := by
  have A : Continuous fun y => edist x y := continuous_const.edist continuous_id
  obtain ⟨y, ys, hy⟩ : ∃ y ∈ s, ∀ z, z ∈ s → edist x y ≤ edist x z :=
    hs.exists_forall_le hne A.continuousOn
  exact ⟨y, ys, le_antisymm (infEdist_le_edist_of_mem ys) (by rwa [le_infEdist])⟩
#align is_compact.exists_inf_edist_eq_edist IsCompact.exists_infEdist_eq_edist

theorem exists_pos_forall_lt_edist (hs : IsCompact s) (ht : IsClosed t) (hst : Disjoint s t) :
    ∃ r : ℝ≥0, 0 < r ∧ ∀ x ∈ s, ∀ y ∈ t, (r : ℝ≥0∞) < edist x y := by
  rcases s.eq_empty_or_nonempty with (rfl | hne)
  · use 1
    simp
  obtain ⟨x, hx, h⟩ : ∃ x ∈ s, ∀ y ∈ s, infEdist x t ≤ infEdist y t :=
    hs.exists_forall_le hne continuous_infEdist.continuousOn
  have : 0 < infEdist x t :=
    pos_iff_ne_zero.2 fun H => hst.le_bot ⟨hx, (mem_iff_infEdist_zero_of_closed ht).mpr H⟩
  rcases ENNReal.lt_iff_exists_nnreal_btwn.1 this with ⟨r, h₀, hr⟩
  exact ⟨r, ENNReal.coe_pos.mp h₀, fun y hy z hz => hr.trans_le <| le_infEdist.1 (h y hy) z hz⟩
#align emetric.exists_pos_forall_lt_edist EMetric.exists_pos_forall_lt_edist

end InfEdist

/-! ### The Hausdorff distance as a function into `ℝ≥0∞`. -/

/-- The Hausdorff edistance between two sets is the smallest `r` such that each set
is contained in the `r`-neighborhood of the other one -/
irreducible_def hausdorffEdist {α : Type u} [PseudoEMetricSpace α] (s t : Set α) : ℝ≥0∞ :=
  (⨆ x ∈ s, infEdist x t) ⊔ ⨆ y ∈ t, infEdist y s
#align emetric.Hausdorff_edist EMetric.hausdorffEdist
#align emetric.Hausdorff_edist_def EMetric.hausdorffEdist_def

section HausdorffEdist

variable [PseudoEMetricSpace α] [PseudoEMetricSpace β] {x y : α} {s t u : Set α} {Φ : α → β}

/-- The Hausdorff edistance of a set to itself vanishes -/
@[simp]
theorem hausdorffEdist_self : hausdorffEdist s s = 0 := by
  simp only [hausdorffEdist_def, sup_idem, ENNReal.iSup_eq_zero]
  exact fun x hx => infEdist_zero_of_mem hx
#align emetric.Hausdorff_edist_self EMetric.hausdorffEdist_self

/-- The Haudorff edistances of `s` to `t` and of `t` to `s` coincide -/
theorem hausdorffEdist_comm : hausdorffEdist s t = hausdorffEdist t s := by
  simp only [hausdorffEdist_def]; apply sup_comm
set_option linter.uppercaseLean3 false in
#align emetric.Hausdorff_edist_comm EMetric.hausdorffEdist_comm

/-- Bounding the Hausdorff edistance by bounding the edistance of any point
in each set to the other set -/
theorem hausdorffEdist_le_of_infEdist {r : ℝ≥0∞} (H1 : ∀ x ∈ s, infEdist x t ≤ r)
    (H2 : ∀ x ∈ t, infEdist x s ≤ r) : hausdorffEdist s t ≤ r := by
  simp only [hausdorffEdist_def, sup_le_iff, iSup_le_iff]
  exact ⟨H1, H2⟩
#align emetric.Hausdorff_edist_le_of_inf_edist EMetric.hausdorffEdist_le_of_infEdist

/-- Bounding the Hausdorff edistance by exhibiting, for any point in each set,
another point in the other set at controlled distance -/
theorem hausdorffEdist_le_of_mem_edist {r : ℝ≥0∞} (H1 : ∀ x ∈ s, ∃ y ∈ t, edist x y ≤ r)
    (H2 : ∀ x ∈ t, ∃ y ∈ s, edist x y ≤ r) : hausdorffEdist s t ≤ r := by
  refine hausdorffEdist_le_of_infEdist (fun x xs ↦ ?_) (fun x xt ↦ ?_)
  · rcases H1 x xs with ⟨y, yt, hy⟩
    exact le_trans (infEdist_le_edist_of_mem yt) hy
  · rcases H2 x xt with ⟨y, ys, hy⟩
    exact le_trans (infEdist_le_edist_of_mem ys) hy
#align emetric.Hausdorff_edist_le_of_mem_edist EMetric.hausdorffEdist_le_of_mem_edist

/-- The distance to a set is controlled by the Hausdorff distance -/
theorem infEdist_le_hausdorffEdist_of_mem (h : x ∈ s) : infEdist x t ≤ hausdorffEdist s t := by
  rw [hausdorffEdist_def]
  refine le_trans ?_ le_sup_left
  exact le_iSup₂ (α := ℝ≥0∞) x h
#align emetric.inf_edist_le_Hausdorff_edist_of_mem EMetric.infEdist_le_hausdorffEdist_of_mem

/-- If the Hausdorff distance is `< r`, then any point in one of the sets has
a corresponding point at distance `< r` in the other set -/
theorem exists_edist_lt_of_hausdorffEdist_lt {r : ℝ≥0∞} (h : x ∈ s) (H : hausdorffEdist s t < r) :
    ∃ y ∈ t, edist x y < r :=
  infEdist_lt_iff.mp <|
    calc
      infEdist x t ≤ hausdorffEdist s t := infEdist_le_hausdorffEdist_of_mem h
      _ < r := H
#align emetric.exists_edist_lt_of_Hausdorff_edist_lt EMetric.exists_edist_lt_of_hausdorffEdist_lt

/-- The distance from `x` to `s` or `t` is controlled in terms of the Hausdorff distance
between `s` and `t` -/
theorem infEdist_le_infEdist_add_hausdorffEdist :
    infEdist x t ≤ infEdist x s + hausdorffEdist s t :=
  ENNReal.le_of_forall_pos_le_add fun ε εpos h => by
    have ε0 : (ε / 2 : ℝ≥0∞) ≠ 0 := by simpa [pos_iff_ne_zero] using εpos
    have : infEdist x s < infEdist x s + ε / 2 :=
      ENNReal.lt_add_right (ENNReal.add_lt_top.1 h).1.ne ε0
    rcases infEdist_lt_iff.mp this with ⟨y, ys, dxy⟩
    -- y : α, ys : y ∈ s, dxy : edist x y < infEdist x s + ↑ε / 2
    have : hausdorffEdist s t < hausdorffEdist s t + ε / 2 :=
      ENNReal.lt_add_right (ENNReal.add_lt_top.1 h).2.ne ε0
    rcases exists_edist_lt_of_hausdorffEdist_lt ys this with ⟨z, zt, dyz⟩
    -- z : α, zt : z ∈ t, dyz : edist y z < Hausdorff_edist s t + ↑ε / 2
    calc
      infEdist x t ≤ edist x z := infEdist_le_edist_of_mem zt
      _ ≤ edist x y + edist y z := (edist_triangle _ _ _)
      _ ≤ infEdist x s + ε / 2 + (hausdorffEdist s t + ε / 2) := (add_le_add dxy.le dyz.le)
      _ = infEdist x s + hausdorffEdist s t + ε := by
        simp [ENNReal.add_halves, add_comm, add_left_comm]
#align emetric.inf_edist_le_inf_edist_add_Hausdorff_edist EMetric.infEdist_le_infEdist_add_hausdorffEdist

/-- The Hausdorff edistance is invariant under eisometries -/
theorem hausdorffEdist_image (h : Isometry Φ) :
    hausdorffEdist (Φ '' s) (Φ '' t) = hausdorffEdist s t := by
  simp only [hausdorffEdist_def, iSup_image, infEdist_image h]
#align emetric.Hausdorff_edist_image EMetric.hausdorffEdist_image

/-- The Hausdorff distance is controlled by the diameter of the union -/
theorem hausdorffEdist_le_ediam (hs : s.Nonempty) (ht : t.Nonempty) :
    hausdorffEdist s t ≤ diam (s ∪ t) := by
  rcases hs with ⟨x, xs⟩
  rcases ht with ⟨y, yt⟩
  refine' hausdorffEdist_le_of_mem_edist _ _
  · intro z hz
    exact ⟨y, yt, edist_le_diam_of_mem (subset_union_left _ _ hz) (subset_union_right _ _ yt)⟩
  · intro z hz
    exact ⟨x, xs, edist_le_diam_of_mem (subset_union_right _ _ hz) (subset_union_left _ _ xs)⟩
#align emetric.Hausdorff_edist_le_ediam EMetric.hausdorffEdist_le_ediam

/-- The Hausdorff distance satisfies the triangular inequality -/
theorem hausdorffEdist_triangle : hausdorffEdist s u ≤ hausdorffEdist s t + hausdorffEdist t u := by
  rw [hausdorffEdist_def]
  simp only [sup_le_iff, iSup_le_iff]
  constructor
  · show ∀ x ∈ s, infEdist x u ≤ hausdorffEdist s t + hausdorffEdist t u
    exact fun x xs =>
      calc
        infEdist x u ≤ infEdist x t + hausdorffEdist t u :=
          infEdist_le_infEdist_add_hausdorffEdist
        _ ≤ hausdorffEdist s t + hausdorffEdist t u :=
          add_le_add_right (infEdist_le_hausdorffEdist_of_mem xs) _
  · show ∀ x ∈ u, infEdist x s ≤ hausdorffEdist s t + hausdorffEdist t u
    exact fun x xu =>
      calc
        infEdist x s ≤ infEdist x t + hausdorffEdist t s :=
          infEdist_le_infEdist_add_hausdorffEdist
        _ ≤ hausdorffEdist u t + hausdorffEdist t s :=
          add_le_add_right (infEdist_le_hausdorffEdist_of_mem xu) _
        _ = hausdorffEdist s t + hausdorffEdist t u := by simp [hausdorffEdist_comm, add_comm]
#align emetric.Hausdorff_edist_triangle EMetric.hausdorffEdist_triangle

/-- Two sets are at zero Hausdorff edistance if and only if they have the same closure -/
theorem hausdorffEdist_zero_iff_closure_eq_closure :
    hausdorffEdist s t = 0 ↔ closure s = closure t := by
  simp only [hausdorffEdist_def, ENNReal.sup_eq_zero, ENNReal.iSup_eq_zero, ← subset_def,
    ← mem_closure_iff_infEdist_zero, subset_antisymm_iff, isClosed_closure.closure_subset_iff]
#align emetric.Hausdorff_edist_zero_iff_closure_eq_closure EMetric.hausdorffEdist_zero_iff_closure_eq_closure

/-- The Hausdorff edistance between a set and its closure vanishes -/
@[simp]
theorem hausdorffEdist_self_closure : hausdorffEdist s (closure s) = 0 := by
  rw [hausdorffEdist_zero_iff_closure_eq_closure, closure_closure]
#align emetric.Hausdorff_edist_self_closure EMetric.hausdorffEdist_self_closure

/-- Replacing a set by its closure does not change the Hausdorff edistance. -/
@[simp]
theorem hausdorffEdist_closure₁ : hausdorffEdist (closure s) t = hausdorffEdist s t := by
  refine' le_antisymm _ _
  · calc
      _ ≤ hausdorffEdist (closure s) s + hausdorffEdist s t := hausdorffEdist_triangle
      _ = hausdorffEdist s t := by simp [hausdorffEdist_comm]
  · calc
      _ ≤ hausdorffEdist s (closure s) + hausdorffEdist (closure s) t := hausdorffEdist_triangle
      _ = hausdorffEdist (closure s) t := by simp
#align emetric.Hausdorff_edist_closure₁ EMetric.hausdorffEdist_closure₁

/-- Replacing a set by its closure does not change the Hausdorff edistance. -/
@[simp]
theorem hausdorffEdist_closure₂ : hausdorffEdist s (closure t) = hausdorffEdist s t := by
  simp [@hausdorffEdist_comm _ _ s _]
#align emetric.Hausdorff_edist_closure₂ EMetric.hausdorffEdist_closure₂

/-- The Hausdorff edistance between sets or their closures is the same -/
-- @[simp] -- Porting note: simp can prove this
theorem hausdorffEdist_closure : hausdorffEdist (closure s) (closure t) = hausdorffEdist s t := by
  simp
#align emetric.Hausdorff_edist_closure EMetric.hausdorffEdist_closure

/-- Two closed sets are at zero Hausdorff edistance if and only if they coincide -/
theorem hausdorffEdist_zero_iff_eq_of_closed (hs : IsClosed s) (ht : IsClosed t) :
    hausdorffEdist s t = 0 ↔ s = t := by
  rw [hausdorffEdist_zero_iff_closure_eq_closure, hs.closure_eq, ht.closure_eq]
#align emetric.Hausdorff_edist_zero_iff_eq_of_closed EMetric.hausdorffEdist_zero_iff_eq_of_closed

/-- The Haudorff edistance to the empty set is infinite -/
theorem hausdorffEdist_empty (ne : s.Nonempty) : hausdorffEdist s ∅ = ∞ := by
  rcases ne with ⟨x, xs⟩
  have : infEdist x ∅ ≤ hausdorffEdist s ∅ := infEdist_le_hausdorffEdist_of_mem xs
  simpa using this
#align emetric.Hausdorff_edist_empty EMetric.hausdorffEdist_empty

/-- If a set is at finite Hausdorff edistance of a nonempty set, it is nonempty -/
theorem nonempty_of_hausdorffEdist_ne_top (hs : s.Nonempty) (fin : hausdorffEdist s t ≠ ⊤) :
    t.Nonempty :=
  t.eq_empty_or_nonempty.resolve_left fun ht ↦ fin (ht.symm ▸ hausdorffEdist_empty hs)
#align emetric.nonempty_of_Hausdorff_edist_ne_top EMetric.nonempty_of_hausdorffEdist_ne_top

theorem empty_or_nonempty_of_hausdorffEdist_ne_top (fin : hausdorffEdist s t ≠ ⊤) :
    (s = ∅ ∧ t = ∅) ∨ (s.Nonempty ∧ t.Nonempty) := by
  cases' s.eq_empty_or_nonempty with hs hs
  · cases' t.eq_empty_or_nonempty with ht ht
    · exact Or.inl ⟨hs, ht⟩
    · rw [hausdorffEdist_comm] at fin
      exact Or.inr ⟨nonempty_of_hausdorffEdist_ne_top ht fin, ht⟩
  · exact Or.inr ⟨hs, nonempty_of_hausdorffEdist_ne_top hs fin⟩
#align emetric.empty_or_nonempty_of_Hausdorff_edist_ne_top EMetric.empty_or_nonempty_of_hausdorffEdist_ne_top

end HausdorffEdist

-- section
end EMetric

/-! Now, we turn to the same notions in metric spaces. To avoid the difficulties related to
`sInf` and `sSup` on `ℝ` (which is only conditionally complete), we use the notions in `ℝ≥0∞`
formulated in terms of the edistance, and coerce them to `ℝ`.
Then their properties follow readily from the corresponding properties in `ℝ≥0∞`,
modulo some tedious rewriting of inequalities from one to the other. -/

--namespace
namespace Metric

section

variable [PseudoMetricSpace α] [PseudoMetricSpace β] {s t u : Set α} {x y : α} {Φ : α → β}

open EMetric

/-! ### Distance of a point to a set as a function into `ℝ`. -/

/-- The minimal distance of a point to a set -/
def infDist (x : α) (s : Set α) : ℝ :=
  ENNReal.toReal (infEdist x s)
#align metric.inf_dist Metric.infDist

theorem infDist_eq_iInf : infDist x s = ⨅ y : s, dist x y := by
  rw [infDist, infEdist, iInf_subtype', ENNReal.toReal_iInf]
  · simp only [dist_edist]
  · exact fun _ ↦ edist_ne_top _ _
#align metric.inf_dist_eq_infi Metric.infDist_eq_iInf

/-- The minimal distance is always nonnegative -/
theorem infDist_nonneg : 0 ≤ infDist x s := toReal_nonneg
#align metric.inf_dist_nonneg Metric.infDist_nonneg

/-- The minimal distance to the empty set is 0 (if you want to have the more reasonable
value `∞` instead, use `EMetric.infEdist`, which takes values in `ℝ≥0∞`) -/
@[simp]
theorem infDist_empty : infDist x ∅ = 0 := by simp [infDist]
#align metric.inf_dist_empty Metric.infDist_empty

/-- In a metric space, the minimal edistance to a nonempty set is finite. -/
theorem infEdist_ne_top (h : s.Nonempty) : infEdist x s ≠ ⊤ := by
  rcases h with ⟨y, hy⟩
  exact ne_top_of_le_ne_top (edist_ne_top _ _) (infEdist_le_edist_of_mem hy)
#align metric.inf_edist_ne_top Metric.infEdist_ne_top

-- porting note: new lemma; todo: make it a `simp` lemma
theorem infEdist_eq_top_iff : infEdist x s = ∞ ↔ s = ∅ := by
  rcases s.eq_empty_or_nonempty with rfl | hs <;> simp [*, Nonempty.ne_empty, infEdist_ne_top]

/-- The minimal distance of a point to a set containing it vanishes -/
theorem infDist_zero_of_mem (h : x ∈ s) : infDist x s = 0 := by
  simp [infEdist_zero_of_mem h, infDist]
#align metric.inf_dist_zero_of_mem Metric.infDist_zero_of_mem

/-- The minimal distance to a singleton is the distance to the unique point in this singleton -/
@[simp]
theorem infDist_singleton : infDist x {y} = dist x y := by simp [infDist, dist_edist]
#align metric.inf_dist_singleton Metric.infDist_singleton

/-- The minimal distance to a set is bounded by the distance to any point in this set -/
theorem infDist_le_dist_of_mem (h : y ∈ s) : infDist x s ≤ dist x y := by
  rw [dist_edist, infDist]
  exact ENNReal.toReal_mono (edist_ne_top _ _) (infEdist_le_edist_of_mem h)
#align metric.inf_dist_le_dist_of_mem Metric.infDist_le_dist_of_mem

/-- The minimal distance is monotonous with respect to inclusion -/
theorem infDist_le_infDist_of_subset (h : s ⊆ t) (hs : s.Nonempty) : infDist x t ≤ infDist x s :=
  ENNReal.toReal_mono (infEdist_ne_top hs) (infEdist_anti h)
#align metric.inf_dist_le_inf_dist_of_subset Metric.infDist_le_infDist_of_subset

/-- The minimal distance to a set is `< r` iff there exists a point in this set at distance `< r` -/
theorem infDist_lt_iff {r : ℝ} (hs : s.Nonempty) : infDist x s < r ↔ ∃ y ∈ s, dist x y < r := by
  simp_rw [infDist, ← ENNReal.lt_ofReal_iff_toReal_lt (infEdist_ne_top hs), infEdist_lt_iff,
    ENNReal.lt_ofReal_iff_toReal_lt (edist_ne_top _ _), ← dist_edist]
#align metric.inf_dist_lt_iff Metric.infDist_lt_iff

/-- The minimal distance from `x` to `s` is bounded by the distance from `y` to `s`, modulo
the distance between `x` and `y` -/
theorem infDist_le_infDist_add_dist : infDist x s ≤ infDist y s + dist x y := by
  rw [infDist, infDist, dist_edist]
  refine ENNReal.toReal_le_add' infEdist_le_infEdist_add_edist ?_ (flip absurd (edist_ne_top _ _))
  simp only [infEdist_eq_top_iff, imp_self]
#align metric.inf_dist_le_inf_dist_add_dist Metric.infDist_le_infDist_add_dist

theorem not_mem_of_dist_lt_infDist (h : dist x y < infDist x s) : y ∉ s := fun hy =>
  h.not_le <| infDist_le_dist_of_mem hy
#align metric.not_mem_of_dist_lt_inf_dist Metric.not_mem_of_dist_lt_infDist

theorem disjoint_ball_infDist : Disjoint (ball x (infDist x s)) s :=
  disjoint_left.2 fun _y hy => not_mem_of_dist_lt_infDist <| mem_ball'.1 hy
#align metric.disjoint_ball_inf_dist Metric.disjoint_ball_infDist

theorem ball_infDist_subset_compl : ball x (infDist x s) ⊆ sᶜ :=
  (disjoint_ball_infDist (s := s)).subset_compl_right
#align metric.ball_inf_dist_subset_compl Metric.ball_infDist_subset_compl

theorem ball_infDist_compl_subset : ball x (infDist x sᶜ) ⊆ s :=
  ball_infDist_subset_compl.trans_eq (compl_compl s)
#align metric.ball_inf_dist_compl_subset Metric.ball_infDist_compl_subset

theorem disjoint_closedBall_of_lt_infDist {r : ℝ} (h : r < infDist x s) :
    Disjoint (closedBall x r) s :=
  disjoint_ball_infDist.mono_left <| closedBall_subset_ball h
#align metric.disjoint_closed_ball_of_lt_inf_dist Metric.disjoint_closedBall_of_lt_infDist

theorem dist_le_infDist_add_diam (hs : Bounded s) (hy : y ∈ s) :
    dist x y ≤ infDist x s + diam s := by
  rw [infDist, diam, dist_edist]
  exact toReal_le_add (edist_le_infEdist_add_ediam hy) (infEdist_ne_top ⟨y, hy⟩) hs.ediam_ne_top
#align metric.dist_le_inf_dist_add_diam Metric.dist_le_infDist_add_diam

variable (s)

/-- The minimal distance to a set is Lipschitz in point with constant 1 -/
theorem lipschitz_infDist_pt : LipschitzWith 1 (infDist · s) :=
  LipschitzWith.of_le_add fun _ _ => infDist_le_infDist_add_dist
#align metric.lipschitz_inf_dist_pt Metric.lipschitz_infDist_pt

/-- The minimal distance to a set is uniformly continuous in point -/
theorem uniformContinuous_infDist_pt : UniformContinuous (infDist · s) :=
  (lipschitz_infDist_pt s).uniformContinuous
#align metric.uniform_continuous_inf_dist_pt Metric.uniformContinuous_infDist_pt

/-- The minimal distance to a set is continuous in point -/
@[continuity]
theorem continuous_infDist_pt : Continuous (infDist · s) :=
  (uniformContinuous_infDist_pt s).continuous
#align metric.continuous_inf_dist_pt Metric.continuous_infDist_pt

variable {s}

/-- The minimal distance to a set and its closure coincide -/
theorem infDist_closure : infDist x (closure s) = infDist x s := by
  simp [infDist, infEdist_closure]
#align metric.inf_dist_eq_closure Metric.infDist_closure

/-- If a point belongs to the closure of `s`, then its infimum distance to `s` equals zero.
The converse is true provided that `s` is nonempty, see `Metric.mem_closure_iff_infDist_zero`. -/
theorem infDist_zero_of_mem_closure (hx : x ∈ closure s) : infDist x s = 0 := by
  rw [← infDist_closure]
  exact infDist_zero_of_mem hx
#align metric.inf_dist_zero_of_mem_closure Metric.infDist_zero_of_mem_closure

/-- A point belongs to the closure of `s` iff its infimum distance to this set vanishes -/
theorem mem_closure_iff_infDist_zero (h : s.Nonempty) : x ∈ closure s ↔ infDist x s = 0 := by
  simp [mem_closure_iff_infEdist_zero, infDist, ENNReal.toReal_eq_zero_iff, infEdist_ne_top h]
#align metric.mem_closure_iff_inf_dist_zero Metric.mem_closure_iff_infDist_zero

/-- Given a closed set `s`, a point belongs to `s` iff its infimum distance to this set vanishes -/
theorem _root_.GRWTSK.Topology.GeneralTopology.InfEdist.Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.IsClosed.mem_iff_infDist_zero (h : IsClosed s) (hs : s.Nonempty) :
    x ∈ s ↔ infDist x s = 0 := by rw [← mem_closure_iff_infDist_zero hs, h.closure_eq]
#align is_closed.mem_iff_inf_dist_zero IsClosed.mem_iff_infDist_zero

/-- Given a closed set `s`, a point belongs to `s` iff its infimum distance to this set vanishes -/
theorem _root_.GRWTSK.Topology.GeneralTopology.InfEdist.Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.IsClosed.not_mem_iff_infDist_pos (h : IsClosed s) (hs : s.Nonempty) :
    x ∉ s ↔ 0 < infDist x s := by
  simp [h.mem_iff_infDist_zero hs, infDist_nonneg.gt_iff_ne]
#align is_closed.not_mem_iff_inf_dist_pos IsClosed.not_mem_iff_infDist_pos

-- porting note: new lemma
theorem continuousAt_inv_infDist_pt (h : x ∉ closure s) :
    ContinuousAt (fun x ↦ (infDist x s)⁻¹) x := by
  rcases s.eq_empty_or_nonempty with (rfl | hs)
  · simp only [infDist_empty, continuousAt_const]
  · refine (continuous_infDist_pt s).continuousAt.inv₀ ?_
    rwa [Ne.def, ← mem_closure_iff_infDist_zero hs]

/-- The infimum distance is invariant under isometries -/
theorem infDist_image (hΦ : Isometry Φ) : infDist (Φ x) (Φ '' t) = infDist x t := by
  simp [infDist, infEdist_image hΦ]
#align metric.inf_dist_image Metric.infDist_image

theorem infDist_inter_closedBall_of_mem (h : y ∈ s) :
    infDist x (s ∩ closedBall x (dist y x)) = infDist x s := by
  replace h : y ∈ s ∩ closedBall x (dist y x) := ⟨h, mem_closedBall.2 le_rfl⟩
  refine le_antisymm ?_ (infDist_le_infDist_of_subset (inter_subset_left _ _) ⟨y, h⟩)
  refine' not_lt.1 fun hlt => _
  rcases (infDist_lt_iff ⟨y, h.1⟩).mp hlt with ⟨z, hzs, hz⟩
  cases' le_or_lt (dist z x) (dist y x) with hle hlt
  · exact hz.not_le (infDist_le_dist_of_mem ⟨hzs, hle⟩)
  · rw [dist_comm z, dist_comm y] at hlt
    exact (hlt.trans hz).not_le (infDist_le_dist_of_mem h)
#align metric.inf_dist_inter_closed_ball_of_mem Metric.infDist_inter_closedBall_of_mem

theorem _root_.GRWTSK.Topology.GeneralTopology.InfEdist.Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.IsCompact.exists_infDist_eq_dist (h : IsCompact s) (hne : s.Nonempty) (x : α) :
    ∃ y ∈ s, infDist x s = dist x y :=
  let ⟨y, hys, hy⟩ := h.exists_infEdist_eq_edist hne x
  ⟨y, hys, by rw [infDist, dist_edist, hy]⟩
#align is_compact.exists_inf_dist_eq_dist IsCompact.exists_infDist_eq_dist

theorem _root_.GRWTSK.Topology.GeneralTopology.InfEdist.Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.IsClosed.exists_infDist_eq_dist [ProperSpace α] (h : IsClosed s) (hne : s.Nonempty)
    (x : α) : ∃ y ∈ s, infDist x s = dist x y := by
  rcases hne with ⟨z, hz⟩
  rw [← infDist_inter_closedBall_of_mem hz]
  set t := s ∩ closedBall x (dist z x)
  have htc : IsCompact t := (isCompact_closedBall x (dist z x)).inter_left h
  have htne : t.Nonempty := ⟨z, hz, mem_closedBall.2 le_rfl⟩
  obtain ⟨y, ⟨hys, -⟩, hyd⟩ : ∃ y ∈ t, infDist x t = dist x y := htc.exists_infDist_eq_dist htne x
  exact ⟨y, hys, hyd⟩
#align is_closed.exists_inf_dist_eq_dist IsClosed.exists_infDist_eq_dist

theorem exists_mem_closure_infDist_eq_dist [ProperSpace α] (hne : s.Nonempty) (x : α) :
    ∃ y ∈ closure s, infDist x s = dist x y := by
  simpa only [infDist_closure] using isClosed_closure.exists_infDist_eq_dist hne.closure x
#align metric.exists_mem_closure_inf_dist_eq_dist Metric.exists_mem_closure_infDist_eq_dist

/-! ### Distance of a point to a set as a function into `ℝ≥0`. -/

/-- The minimal distance of a point to a set as a `ℝ≥0` -/
def infNndist (x : α) (s : Set α) : ℝ≥0 :=
  ENNReal.toNNReal (infEdist x s)
#align metric.inf_nndist Metric.infNndist

@[simp]
theorem coe_infNndist : (infNndist x s : ℝ) = infDist x s :=
  rfl
#align metric.coe_inf_nndist Metric.coe_infNndist

/-- The minimal distance to a set (as `ℝ≥0`) is Lipschitz in point with constant 1 -/
theorem lipschitz_infNndist_pt (s : Set α) : LipschitzWith 1 fun x => infNndist x s :=
  LipschitzWith.of_le_add fun _ _ => infDist_le_infDist_add_dist
#align metric.lipschitz_inf_nndist_pt Metric.lipschitz_infNndist_pt

/-- The minimal distance to a set (as `ℝ≥0`) is uniformly continuous in point -/
theorem uniformContinuous_infNndist_pt (s : Set α) : UniformContinuous fun x => infNndist x s :=
  (lipschitz_infNndist_pt s).uniformContinuous
#align metric.uniform_continuous_inf_nndist_pt Metric.uniformContinuous_infNndist_pt

/-- The minimal distance to a set (as `ℝ≥0`) is continuous in point -/
theorem continuous_infNndist_pt (s : Set α) : Continuous fun x => infNndist x s :=
  (uniformContinuous_infNndist_pt s).continuous
#align metric.continuous_inf_nndist_pt Metric.continuous_infNndist_pt

/-! ### The Hausdorff distance as a function into `ℝ`. -/

/-- The Hausdorff distance between two sets is the smallest nonnegative `r` such that each set is
included in the `r`-neighborhood of the other. If there is no such `r`, it is defined to
be `0`, arbitrarily -/
def hausdorffDist (s t : Set α) : ℝ :=
  ENNReal.toReal (hausdorffEdist s t)
#align metric.Hausdorff_dist Metric.hausdorffDist

/-- The Hausdorff distance is nonnegative -/
theorem hausdorffDist_nonneg : 0 ≤ hausdorffDist s t := by simp [hausdorffDist]
#align metric.Hausdorff_dist_nonneg Metric.hausdorffDist_nonneg

/-- If two sets are nonempty and bounded in a metric space, they are at finite Hausdorff
edistance. -/
theorem hausdorffEdist_ne_top_of_nonempty_of_bounded (hs : s.Nonempty) (ht : t.Nonempty)
    (bs : Bounded s) (bt : Bounded t) : hausdorffEdist s t ≠ ⊤ := by
  rcases hs with ⟨cs, hcs⟩
  rcases ht with ⟨ct, hct⟩
  rcases(bounded_iff_subset_ball ct).1 bs with ⟨rs, hrs⟩
  rcases(bounded_iff_subset_ball cs).1 bt with ⟨rt, hrt⟩
  have : hausdorffEdist s t ≤ ENNReal.ofReal (max rs rt) := by
    apply hausdorffEdist_le_of_mem_edist
    · intro x xs
      exists ct, hct
      have : dist x ct ≤ max rs rt := le_trans (hrs xs) (le_max_left _ _)
      rwa [edist_dist, ENNReal.ofReal_le_ofReal_iff]
      exact le_trans dist_nonneg this
    · intro x xt
      exists cs, hcs
      have : dist x cs ≤ max rs rt := le_trans (hrt xt) (le_max_right _ _)
      rwa [edist_dist, ENNReal.ofReal_le_ofReal_iff]
      exact le_trans dist_nonneg this
  exact ne_top_of_le_ne_top ENNReal.ofReal_ne_top this
#align metric.Hausdorff_edist_ne_top_of_nonempty_of_bounded Metric.hausdorffEdist_ne_top_of_nonempty_of_bounded

/-- The Hausdorff distance between a set and itself is zero -/
@[simp]
theorem hausdorffDist_self_zero : hausdorffDist s s = 0 := by simp [hausdorffDist]
#align metric.Hausdorff_dist_self_zero Metric.hausdorffDist_self_zero

/-- The Hausdorff distance from `s` to `t` and from `t` to `s` coincide -/
theorem hausdorffDist_comm : hausdorffDist s t = hausdorffDist t s := by
  simp [hausdorffDist, hausdorffEdist_comm]
#align metric.Hausdorff_dist_comm Metric.hausdorffDist_comm

/-- The Hausdorff distance to the empty set vanishes (if you want to have the more reasonable
value ∞ instead, use `EMetric.hausdorffEdist`, which takes values in ℝ≥0∞) -/
@[simp]
theorem hausdorffDist_empty : hausdorffDist s ∅ = 0 := by
  cases' s.eq_empty_or_nonempty with h h
  · simp [h]
  · simp [hausdorffDist, hausdorffEdist_empty h]
#align metric.Hausdorff_dist_empty Metric.hausdorffDist_empty

/-- The Hausdorff distance to the empty set vanishes (if you want to have the more reasonable
value `∞` instead, use `EMetric.hausdorffEdist`, which takes values in `ℝ≥0∞`) -/
@[simp]
theorem hausdorffDist_empty' : hausdorffDist ∅ s = 0 := by simp [hausdorffDist_comm]
#align metric.Hausdorff_dist_empty' Metric.hausdorffDist_empty'

/-- Bounding the Hausdorff distance by bounding the distance of any point
in each set to the other set -/
theorem hausdorffDist_le_of_infDist {r : ℝ} (hr : 0 ≤ r) (H1 : ∀ x ∈ s, infDist x t ≤ r)
    (H2 : ∀ x ∈ t, infDist x s ≤ r) : hausdorffDist s t ≤ r := by
  by_cases h1 : hausdorffEdist s t = ⊤
  · rwa [hausdorffDist, h1, ENNReal.top_toReal]
  cases' s.eq_empty_or_nonempty with hs hs
  · rwa [hs, hausdorffDist_empty']
  cases' t.eq_empty_or_nonempty with ht ht
  · rwa [ht, hausdorffDist_empty]
  have : hausdorffEdist s t ≤ ENNReal.ofReal r := by
    apply hausdorffEdist_le_of_infEdist _ _
    · intro x hx
      have I := H1 x hx
      rwa [infDist, ← ENNReal.toReal_ofReal hr,
        ENNReal.toReal_le_toReal (infEdist_ne_top ht) ENNReal.ofReal_ne_top] at I
    · intro x hx
      have I := H2 x hx
      rwa [infDist, ← ENNReal.toReal_ofReal hr,
        ENNReal.toReal_le_toReal (infEdist_ne_top hs) ENNReal.ofReal_ne_top] at I
  rwa [hausdorffDist, ← ENNReal.toReal_ofReal hr,
    ENNReal.toReal_le_toReal h1 ENNReal.ofReal_ne_top]
#align metric.Hausdorff_dist_le_of_inf_dist Metric.hausdorffDist_le_of_infDist

/-- Bounding the Hausdorff distance by exhibiting, for any point in each set,
another point in the other set at controlled distance -/
theorem hausdorffDist_le_of_mem_dist {r : ℝ} (hr : 0 ≤ r) (H1 : ∀ x ∈ s, ∃ y ∈ t, dist x y ≤ r)
    (H2 : ∀ x ∈ t, ∃ y ∈ s, dist x y ≤ r) : hausdorffDist s t ≤ r := by
  apply hausdorffDist_le_of_infDist hr
  · intro x xs
    rcases H1 x xs with ⟨y, yt, hy⟩
    exact le_trans (infDist_le_dist_of_mem yt) hy
  · intro x xt
    rcases H2 x xt with ⟨y, ys, hy⟩
    exact le_trans (infDist_le_dist_of_mem ys) hy
#align metric.Hausdorff_dist_le_of_mem_dist Metric.hausdorffDist_le_of_mem_dist

/-- The Hausdorff distance is controlled by the diameter of the union -/
theorem hausdorffDist_le_diam (hs : s.Nonempty) (bs : Bounded s) (ht : t.Nonempty)
    (bt : Bounded t) : hausdorffDist s t ≤ diam (s ∪ t) := by
  rcases hs with ⟨x, xs⟩
  rcases ht with ⟨y, yt⟩
  refine hausdorffDist_le_of_mem_dist diam_nonneg ?_ ?_
  · exact fun z hz => ⟨y, yt,
      dist_le_diam_of_mem (bounded_union.2 ⟨bs, bt⟩) (subset_union_left _ _ hz)
        (subset_union_right _ _ yt)⟩
  · exact fun z hz => ⟨x, xs,
      dist_le_diam_of_mem (bounded_union.2 ⟨bs, bt⟩) (subset_union_right _ _ hz)
        (subset_union_left _ _ xs)⟩
#align metric.Hausdorff_dist_le_diam Metric.hausdorffDist_le_diam

/-- The distance to a set is controlled by the Hausdorff distance -/
theorem infDist_le_hausdorffDist_of_mem (hx : x ∈ s) (fin : hausdorffEdist s t ≠ ⊤) :
    infDist x t ≤ hausdorffDist s t :=
  toReal_mono fin (infEdist_le_hausdorffEdist_of_mem hx)
#align metric.inf_dist_le_Hausdorff_dist_of_mem Metric.infDist_le_hausdorffDist_of_mem

/-- If the Hausdorff distance is `< r`, then any point in one of the sets is at distance
`< r` of a point in the other set -/
theorem exists_dist_lt_of_hausdorffDist_lt {r : ℝ} (h : x ∈ s) (H : hausdorffDist s t < r)
    (fin : hausdorffEdist s t ≠ ⊤) : ∃ y ∈ t, dist x y < r := by
  have r0 : 0 < r := lt_of_le_of_lt hausdorffDist_nonneg H
  have : hausdorffEdist s t < ENNReal.ofReal r := by
    rwa [hausdorffDist, ← ENNReal.toReal_ofReal (le_of_lt r0),
      ENNReal.toReal_lt_toReal fin ENNReal.ofReal_ne_top] at H
  rcases exists_edist_lt_of_hausdorffEdist_lt h this with ⟨y, hy, yr⟩
  rw [edist_dist, ENNReal.ofReal_lt_ofReal_iff r0] at yr
  exact ⟨y, hy, yr⟩
#align metric.exists_dist_lt_of_Hausdorff_dist_lt Metric.exists_dist_lt_of_hausdorffDist_lt

/-- If the Hausdorff distance is `< r`, then any point in one of the sets is at distance
`< r` of a point in the other set -/
theorem exists_dist_lt_of_hausdorffDist_lt' {r : ℝ} (h : y ∈ t) (H : hausdorffDist s t < r)
    (fin : hausdorffEdist s t ≠ ⊤) : ∃ x ∈ s, dist x y < r := by
  rw [hausdorffDist_comm] at H
  rw [hausdorffEdist_comm] at fin
  simpa [dist_comm] using exists_dist_lt_of_hausdorffDist_lt h H fin
#align metric.exists_dist_lt_of_Hausdorff_dist_lt' Metric.exists_dist_lt_of_hausdorffDist_lt'

/-- The infimum distance to `s` and `t` are the same, up to the Hausdorff distance
between `s` and `t` -/
theorem infDist_le_infDist_add_hausdorffDist (fin : hausdorffEdist s t ≠ ⊤) :
    infDist x t ≤ infDist x s + hausdorffDist s t := by
  refine toReal_le_add' infEdist_le_infEdist_add_hausdorffEdist (fun h ↦ ?_) (flip absurd fin)
  rw [infEdist_eq_top_iff, ← not_nonempty_iff_eq_empty] at h ⊢
  rw [hausdorffEdist_comm] at fin
  exact mt (nonempty_of_hausdorffEdist_ne_top · fin) h
#align metric.inf_dist_le_inf_dist_add_Hausdorff_dist Metric.infDist_le_infDist_add_hausdorffDist

/-- The Hausdorff distance is invariant under isometries -/
theorem hausdorffDist_image (h : Isometry Φ) :
    hausdorffDist (Φ '' s) (Φ '' t) = hausdorffDist s t := by
  simp [hausdorffDist, hausdorffEdist_image h]
#align metric.Hausdorff_dist_image Metric.hausdorffDist_image

/-- The Hausdorff distance satisfies the triangular inequality -/
theorem hausdorffDist_triangle (fin : hausdorffEdist s t ≠ ⊤) :
    hausdorffDist s u ≤ hausdorffDist s t + hausdorffDist t u := by
  refine toReal_le_add' hausdorffEdist_triangle (flip absurd fin) (not_imp_not.1 fun h ↦ ?_)
  rw [hausdorffEdist_comm] at fin
  exact ne_top_of_le_ne_top (add_ne_top.2 ⟨fin, h⟩) hausdorffEdist_triangle
#align metric.Hausdorff_dist_triangle Metric.hausdorffDist_triangle

/-- The Hausdorff distance satisfies the triangular inequality -/
theorem hausdorffDist_triangle' (fin : hausdorffEdist t u ≠ ⊤) :
    hausdorffDist s u ≤ hausdorffDist s t + hausdorffDist t u := by
  rw [hausdorffEdist_comm] at fin
  have I : hausdorffDist u s ≤ hausdorffDist u t + hausdorffDist t s :=
    hausdorffDist_triangle fin
  simpa [add_comm, hausdorffDist_comm] using I
#align metric.Hausdorff_dist_triangle' Metric.hausdorffDist_triangle'

/-- The Hausdorff distance between a set and its closure vanish -/
@[simp]
theorem hausdorffDist_self_closure : hausdorffDist s (closure s) = 0 := by simp [hausdorffDist]
#align metric.Hausdorff_dist_self_closure Metric.hausdorffDist_self_closure

/-- Replacing a set by its closure does not change the Hausdorff distance. -/
@[simp]
theorem hausdorffDist_closure₁ : hausdorffDist (closure s) t = hausdorffDist s t := by
  simp [hausdorffDist]
#align metric.Hausdorff_dist_closure₁ Metric.hausdorffDist_closure₁

/-- Replacing a set by its closure does not change the Hausdorff distance. -/
@[simp]
theorem hausdorffDist_closure₂ : hausdorffDist s (closure t) = hausdorffDist s t := by
  simp [hausdorffDist]
#align metric.Hausdorff_dist_closure₂ Metric.hausdorffDist_closure₂

/-- The Hausdorff distance between two sets and their closures coincide -/
-- @[simp] -- Porting note: simp can prove this
theorem hausdorffDist_closure : hausdorffDist (closure s) (closure t) = hausdorffDist s t := by
  simp [hausdorffDist]
#align metric.Hausdorff_dist_closure Metric.hausdorffDist_closure

/-- Two sets are at zero Hausdorff distance if and only if they have the same closures -/
theorem hausdorffDist_zero_iff_closure_eq_closure (fin : hausdorffEdist s t ≠ ⊤) :
    hausdorffDist s t = 0 ↔ closure s = closure t := by
  simp [← hausdorffEdist_zero_iff_closure_eq_closure, hausdorffDist,
    ENNReal.toReal_eq_zero_iff, fin]
#align metric.Hausdorff_dist_zero_iff_closure_eq_closure Metric.hausdorffDist_zero_iff_closure_eq_closure

/-- Two closed sets are at zero Hausdorff distance if and only if they coincide -/
theorem _root_.GRWTSK.Topology.GeneralTopology.InfEdist.Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.IsClosed.hausdorffDist_zero_iff_eq (hs : IsClosed s) (ht : IsClosed t)
    (fin : hausdorffEdist s t ≠ ⊤) : hausdorffDist s t = 0 ↔ s = t := by
  simp [← hausdorffEdist_zero_iff_eq_of_closed hs ht, hausdorffDist, ENNReal.toReal_eq_zero_iff,
    fin]
#align is_closed.Hausdorff_dist_zero_iff_eq IsClosed.hausdorffDist_zero_iff_eq

end

--section
section Thickening

variable [PseudoEMetricSpace α] {δ : ℝ} {s : Set α} {x : α}

open EMetric

/-- The (open) `δ`-thickening `Metric.thickening δ E` of a subset `E` in a pseudo emetric space
consists of those points that are at distance less than `δ` from some point of `E`. -/
def thickening (δ : ℝ) (E : Set α) : Set α :=
  { x : α | infEdist x E < ENNReal.ofReal δ }
#align metric.thickening Metric.thickening

theorem mem_thickening_iff_infEdist_lt : x ∈ thickening δ s ↔ infEdist x s < ENNReal.ofReal δ :=
  Iff.rfl
#align metric.mem_thickening_iff_inf_edist_lt Metric.mem_thickening_iff_infEdist_lt

/-- An exterior point of a subset `E` (i.e., a point outside the closure of `E`) is not in the
(open) `δ`-thickening of `E` for small enough positive `δ`. -/
lemma eventually_not_mem_thickening_of_infEdist_pos {E : Set α} {x : α} (h : x ∉ closure E) :
    ∀ᶠ δ in 𝓝 (0 : ℝ), x ∉ Metric.thickening δ E := by
  obtain ⟨ε, ⟨ε_pos, ε_lt⟩⟩ := exists_real_pos_lt_infEdist_of_not_mem_closure h
  filter_upwards [eventually_lt_nhds ε_pos] with δ hδ
  simp only [thickening, mem_setOf_eq, not_lt]
  exact (ENNReal.ofReal_le_ofReal hδ.le).trans ε_lt.le

/-- The (open) thickening equals the preimage of an open interval under `EMetric.infEdist`. -/
theorem thickening_eq_preimage_infEdist (δ : ℝ) (E : Set α) :
    thickening δ E = (infEdist · E) ⁻¹' Iio (ENNReal.ofReal δ) :=
  rfl
#align metric.thickening_eq_preimage_inf_edist Metric.thickening_eq_preimage_infEdist

/-- The (open) thickening is an open set. -/
theorem isOpen_thickening {δ : ℝ} {E : Set α} : IsOpen (thickening δ E) :=
  Continuous.isOpen_preimage continuous_infEdist _ isOpen_Iio
#align metric.is_open_thickening Metric.isOpen_thickening

/-- The (open) thickening of the empty set is empty. -/
@[simp]
theorem thickening_empty (δ : ℝ) : thickening δ (∅ : Set α) = ∅ := by
  simp only [thickening, setOf_false, infEdist_empty, not_top_lt]
#align metric.thickening_empty Metric.thickening_empty

theorem thickening_of_nonpos (hδ : δ ≤ 0) (s : Set α) : thickening δ s = ∅ :=
  eq_empty_of_forall_not_mem fun _ => ((ENNReal.ofReal_of_nonpos hδ).trans_le bot_le).not_lt
#align metric.thickening_of_nonpos Metric.thickening_of_nonpos

/-- The (open) thickening `Metric.thickening δ E` of a fixed subset `E` is an increasing function of
the thickening radius `δ`. -/
theorem thickening_mono {δ₁ δ₂ : ℝ} (hle : δ₁ ≤ δ₂) (E : Set α) :
    thickening δ₁ E ⊆ thickening δ₂ E :=
  preimage_mono (Iio_subset_Iio (ENNReal.ofReal_le_ofReal hle))
#align metric.thickening_mono Metric.thickening_mono

/-- The (open) thickening `Metric.thickening δ E` with a fixed thickening radius `δ` is
an increasing function of the subset `E`. -/
theorem thickening_subset_of_subset (δ : ℝ) {E₁ E₂ : Set α} (h : E₁ ⊆ E₂) :
    thickening δ E₁ ⊆ thickening δ E₂ := fun _ hx => lt_of_le_of_lt (infEdist_anti h) hx
#align metric.thickening_subset_of_subset Metric.thickening_subset_of_subset

theorem mem_thickening_iff_exists_edist_lt {δ : ℝ} (E : Set α) (x : α) :
    x ∈ thickening δ E ↔ ∃ z ∈ E, edist x z < ENNReal.ofReal δ :=
  infEdist_lt_iff
#align metric.mem_thickening_iff_exists_edist_lt Metric.mem_thickening_iff_exists_edist_lt

/-- The frontier of the (open) thickening of a set is contained in an `EMetric.infEdist` level
set. -/
theorem frontier_thickening_subset (E : Set α) {δ : ℝ} :
    frontier (thickening δ E) ⊆ { x : α | infEdist x E = ENNReal.ofReal δ } :=
  frontier_lt_subset_eq continuous_infEdist continuous_const
#align metric.frontier_thickening_subset Metric.frontier_thickening_subset

theorem frontier_thickening_disjoint (A : Set α) :
    Pairwise (Disjoint on fun r : ℝ => frontier (thickening r A)) := by
  refine' (pairwise_disjoint_on _).2 fun r₁ r₂ hr => _
  cases' le_total r₁ 0 with h₁ h₁
  · simp [thickening_of_nonpos h₁]
  refine' ((disjoint_singleton.2 fun h => hr.ne _).preimage _).mono (frontier_thickening_subset _)
    (frontier_thickening_subset _)
  apply_fun ENNReal.toReal at h
  rwa [ENNReal.toReal_ofReal h₁, ENNReal.toReal_ofReal (h₁.trans hr.le)] at h
#align metric.frontier_thickening_disjoint Metric.frontier_thickening_disjoint

variable {X : Type u} [PseudoMetricSpace X]

-- porting note: new lemma
theorem mem_thickening_iff_infDist_lt {E : Set X} {x : X} (h : E.Nonempty) :
    x ∈ thickening δ E ↔ infDist x E < δ :=
  lt_ofReal_iff_toReal_lt (infEdist_ne_top h)

/-- A point in a metric space belongs to the (open) `δ`-thickening of a subset `E` if and only if
it is at distance less than `δ` from some point of `E`. -/
theorem mem_thickening_iff {E : Set X} {x : X} : x ∈ thickening δ E ↔ ∃ z ∈ E, dist x z < δ := by
  have key_iff : ∀ z : X, edist x z < ENNReal.ofReal δ ↔ dist x z < δ := fun z ↦ by
    rw [dist_edist, lt_ofReal_iff_toReal_lt (edist_ne_top _ _)]
  simp_rw [mem_thickening_iff_exists_edist_lt, key_iff]
#align metric.mem_thickening_iff Metric.mem_thickening_iff

@[simp]
theorem thickening_singleton (δ : ℝ) (x : X) : thickening δ ({x} : Set X) = ball x δ := by
  ext
  simp [mem_thickening_iff]
#align metric.thickening_singleton Metric.thickening_singleton

theorem ball_subset_thickening {x : X} {E : Set X} (hx : x ∈ E) (δ : ℝ) :
    ball x δ ⊆ thickening δ E :=
  Subset.trans (by simp [Subset.rfl]) (thickening_subset_of_subset δ <| singleton_subset_iff.mpr hx)
#align metric.ball_subset_thickening Metric.ball_subset_thickening

/-- The (open) `δ`-thickening `Metric.thickening δ E` of a subset `E` in a metric space equals the
union of balls of radius `δ` centered at points of `E`. -/
theorem thickening_eq_biUnion_ball {δ : ℝ} {E : Set X} : thickening δ E = ⋃ x ∈ E, ball x δ := by
  ext x
  simp only [mem_iUnion₂, exists_prop]
  exact mem_thickening_iff
#align metric.thickening_eq_bUnion_ball Metric.thickening_eq_biUnion_ball

protected theorem Bounded.thickening {δ : ℝ} {E : Set X} (h : Bounded E) :
    Bounded (thickening δ E) := by
  rcases E.eq_empty_or_nonempty with rfl | ⟨x, hx⟩
  · simp
  · refine (bounded_iff_subset_ball x).2 ⟨δ + diam E, fun y hy ↦ ?_⟩
    calc
      dist y x ≤ infDist y E + diam E := dist_le_infDist_add_diam (x := y) h hx
      _ ≤ δ + diam E := add_le_add_right ((mem_thickening_iff_infDist_lt ⟨x, hx⟩).1 hy).le _
#align metric.bounded.thickening Metric.Bounded.thickening

end Thickening

--section
section Cthickening

variable [PseudoEMetricSpace α] {δ ε : ℝ} {s t : Set α} {x : α}

open EMetric

/-- The closed `δ`-thickening `Metric.cthickening δ E` of a subset `E` in a pseudo emetric space
consists of those points that are at infimum distance at most `δ` from `E`. -/
def cthickening (δ : ℝ) (E : Set α) : Set α :=
  { x : α | infEdist x E ≤ ENNReal.ofReal δ }
#align metric.cthickening Metric.cthickening

@[simp]
theorem mem_cthickening_iff : x ∈ cthickening δ s ↔ infEdist x s ≤ ENNReal.ofReal δ :=
  Iff.rfl
#align metric.mem_cthickening_iff Metric.mem_cthickening_iff

/-- An exterior point of a subset `E` (i.e., a point outside the closure of `E`) is not in the
closed `δ`-thickening of `E` for small enough positive `δ`. -/
lemma eventually_not_mem_cthickening_of_infEdist_pos {E : Set α} {x : α} (h : x ∉ closure E) :
    ∀ᶠ δ in 𝓝 (0 : ℝ), x ∉ Metric.cthickening δ E := by
  obtain ⟨ε, ⟨ε_pos, ε_lt⟩⟩ := exists_real_pos_lt_infEdist_of_not_mem_closure h
  filter_upwards [eventually_lt_nhds ε_pos] with δ hδ
  simp only [cthickening, mem_setOf_eq, not_le]
  exact ((ofReal_lt_ofReal_iff ε_pos).mpr hδ).trans ε_lt

theorem mem_cthickening_of_edist_le (x y : α) (δ : ℝ) (E : Set α) (h : y ∈ E)
    (h' : edist x y ≤ ENNReal.ofReal δ) : x ∈ cthickening δ E :=
  (infEdist_le_edist_of_mem h).trans h'
#align metric.mem_cthickening_of_edist_le Metric.mem_cthickening_of_edist_le

theorem mem_cthickening_of_dist_le {α : Type*} [PseudoMetricSpace α] (x y : α) (δ : ℝ) (E : Set α)
    (h : y ∈ E) (h' : dist x y ≤ δ) : x ∈ cthickening δ E := by
  apply mem_cthickening_of_edist_le x y δ E h
  rw [edist_dist]
  exact ENNReal.ofReal_le_ofReal h'
#align metric.mem_cthickening_of_dist_le Metric.mem_cthickening_of_dist_le

theorem cthickening_eq_preimage_infEdist (δ : ℝ) (E : Set α) :
    cthickening δ E = (fun x => infEdist x E) ⁻¹' Iic (ENNReal.ofReal δ) :=
  rfl
#align metric.cthickening_eq_preimage_inf_edist Metric.cthickening_eq_preimage_infEdist

/-- The closed thickening is a closed set. -/
theorem isClosed_cthickening {δ : ℝ} {E : Set α} : IsClosed (cthickening δ E) :=
  IsClosed.preimage continuous_infEdist isClosed_Iic
#align metric.is_closed_cthickening Metric.isClosed_cthickening

/-- The closed thickening of the empty set is empty. -/
@[simp]
theorem cthickening_empty (δ : ℝ) : cthickening δ (∅ : Set α) = ∅ := by
  simp only [cthickening, ENNReal.ofReal_ne_top, setOf_false, infEdist_empty, top_le_iff]
#align metric.cthickening_empty Metric.cthickening_empty

theorem cthickening_of_nonpos {δ : ℝ} (hδ : δ ≤ 0) (E : Set α) : cthickening δ E = closure E := by
  ext x
  simp [mem_closure_iff_infEdist_zero, cthickening, ENNReal.ofReal_eq_zero.2 hδ]
#align metric.cthickening_of_nonpos Metric.cthickening_of_nonpos

/-- The closed thickening with radius zero is the closure of the set. -/
@[simp]
theorem cthickening_zero (E : Set α) : cthickening 0 E = closure E :=
  cthickening_of_nonpos le_rfl E
#align metric.cthickening_zero Metric.cthickening_zero

theorem cthickening_max_zero (δ : ℝ) (E : Set α) : cthickening (max 0 δ) E = cthickening δ E := by
  cases le_total δ 0 <;> simp [cthickening_of_nonpos, *]
#align metric.cthickening_max_zero Metric.cthickening_max_zero

/-- The closed thickening `Metric.cthickening δ E` of a fixed subset `E` is an increasing function
of the thickening radius `δ`. -/
theorem cthickening_mono {δ₁ δ₂ : ℝ} (hle : δ₁ ≤ δ₂) (E : Set α) :
    cthickening δ₁ E ⊆ cthickening δ₂ E :=
  preimage_mono (Iic_subset_Iic.mpr (ENNReal.ofReal_le_ofReal hle))
#align metric.cthickening_mono Metric.cthickening_mono

@[simp]
theorem cthickening_singleton {α : Type*} [PseudoMetricSpace α] (x : α) {δ : ℝ} (hδ : 0 ≤ δ) :
    cthickening δ ({x} : Set α) = closedBall x δ := by
  ext y
  simp [cthickening, edist_dist, ENNReal.ofReal_le_ofReal_iff hδ]
#align metric.cthickening_singleton Metric.cthickening_singleton

theorem closedBall_subset_cthickening_singleton {α : Type*} [PseudoMetricSpace α] (x : α) (δ : ℝ) :
    closedBall x δ ⊆ cthickening δ ({x} : Set α) := by
  rcases lt_or_le δ 0 with (hδ | hδ)
  · simp only [closedBall_eq_empty.mpr hδ, empty_subset]
  · simp only [cthickening_singleton x hδ, Subset.rfl]
#align metric.closed_ball_subset_cthickening_singleton Metric.closedBall_subset_cthickening_singleton

/-- The closed thickening `Metric.cthickening δ E` with a fixed thickening radius `δ` is
an increasing function of the subset `E`. -/
theorem cthickening_subset_of_subset (δ : ℝ) {E₁ E₂ : Set α} (h : E₁ ⊆ E₂) :
    cthickening δ E₁ ⊆ cthickening δ E₂ := fun _ hx => le_trans (infEdist_anti h) hx
#align metric.cthickening_subset_of_subset Metric.cthickening_subset_of_subset

theorem cthickening_subset_thickening {δ₁ : ℝ≥0} {δ₂ : ℝ} (hlt : (δ₁ : ℝ) < δ₂) (E : Set α) :
    cthickening δ₁ E ⊆ thickening δ₂ E := fun _ hx =>
  hx.out.trans_lt ((ENNReal.ofReal_lt_ofReal_iff (lt_of_le_of_lt δ₁.prop hlt)).mpr hlt)
#align metric.cthickening_subset_thickening Metric.cthickening_subset_thickening

/-- The closed thickening `Metric.cthickening δ₁ E` is contained in the open thickening
`Metric.thickening δ₂ E` if the radius of the latter is positive and larger. -/
theorem cthickening_subset_thickening' {δ₁ δ₂ : ℝ} (δ₂_pos : 0 < δ₂) (hlt : δ₁ < δ₂) (E : Set α) :
    cthickening δ₁ E ⊆ thickening δ₂ E := fun _ hx =>
  lt_of_le_of_lt hx.out ((ENNReal.ofReal_lt_ofReal_iff δ₂_pos).mpr hlt)
#align metric.cthickening_subset_thickening' Metric.cthickening_subset_thickening'

/-- The open thickening `Metric.thickening δ E` is contained in the closed thickening
`Metric.cthickening δ E` with the same radius. -/
theorem thickening_subset_cthickening (δ : ℝ) (E : Set α) : thickening δ E ⊆ cthickening δ E := by
  intro x hx
  rw [thickening, mem_setOf_eq] at hx
  exact hx.le
#align metric.thickening_subset_cthickening Metric.thickening_subset_cthickening

theorem thickening_subset_cthickening_of_le {δ₁ δ₂ : ℝ} (hle : δ₁ ≤ δ₂) (E : Set α) :
    thickening δ₁ E ⊆ cthickening δ₂ E :=
  (thickening_subset_cthickening δ₁ E).trans (cthickening_mono hle E)
#align metric.thickening_subset_cthickening_of_le Metric.thickening_subset_cthickening_of_le

theorem Bounded.cthickening {α : Type*} [PseudoMetricSpace α] {δ : ℝ} {E : Set α} (h : Bounded E) :
    Bounded (cthickening δ E) := by
  have : Bounded (thickening (max (δ + 1) 1) E) := h.thickening
  apply Bounded.mono _ this
  exact cthickening_subset_thickening' (zero_lt_one.trans_le (le_max_right _ _))
    ((lt_add_one _).trans_le (le_max_left _ _)) _
#align metric.bounded.cthickening Metric.Bounded.cthickening

theorem thickening_subset_interior_cthickening (δ : ℝ) (E : Set α) :
    thickening δ E ⊆ interior (cthickening δ E) :=
  (subset_interior_iff_isOpen.mpr isOpen_thickening).trans
    (interior_mono (thickening_subset_cthickening δ E))
#align metric.thickening_subset_interior_cthickening Metric.thickening_subset_interior_cthickening

theorem closure_thickening_subset_cthickening (δ : ℝ) (E : Set α) :
    closure (thickening δ E) ⊆ cthickening δ E :=
  (closure_mono (thickening_subset_cthickening δ E)).trans isClosed_cthickening.closure_subset
#align metric.closure_thickening_subset_cthickening Metric.closure_thickening_subset_cthickening

/-- The closed thickening of a set contains the closure of the set. -/
theorem closure_subset_cthickening (δ : ℝ) (E : Set α) : closure E ⊆ cthickening δ E := by
  rw [← cthickening_of_nonpos (min_le_right δ 0)]
  exact cthickening_mono (min_le_left δ 0) E
#align metric.closure_subset_cthickening Metric.closure_subset_cthickening

/-- The (open) thickening of a set contains the closure of the set. -/
theorem closure_subset_thickening {δ : ℝ} (δ_pos : 0 < δ) (E : Set α) :
    closure E ⊆ thickening δ E := by
  rw [← cthickening_zero]
  exact cthickening_subset_thickening' δ_pos δ_pos E
#align metric.closure_subset_thickening Metric.closure_subset_thickening

/-- A set is contained in its own (open) thickening. -/
theorem self_subset_thickening {δ : ℝ} (δ_pos : 0 < δ) (E : Set α) : E ⊆ thickening δ E :=
  (@subset_closure _ _ E).trans (closure_subset_thickening δ_pos E)
#align metric.self_subset_thickening Metric.self_subset_thickening

/-- A set is contained in its own closed thickening. -/
theorem self_subset_cthickening {δ : ℝ} (E : Set α) : E ⊆ cthickening δ E :=
  subset_closure.trans (closure_subset_cthickening δ E)
#align metric.self_subset_cthickening Metric.self_subset_cthickening

theorem thickening_mem_nhdsSet (E : Set α) {δ : ℝ} (hδ : 0 < δ) : thickening δ E ∈ 𝓝ˢ E :=
  isOpen_thickening.mem_nhdsSet.2 <| self_subset_thickening hδ E
#align metric.thickening_mem_nhds_set Metric.thickening_mem_nhdsSet

theorem cthickening_mem_nhdsSet (E : Set α) {δ : ℝ} (hδ : 0 < δ) : cthickening δ E ∈ 𝓝ˢ E :=
  mem_of_superset (thickening_mem_nhdsSet E hδ) (thickening_subset_cthickening _ _)
#align metric.cthickening_mem_nhds_set Metric.cthickening_mem_nhdsSet

@[simp]
theorem thickening_union (δ : ℝ) (s t : Set α) :
    thickening δ (s ∪ t) = thickening δ s ∪ thickening δ t := by
  simp_rw [thickening, infEdist_union, inf_eq_min, min_lt_iff, setOf_or]
#align metric.thickening_union Metric.thickening_union

@[simp]
theorem cthickening_union (δ : ℝ) (s t : Set α) :
    cthickening δ (s ∪ t) = cthickening δ s ∪ cthickening δ t := by
  simp_rw [cthickening, infEdist_union, inf_eq_min, min_le_iff, setOf_or]
#align metric.cthickening_union Metric.cthickening_union

@[simp]
theorem thickening_iUnion (δ : ℝ) (f : ι → Set α) :
    thickening δ (⋃ i, f i) = ⋃ i, thickening δ (f i) := by
  simp_rw [thickening, infEdist_iUnion, iInf_lt_iff, setOf_exists]
#align metric.thickening_Union Metric.thickening_iUnion

theorem ediam_cthickening_le (ε : ℝ≥0) :
    EMetric.diam (cthickening ε s) ≤ EMetric.diam s + 2 * ε := by
  refine' diam_le fun x hx y hy => ENNReal.le_of_forall_pos_le_add fun δ hδ _ => _
  rw [mem_cthickening_iff, ENNReal.ofReal_coe_nnreal] at hx hy
  have hε : (ε : ℝ≥0∞) < ε + δ := ENNReal.coe_lt_coe.2 (lt_add_of_pos_right _ hδ)
  replace hx := hx.trans_lt hε
  obtain ⟨x', hx', hxx'⟩ := infEdist_lt_iff.mp hx
  calc
    edist x y ≤ edist x x' + edist y x' := edist_triangle_right _ _ _
    _ ≤ ε + δ + (infEdist y s + EMetric.diam s) :=
      add_le_add hxx'.le (edist_le_infEdist_add_ediam hx')
    _ ≤ ε + δ + (ε + EMetric.diam s) := add_le_add_left (add_le_add_right hy _) _
    _ = _ := by rw [two_mul]; ac_rfl
#align metric.ediam_cthickening_le Metric.ediam_cthickening_le

theorem ediam_thickening_le (ε : ℝ≥0) : EMetric.diam (thickening ε s) ≤ EMetric.diam s + 2 * ε :=
  (EMetric.diam_mono <| thickening_subset_cthickening _ _).trans <| ediam_cthickening_le _
#align metric.ediam_thickening_le Metric.ediam_thickening_le

theorem diam_cthickening_le {α : Type*} [PseudoMetricSpace α] (s : Set α) (hε : 0 ≤ ε) :
    diam (cthickening ε s) ≤ diam s + 2 * ε := by
  lift ε to ℝ≥0 using hε
  refine (toReal_le_add' (ediam_cthickening_le _) ?_ ?_).trans_eq ?_
  · exact fun h ↦ top_unique <| h ▸ EMetric.diam_mono (self_subset_cthickening _)
  · simp [mul_eq_top]
  · simp [diam]
#align metric.diam_cthickening_le Metric.diam_cthickening_le

theorem diam_thickening_le {α : Type*} [PseudoMetricSpace α] (s : Set α) (hε : 0 ≤ ε) :
    diam (thickening ε s) ≤ diam s + 2 * ε := by
  by_cases hs : Bounded s
  · exact (diam_mono (thickening_subset_cthickening _ _) hs.cthickening).trans
      (diam_cthickening_le _ hε)
  obtain rfl | hε := hε.eq_or_lt
  · simp [thickening_of_nonpos, diam_nonneg]
  · rw [diam_eq_zero_of_unbounded (mt (Bounded.mono <| self_subset_thickening hε _) hs)]
    positivity
#align metric.diam_thickening_le Metric.diam_thickening_le

@[simp]
theorem thickening_closure : thickening δ (closure s) = thickening δ s := by
  simp_rw [thickening, infEdist_closure]
#align metric.thickening_closure Metric.thickening_closure

@[simp]
theorem cthickening_closure : cthickening δ (closure s) = cthickening δ s := by
  simp_rw [cthickening, infEdist_closure]
#align metric.cthickening_closure Metric.cthickening_closure

open ENNReal

theorem _root_.GRWTSK.Topology.GeneralTopology.InfEdist.Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.Disjoint.exists_thickenings (hst : Disjoint s t) (hs : IsCompact s)
    (ht : IsClosed t) :
    ∃ δ, 0 < δ ∧ Disjoint (thickening δ s) (thickening δ t) := by
  obtain ⟨r, hr, h⟩ := exists_pos_forall_lt_edist hs ht hst
  refine' ⟨r / 2, half_pos (NNReal.coe_pos.2 hr), _⟩
  rw [disjoint_iff_inf_le]
  rintro z ⟨hzs, hzt⟩
  rw [mem_thickening_iff_exists_edist_lt] at hzs hzt
  rw [← NNReal.coe_two, ← NNReal.coe_div, ENNReal.ofReal_coe_nnreal] at hzs hzt
  obtain ⟨x, hx, hzx⟩ := hzs
  obtain ⟨y, hy, hzy⟩ := hzt
  refine' (h x hx y hy).not_le _
  calc
    edist x y ≤ edist z x + edist z y := edist_triangle_left _ _ _
    _ ≤ ↑(r / 2) + ↑(r / 2) := (add_le_add hzx.le hzy.le)
    _ = r := by rw [← ENNReal.coe_add, add_halves]
#align disjoint.exists_thickenings Disjoint.exists_thickenings

theorem _root_.GRWTSK.Topology.GeneralTopology.InfEdist.Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.Disjoint.exists_cthickenings (hst : Disjoint s t) (hs : IsCompact s)
    (ht : IsClosed t) :
    ∃ δ, 0 < δ ∧ Disjoint (cthickening δ s) (cthickening δ t) := by
  obtain ⟨δ, hδ, h⟩ := hst.exists_thickenings hs ht
  refine' ⟨δ / 2, half_pos hδ, h.mono _ _⟩ <;>
    exact cthickening_subset_thickening' hδ (half_lt_self hδ) _
#align disjoint.exists_cthickenings Disjoint.exists_cthickenings

theorem _root_.GRWTSK.Topology.GeneralTopology.InfEdist.Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.IsCompact.exists_cthickening_subset_open (hs : IsCompact s) (ht : IsOpen t)
    (hst : s ⊆ t) :
    ∃ δ, 0 < δ ∧ cthickening δ s ⊆ t :=
  (hst.disjoint_compl_right.exists_cthickenings hs ht.isClosed_compl).imp fun _ h =>
    ⟨h.1, disjoint_compl_right_iff_subset.1 <| h.2.mono_right <| self_subset_cthickening _⟩
#align is_compact.exists_cthickening_subset_open IsCompact.exists_cthickening_subset_open

theorem _root_.GRWTSK.Topology.GeneralTopology.InfEdist.Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.IsCompact.exists_isCompact_cthickening [LocallyCompactSpace α] (hs : IsCompact s) :
    ∃ δ, 0 < δ ∧ IsCompact (cthickening δ s) := by
  rcases exists_compact_superset hs with ⟨K, K_compact, hK⟩
  rcases hs.exists_cthickening_subset_open isOpen_interior hK with ⟨δ, δpos, hδ⟩
  refine ⟨δ, δpos, ?_⟩
  exact isCompact_of_isClosed_subset K_compact isClosed_cthickening (hδ.trans interior_subset)

theorem _root_.GRWTSK.Topology.GeneralTopology.InfEdist.Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.IsCompact.exists_thickening_subset_open (hs : IsCompact s) (ht : IsOpen t)
    (hst : s ⊆ t) : ∃ δ, 0 < δ ∧ thickening δ s ⊆ t :=
  let ⟨δ, h₀, hδ⟩ := hs.exists_cthickening_subset_open ht hst
  ⟨δ, h₀, (thickening_subset_cthickening _ _).trans hδ⟩
#align is_compact.exists_thickening_subset_open IsCompact.exists_thickening_subset_open

theorem hasBasis_nhdsSet_thickening {K : Set α} (hK : IsCompact K) :
    (𝓝ˢ K).HasBasis (fun δ : ℝ => 0 < δ) fun δ => thickening δ K :=
  (hasBasis_nhdsSet K).to_has_basis' (fun _U hU => hK.exists_thickening_subset_open hU.1 hU.2)
    fun _ => thickening_mem_nhdsSet K
#align metric.has_basis_nhds_set_thickening Metric.hasBasis_nhdsSet_thickening

theorem hasBasis_nhdsSet_cthickening {K : Set α} (hK : IsCompact K) :
    (𝓝ˢ K).HasBasis (fun δ : ℝ => 0 < δ) fun δ => cthickening δ K :=
  (hasBasis_nhdsSet K).to_has_basis' (fun _U hU => hK.exists_cthickening_subset_open hU.1 hU.2)
    fun _ => cthickening_mem_nhdsSet K
#align metric.has_basis_nhds_set_cthickening Metric.hasBasis_nhdsSet_cthickening

theorem cthickening_eq_iInter_cthickening' {δ : ℝ} (s : Set ℝ) (hsδ : s ⊆ Ioi δ)
    (hs : ∀ ε, δ < ε → (s ∩ Ioc δ ε).Nonempty) (E : Set α) :
    cthickening δ E = ⋂ ε ∈ s, cthickening ε E := by
  apply Subset.antisymm
  · exact subset_iInter₂ fun _ hε => cthickening_mono (le_of_lt (hsδ hε)) E
  · unfold cthickening
    intro x hx
    simp only [mem_iInter, mem_setOf_eq] at *
    apply ENNReal.le_of_forall_pos_le_add
    intro η η_pos _
    rcases hs (δ + η) (lt_add_of_pos_right _ (NNReal.coe_pos.mpr η_pos)) with ⟨ε, ⟨hsε, hε⟩⟩
    apply ((hx ε hsε).trans (ENNReal.ofReal_le_ofReal hε.2)).trans
    rw [ENNReal.coe_nnreal_eq η]
    exact ENNReal.ofReal_add_le
#align metric.cthickening_eq_Inter_cthickening' Metric.cthickening_eq_iInter_cthickening'

theorem cthickening_eq_iInter_cthickening {δ : ℝ} (E : Set α) :
    cthickening δ E = ⋂ (ε : ℝ) (_ : δ < ε), cthickening ε E := by
  apply cthickening_eq_iInter_cthickening' (Ioi δ) rfl.subset
  simp_rw [inter_eq_right_iff_subset.mpr Ioc_subset_Ioi_self]
  exact fun _ hε => nonempty_Ioc.mpr hε
#align metric.cthickening_eq_Inter_cthickening Metric.cthickening_eq_iInter_cthickening

theorem cthickening_eq_iInter_thickening' {δ : ℝ} (δ_nn : 0 ≤ δ) (s : Set ℝ) (hsδ : s ⊆ Ioi δ)
    (hs : ∀ ε, δ < ε → (s ∩ Ioc δ ε).Nonempty) (E : Set α) :
    cthickening δ E = ⋂ ε ∈ s, thickening ε E := by
  refine' (subset_iInter₂ fun ε hε => _).antisymm _
  · obtain ⟨ε', -, hε'⟩ := hs ε (hsδ hε)
    have ss := cthickening_subset_thickening' (lt_of_le_of_lt δ_nn hε'.1) hε'.1 E
    exact ss.trans (thickening_mono hε'.2 E)
  · rw [cthickening_eq_iInter_cthickening' s hsδ hs E]
    exact iInter₂_mono fun ε _ => thickening_subset_cthickening ε E
#align metric.cthickening_eq_Inter_thickening' Metric.cthickening_eq_iInter_thickening'

theorem cthickening_eq_iInter_thickening {δ : ℝ} (δ_nn : 0 ≤ δ) (E : Set α) :
    cthickening δ E = ⋂ (ε : ℝ) (_ : δ < ε), thickening ε E := by
  apply cthickening_eq_iInter_thickening' δ_nn (Ioi δ) rfl.subset
  simp_rw [inter_eq_right_iff_subset.mpr Ioc_subset_Ioi_self]
  exact fun _ hε => nonempty_Ioc.mpr hε
#align metric.cthickening_eq_Inter_thickening Metric.cthickening_eq_iInter_thickening

theorem cthickening_eq_iInter_thickening'' (δ : ℝ) (E : Set α) :
    cthickening δ E = ⋂ (ε : ℝ) (_ : max 0 δ < ε), thickening ε E := by
  rw [← cthickening_max_zero, cthickening_eq_iInter_thickening]
  exact le_max_left _ _
#align metric.cthickening_eq_Inter_thickening'' Metric.cthickening_eq_iInter_thickening''

/-- The closure of a set equals the intersection of its closed thickenings of positive radii
accumulating at zero. -/
theorem closure_eq_iInter_cthickening' (E : Set α) (s : Set ℝ)
    (hs : ∀ ε, 0 < ε → (s ∩ Ioc 0 ε).Nonempty) : closure E = ⋂ δ ∈ s, cthickening δ E := by
  by_cases hs₀ : s ⊆ Ioi 0
  · rw [← cthickening_zero]
    apply cthickening_eq_iInter_cthickening' _ hs₀ hs
  obtain ⟨δ, hδs, δ_nonpos⟩ := not_subset.mp hs₀
  rw [Set.mem_Ioi, not_lt] at δ_nonpos
  apply Subset.antisymm
  · exact subset_iInter₂ fun ε _ => closure_subset_cthickening ε E
  · rw [← cthickening_of_nonpos δ_nonpos E]
    exact biInter_subset_of_mem hδs
#align metric.closure_eq_Inter_cthickening' Metric.closure_eq_iInter_cthickening'

/-- The closure of a set equals the intersection of its closed thickenings of positive radii. -/
theorem closure_eq_iInter_cthickening (E : Set α) :
    closure E = ⋂ (δ : ℝ) (_ : 0 < δ), cthickening δ E := by
  rw [← cthickening_zero]
  exact cthickening_eq_iInter_cthickening E
#align metric.closure_eq_Inter_cthickening Metric.closure_eq_iInter_cthickening

/-- The closure of a set equals the intersection of its open thickenings of positive radii
accumulating at zero. -/
theorem closure_eq_iInter_thickening' (E : Set α) (s : Set ℝ) (hs₀ : s ⊆ Ioi 0)
    (hs : ∀ ε, 0 < ε → (s ∩ Ioc 0 ε).Nonempty) : closure E = ⋂ δ ∈ s, thickening δ E := by
  rw [← cthickening_zero]
  apply cthickening_eq_iInter_thickening' le_rfl _ hs₀ hs
#align metric.closure_eq_Inter_thickening' Metric.closure_eq_iInter_thickening'

/-- The closure of a set equals the intersection of its (open) thickenings of positive radii. -/
theorem closure_eq_iInter_thickening (E : Set α) :
    closure E = ⋂ (δ : ℝ) (_ : 0 < δ), thickening δ E := by
  rw [← cthickening_zero]
  exact cthickening_eq_iInter_thickening rfl.ge E
#align metric.closure_eq_Inter_thickening Metric.closure_eq_iInter_thickening

/-- The frontier of the closed thickening of a set is contained in an `EMetric.infEdist` level
set. -/
theorem frontier_cthickening_subset (E : Set α) {δ : ℝ} :
    frontier (cthickening δ E) ⊆ { x : α | infEdist x E = ENNReal.ofReal δ } :=
  frontier_le_subset_eq continuous_infEdist continuous_const
#align metric.frontier_cthickening_subset Metric.frontier_cthickening_subset

/-- The closed ball of radius `δ` centered at a point of `E` is included in the closed
thickening of `E`. -/
theorem closedBall_subset_cthickening {α : Type*} [PseudoMetricSpace α] {x : α} {E : Set α}
    (hx : x ∈ E) (δ : ℝ) : closedBall x δ ⊆ cthickening δ E := by
  refine' (closedBall_subset_cthickening_singleton _ _).trans (cthickening_subset_of_subset _ _)
  simpa using hx
#align metric.closed_ball_subset_cthickening Metric.closedBall_subset_cthickening

theorem cthickening_subset_iUnion_closedBall_of_lt {α : Type*} [PseudoMetricSpace α] (E : Set α)
    {δ δ' : ℝ} (hδ₀ : 0 < δ') (hδδ' : δ < δ') : cthickening δ E ⊆ ⋃ x ∈ E, closedBall x δ' := by
  refine' (cthickening_subset_thickening' hδ₀ hδδ' E).trans fun x hx => _
  obtain ⟨y, hy₁, hy₂⟩ := mem_thickening_iff.mp hx
  exact mem_iUnion₂.mpr ⟨y, hy₁, hy₂.le⟩
#align metric.cthickening_subset_Union_closed_ball_of_lt Metric.cthickening_subset_iUnion_closedBall_of_lt

/-- The closed thickening of a compact set `E` is the union of the balls `Metric.closedBall x δ`
over `x ∈ E`.

See also `Metric.cthickening_eq_biUnion_closedBall`. -/
theorem _root_.GRWTSK.Topology.GeneralTopology.InfEdist.Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.IsCompact.cthickening_eq_biUnion_closedBall {α : Type*} [PseudoMetricSpace α]
    {δ : ℝ} {E : Set α} (hE : IsCompact E) (hδ : 0 ≤ δ) :
    cthickening δ E = ⋃ x ∈ E, closedBall x δ := by
  rcases eq_empty_or_nonempty E with (rfl | hne)
  · simp only [cthickening_empty, biUnion_empty]
  refine Subset.antisymm (fun x hx ↦ ?_)
    (iUnion₂_subset fun x hx ↦ closedBall_subset_cthickening hx _)
  obtain ⟨y, yE, hy⟩ : ∃ y ∈ E, infEdist x E = edist x y := hE.exists_infEdist_eq_edist hne _
  have D1 : edist x y ≤ ENNReal.ofReal δ := (le_of_eq hy.symm).trans hx
  have D2 : dist x y ≤ δ := by
    rw [edist_dist] at D1
    exact (ENNReal.ofReal_le_ofReal_iff hδ).1 D1
  exact mem_biUnion yE D2
#align is_compact.cthickening_eq_bUnion_closed_ball IsCompact.cthickening_eq_biUnion_closedBall

theorem cthickening_eq_biUnion_closedBall {α : Type*} [PseudoMetricSpace α] [ProperSpace α]
    (E : Set α) (hδ : 0 ≤ δ) : cthickening δ E = ⋃ x ∈ closure E, closedBall x δ := by
  rcases eq_empty_or_nonempty E with (rfl | hne)
  · simp only [cthickening_empty, biUnion_empty, closure_empty]
  rw [← cthickening_closure]
  refine Subset.antisymm (fun x hx ↦ ?_)
    (iUnion₂_subset fun x hx ↦ closedBall_subset_cthickening hx _)
  obtain ⟨y, yE, hy⟩ : ∃ y ∈ closure E, infDist x (closure E) = dist x y :=
    isClosed_closure.exists_infDist_eq_dist (closure_nonempty_iff.mpr hne) x
  replace hy : dist x y ≤ δ :=
    (ENNReal.ofReal_le_ofReal_iff hδ).mp
      (((congr_arg ENNReal.ofReal hy.symm).le.trans ENNReal.ofReal_toReal_le).trans hx)
  exact mem_biUnion yE hy
#align metric.cthickening_eq_bUnion_closed_ball Metric.cthickening_eq_biUnion_closedBall

nonrec theorem _root_.GRWTSK.Topology.GeneralTopology.InfEdist.Variantbc72ae77d59f85fd33c66aae4da67b144557a3ec0cf70f7a2b25e327b2a7b695.IsClosed.cthickening_eq_biUnion_closedBall {α : Type*} [PseudoMetricSpace α]
    [ProperSpace α] {E : Set α} (hE : IsClosed E) (hδ : 0 ≤ δ) :
    cthickening δ E = ⋃ x ∈ E, closedBall x δ := by
  rw [cthickening_eq_biUnion_closedBall E hδ, hE.closure_eq]
#align is_closed.cthickening_eq_bUnion_closed_ball IsClosed.cthickening_eq_biUnion_closedBall

/-- For the equality, see `infEdist_cthickening`. -/
theorem infEdist_le_infEdist_cthickening_add :
    infEdist x s ≤ infEdist x (cthickening δ s) + ENNReal.ofReal δ := by
  refine' le_of_forall_lt' fun r h => _
  simp_rw [← lt_tsub_iff_right, infEdist_lt_iff, mem_cthickening_iff] at h
  obtain ⟨y, hy, hxy⟩ := h
  exact infEdist_le_edist_add_infEdist.trans_lt
    ((ENNReal.add_lt_add_of_lt_of_le (hy.trans_lt ENNReal.ofReal_lt_top).ne hxy hy).trans_eq
      (tsub_add_cancel_of_le <| le_self_add.trans (lt_tsub_iff_left.1 hxy).le))
#align metric.inf_edist_le_inf_edist_cthickening_add Metric.infEdist_le_infEdist_cthickening_add

/-- For the equality, see `infEdist_thickening`. -/
theorem infEdist_le_infEdist_thickening_add :
    infEdist x s ≤ infEdist x (thickening δ s) + ENNReal.ofReal δ :=
  infEdist_le_infEdist_cthickening_add.trans <|
    add_le_add_right (infEdist_anti <| thickening_subset_cthickening _ _) _
#align metric.inf_edist_le_inf_edist_thickening_add Metric.infEdist_le_infEdist_thickening_add

/-- For the equality, see `thickening_thickening`. -/
@[simp]
theorem thickening_thickening_subset (ε δ : ℝ) (s : Set α) :
    thickening ε (thickening δ s) ⊆ thickening (ε + δ) s := by
  obtain hε | hε := le_total ε 0
  · simp only [thickening_of_nonpos hε, empty_subset]
  obtain hδ | hδ := le_total δ 0
  · simp only [thickening_of_nonpos hδ, thickening_empty, empty_subset]
  intro x
  simp_rw [mem_thickening_iff_exists_edist_lt, ENNReal.ofReal_add hε hδ]
  exact fun ⟨y, ⟨z, hz, hy⟩, hx⟩ =>
    ⟨z, hz, (edist_triangle _ _ _).trans_lt <| ENNReal.add_lt_add hx hy⟩
#align metric.thickening_thickening_subset Metric.thickening_thickening_subset

/-- For the equality, see `thickening_cthickening`. -/
@[simp]
theorem thickening_cthickening_subset (ε : ℝ) (hδ : 0 ≤ δ) (s : Set α) :
    thickening ε (cthickening δ s) ⊆ thickening (ε + δ) s := by
  obtain hε | hε := le_total ε 0
  · simp only [thickening_of_nonpos hε, empty_subset]
  intro x
  simp_rw [mem_thickening_iff_exists_edist_lt, mem_cthickening_iff, ← infEdist_lt_iff,
    ENNReal.ofReal_add hε hδ]
  rintro ⟨y, hy, hxy⟩
  exact infEdist_le_edist_add_infEdist.trans_lt
    (ENNReal.add_lt_add_of_lt_of_le (hy.trans_lt ENNReal.ofReal_lt_top).ne hxy hy)
#align metric.thickening_cthickening_subset Metric.thickening_cthickening_subset

/-- For the equality, see `cthickening_thickening`. -/
@[simp]
theorem cthickening_thickening_subset (hε : 0 ≤ ε) (δ : ℝ) (s : Set α) :
    cthickening ε (thickening δ s) ⊆ cthickening (ε + δ) s := by
  obtain hδ | hδ := le_total δ 0
  · simp only [thickening_of_nonpos hδ, cthickening_empty, empty_subset]
  intro x
  simp_rw [mem_cthickening_iff, ENNReal.ofReal_add hε hδ]
  exact fun hx => infEdist_le_infEdist_thickening_add.trans (add_le_add_right hx _)
#align metric.cthickening_thickening_subset Metric.cthickening_thickening_subset

/-- For the equality, see `cthickening_cthickening`. -/
@[simp]
theorem cthickening_cthickening_subset (hε : 0 ≤ ε) (hδ : 0 ≤ δ) (s : Set α) :
    cthickening ε (cthickening δ s) ⊆ cthickening (ε + δ) s := by
  intro x
  simp_rw [mem_cthickening_iff, ENNReal.ofReal_add hε hδ]
  exact fun hx => infEdist_le_infEdist_cthickening_add.trans (add_le_add_right hx _)
#align metric.cthickening_cthickening_subset Metric.cthickening_cthickening_subset

theorem frontier_cthickening_disjoint (A : Set α) :
    Pairwise (Disjoint on fun r : ℝ≥0 => frontier (cthickening r A)) := fun r₁ r₂ hr =>
  ((disjoint_singleton.2 <| by simpa).preimage _).mono (frontier_cthickening_subset _)
    (frontier_cthickening_subset _)
#align metric.frontier_cthickening_disjoint Metric.frontier_cthickening_disjoint

end Cthickening

end Metric
