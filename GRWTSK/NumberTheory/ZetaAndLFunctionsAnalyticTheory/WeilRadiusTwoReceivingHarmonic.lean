/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.NumberTheory.Harmonic.Bounds
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Tactic

/-!
# Reciprocal distance budgets for the radius-two receiving range

The kth receiving index lies at least k + 1 beyond each retained
physical mode. The ordinary inverse distances are dominated by
one harmonic sum. The squared inverse distances are dominated by
a telescoping sum after the first term. These bounds supply the
two uniform covariance error prices for the concrete candidate.

Local attribution is to grwtsk contributors.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoReceivingHarmonic

private theorem inverse_sq_step {a : ℝ} (ha : 0 < a) :
    ((a+1)⁻¹)^2 ≤ a⁻¹ - (a+1)⁻¹ := by
  have hA : 0 < a+1 := by positivity
  have hSub : a⁻¹-(a+1)⁻¹ = (a*(a+1))⁻¹ := by
    field_simp [ha.ne', hA.ne']
    ring
  rw [hSub, inv_pow]
  apply inv_anti₀ (mul_pos ha hA)
  nlinarith only [ha]

private theorem partial_inverse_sq_le (n : ℕ) :
    (∑ k ∈ Finset.range (n+1), ((((k+1 : ℕ):ℝ))⁻¹)^2) ≤
      2 - (((n+1 : ℕ):ℝ))⁻¹ := by
  induction n with
  | zero => norm_num
  | succ n ih =>
      rw [Finset.sum_range_succ]
      have hstep := inverse_sq_step (by positivity : (0:ℝ) < ((n+1 : ℕ):ℝ))
      rw [← Nat.cast_add_one] at hstep
      linarith only [ih, hstep]

/-- Every finite initial reciprocal-square sum is at most two. -/
theorem inverseSquare_sum_le_two (n : ℕ) :
    (∑ k ∈ Finset.range n, ((((k+1 : ℕ):ℝ))⁻¹)^2) ≤ 2 := by
  cases n with
  | zero => simp
  | succ n =>
      exact (partial_inverse_sq_le n).trans (sub_le_self _ (by positivity))

private theorem cast_harmonic_eq_sum (n : ℕ) :
    (harmonic n : ℝ) = ∑ k ∈ Finset.range n, (((k+1 : ℕ):ℝ))⁻¹ := by
  simp only [harmonic, Rat.cast_sum, Rat.cast_inv, Rat.cast_natCast]

private theorem log800000_lt : Real.log (800000:ℝ) < 15 := by
  have hExp : (800000:ℝ) < Real.exp 15 := by
    rw [show (15:ℝ) = (15:ℕ)*(1:ℝ) by norm_num, Real.exp_nat_mul]
    exact (by norm_num : (800000:ℝ) < (27/10)^15).trans_le
      (pow_le_pow_left₀ (by norm_num) (by linarith only [Real.exp_one_gt_d9]) 15)
  exact (Real.log_lt_iff_lt_exp (by norm_num)).2 hExp

private theorem harmonic800000_le :
    (∑ k ∈ Finset.range 800000, (((k+1 : ℕ):ℝ))⁻¹) ≤ 16 := by
  rw [← cast_harmonic_eq_sum]
  refine (harmonic_le_one_add_log 800000).trans ?_
  change 1 + Real.log (800000:ℝ) ≤ 16
  linarith only [log800000_lt]

/-- A consecutive receiving block of at most 800000 indices has ordinary
and squared reciprocal budgets 16 and 2 from any point at or below the
retained cutoff. The first receiving index is start + 1. -/
theorem receivingReciprocalBounds {start count : ℕ} (hcount : count ≤ 800000)
    {m : ℝ} (hm : m ≤ start) :
    (∑ k : Fin count, (((start+1+k.val : ℕ):ℝ)-m)⁻¹) ≤ 16 ∧
      (∑ k : Fin count, ((((start+1+k.val : ℕ):ℝ)-m)⁻¹)^2) ≤ 2 := by
  have hGap (k : Fin count) : ((k.val+1 : ℕ):ℝ) ≤ ((start+1+k.val : ℕ):ℝ)-m := by
    push_cast
    linarith only [hm]
  have hInv (k : Fin count) : (((start+1+k.val : ℕ):ℝ)-m)⁻¹ ≤
      (((k.val+1 : ℕ):ℝ))⁻¹ := inv_anti₀ (by positivity) (hGap k)
  constructor
  · calc
      _ ≤ ∑ k : Fin count, (((k.val+1 : ℕ):ℝ))⁻¹ :=
        Finset.sum_le_sum (fun k _ => hInv k)
      _ = ∑ k ∈ Finset.range count, (((k+1 : ℕ):ℝ))⁻¹ :=
        Fin.sum_univ_eq_sum_range (fun k : ℕ => (((k+1 : ℕ):ℝ))⁻¹) count
      _ ≤ ∑ k ∈ Finset.range 800000, (((k+1 : ℕ):ℝ))⁻¹ :=
        Finset.sum_le_sum_of_subset_of_nonneg (Finset.range_mono hcount) (fun _ _ _ => by positivity)
      _ ≤ _ := harmonic800000_le
  · calc
      _ ≤ ∑ k : Fin count, ((((k.val+1 : ℕ):ℝ))⁻¹)^2 := by
        apply Finset.sum_le_sum
        intro k _
        exact pow_le_pow_left₀
          (inv_nonneg.mpr ((by positivity : (0:ℝ) ≤ ((k.val+1:ℕ):ℝ)).trans (hGap k)))
          (hInv k) 2
      _ = ∑ k ∈ Finset.range count, ((((k+1 : ℕ):ℝ))⁻¹)^2 :=
        Fin.sum_univ_eq_sum_range (fun k : ℕ => ((((k+1 : ℕ):ℝ))⁻¹)^2) count
      _ ≤ _ := inverseSquare_sum_le_two count

/-- The two exact receiving budgets for the fixed radius-two candidate. -/
theorem receiving400000_bounds {m : ℝ} (hm : m ≤ 400000) :
    (∑ k : Fin 800000, (((400001+k.val : ℕ):ℝ)-m)⁻¹) ≤ 16 ∧
      (∑ k : Fin 800000, ((((400001+k.val : ℕ):ℝ)-m)⁻¹)^2) ≤ 2 :=
  receivingReciprocalBounds (start := 400000) (by decide) hm

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoReceivingHarmonic
