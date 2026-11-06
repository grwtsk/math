/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.FunctionsOfAComplexVariable.GeometricProductCertificates
import Mathlib.Algebra.Polynomial.Eval.Defs
import Mathlib.Algebra.Polynomial.Degree.Operations

/-!
# Finite polynomial objects realizing the universal approximations

The previously defined functions are evaluations of explicitly constructed
polynomials. Both the target and its approximate inverse are built from finite
lists, natural indices, addition and multiplication; the target inverse is not
an input. The degree bound is length(a)*m (a deliberately coarse bound, valid
also at m=0). Every scheduled residual therefore has a finite polynomial
witness, rather than an arbitrary function chosen using nonvanishing.

These exact eval comparisons allow coefficient-based consumers to use the
analytic certificate. They do not compute algebraic roots from a curve, prove
integrality of arbitrary complex coefficients, or supply machine interval
arithmetic. Empty products and zero-length geometric sums are retained.
Primary argument: structural induction and the standard polynomial degree
inequalities. Reuses GeometricProductCertificates, not a second analytic proof.
AI-assisted formalization; novelty and independent review not assessed.
Compilation, fresh kernel checking and transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.GeometricProduct

open Polynomial

/-- The finite geometric polynomial has no division operation. -/
def geometricPolynomial (a : ℂ) : ℕ → Polynomial ℂ
  | 0 => 0
  | m + 1 => 1 + (C a * X) * geometricPolynomial a m

def factorPolynomial : List ℂ → Polynomial ℂ
  | [] => 1
  | a :: as => (1 - C a * X) * factorPolynomial as

def approximationPolynomial : List ℂ → ℕ → Polynomial ℂ
  | [], _ => 1
  | a :: as, m => geometricPolynomial a m * approximationPolynomial as m

@[simp] theorem eval_geometricPolynomial (a z : ℂ) (m : ℕ) :
    (geometricPolynomial a m).eval z = geometric (a * z) m := by
  induction m with
  | zero => simp [geometricPolynomial, geometric]
  | succ m ih => simp [geometricPolynomial, geometric, ih]

@[simp] theorem eval_factorPolynomial (as : List ℂ) (z : ℂ) :
    (factorPolynomial as).eval z = factorProduct as z := by
  induction as with
  | nil => simp [factorPolynomial, factorProduct]
  | cons a as ih => simp [factorPolynomial, factorProduct, ih]

@[simp] theorem eval_approximationPolynomial (as : List ℂ) (m : ℕ) (z : ℂ) :
    (approximationPolynomial as m).eval z = approximate as m z := by
  induction as with
  | nil => simp [approximationPolynomial, approximate]
  | cons a as ih => simp [approximationPolynomial, approximate, ih]

/-- A degree bound uniform even in zero coefficients and zero truncation order. -/
theorem geometricPolynomial_degree_le (a : ℂ) (m : ℕ) :
    (geometricPolynomial a m).natDegree ≤ m := by
  induction m with
  | zero => simp [geometricPolynomial]
  | succ m ih =>
    have hx : (C a * X : Polynomial ℂ).natDegree ≤ 1 := by
      exact (Polynomial.natDegree_mul_le).trans (by simp)
    have hp : ((C a * X) * geometricPolynomial a m).natDegree ≤ m + 1 := by
      apply Polynomial.natDegree_mul_le.trans
      have h := Nat.add_le_add hx ih
      simpa only [Nat.add_comm] using h
    exact (Polynomial.natDegree_add_le _ _).trans
      (max_le (by simp) hp)

/-- The concrete inverse polynomial has a finite dimension-dependent degree budget. -/
theorem approximationPolynomial_degree_le (as : List ℂ) (m : ℕ) :
    (approximationPolynomial as m).natDegree ≤ as.length * m := by
  induction as with
  | nil => simp [approximationPolynomial]
  | cons a as ih =>
    apply Polynomial.natDegree_mul_le.trans
    have h := Nat.add_le_add (geometricPolynomial_degree_le a m) ih
    simpa only [List.length_cons, Nat.add_mul, Nat.one_mul, Nat.add_comm] using h

/-- An exact finite polynomial witness for every level of the certificate family. -/
theorem scheduled_polynomial_certificate (as : List ℂ) (n : ℕ) :
    ∃ u : Polynomial ℂ,
      u.natDegree ≤ as.length * truncation n as.length ∧
      ∀ z : ℂ, (∀ a ∈ as, ‖a * z‖ ≤ ratio n) →
        ‖(factorPolynomial as).eval z * u.eval z - 1‖ ≤ 1 / 4 := by
  refine ⟨approximationPolynomial as (truncation n as.length),
    approximationPolynomial_degree_le as _, ?_⟩
  intro z contractive
  simpa only [eval_factorPolynomial, eval_approximationPolynomial,
    GRWTSK.Analysis.Division.residual, familyApproximation] using
      family_residual as n z contractive

end GRWTSK.Analysis.GeometricProduct
