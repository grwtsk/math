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
    have hle : (i.val : ℝ) + 1 ≤ (N : ℝ) := by
      exact_mod_cast (Nat.succ_le_iff.mpr i.isLt)
    linarith
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


/-- The genuine prime-Jacobi three-term polynomial coefficient recursion.
The coefficient of t^j in P_n(t), with P_0=1, P_1=t/p_0, and
p_(n+1) P_(n+2)=t P_(n+1)-p_n P_n. This definition does not
refer to a zeta zero or to the inverse Krylov matrix. -/
def recurrencePolynomialCoefficient : ℕ → ℕ → ℝ
  | 0, j => if j = 0 then 1 else 0
  | 1, j => if j = 1 then (bond 0)⁻¹ else 0
  | n + 2, j =>
      ((if j = 0 then 0 else recurrencePolynomialCoefficient (n + 1) (j - 1)) -
          bond n * recurrencePolynomialCoefficient n j) / bond (n + 1)

/-- The matrix with rows equal to the independently generated true-prime
three-term recurrence polynomials. -/
def recurrencePolynomialMatrix (N : ℕ) : Matrix (Fin N) (Fin N) ℝ :=
  fun n j => recurrencePolynomialCoefficient n.val j.val

/-- The exact, sole bridge from recursively defined Jacobi polynomials
to the source inverse Krylov coefficient matrix. The basis-evaluation
hypothesis is the still-open Lean lemma, not an assumption imported from
Alpoge or from RH. The mathematical proof is a two-step induction using
the actual prime-Jacobi action on basis vectors. -/
theorem recurrence_polynomial_eq_inverse_krylov_of_basis
    (N : ℕ)
    (hEval : ∀ i n : Fin N,
      primePolynomialAction N (recurrencePolynomialMatrix N n) i =
        if i = n then 1 else 0) :
    recurrencePolynomialMatrix N = coeffMatrix N :=
  coefficient_matrix_unique_of_basis_action N
    (recurrencePolynomialMatrix N) hEval

/-- Row-sum norm of the actual inverse prime-Krylov coefficients.
The out-of-range row is zero. -/
def sourceCoefficientRowNorm (N n : ℕ) : ℝ :=
  if hn : n < N then
    ∑ j : Fin N, |coeffMatrix N ⟨n, hn⟩ j|
  else 0

theorem sourceCoefficientRowNorm_at_fin (N : ℕ) (n : Fin N) :
    sourceCoefficientRowNorm N n.val =
      ∑ j : Fin N, |coeffMatrix N n j| := by
  simp [sourceCoefficientRowNorm, n.isLt]

/-- A fully quantified induction: once the actual coefficient rows
satisfy the genuine prime three-term l1 inequality, they are bounded
by the already-proved prime-only scalar coefficient envelope.
The base and recurrence premises are source-specific proof obligations
for the preceding recurrencePolynomialMatrix. -/
theorem sourceCoefficientRowNorm_le_envelope_of_recurrence
    (N : ℕ)
    (hzero : sourceCoefficientRowNorm N 0 ≤ coeffEnvelope 0)
    (hone : sourceCoefficientRowNorm N 1 ≤ coeffEnvelope 1)
    (hstep : ∀ n : ℕ, n + 2 < N →
      sourceCoefficientRowNorm N (n + 2) ≤
        sourceCoefficientRowNorm N (n + 1) / bond (n + 1) +
          (bond n / bond (n + 1)) * sourceCoefficientRowNorm N n) :
    ∀ n : ℕ, sourceCoefficientRowNorm N n ≤ coeffEnvelope n := by
  intro n
  induction n using Nat.twoStepInduction with
  | zero => exact hzero
  | one => exact hone
  | more n ih ih1 =>
      by_cases h : n + 2 < N
      · calc
          sourceCoefficientRowNorm N (n + 2) ≤
              sourceCoefficientRowNorm N (n + 1) / bond (n + 1) +
                (bond n / bond (n + 1)) * sourceCoefficientRowNorm N n := hstep n h
          _ ≤ coeffEnvelope (n + 1) / bond (n + 1) +
                (bond n / bond (n + 1)) * coeffEnvelope n := by
              apply add_le_add
              · exact div_le_div_of_nonneg_right ih1 (bond_pos _).le
              · exact mul_le_mul_of_nonneg_left ih
                  (div_nonneg (bond_pos _).le (bond_pos _).le)
          _ = coeffEnvelope (n + 2) := rfl
      · have hz : sourceCoefficientRowNorm N (n + 2) = 0 := by
          simp [sourceCoefficientRowNorm, h]
        rw [hz]
        exact coeffEnvelope_nonnegative (n + 2)

/-- The authentic prime-Hankel conditioning theorem returned from a
precise prime-three-term source recurrence. The recurrence is not yet
proved from the separate polynomial action in Lean. This theorem does
NOT assert unconditional coefficient domination. -/
theorem source_hankel_inverse_row_le_of_actual_row_recurrence
    (N : ℕ)
    (hzero : sourceCoefficientRowNorm N 0 ≤ coeffEnvelope 0)
    (hone : sourceCoefficientRowNorm N 1 ≤ coeffEnvelope 1)
    (hstep : ∀ n : ℕ, n + 2 < N →
      sourceCoefficientRowNorm N (n + 2) ≤
        sourceCoefficientRowNorm N (n + 1) / bond (n + 1) +
          (bond n / bond (n + 1)) * sourceCoefficientRowNorm N n)
    (i : Fin N) :
    (∑ j : Fin N, |(hankelMatrix N)⁻¹ i j|)
      ≤ ((N : ℝ) * ((N : ℝ) + 1) ^ 2) / 4 := by
  have hAll := sourceCoefficientRowNorm_le_envelope_of_recurrence
    N hzero hone hstep
  apply source_hankel_inverse_bound_of_envelope_domination N ?_ i
  intro l
  rw [← sourceCoefficientRowNorm_at_fin N l]
  exact hAll l.val

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiPolynomialKrylov
