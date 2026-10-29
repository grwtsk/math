-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.OneSub.Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.OneSub.Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5","mathematical_subject":"Topology.GeneralTopology","original_sha256":"2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/NormedSpace/Units.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Heather Macbeth. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Heather Macbeth
-/
import Mathlib.Topology.Algebra.Ring.Ideal
import Mathlib.Analysis.SpecificLimits.Normed


namespace GRWTSK.Topology.GeneralTopology.OneSub.Variant2a90c0a82a0873f25b37c291bf6bdb0e56541a64d4cc22eacd1ecdb14950fec5

#align_import analysis.normed_space.units from "leanprover-community/mathlib"@"9a59dcb7a2d06bf55da57b9030169219980660cd"

/-!
# The group of units of a complete normed ring

This file contains the basic theory for the group of units (invertible elements) of a complete
normed ring (Banach algebras being a notable special case).

## Main results

The constructions `Units.oneSub`, `Units.add`, and `Units.ofNearby` state, in varying forms, that
perturbations of a unit are units. The latter two are not stated in their optimal form; more precise
versions would use the spectral radius.

The first main result is `Units.isOpen`: the group of units of a complete normed ring is an open
subset of the ring.

The function `Ring.inverse` (defined elsewhere), for a ring `R`, sends `a : R` to `a⁻¹` if `a` is a
unit and `0` if not.  The other major results of this file (notably `NormedRing.inverse_add`,
`NormedRing.inverse_add_norm` and `NormedRing.inverse_add_norm_diff_nth_order`) cover the asymptotic
properties of `Ring.inverse (x + t)` as `t → 0`.
-/

noncomputable section

open Topology

variable {R : Type*} [NormedRing R] [CompleteSpace R]

namespace Units

/-- In a complete normed ring, a perturbation of `1` by an element `t` of distance less than `1`
from `1` is a unit.  Here we construct its `Units` structure.  -/
@[simps val]
def oneSub (t : R) (h : ‖t‖ < 1) : Rˣ where
  val := 1 - t
  inv := ∑' n : ℕ, t ^ n
  val_inv := mul_neg_geom_series t h
  inv_val := geom_series_mul_neg t h
#align units.one_sub Units.oneSub
#align units.coe_one_sub Units.val_oneSub

/-- In a complete normed ring, a perturbation of a unit `x` by an element `t` of distance less than
`‖x⁻¹‖⁻¹` from `x` is a unit.  Here we construct its `Units` structure. -/
@[simps! val]
def add (x : Rˣ) (t : R) (h : ‖t‖ < ‖(↑x⁻¹ : R)‖⁻¹) : Rˣ :=
  Units.copy -- to make `add_val` true definitionally, for convenience
    (x * Units.oneSub (-((x⁻¹).1 * t)) (by
      nontriviality R using zero_lt_one
      have hpos : 0 < ‖(↑x⁻¹ : R)‖ := Units.norm_pos x⁻¹
      calc
        ‖-(↑x⁻¹ * t)‖ = ‖↑x⁻¹ * t‖ := by rw [norm_neg]
        _ ≤ ‖(↑x⁻¹ : R)‖ * ‖t‖ := norm_mul_le (x⁻¹).1 _
        _ < ‖(↑x⁻¹ : R)‖ * ‖(↑x⁻¹ : R)‖⁻¹ := by nlinarith only [h, hpos]
        _ = 1 := mul_inv_cancel (ne_of_gt hpos)))
    (x + t) (by simp [mul_add]) _ rfl
#align units.add Units.add
#align units.coe_add Units.val_add

/-- In a complete normed ring, an element `y` of distance less than `‖x⁻¹‖⁻¹` from `x` is a unit.
Here we construct its `Units` structure. -/
@[simps! val]
def ofNearby (x : Rˣ) (y : R) (h : ‖y - x‖ < ‖(↑x⁻¹ : R)‖⁻¹) : Rˣ :=
  (x.add (y - x : R) h).copy y (by simp) _ rfl
#align units.unit_of_nearby Units.ofNearby
#align units.coe_unit_of_nearby Units.val_ofNearby

/-- The group of units of a complete normed ring is an open subset of the ring. -/
protected theorem isOpen : IsOpen { x : R | IsUnit x } := by
  nontriviality R
  apply Metric.isOpen_iff.mpr
  rintro _ ⟨x, rfl⟩
  refine' ⟨‖(↑x⁻¹ : R)‖⁻¹, _root_.inv_pos.mpr (Units.norm_pos x⁻¹), fun y hy ↦ _⟩
  rw [mem_ball_iff_norm] at hy
  exact (x.ofNearby y hy).isUnit
