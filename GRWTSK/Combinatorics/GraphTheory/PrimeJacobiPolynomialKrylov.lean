/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Lean 4.34.1 / Mathlib d13f23b7.
Elaboration, fresh kernel replay, transitive axioms: NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.PrimeJacobiHankelInverse
import GRWTSK.Combinatorics.GraphTheory.PrimeJacobiCoefficientEnvelope
import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
import Mathlib.Tactic

/-!
# Polynomial coefficients act on the original prime-Krylov basis

The coefficients are rows of the *actual* inverse prime-Krylov matrix.
Their action on the original J^j e0 vectors is exactly the canonical
finite basis. Such coefficients are unique by invertibility of the
original Krylov matrix. Consequently any independently constructed
orthonormal-polynomial recurrence whose evaluation gives the same basis
must have these precise coefficients.

The recurrence-to-basis evaluation is NOT supplied by this file; this
remaining independent Jacobi-action lemma must be proved before using
the scalar prime coefficient envelope to obtain an unconditional
inverse-Hankel row bound. The theorem transporting that envelope
therefore retains its explicit hypothesis.

This source does not import Alpoge's final result, any zeta zeros or RH.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiPolynomialKrylov

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeKnotJacobiArithmetic
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiMomentGram
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiEvenMoments
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiKrylovFrontier
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiHankelInverse
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiCoefficientEnvelope

/-- A polynomial of degree below N represented by its coefficients on
monomials of the *original* prime Jacobi operator. -/
def primePolynomialAction (N : ℕ) (coeff : Fin N → ℝ) : Fin N → ℝ :=
  fun i => ∑ j : Fin N, coeff j * iterateJacobi j.val (rootVector N) i

/-- The rows of the inverse Krylov matrix evaluate to the actual unit
vectors. This is an exact polynomial-to-Krylov identity, not a new
definition of the recurrence polynomials. -/
theorem inverse_coefficients_act_as_basis (N : ℕ) (i n : Fin N) :
    primePolynomialAction N (coeffMatrix N n) i =
      (if i = n then 1 else 0) := by
  classical
  have hunit : IsUnit (krylovMatrix N).det :=
    isUnit_iff_ne_zero.mpr (ne_of_gt (krylov_det_positive N))
  have hmatrix := Matrix.mul_nonsing_inv (krylovMatrix N) hunit
  have hentry := congrArg (fun M : Matrix (Fin N) (Fin N) ℝ => M i n) hmatrix
  simpa only [primePolynomialAction, coeffMatrix, krylovMatrix,
    Matrix.mul_apply, Matrix.one_apply, Matrix.transpose_apply,
    mul_comm] using hentry

/-- The original prime-Krylov matrix has exactly one coefficient
representation of each unit vector. Thus an independently defined
Jacobi-recurrence polynomial matrix is forced to agree with the
inverse Krylov matrix once its action identity is proved. -/
theorem coefficient_matrix_unique_of_basis_action (N : ℕ)
    (R : Matrix (Fin N) (Fin N) ℝ)
    (hR : ∀ i n : Fin N,
      primePolynomialAction N (R n) i = if i = n then 1 else 0) :
    R = coeffMatrix N := by
  classical
  have hprod : krylovMatrix N * R.transpose = 1 := by
    ext i n
    simpa only [Matrix.mul_apply, Matrix.transpose_apply,
      Matrix.one_apply, krylovMatrix, primePolynomialAction, mul_comm] using
      (hR i n)
  have hInv : (krylovMatrix N)⁻¹ = R.transpose :=
    Matrix.inv_eq_right_inv hprod
  have hTrans := congrArg Matrix.transpose hInv
  simpa only [coeffMatrix, Matrix.transpose_transpose] using hTrans.symm

/-- Every true polynomial coefficient row has an unconditional bound
*once* a mathematically independent recurrence-to-basis identification
and its scalar envelope domination have been established. The exact
remaining hypothesis is retained rather than replaced by RH. -/
theorem true_coefficient_row_bound_of_envelope_domination
    (N : ℕ)
    (hCoeff : ∀ i : Fin N,
      ∑ j : Fin N, |coeffMatrix N i j| ≤ coeffEnvelope i.val)
    (i : Fin N) :
    (∑ j : Fin N, |coeffMatrix N i j|) ≤ ((N : ℝ) + 1) / 2 := by
  have hIndex : coeffEnvelope i.val ≤ ((i.val : ℝ) + 2) / 2 :=
    coeffEnvelope_le_index i.val
  have hFin : ((i.val : ℝ) + 2) / 2 ≤ ((N : ℝ) + 1) / 2 := by
    have hlt : i.val < N := i.isLt
    exact_mod_cast (by omega : 2 * i.val + 4 ≤ 2 * N + 2)
      -- If this conversion does not elaborate, use exact_mod_cast and linarith.
  exact (hCoeff i).trans (hIndex.trans hFin)

/-- The exact actual-source inverse Hankel row bound, with the explicit
polynomial coefficient supplier required by the preceding theorem. -/
theorem source_hankel_inverse_bound_of_envelope_domination
    (N : ℕ)
    (hCoeff : ∀ i : Fin N,
      ∑ j : Fin N, |coeffMatrix N i j| ≤ coeffEnvelope i.val)
    (i : Fin N) :
    (∑ j : Fin N, |(hankelMatrix N)⁻¹ i j|)
       ≤ ((N : ℝ) * ((N : ℝ) + 1) ^ 2) / 4 := by
  apply hankel_inverse_row_sum_quadratic_of_coeff_bound N
    (fun j => true_coefficient_row_bound_of_envelope_domination N hCoeff j) i

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiPolynomialKrylov
