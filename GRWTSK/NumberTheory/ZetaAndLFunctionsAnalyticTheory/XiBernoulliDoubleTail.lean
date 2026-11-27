import Mathlib.Basic.Real.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

/-! A second summation by parts on an arbitrary finite row of real coefficients. -/
namespace GRWTSK.XiBernoulliCone

/-- The forward first difference. -/
def diff (f : ℕ → ℝ) (n : ℕ) : ℝ := f (n+1) - f n

/-- Telescoping over a finite interval starting at zero. -/
private theorem sum_diff (f : ℕ → ℝ) (n : ℕ) :
    ∑ i ∈ Finset.range n, diff f i = f n - f 0 := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [Finset.sum_range_succ, ih]
    unfold diff
    ring

/-- A signal with zero initial value and slope is recovered from its second differences. -/
theorem from_second_differences (f : ℕ → ℝ) (h₀ : f 0 = 0) (h₁ : f 1 = 0) (n : ℕ) :
    f n = ∑ i ∈ Finset.range n, ((n - (i+1) : ℕ) : ℝ) * diff (diff f) i := by
  induction n with
  | zero => simpa using h₀
  | succ n ih =>
    have hstep : ∑ i ∈ Finset.range n, diff (diff f) i = diff f n := by
      rw [sum_diff]
      simp [diff, h₀, h₁]
    calc
      f (n+1) = f n + diff f n := by unfold diff; ring
      _ = (∑ i ∈ Finset.range n, ((n - (i+1) : ℕ) : ℝ) * diff (diff f) i) +
          ∑ i ∈ Finset.range n, diff (diff f) i := by rw [ih, hstep]
      _ = ∑ i ∈ Finset.range n, ((((n+1) - (i+1) : ℕ) : ℝ)) * diff (diff f) i := by
        rw [← Finset.sum_add_distrib]
        apply Finset.sum_congr rfl
        intro i hi
        have hin : i < n := Finset.mem_range.mp hi
        have h : (n+1) - (i+1) = (n-(i+1))+1 := by omega
        rw [h, Nat.cast_add, Nat.cast_one]
        ring
      _ = ∑ i ∈ Finset.range (n+1), ((((n+1) - (i+1) : ℕ) : ℝ)) * diff (diff f) i := by
        rw [Finset.sum_range_succ]
        simp

/-- Double tail beginning at index i+2. Natural subtraction makes all earlier weights zero. -/
def doubleTail (q : ℕ → ℝ) (m i : ℕ) : ℝ :=
  ∑ n ∈ Finset.range (m+1), ((n-(i+1) : ℕ) : ℝ) * q n

/-- Discrete second-order summation by parts against a finite signed row. -/
theorem sum_eq_doubleTail (q f : ℕ → ℝ) (m : ℕ) (h₀ : f 0 = 0) (h₁ : f 1 = 0) :
    ∑ n ∈ Finset.range (m+1), q n * f n =
      ∑ i ∈ Finset.range (m+1), doubleTail q m i * diff (diff f) i := by
  have expand (n : ℕ) (hn : n ≤ m) :
      f n = ∑ i ∈ Finset.range (m+1), ((n-(i+1) : ℕ) : ℝ) * diff (diff f) i := by
    rw [from_second_differences f h₀ h₁ n]
    apply Finset.sum_subset (Finset.range_mono (Nat.le_succ_of_le hn))
    intro i hi hi'
    have hn' : n ≤ i := by simpa using hi'
    have h : n-(i+1) = 0 := by omega
    simp [h]
  calc
    _ = ∑ n ∈ Finset.range (m+1), ∑ i ∈ Finset.range (m+1),
        q n * (((n-(i+1) : ℕ) : ℝ) * diff (diff f) i) := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [← Finset.mul_sum, ← expand n (Nat.le_of_lt_succ (Finset.mem_range.mp hn))]
    _ = _ := by
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro i hi
      rw [doubleTail, Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro n hn
      ring

/-- A signed finite row with nonnegative double tails is nonnegative on every such convex signal. -/
theorem sum_nonneg_of_doubleTail (q f : ℕ → ℝ) (m : ℕ) (h₀ : f 0 = 0) (h₁ : f 1 = 0)
    (hq : ∀ i, i+2 ≤ m → 0 ≤ doubleTail q m i)
    (hf : ∀ i, i+2 ≤ m → 0 ≤ diff (diff f) i) :
    0 ≤ ∑ n ∈ Finset.range (m+1), q n * f n := by
  rw [sum_eq_doubleTail q f m h₀ h₁]
  apply Finset.sum_nonneg
  intro i hi
  by_cases h : i+2 ≤ m
  · exact mul_nonneg (hq i h) (hf i h)
  · have hz : doubleTail q m i = 0 := by
      apply Finset.sum_eq_zero
      intro n hn
      have hnm : n ≤ m := Nat.le_of_lt_succ (Finset.mem_range.mp hn)
      have hzero : n-(i+1) = 0 := by omega
      simp [hzero]
    simp [hz]

/-- The single positive hinge at i+2 detects precisely the i-th tail. -/
def hinge (i n : ℕ) : ℝ := ((n-(i+1) : ℕ) : ℝ)

theorem hinge_curvature (i n : ℕ) :
    diff (diff (hinge i)) n = if n = i then 1 else 0 := by
  rcases lt_trichotomy n i with h | h | h
  · have h₀ : n-(i+1) = 0 := by omega
    have h₁ : n+1-(i+1) = 0 := by omega
    have h₂ : n+1+1-(i+1) = 0 := by omega
    simp [diff, hinge, h₀, h₁, h₂, ne_of_lt h]
  · subst n
    have h₀ : i-(i+1) = 0 := by omega
    have h₂ : i+1+1-(i+1) = 1 := by omega
    simp [diff, hinge, h₀, h₂]
  · have h₁ : n+1-(i+1) = (n-(i+1))+1 := by omega
    have h₂ : n+1+1-(i+1) = (n-(i+1))+2 := by omega
    simp [diff, hinge, h₁, h₂, ne_of_gt h]
    ring

/-- The double-tail inequalities characterize the entire dual of this finite convex cone. -/
theorem doubleTail_iff_nonneg_on_convex (q : ℕ → ℝ) (m : ℕ) :
    (∀ i, i+2 ≤ m → 0 ≤ doubleTail q m i) ↔
    ∀ f : ℕ → ℝ, f 0 = 0 → f 1 = 0 →
      (∀ i, i+2 ≤ m → 0 ≤ diff (diff f) i) →
        0 ≤ ∑ n ∈ Finset.range (m+1), q n * f n := by
  constructor
  · intro hq f h₀ h₁ hf
    exact sum_nonneg_of_doubleTail q f m h₀ h₁ hq hf
  · intro h i hi
    have hone : 1-(i+1) = 0 := by omega
    have hconvex (j : ℕ) (_ : j+2 ≤ m) : 0 ≤ diff (diff (hinge i)) j := by
      rw [hinge_curvature]
      split <;> norm_num
    have hp := h (hinge i) (by simp [hinge]) (by simp [hinge, hone]) hconvex
    simpa only [doubleTail, hinge, mul_comm] using hp

#print axioms from_second_differences
#print axioms sum_eq_doubleTail
#print axioms sum_nonneg_of_doubleTail
#print axioms hinge_curvature
#print axioms doubleTail_iff_nonneg_on_convex

end GRWTSK.XiBernoulliCone
