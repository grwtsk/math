/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Data.Nat.Choose.Sum
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Data.Matrix.Block

/-! # Gaussian moments and the corner-minor Fock coefficient

The radial integrals use probability density exp(-x) dx. The two-row
identity keeps the binomial multiplicities of the determinant monomials.
-/

namespace GRWTSK.NumberTheory.AlpogeFockCornerGram

open Finset Matrix MeasureTheory

/-- The radial moment with complex Gaussian squared norm of shape n+1,
before division by the normalizing factorial n!. -/
theorem radial_moment (n a : ℕ) :
    (∫ x in Set.Ioi (0 : ℝ), Real.exp (-x) * x ^ (n + a)) = (n + a).factorial := by
  have h := Real.Gamma_eq_integral (s := ((n + a : ℕ) : ℝ) + 1) (by positivity)
  simp only [add_sub_cancel_right, Real.rpow_natCast, Real.Gamma_nat_eq_factorial] at h
  exact h.symm

/-- The leading minor of a product with lower/upper block-triangular
outer factors splits even when the inner leading minor vanishes. -/
theorem corner_two_sided {R I J : Type*} [CommRing R] [Fintype I] [Fintype J]
    [DecidableEq I] [DecidableEq J]
    (L Z U : Matrix I I R) (B V : Matrix I J R) (C M : Matrix J I R)
    (L' Z' U' : Matrix J J R) :
    ((fromBlocks L 0 M L' * fromBlocks Z B C Z' *
      fromBlocks U V 0 U').toBlocks₁₁).det = L.det * Z.det * U.det := by
  simp [fromBlocks_multiply, Matrix.det_mul]

/-- In a row of a partition the positive hook lengths are the gaps below a
bead, measured from that bead. Including the distances to occupied positions
restores the factorial. -/
theorem bead_gap_product (b : ℕ) (occupied : Finset ℕ) :
    (∏ j ∈ (range b).filter (· ∉ occupied), (b - j)) *
      (∏ j ∈ (range b).filter (· ∈ occupied), (b - j)) = b.factorial := by
  rw [prod_filter_not_mul_prod_filter]
  calc
    (∏ j ∈ range b, (b - j)) = ∏ j ∈ range b, ((b - 1 - j) + 1) := by
      apply prod_congr rfl
      intro j hj
      have := mem_range.mp hj
      omega
    _ = ∏ j ∈ range b, (j + 1) := prod_range_reflect (fun j => j + 1) b
    _ = _ := prod_range_add_one_eq_factorial b

/-- The entire factorial-weighted squared coefficient sum of
x^a (xw-yz)^b, in every degree. Multiplication clears the hook denominator. -/
theorem two_row_fock_sum (a b : ℕ) :
    (∑ k ∈ range (b + 1), (b.choose k)^2 * (a + k).factorial * k.factorial *
      ((b - k).factorial)^2) * (a + 1) =
      b.factorial * (a + b + 1).factorial := by
  have term (k : ℕ) (hk : k ∈ range (b+1)) :
      (b.choose k)^2 * (a+k).factorial * k.factorial * ((b-k).factorial)^2 =
      b.factorial^2 * a.factorial * (k+a).choose a := by
    have h₁ := Nat.choose_mul_factorial_mul_factorial (show k ≤ b by simpa using hk)
    have h₂ := Nat.add_choose_mul_factorial_mul_factorial k a
    rw [Nat.add_comm a k, ← h₂, ← h₁]
    ring
  simp_rw [sum_congr rfl term, ← mul_sum, Nat.sum_range_add_choose]
  have h := Nat.add_choose_mul_factorial_mul_factorial b (a+1)
  calc
    b.factorial ^ 2 * a.factorial * (b+a+1).choose (a+1) * (a+1) =
        b.factorial * ((b+(a+1)).choose (a+1) * b.factorial * (a+1).factorial) := by
          rw [Nat.factorial_succ, Nat.add_assoc]
          ring
    _ = _ := by rw [h]; congr 2; omega

end GRWTSK.NumberTheory.AlpogeFockCornerGram
