/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Basic.Real.Basic
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Parity of finite sections of the confluent xi kernel

If an odd analytic function has coefficient `2 * p k` at degree `2*k-1`,
its divided-difference kernel has the entry below at bidegree `(i,j)`.
The two Hankel families are precisely the even and odd exponent blocks.
The adjacent note identifies the analytic function as the negative
logarithmic derivative of xi. The statements here prove the finite algebra.
-/

namespace GRWTSK.NumberTheory.XiShiftedDeBranges

open Finset

/-- Coefficient of the divided difference at the monomial of bidegree `(i,j)`. -/
def kernelEntry (p : ℕ → ℝ) (i j : ℕ) : ℝ :=
  if (i + j) % 2 = 0 then 2 * p ((i + j) / 2 + 1) else 0

/-- The two shifts used below start at the first and second Newton sums. -/
def hankelForm (p : ℕ → ℝ) (r n : ℕ) (c : ℕ → ℝ) : ℝ :=
  ∑ i ∈ range n, ∑ j ∈ range n, c i * p (i + j + r) * c j

private theorem split_pairs (n : ℕ) (f : ℕ → ℝ) :
    ∑ i ∈ range (2*n), f i =
      (∑ i ∈ range n, f (2*i)) + ∑ i ∈ range n, f (2*i+1) := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [show 2*(n+1) = (2*n+1)+1 by omega]
    simp only [sum_range_succ, ih]
    ring

/-- The complete finite section splits into the two Newton Hankel forms. -/
theorem kernel_form_parity (p c : ℕ → ℝ) (n : ℕ) :
    ∑ i ∈ range (2*n), ∑ j ∈ range (2*n), c i * kernelEntry p i j * c j =
      2 * hankelForm p 1 n (fun i => c (2*i)) +
      2 * hankelForm p 2 n (fun i => c (2*i+1)) := by
  rw [split_pairs]
  simp_rw [split_pairs n (fun j => _ * kernelEntry p _ j * c j)]
  have ee (i j : ℕ) : kernelEntry p (2*i) (2*j) = 2 * p (i+j+1) := by
    unfold kernelEntry
    rw [ite_eq_left (by omega), show (2*i+2*j)/2+1=i+j+1 by omega]
  have oo (i j : ℕ) : kernelEntry p (2*i+1) (2*j+1) = 2 * p (i+j+2) := by
    unfold kernelEntry
    rw [ite_eq_left (by omega), show (2*i+1+(2*j+1))/2+1=i+j+2 by omega]
  have eo (i j : ℕ) : kernelEntry p (2*i) (2*j+1) = 0 := by
    unfold kernelEntry
    rw [ite_eq_right (by omega)]
  have oe (i j : ℕ) : kernelEntry p (2*i+1) (2*j) = 0 := by
    unfold kernelEntry
    rw [ite_eq_right (by omega)]
  simp only [ee, eo, oe, oo, mul_zero, zero_mul, sum_const_zero, zero_add, add_zero,
    hankelForm, mul_sum]
  congr 1 <;> apply sum_congr rfl <;> intro i hi <;> apply sum_congr rfl <;>
    intro j hj <;> ring

/-- Positivity of an even-dimensional section is equivalent to positivity of
both parity blocks, for arbitrary real coefficient vectors. -/
theorem kernel_form_nonneg_iff (p : ℕ → ℝ) (n : ℕ) :
    (∀ c : ℕ → ℝ, 0 ≤ ∑ i ∈ range (2*n), ∑ j ∈ range (2*n),
      c i * kernelEntry p i j * c j) ↔
    (∀ u : ℕ → ℝ, 0 ≤ hankelForm p 1 n u) ∧
    (∀ v : ℕ → ℝ, 0 ≤ hankelForm p 2 n v) := by
  simp only [kernel_form_parity]
  constructor
  · intro h
    constructor
    · intro u
      have hu := h (fun i => if i%2=0 then u (i/2) else 0)
      have ev (i : ℕ) : (2*i)%2 = 0 := by omega
      have dv (i : ℕ) : 2*i/2=i := by omega
      simp [ev, dv] at hu
      simpa [hankelForm] using (by linarith [hu] :
        0 ≤ hankelForm p 1 n u + hankelForm p 2 n (fun _ => 0))
    · intro v
      have hv := h (fun i => if i%2=1 then v (i/2) else 0)
      have od (i : ℕ) : (2*i+1)%2 = 1 := by omega
      have dv (i : ℕ) : (2*i+1)/2=i := by omega
      simp [od, dv] at hv
      simpa [hankelForm] using (by linarith [hv] :
        0 ≤ hankelForm p 1 n (fun _ => 0) + hankelForm p 2 n v)
  · rintro ⟨he, ho⟩ c
    linarith [he (fun i => c (2*i)), ho (fun i => c (2*i+1))]

end GRWTSK.NumberTheory.XiShiftedDeBranges
