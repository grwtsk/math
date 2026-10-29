/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib exponential-series and finite-sum results retain upstream authorship
and the Apache-2.0 license. -/
import Mathlib.Analysis.SpecialFunctions.Exponential
import Mathlib.Topology.Algebra.InfiniteSum.NatInt
import Mathlib.Tactic

/-!
# Global factorial remainder for the scalar exponential

The absolute remainder is valid for every real argument and every natural
truncation order, including zero. No sign restriction is imposed on the
argument. The factorial in the denominator is retained.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology
open Filter

namespace GRWTSK.Analysis.SpecialFunctions.ExponentialTaylorRemainder

def partial (m : ℕ) (z : ℝ) : ℝ :=
  ∑ k ∈ Finset.range m, z ^ k / (k.factorial : ℝ)

def allowance (A : ℝ) (m : ℕ) : ℝ :=
  Real.exp A * A ^ m / (m.factorial : ℝ)

private theorem factorial_product_le (m k : ℕ) :
    m.factorial * k.factorial ≤ (m + k).factorial := by
  induction k with
  | zero => simp
  | succ k ih =>
    calc
      m.factorial * (k + 1).factorial =
          (k + 1) * (m.factorial * k.factorial) := by rw [Nat.factorial_succ]; ring
      _ ≤ (k + 1) * (m + k).factorial := Nat.mul_le_mul_left _ ih
      _ ≤ (m + k + 1) * (m + k).factorial := by gcongr <;> omega
      _ = (m + (k + 1)).factorial := by rw [← Nat.factorial_succ]; congr 1 <;> omega

private theorem tail_term_le {x : ℝ} (hx : 0 ≤ x) (m k : ℕ) :
    x ^ (m + k) / ((m + k).factorial : ℝ) ≤
      (x ^ m / (m.factorial : ℝ)) * (x ^ k / (k.factorial : ℝ)) := by
  have hm : (0 : ℝ) < m.factorial := by exact_mod_cast Nat.factorial_pos m
  have hk : (0 : ℝ) < k.factorial := by exact_mod_cast Nat.factorial_pos k
  have hd : (m.factorial : ℝ) * k.factorial ≤ (m + k).factorial := by
    exact_mod_cast factorial_product_le m k
  calc
    _ ≤ x ^ (m + k) / ((m.factorial : ℝ) * k.factorial) :=
      div_le_div_of_nonneg_left (pow_nonneg hx _) (mul_pos hm hk) hd
    _ = _ := by rw [pow_add]; ring

private theorem finite_tail_bound (z : ℝ) (m k : ℕ) :
    |partial (m + k) z - partial m z| ≤ allowance |z| m := by
  rw [partial, Finset.sum_range_add]
  simp only [partial, add_sub_cancel_left]
  calc
    _ ≤ ∑ i ∈ Finset.range k, |z ^ (m + i) / ((m + i).factorial : ℝ)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ = ∑ i ∈ Finset.range k, |z| ^ (m + i) / ((m + i).factorial : ℝ) := by
      apply Finset.sum_congr rfl
      intro i _
      rw [abs_div, abs_pow, abs_of_nonneg (Nat.cast_nonneg _)]
    _ ≤ ∑ i ∈ Finset.range k,
        (|z| ^ m / (m.factorial : ℝ)) * (|z| ^ i / (i.factorial : ℝ)) :=
      Finset.sum_le_sum (fun i _ => tail_term_le (abs_nonneg z) m i)
    _ = (|z| ^ m / (m.factorial : ℝ)) *
        ∑ i ∈ Finset.range k, |z| ^ i / (i.factorial : ℝ) := by rw [Finset.mul_sum]
    _ ≤ (|z| ^ m / (m.factorial : ℝ)) * Real.exp |z| :=
      mul_le_mul_of_nonneg_left (Real.sum_le_exp_of_nonneg (abs_nonneg z) k)
        (by positivity)
    _ = allowance |z| m := by unfold allowance; ring

theorem partial_tendsto (z : ℝ) :
    Tendsto (fun m => partial m z) atTop (𝓝 (Real.exp z)) := by
  have hs : HasSum (fun k : ℕ => z ^ k / (k.factorial : ℝ)) (Real.exp z) := by
    simpa only [Real.exp_eq_exp_ℝ] using NormedSpace.expSeries_div_hasSum_exp z
  exact hs.tendsto_sum_nat

/-- Global scalar bound, with no discarded factorial and no small-argument premise. -/
theorem abs_remainder_le (z : ℝ) (m : ℕ) :
    |Real.exp z - partial m z| ≤ allowance |z| m := by
  have hl := ((partial_tendsto z).sub_const (partial m z)).abs
  apply le_of_tendsto hl
  filter_upwards [eventually_ge_atTop m] with n hn
  obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le hn
  exact finite_tail_bound z m k

theorem allowance_nonnegative {A : ℝ} (hA : 0 ≤ A) (m : ℕ) :
    0 ≤ allowance A m := by unfold allowance; positivity

theorem allowance_mono {A B : ℝ} (hA : 0 ≤ A) (hAB : A ≤ B) (m : ℕ) :
    allowance A m ≤ allowance B m := by
  unfold allowance
  apply div_le_div_of_nonneg_right _ (Nat.cast_nonneg _)
  exact mul_le_mul (Real.exp_le_exp.mpr hAB) (pow_le_pow_left₀ hA hAB m)
    (pow_nonneg hA m) (Real.exp_pos _).le

theorem abs_remainder_le_of_abs_le {z A : ℝ} (hz : |z| ≤ A) (m : ℕ) :
    |Real.exp z - partial m z| ≤ allowance A m :=
  (abs_remainder_le z m).trans (allowance_mono (abs_nonneg z) hz m)

/-- The stated allowance tends to zero for each fixed radius. No uniform-in-radius claim. -/
theorem allowance_tendsto_zero (A : ℝ) :
    Tendsto (allowance A) atTop (𝓝 0) := by
  have hs : HasSum (fun k : ℕ => A ^ k / (k.factorial : ℝ)) (Real.exp A) := by
    simpa only [Real.exp_eq_exp_ℝ] using NormedSpace.expSeries_div_hasSum_exp A
  simpa only [allowance, mul_div_assoc, mul_zero] using
    tendsto_const_nhds.mul hs.summable.tendsto_atTop_zero

end GRWTSK.Analysis.SpecialFunctions.ExponentialTaylorRemainder
