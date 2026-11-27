/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.NumberTheory.Harmonic.EulerMascheroni
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# A rational product for harmonic centering

The logarithm of a positive rational product approximates one plus the
harmonic sum from below. The total deficit is at most three divided by
the order, by elementary real logarithm and reciprocal-square bounds.
-/

namespace GRWTSK.XiAlpogeRationalRampCenter

/-- The rational approximation to the exponential of one plus the harmonic sum. -/
def approxExp (n : ℕ) : ℚ :=
  (1 + (n : ℚ)⁻¹)^n *
    ∏ i ∈ Finset.range n, (1 + ((n : ℚ) * ((i : ℚ) + 1))⁻¹)^n

theorem approxExp_pos (n : ℕ) : 0 < approxExp n := by
  unfold approxExp
  apply mul_pos (by positivity)
  exact Finset.prod_pos fun i _ => by positivity

private lemma single_error {s t : ℝ} (hs : 0 < s) (ht : 0 ≤ t) :
    0 ≤ t - s * Real.log (1+t/s) ∧ t - s * Real.log (1+t/s) ≤ t^2/s := by
  have h₀ : 0 ≤ t/s := div_nonneg ht hs.le
  have hb : 0 < 1+t/s := by linarith
  have h₁ := mul_le_mul_of_nonneg_left (Real.log_le_sub_one_of_pos hb) hs.le
  have h₂ := mul_le_mul_of_nonneg_left (Real.one_sub_inv_le_log_of_pos hb) hs.le
  have he : s * (1 + t/s - 1) = t := by field_simp; ring
  have hi : t - s * (1 - (1+t/s)⁻¹) = t^2/(s+t) := by
    have hst : s+t ≠ 0 := by positivity
    field_simp
    ring
  constructor
  · linarith
  · calc
      _ ≤ t - s * (1-(1+t/s)⁻¹) := by linarith
      _ = _ := hi
      _ ≤ _ := div_le_div_of_nonneg_left (sq_nonneg t) hs (by linarith)

/-- A finite reciprocal-square sum is at most two. -/
theorem sum_inv_sq_le_two (n : ℕ) :
    (∑ i ∈ Finset.range n, (((i : ℝ)+1)⁻¹)^2) ≤ 2 := by
  have h (k : ℕ) : (∑ i ∈ Finset.range (k+1), (((i : ℝ)+1)⁻¹)^2) ≤
      2 - ((k : ℝ)+1)⁻¹ := by
    induction k with
    | zero => norm_num
    | succ k ih =>
      rw [Finset.sum_range_succ]
      push_cast
      have ha : 0 < (k:ℝ)+1 := by positivity
      have hb : 0 < (k:ℝ)+1+1 := by positivity
      have hd : (((k:ℝ)+1+1)⁻¹)^2 ≤ ((k:ℝ)+1)⁻¹ - ((k:ℝ)+1+1)⁻¹ := by
        field_simp
        nlinarith
      linarith
  cases n with
  | zero => norm_num
  | succ k => exact (h k).trans (sub_le_self _ (by positivity))

private theorem log_approxExp (n : ℕ) (hn : 0 < n) :
    Real.log (approxExp n : ℝ) = (n:ℝ)*Real.log (1+1/(n:ℝ)) +
      ∑ i ∈ Finset.range n, (n:ℝ)*Real.log (1+(((i:ℝ)+1)⁻¹)/(n:ℝ)) := by
  unfold approxExp
  push_cast
  rw [Real.log_mul (by positivity) (Finset.prod_ne_zero_iff.mpr fun _ _ => by positivity),
    Real.log_pow, Real.log_prod (fun _ _ => by positivity)]
  simp [Real.log_pow, div_eq_mul_inv, mul_comm]

/-- The harmonic centering constant minus the logarithm of the rational
product is nonnegative and bounded by `3/n` for every positive order. -/
theorem harmonic_log_error {n : ℕ} (hn : 0 < n) :
    0 ≤ 1 + (∑ i ∈ Finset.range n, ((i:ℝ)+1)⁻¹) - Real.log (approxExp n : ℝ) ∧
    1 + (∑ i ∈ Finset.range n, ((i:ℝ)+1)⁻¹) - Real.log (approxExp n : ℝ) ≤ 3/(n:ℝ) := by
  rw [log_approxExp n hn]
  have hs : 0 < (n:ℝ) := by exact_mod_cast hn
  have ha := single_error hs (show 0 ≤ (1:ℝ) by norm_num)
  have hb (i : ℕ) := single_error hs (show 0 ≤ ((i:ℝ)+1)⁻¹ by positivity)
  let e (i : ℕ) := ((i:ℝ)+1)⁻¹ - n * Real.log (1+((i:ℝ)+1)⁻¹/(n:ℝ))
  have hlow : 0 ≤ ∑ i ∈ Finset.range n, e i := Finset.sum_nonneg fun i _ => (hb i).1
  have hu : (∑ i ∈ Finset.range n, e i) ≤ 2/(n:ℝ) := calc
    _ ≤ ∑ i ∈ Finset.range n, (((i:ℝ)+1)⁻¹)^2/(n:ℝ) := Finset.sum_le_sum fun i _ => (hb i).2
    _ = (∑ i ∈ Finset.range n, (((i:ℝ)+1)⁻¹)^2)/(n:ℝ) := by
      simp only [div_eq_mul_inv, Finset.sum_mul]
    _ ≤ _ := div_le_div_of_nonneg_right (sum_inv_sq_le_two n) hs.le
  simp only [e, Finset.sum_sub_distrib] at hlow hu
  norm_num only [one_pow] at ha
  have he : 1/(n:ℝ) + 2/(n:ℝ) = 3/(n:ℝ) := by ring
  constructor <;> linarith [ha.1, ha.2]

/-- The same rational logarithm controls the actual Euler constant in the
centered Riesz statistic. The error after multiplication by `n` is bounded by four. -/
theorem gamma_log_error {n : ℕ} (hn : 0 < n) :
    0 ≤ 1 + Real.eulerMascheroniConstant + Real.log ((n:ℝ)+1) - Real.log (approxExp n : ℝ) ∧
    1 + Real.eulerMascheroniConstant + Real.log ((n:ℝ)+1) - Real.log (approxExp n : ℝ) ≤
      4/(n:ℝ) := by
  have hs : 0 < (n:ℝ) := by exact_mod_cast hn
  have h₁ := Real.eulerMascheroniSeq_lt_eulerMascheroniConstant n
  have h₂ := Real.eulerMascheroniConstant_lt_eulerMascheroniSeq' n
  simp only [Real.eulerMascheroniSeq, Real.eulerMascheroniSeq', ite_eq_right hn.ne'] at h₁ h₂
  have h₃ := harmonic_log_error hn
  have hsum : (harmonic n : ℝ) = ∑ i ∈ Finset.range n, ((i:ℝ)+1)⁻¹ := by
    simp [harmonic]
  have hdiff : Real.log ((n:ℝ)+1) - Real.log (n:ℝ) ≤ 1/(n:ℝ) := by
    rw [← Real.log_div (by positivity) hs.ne']
    have h := Real.log_le_sub_one_of_pos (show 0 < ((n:ℝ)+1)/(n:ℝ) by positivity)
    apply h.trans
    exact le_of_eq (by field_simp; ring)
  rw [hsum] at h₁ h₂
  have hfour : 3/(n:ℝ) + 1/(n:ℝ) = 4/(n:ℝ) := by ring
  constructor <;> linarith [h₃.1, h₃.2]

end GRWTSK.XiAlpogeRationalRampCenter
