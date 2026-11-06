/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.NumberTheory.Harmonic.Defs
import Mathlib.Tactic

/-!
# Reciprocal separation for consecutive squared nodes

For a node at distance `k` from another node in a run starting at
`s > 0`, the squared separation is at least `k * (2*s + k)`.
There is at most one index at each distance on each side of a given
index. The partial fractions of the reciprocal give a telescoping
bound independent of the length of the run. This supplies the
reciprocal row sum used in a rounded structured Schur pivot.

Local attribution is to grwtsk contributors.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Algebra.LinearAlgebra.ConsecutiveSquareNodeSeparation

/-- Exact rational reciprocal-separation allowance for a run starting at `s`. -/
def allowance (s : ℕ) : ℚ := harmonic (2 * s) / s

private def majorant (a k : ℕ) : ℝ := ((k : ℝ) * ((a : ℝ) + k))⁻¹

private theorem sum_majorant_succ_le (a n : ℕ) (ha : 0 < a) :
    (∑ k ∈ Finset.range n, majorant a (k + 1)) ≤ (harmonic a : ℝ) / a := by
  have haR : 0 < (a : ℝ) := by exact_mod_cast ha
  have hfrac (k : ℕ) :
      majorant a (k + 1) =
        (((k + 1 : ℕ) : ℝ)⁻¹ - (((a + k + 1 : ℕ) : ℝ))⁻¹) / a := by
    simp only [majorant, Nat.cast_add, Nat.cast_one]
    have hk : 0 < (k : ℝ) + 1 := by positivity
    have hak : 0 < (a : ℝ) + k + 1 := by positivity
    have hak' : 0 < (a : ℝ) + ((k : ℝ) + 1) := by positivity
    field_simp [haR.ne', hk.ne', hak.ne', hak'.ne']
    ring
  simp_rw [hfrac]
  rw [← Finset.sum_div, Finset.sum_sub_distrib]
  have hA := Finset.sum_range_add (fun k => (((k + 1 : ℕ) : ℝ))⁻¹) a n
  have hN := Finset.sum_range_add (fun k => (((k + 1 : ℕ) : ℝ))⁻¹) n a
  rw [Nat.add_comm n a] at hN
  have hcast : (harmonic a : ℝ) = ∑ k ∈ Finset.range a, (((k + 1 : ℕ) : ℝ))⁻¹ := by
    simp [harmonic]
  have hpos : 0 ≤ ∑ k ∈ Finset.range a, (((n + k + 1 : ℕ) : ℝ))⁻¹ :=
    Finset.sum_nonneg (fun _ _ => by positivity)
  rw [hcast, div_le_div_iff_of_pos_right haR]
  linarith only [hA, hN, hpos]

private theorem sum_majorant_le (a n : ℕ) (ha : 0 < a) :
    (∑ k ∈ Finset.range n, majorant a k) ≤ (harmonic a : ℝ) / a := by
  cases n with
  | zero => simpa using sum_majorant_succ_le a 0 ha
  | succ n =>
    simpa [Finset.sum_range_succ', majorant] using sum_majorant_succ_le a n ha

private theorem ordered_entry_le (base s i j : ℕ) (hbase : 0 < base) (hstart : base ≤ s)
    (hij : i ≤ j) :
    (|((s : ℝ) + i)^2 - ((s : ℝ) + j)^2|)⁻¹ ≤ majorant (2 * base) (j - i) := by
  rcases hij.eq_or_lt with rfl | hij
  · simp [majorant]
  have hi : 0 ≤ (i : ℝ) := by positivity
  have hbaseR : 0 < (base : ℝ) := by exact_mod_cast hbase
  have hstartR : (base : ℝ) ≤ s := by exact_mod_cast hstart
  have hijR : (i : ℝ) < j := by exact_mod_cast hij
  have hsquare : ((s : ℝ) + i)^2 ≤ ((s : ℝ) + j)^2 :=
    pow_le_pow_left₀ (by positivity) (by linarith) 2
  have hfac : ((s : ℝ) + j)^2 - ((s : ℝ) + i)^2 =
      ((j : ℝ) - i) * (2 * s + j + i) := by ring
  rw [abs_of_nonpos (sub_nonpos.mpr hsquare), neg_sub, hfac, majorant,
    Nat.cast_sub hij.le, Nat.cast_mul, Nat.cast_ofNat]
  apply inv_anti₀
  · exact mul_pos (sub_pos.mpr hijR) (by linarith)
  · apply mul_le_mul_of_nonneg_left _ (sub_nonneg.mpr hijR.le)
    linarith

/-- In a run of `n` consecutive squared nodes starting at positive `s`,
the sum of reciprocal separations from every node is at most the fixed
rational allowance `harmonic (2*base) / base` for any positive
`base ≤ s`. The coincident term is zero. -/
theorem sum_inv_abs_square_sub_le {base s n : ℕ} (hbase : 0 < base) (hstart : base ≤ s)
    (i : Fin n) :
    (∑ j : Fin n, (|((s : ℝ) + i.val)^2 - ((s : ℝ) + j.val)^2|)⁻¹) ≤
      (allowance base : ℝ) := by
  let f (j : Fin n) : ℝ := (|((s : ℝ) + i.val)^2 - ((s : ℝ) + j.val)^2|)⁻¹
  let g := majorant (2 * base)
  let before := Finset.univ.filter (fun j : Fin n => j.val < i.val)
  let after := Finset.univ.filter (fun j : Fin n => ¬j.val < i.val)
  have hbefore : (∑ j ∈ before, f j) ≤ ∑ k ∈ Finset.range n, g k := by
    refine Finset.sum_le_sum_of_injOn (fun j : Fin n => i.val - j.val) ?_ ?_ ?_ ?_
    · intro j hj k hk h
      have hj' : j.val < i.val := (Finset.mem_filter.mp hj).2
      have hk' : k.val < i.val := (Finset.mem_filter.mp hk).2
      change i.val - j.val = i.val - k.val at h
      exact Fin.ext (by omega)
    · intro k hk
      obtain ⟨j, _, rfl⟩ := Finset.mem_image.mp hk
      exact Finset.mem_range.mpr (by have hi := i.isLt; omega)
    · intro j hj
      have hj' : j.val ≤ i.val := (Finset.mem_filter.mp hj).2.le
      simpa only [f, g, abs_sub_comm] using ordered_entry_le base s j.val i.val hbase hstart hj'
    · intro k _ _
      change 0 ≤ majorant (2 * base) k
      unfold majorant
      positivity
  have hafter : (∑ j ∈ after, f j) ≤ ∑ k ∈ Finset.range n, g k := by
    refine Finset.sum_le_sum_of_injOn (fun j : Fin n => j.val - i.val) ?_ ?_ ?_ ?_
    · intro j hj k hk h
      have hj' : i.val ≤ j.val := Nat.le_of_not_gt (Finset.mem_filter.mp hj).2
      have hk' : i.val ≤ k.val := Nat.le_of_not_gt (Finset.mem_filter.mp hk).2
      change j.val - i.val = k.val - i.val at h
      exact Fin.ext (by omega)
    · intro k hk
      obtain ⟨j, _, rfl⟩ := Finset.mem_image.mp hk
      exact Finset.mem_range.mpr (by have hj := j.isLt; omega)
    · intro j hj
      exact ordered_entry_le base s i.val j.val hbase hstart (Nat.le_of_not_gt (Finset.mem_filter.mp hj).2)
    · intro k _ _
      change 0 ≤ majorant (2 * base) k
      unfold majorant
      positivity
  have hsum : (∑ j : Fin n, f j) = (∑ j ∈ before, f j) + ∑ j ∈ after, f j :=
    (Finset.sum_filter_add_sum_filter_not Finset.univ (fun j : Fin n => j.val < i.val) f).symm
  change (∑ j, f j) ≤ _
  rw [hsum]
  have h := sum_majorant_le (2 * base) n (by omega)
  change (∑ k ∈ Finset.range n, g k) ≤ _ at h
  refine (add_le_add hbefore hafter).trans ((add_le_add h h).trans_eq ?_)
  push_cast [allowance]
  have hbaseR : 0 < (base : ℝ) := by exact_mod_cast hbase
  field_simp [hbaseR.ne']
  ring

/-- The same allowance covers every later tail after the mode 65 start. -/
theorem sum_inv_abs_square_sub_le_65 {s n : ℕ} (hstart : 65 ≤ s) (i : Fin n) :
    (∑ j : Fin n, (|((s + i.val : ℕ) : ℝ)^2 - ((s + j.val : ℕ) : ℝ)^2|)⁻¹) ≤
      (allowance 65 : ℝ) := by
  simpa only [Nat.cast_add] using sum_inv_abs_square_sub_le (by decide : 0 < 65) hstart i

/-- A small rational upper bound for the exact radius-two allowance. -/
theorem allowance_65_le : allowance 65 ≤ 21 / 250 := by
  decide +kernel

/-- A small rational budget for every run starting at or beyond 65. -/
theorem sum_inv_abs_square_sub_le_65_small {s n : ℕ} (hstart : 65 ≤ s) (i : Fin n) :
    (∑ j : Fin n, (|((s + i.val : ℕ) : ℝ)^2 - ((s + j.val : ℕ) : ℝ)^2|)⁻¹) ≤ 21 / 250 := by
  refine (sum_inv_abs_square_sub_le_65 hstart i).trans ?_
  simpa only [Rat.cast_div, Rat.cast_ofNat] using
    (Rat.cast_le (K := ℝ)).mpr allowance_65_le

end GRWTSK.Algebra.LinearAlgebra.ConsecutiveSquareNodeSeparation
