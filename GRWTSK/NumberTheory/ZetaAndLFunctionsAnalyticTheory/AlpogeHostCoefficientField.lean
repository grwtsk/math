/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Algebra.Polynomial.Derivative
import Mathlib.RingTheory.Ideal.Span
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith

/-! # Local different and ray-character costs of the coefficient field

The radical polynomial need not be irreducible over a completion. Its monic
factor defining the local field still gives the required divisibility.
-/

namespace GRWTSK.NumberTheory.AlpogeHostCoefficientField

open Polynomial Finset
open scoped BigOperators Polynomial

/-- The formal derivative at a unit root is associated to the radical degree. -/
theorem unit_radical_derivative {R : Type*} [CommRing R] (n : ℕ) (a : R) (u : Rˣ) :
    Ideal.span ({eval (u : R) (derivative ((X : R[X]) ^ n - C a))} : Set R) =
      Ideal.span {(n : R)} := by
  simp only [derivative_sub, derivative_X_pow, derivative_C, sub_zero, eval_mul,
    eval_C, eval_pow, eval_X]
  exact Ideal.span_singleton_mul_right_unit (u.isUnit.pow _) _

/-- For a factor of the radical polynomial vanishing at the unit, its
derivative divides the integer degree, including at primes of wild ramification. -/
theorem radical_factor_derivative_dvd {R : Type*} [CommRing R] (n : ℕ)
    (a : R) (u : Rˣ) (f g : R[X]) (hf : f.eval (u : R) = 0)
    (h : f * g = X ^ n - C a) : (derivative f).eval (u : R) ∣ (n : R) := by
  have eq := congrArg (fun k : R[X] => k.derivative.eval (u : R)) h
  simp only [derivative_mul, eval_add, eval_mul, hf, zero_mul, add_zero,
    derivative_sub, derivative_X_pow, derivative_C, sub_zero, eval_C, eval_pow,
    eval_X] at eq
  refine ⟨g.eval (u : R) * (↑(u⁻¹ ^ (n-1)) : R), ?_⟩
  calc
    (n : R) = ((n : R) * (u : R) ^ (n-1)) * (↑(u⁻¹ ^ (n-1)) : R) := by
      rw [mul_assoc, ← Units.val_pow_eq_pow_val, ← Units.val_mul, ← mul_pow,
        mul_inv_cancel, one_pow, Units.val_one, mul_one]
    _ = _ := by rw [← eq, mul_assoc]

/-- The sum of the fractions of ray characters trivial on the successive
unit filtration subgroups at a prime with residue cardinality q. -/
theorem ray_conductor_defect (q : ℚ) (hq : 1 < q) (a : ℕ) :
    1 / ((q-1) * q^a) + ∑ j ∈ range a, 1 / q^(j+1) = 1/(q-1) := by
  have h0 : q ≠ 0 := by linarith
  have h1 : q-1 ≠ 0 := by linarith
  induction a with
  | zero => simp
  | succ a ih =>
    rw [Finset.sum_range_succ]
    have step : 1/((q-1)*q^(a+1)) + 1/q^(a+1) = 1/((q-1)*q^a) := by
      rw [pow_succ]
      field_simp
      ring
    rw [← ih, ← step]
    ring

/-- A local Artin conductor average computed from the successive subgroups. -/
theorem ray_mean_conductor (q : ℚ) (hq : 1 < q) (a : ℕ) :
    (1 - 1/((q-1)*q^a)) + (∑ j ∈ range a, (1 - 1/q^(j+1))) =
      ((a+1 : ℕ) : ℚ) - 1/(q-1) := by
  rw [Finset.sum_sub_distrib]
  simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul, mul_one, Nat.cast_succ]
  linarith [ray_conductor_defect q hq a]

end GRWTSK.NumberTheory.AlpogeHostCoefficientField
