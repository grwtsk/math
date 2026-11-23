/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Algebra.Polynomial.Derivative
import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Tactic.Ring

/-!
# Reversed unscaled Jensen polynomials

For the central xi coefficients use γ(k) = k! [w^k] g(w), with the
alternating sign already included. Differentiation lowers the section
degree exactly, the algebraic input to the nonreal-root count.
-/

namespace GRWTSK.NumberTheory.XiJensenAppell
open Polynomial

variable {R : Type*} [CommSemiring R]

/-- The reverse Jensen polynomial before rescaling the variable. -/
noncomputable def sectionPoly (γ : ℕ → R) (n : ℕ) : R[X] :=
  ∑ j ∈ Finset.range (n + 1), monomial j ((n.choose j : R) * γ (n-j))

theorem sectionPoly_coeff (γ : ℕ → R) (n j : ℕ) :
    (sectionPoly γ n).coeff j = (n.choose j : R) * γ (n-j) := by
  classical
  simp only [sectionPoly, finsetSum_coeff, coeff_monomial, Finset.sum_ite_eq',
    Finset.mem_range]
  split_ifs with h
  · rfl
  · simp [Nat.choose_eq_zero_of_lt (by omega : n < j)]

theorem sectionPoly_derivative (γ : ℕ → R) (n : ℕ) :
    derivative (sectionPoly γ (n+1)) = C (n+1 : R) * sectionPoly γ n := by
  ext j
  rw [coeff_derivative, coeff_C_mul, sectionPoly_coeff, sectionPoly_coeff,
    Nat.add_sub_add_right]
  have h : ((n+1 : ℕ).choose (j+1) : R) * (j+1) = (n+1) * (n.choose j : R) := by
    simpa only [Nat.cast_mul, Nat.cast_add, Nat.cast_one] using
      congrArg (fun t : ℕ => (t : R)) (Nat.add_one_mul_choose_eq n j).symm
  calc
    _ = (((n+1 : ℕ).choose (j+1) : R) * (j+1)) * γ (n-j) := by ring
    _ = _ := by rw [h]; ring

end GRWTSK.NumberTheory.XiJensenAppell