#align units.is_open Units.isOpen

protected theorem nhds (x : Rˣ) : { x : R | IsUnit x } ∈ 𝓝 (x : R) :=
  IsOpen.mem_nhds Units.isOpen x.isUnit
#align units.nhds Units.nhds

end Units

namespace nonunits

/-- The `nonunits` in a complete normed ring are contained in the complement of the ball of radius
`1` centered at `1 : R`. -/
theorem subset_compl_ball : nonunits R ⊆ (Metric.ball (1 : R) 1)ᶜ := fun x hx h₁ ↦ hx <|
  sub_sub_self 1 x ▸ (Units.oneSub (1 - x) (by rwa [mem_ball_iff_norm'] at h₁)).isUnit
#align nonunits.subset_compl_ball nonunits.subset_compl_ball

-- The `nonunits` in a complete normed ring are a closed set
protected theorem isClosed : IsClosed (nonunits R) :=
  Units.isOpen.isClosed_compl
#align nonunits.is_closed nonunits.isClosed

end nonunits

namespace NormedRing

open Classical BigOperators

open Asymptotics Filter Metric Finset Ring

theorem inverse_one_sub (t : R) (h : ‖t‖ < 1) : inverse (1 - t) = ↑(Units.oneSub t h)⁻¹ := by
  rw [← inverse_unit (Units.oneSub t h), Units.val_oneSub]
#align normed_ring.inverse_one_sub NormedRing.inverse_one_sub

/-- The formula `Ring.inverse (x + t) = Ring.inverse (1 + x⁻¹ * t) * x⁻¹` holds for `t` sufficiently
small. -/
theorem inverse_add (x : Rˣ) :
    ∀ᶠ t in 𝓝 0, inverse ((x : R) + t) = inverse (1 + ↑x⁻¹ * t) * ↑x⁻¹ := by
  nontriviality R
  rw [Metric.eventually_nhds_iff]
  refine ⟨‖(↑x⁻¹ : R)‖⁻¹, by cancel_denoms, fun t ht ↦ ?_⟩
  rw [dist_zero_right] at ht
  rw [← x.val_add t ht, inverse_unit, Units.add, Units.copy_eq, mul_inv_rev, Units.val_mul,
    ← inverse_unit, Units.val_oneSub, sub_neg_eq_add]
#align normed_ring.inverse_add NormedRing.inverse_add

theorem inverse_one_sub_nth_order' (n : ℕ) {t : R} (ht : ‖t‖ < 1) :
    inverse ((1 : R) - t) = (∑ i in range n, t ^ i) + t ^ n * inverse (1 - t) :=
  have := NormedRing.summable_geometric_of_norm_lt_1 t ht
  calc inverse (1 - t) = ∑' i : ℕ, t ^ i := inverse_one_sub t ht
    _ = ∑ i in range n, t ^ i + ∑' i : ℕ, t ^ (i + n) := (sum_add_tsum_nat_add _ this).symm
    _ = (∑ i in range n, t ^ i) + t ^ n * inverse (1 - t) := by
      simp only [inverse_one_sub t ht, add_comm _ n, pow_add, this.tsum_mul_left]; rfl

theorem inverse_one_sub_nth_order (n : ℕ) :
    ∀ᶠ t in 𝓝 0, inverse ((1 : R) - t) = (∑ i in range n, t ^ i) + t ^ n * inverse (1 - t) :=
  Metric.eventually_nhds_iff.2 ⟨1, one_pos, fun t ht ↦ inverse_one_sub_nth_order' n <| by
    rwa [← dist_zero_right]⟩
#align normed_ring.inverse_one_sub_nth_order NormedRing.inverse_one_sub_nth_order


/-- The formula
`Ring.inverse (x + t) =
  (∑ i in Finset.range n, (- x⁻¹ * t) ^ i) * x⁻¹ + (- x⁻¹ * t) ^ n * Ring.inverse (x + t)`
holds for `t` sufficiently small. -/
theorem inverse_add_nth_order (x : Rˣ) (n : ℕ) :
    ∀ᶠ t in 𝓝 0, inverse ((x : R) + t) =
      (∑ i in range n, (-↑x⁻¹ * t) ^ i) * ↑x⁻¹ + (-↑x⁻¹ * t) ^ n * inverse (x + t) := by
  have hzero : Tendsto (-(↑x⁻¹ : R) * ·) (𝓝 0) (𝓝 0) :=
    (mulLeft_continuous _).tendsto' _ _ <| mul_zero _
  filter_upwards [inverse_add x, hzero.eventually (inverse_one_sub_nth_order n)] with t ht ht'
  rw [neg_mul, sub_neg_eq_add] at ht'
  conv_lhs => rw [ht, ht', add_mul, ← neg_mul, mul_assoc]
  rw [ht]
#align normed_ring.inverse_add_nth_order NormedRing.inverse_add_nth_order

theorem inverse_one_sub_norm : (fun t : R => inverse (1 - t)) =O[𝓝 0] (fun _t => 1 : R → ℝ) := by
  simp only [IsBigO, IsBigOWith, Metric.eventually_nhds_iff]
  refine ⟨‖(1 : R)‖ + 1, (2 : ℝ)⁻¹, by norm_num, fun t ht ↦ ?_⟩
  rw [dist_zero_right] at ht
  have ht' : ‖t‖ < 1 := by
    have : (2 : ℝ)⁻¹ < 1 := by cancel_denoms
    linarith
  simp only [inverse_one_sub t ht', norm_one, mul_one, Set.mem_setOf_eq]
  change ‖∑' n : ℕ, t ^ n‖ ≤ _
  have := NormedRing.tsum_geometric_of_norm_lt_1 t ht'
  have : (1 - ‖t‖)⁻¹ ≤ 2 := by
    rw [← inv_inv (2 : ℝ)]
    refine' inv_le_inv_of_le (by norm_num) _
    have : (2 : ℝ)⁻¹ + (2 : ℝ)⁻¹ = 1 := by ring
    linarith
  linarith
#align normed_ring.inverse_one_sub_norm NormedRing.inverse_one_sub_norm

/-- The function `fun t ↦ inverse (x + t)` is O(1) as `t → 0`. -/
theorem inverse_add_norm (x : Rˣ) : (fun t : R => inverse (↑x + t)) =O[𝓝 0] fun _t => (1 : ℝ) := by
  refine EventuallyEq.trans_isBigO (inverse_add x) (one_mul (1 : ℝ) ▸ ?_)
  simp only [← sub_neg_eq_add, ← neg_mul]
  have hzero : Tendsto (-(↑x⁻¹ : R) * ·) (𝓝 0) (𝓝 0) :=
    (mulLeft_continuous _).tendsto' _ _ <| mul_zero _
  exact (inverse_one_sub_norm.comp_tendsto hzero).mul (isBigO_const_const _ one_ne_zero _)
#align normed_ring.inverse_add_norm NormedRing.inverse_add_norm

/-- The function
`fun t ↦ Ring.inverse (x + t) - (∑ i in Finset.range n, (- x⁻¹ * t) ^ i) * x⁻¹`
is `O(t ^ n)` as `t → 0`. -/
theorem inverse_add_norm_diff_nth_order (x : Rˣ) (n : ℕ) :
    (fun t : R => inverse (↑x + t) - (∑ i in range n, (-↑x⁻¹ * t) ^ i) * ↑x⁻¹) =O[𝓝 (0 : R)]
      fun t => ‖t‖ ^ n := by
  refine EventuallyEq.trans_isBigO (.sub (inverse_add_nth_order x n) (.refl _ _)) ?_
  simp only [add_sub_cancel']
  refine ((isBigO_refl _ _).norm_right.mul (inverse_add_norm x)).trans ?_
  simp only [mul_one, isBigO_norm_left]
  exact ((isBigO_refl _ _).norm_right.const_mul_left _).pow _
#align normed_ring.inverse_add_norm_diff_nth_order NormedRing.inverse_add_norm_diff_nth_order

/-- The function `fun t ↦ Ring.inverse (x + t) - x⁻¹` is `O(t)` as `t → 0`. -/
theorem inverse_add_norm_diff_first_order (x : Rˣ) :
    (fun t : R => inverse (↑x + t) - ↑x⁻¹) =O[𝓝 0] fun t => ‖t‖ := by
  simpa using inverse_add_norm_diff_nth_order x 1
#align normed_ring.inverse_add_norm_diff_first_order NormedRing.inverse_add_norm_diff_first_order

/-- The function `fun t ↦ Ring.inverse (x + t) - x⁻¹ + x⁻¹ * t * x⁻¹` is `O(t ^ 2)` as `t → 0`. -/
theorem inverse_add_norm_diff_second_order (x : Rˣ) :
    (fun t : R => inverse (↑x + t) - ↑x⁻¹ + ↑x⁻¹ * t * ↑x⁻¹) =O[𝓝 0] fun t => ‖t‖ ^ 2 := by
  convert inverse_add_norm_diff_nth_order x 2 using 2
  simp only [sum_range_succ, sum_range_zero, zero_add, pow_zero, pow_one, add_mul, one_mul,
    ← sub_sub, neg_mul, sub_neg_eq_add]
#align normed_ring.inverse_add_norm_diff_second_order NormedRing.inverse_add_norm_diff_second_order

/-- The function `Ring.inverse` is continuous at each unit of `R`. -/
theorem inverse_continuousAt (x : Rˣ) : ContinuousAt inverse (x : R) := by
  have h_is_o : (fun t : R => inverse (↑x + t) - ↑x⁻¹) =o[𝓝 0] (fun _ => 1 : R → ℝ) :=
    (inverse_add_norm_diff_first_order x).trans_isLittleO (isLittleO_id_const one_ne_zero).norm_left
  have h_lim : Tendsto (fun y : R => y - x) (𝓝 x) (𝓝 0) := by
    refine' tendsto_zero_iff_norm_tendsto_zero.mpr _
    exact tendsto_iff_norm_tendsto_zero.mp tendsto_id
  rw [ContinuousAt, tendsto_iff_norm_tendsto_zero, inverse_unit]
  simpa [(· ∘ ·)] using h_is_o.norm_left.tendsto_div_nhds_zero.comp h_lim
#align normed_ring.inverse_continuous_at NormedRing.inverse_continuousAt

end NormedRing

namespace Units

open MulOpposite Filter NormedRing

/-- In a normed ring, the coercion from `Rˣ` (equipped with the induced topology from the
embedding in `R × R`) to `R` is an open embedding. -/
theorem openEmbedding_val : OpenEmbedding (val : Rˣ → R) where
  toEmbedding := embedding_val_mk'
    (fun _ ⟨u, hu⟩ ↦ hu ▸ (inverse_continuousAt u).continuousWithinAt) Ring.inverse_unit
  open_range := Units.isOpen
#align units.open_embedding_coe Units.openEmbedding_val

/-- In a normed ring, the coercion from `Rˣ` (equipped with the induced topology from the
embedding in `R × R`) to `R` is an open map. -/
theorem isOpenMap_val : IsOpenMap (val : Rˣ → R) :=
  openEmbedding_val.isOpenMap
#align units.is_open_map_coe Units.isOpenMap_val

end Units

namespace Ideal

/-- An ideal which contains an element within `1` of `1 : R` is the unit ideal. -/
theorem eq_top_of_norm_lt_one (I : Ideal R) {x : R} (hxI : x ∈ I) (hx : ‖1 - x‖ < 1) : I = ⊤ :=
  let u := Units.oneSub (1 - x) hx
  I.eq_top_iff_one.mpr <| by simpa only [show u.inv * x = 1 by simp] using I.mul_mem_left u.inv hxI
#align ideal.eq_top_of_norm_lt_one Ideal.eq_top_of_norm_lt_one

/-- The `Ideal.closure` of a proper ideal in a complete normed ring is proper. -/
theorem closure_ne_top (I : Ideal R) (hI : I ≠ ⊤) : I.closure ≠ ⊤ := by
  have h := closure_minimal (coe_subset_nonunits hI) nonunits.isClosed
  simpa only [I.closure.eq_top_iff_one, Ne.def] using mt (@h 1) one_not_mem_nonunits
#align ideal.closure_ne_top Ideal.closure_ne_top

/-- The `Ideal.closure` of a maximal ideal in a complete normed ring is the ideal itself. -/
theorem IsMaximal.closure_eq {I : Ideal R} (hI : I.IsMaximal) : I.closure = I :=
  (hI.eq_of_le (I.closure_ne_top hI.ne_top) subset_closure).symm
#align ideal.is_maximal.closure_eq Ideal.IsMaximal.closure_eq

/-- Maximal ideals in complete normed rings are closed. -/
instance IsMaximal.isClosed {I : Ideal R} [hI : I.IsMaximal] : IsClosed (I : Set R) :=
  isClosed_of_closure_subset <| Eq.subset <| congr_arg ((↑) : Ideal R → Set R) hI.closure_eq
#align ideal.is_maximal.is_closed Ideal.IsMaximal.isClosed

end Ideal
