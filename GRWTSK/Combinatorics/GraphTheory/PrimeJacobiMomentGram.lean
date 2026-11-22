/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. New Lean elaboration, transitive axioms,
independent kernel replay and expert mathematical review: NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.PrimeJacobiEvenMoments
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic

/-!
# The genuine prime Jacobi root moments are an exact Gram matrix

The root vector e0 and iterates J^k e0 are constructed from the
actual arithmetic prime-knot weights. The finite moment sequence
m_k=<e0,J^k e0> contains no zeta-zero ordinate.

The principal finite Hankel matrix H(i,j)=m_(i+j) equals V^T V,
where the Krylov matrix V has columns J^j e0. This is an EXACT
source-faithful identity, not a fitted numerical/learned Gram kernel.
Consequently det(H)=(det V)^2>=0 and all even moments are nonnegative.

A deeper independent inverse theorem follows from the Jacobi
path combinatorics: the maximal-height 2n-step closed walk is
unique, so m_(2n) contains the fresh factor
p_0^2 ... p_(n-1)^2 exactly once, plus a polynomial in preceding
bonds. Thus the full root moment sequence recovers the actual
prime weights recursively. That full general prime-reconstruction
result requires a separate formal path-counting/triangularity
proof; this file establishes its exact Gram foundation, not a
source-to-zeta spectral correspondence.

The proposed source moment matrix is positive semidefinite;
its positive Gram structure is not a signed Weil criterion.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiMomentGram

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeKnotJacobiArithmetic
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiEvenMoments

/-- The canonical first prime-knot basis vector (when N > 0).
At N=0 the vertex type is empty; this does not assert existence of
a finite zero or root eigenvalue. -/
def rootVector (N : ℕ) : Fin N → ℝ :=
  fun i => if i.val = 0 then 1 else 0

/-- Krylov columns are literal successive prime-Jacobi actions. -/
def krylovMatrix (N : ℕ) : Matrix (Fin N) (Fin N) ℝ :=
  fun i j => iterateJacobi j.val (rootVector N) i

/-- Hankel matrix of the true root moments of the arithmetic graph. -/
def hankelMatrix (N : ℕ) : Matrix (Fin N) (Fin N) ℝ :=
  fun i j => moment (rootVector N) (i.val + j.val)

/-- Exact Hankel symmetry for all finite prime-graph sections. -/
theorem hankelMatrix_symmetric (N : ℕ) :
    (hankelMatrix N).transpose = hankelMatrix N := by
  ext i j
  change moment (rootVector N) (j.val + i.val) =
    moment (rootVector N) (i.val + j.val)
  rw [add_comm]

/-- Source-faithful moment/Krylov Gram identity. Nothing is
postulated about the zeta function or any arbitrary eigenvalues. -/
theorem hankelMatrix_eq_gram (N : ℕ) :
    hankelMatrix N =
      (krylovMatrix N).transpose * krylovMatrix N := by
  classical
  ext i j
  simp only [hankelMatrix, krylovMatrix, Matrix.mul_apply,
    Matrix.transpose_apply, moment]
  change dot (rootVector N)
    (iterateJacobi (i.val + j.val) (rootVector N)) =
    ∑ k : Fin N,
      iterateJacobi i.val (rootVector N) k *
        iterateJacobi j.val (rootVector N) k
  rw [iterateJacobi_add]
  exact (iterateJacobi_symmetric i.val
    (rootVector N) (iterateJacobi j.val (rootVector N))).symm

/-- A mathematical certificate of a square determinant, over the
actual prime-only Krylov source, not a generic learned feature map. -/
theorem hankelMatrix_det_square (N : ℕ) :
    (hankelMatrix N).det = (krylovMatrix N).det ^ 2 := by
  classical
  rw [hankelMatrix_eq_gram, Matrix.det_mul, Matrix.det_transpose]
  ring

/-- This exact Hankel determinant can never be negative. Full strict
positivity will follow only after a proved root-cyclicity/triangular
nonzero determinant theorem for actual prime bonds. -/
theorem hankelMatrix_det_nonnegative (N : ℕ) :
    0 ≤ (hankelMatrix N).det := by
  rw [hankelMatrix_det_square]
  exact sq_nonneg _

/-- All finite even moments of the exact prime-root vector are
nonnegative. This is a necessary condition for a positive spectral
measure but does not identify that measure with xi or Weil. -/
theorem root_even_moment_nonnegative (N k : ℕ) :
    0 ≤ moment (rootVector N) (2 * k) :=
  evenMoment_nonnegative (rootVector N) k

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeJacobiMomentGram
