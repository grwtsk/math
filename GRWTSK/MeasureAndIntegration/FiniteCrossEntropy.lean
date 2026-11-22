/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

open scoped BigOperators

namespace GRWTSK.InformationTheory

open Classical in
/-- Cross-entropy, Shannon entropy and finite KL divergence in bits. -/
theorem crossEntropyBits_eq_entropyBits_add_klBits
    {α : Type*} [Fintype α] (p q : α → ℝ)
    (_hp_nonneg : ∀ a, 0 ≤ p a) (_hq_nonneg : ∀ a, 0 ≤ q a)
    (_hp_sum : ∑ a, p a = 1) (_hq_sum : ∑ a, q a = 1)
    (hsupport : ∀ a, 0 < p a → 0 < q a) :
    (∑ a ∈ Finset.univ.filter (fun a => 0 < p a), -(p a * Real.log (q a))) /
        Real.log 2 =
      (∑ a ∈ Finset.univ.filter (fun a => 0 < p a), -(p a * Real.log (p a))) /
          Real.log 2 +
        (∑ a ∈ Finset.univ.filter (fun a => 0 < p a), p a * Real.log (p a / q a)) /
          Real.log 2 := by
  have hlog2 : Real.log (2 : ℝ) ≠ 0 := ne_of_gt (Real.log_pos (by norm_num))
  rw [← add_div, div_left_inj' hlog2, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl ?_
  intro a ha
  have hp : 0 < p a := (Finset.mem_filter.mp ha).2
  rw [Real.log_div hp.ne' (hsupport a hp).ne']
  ring

open Classical in
/-- The expected ideal bit cost of a supported coding law is at least the source entropy.
The coding law can put mass outside the source support. -/
theorem entropyBits_le_crossEntropyBits
    {α : Type*} [Fintype α] (p q : α → ℝ)
    (hp_nonneg : ∀ a, 0 ≤ p a) (hq_nonneg : ∀ a, 0 ≤ q a)
    (hp_sum : ∑ a, p a = 1) (hq_sum : ∑ a, q a = 1)
    (hsupport : ∀ a, 0 < p a → 0 < q a) :
    (∑ a ∈ Finset.univ.filter (fun a => 0 < p a), -(p a * Real.log (p a))) /
        Real.log 2 ≤
      (∑ a ∈ Finset.univ.filter (fun a => 0 < p a), -(p a * Real.log (q a))) /
        Real.log 2 := by
  let support : Finset α := Finset.univ.filter (fun a => 0 < p a)
  have hp_support : ∑ a ∈ support, p a = 1 := by
    rw [show support = Finset.univ.filter (fun a => 0 < p a) from rfl, Finset.sum_filter,
      ← hp_sum]
    refine Finset.sum_congr rfl ?_
    intro a _
    by_cases hp : 0 < p a
    · simp [hp]
    · have hp_zero : p a = 0 := le_antisymm (le_of_not_gt hp) (hp_nonneg a)
      simp [hp_zero]
  have hq_support : ∑ a ∈ support, q a ≤ 1 := by
    rw [← hq_sum]
    exact Finset.sum_le_sum_of_subset_of_nonneg (Finset.subset_univ support)
      (fun a _ _ => hq_nonneg a)
  have hkl : ∑ a ∈ support, (p a - q a) ≤ ∑ a ∈ support, p a * Real.log (p a / q a) := by
    refine Finset.sum_le_sum ?_
    intro a ha
    have hp : 0 < p a := (Finset.mem_filter.mp ha).2
    have hq : 0 < q a := hsupport a hp
    have hlog := Real.log_le_sub_one_of_pos (div_pos hq hp)
    rw [Real.log_div hq.ne' hp.ne'] at hlog
    have hweighted := mul_le_mul_of_nonneg_left hlog hp.le
    have hrhs : p a * (q a / p a - 1) = q a - p a := by
      rw [mul_sub, mul_div_cancel₀ (q a) hp.ne', mul_one]
    rw [hrhs] at hweighted
    calc
      p a - q a = -(q a - p a) := (neg_sub _ _).symm
      _ ≤ -(p a * (Real.log (q a) - Real.log (p a))) := neg_le_neg hweighted
      _ = p a * Real.log (p a / q a) := by
        rw [← mul_neg, neg_sub, Real.log_div hp.ne' hq.ne']
  rw [Finset.sum_sub_distrib, hp_support] at hkl
  have hkl_nonneg : 0 ≤ ∑ a ∈ support, p a * Real.log (p a / q a) :=
    (sub_nonneg.mpr hq_support).trans hkl
  rw [crossEntropyBits_eq_entropyBits_add_klBits p q hp_nonneg hq_nonneg hp_sum hq_sum hsupport]
  exact le_add_of_nonneg_right (div_nonneg hkl_nonneg (Real.log_pos (by norm_num)).le)

/-- A pointwise mixture loss bound in bits from one positive weighted component. -/
theorem negLogBits_le_component_add_weight
    {w q m : ℝ} (hw : 0 < w) (hq : 0 < q) (hm : w * q ≤ m) :
    -Real.log m / Real.log 2 ≤
      -Real.log q / Real.log 2 + -Real.log w / Real.log 2 := by
  have hwq : 0 < w * q := mul_pos hw hq
  have hm_pos : 0 < m := hwq.trans_le hm
  have hlog : Real.log (w * q) ≤ Real.log m :=
    (Real.log_le_log_iff hwq hm_pos).2 hm
  have hlog2 : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  calc
    -Real.log m / Real.log 2 ≤ -Real.log (w * q) / Real.log 2 :=
      div_le_div_of_nonneg_right (neg_le_neg hlog) hlog2.le
    _ = -Real.log q / Real.log 2 + -Real.log w / Real.log 2 := by
      rw [Real.log_mul hw.ne' hq.ne', ← add_div]
      ring

end GRWTSK.InformationTheory
