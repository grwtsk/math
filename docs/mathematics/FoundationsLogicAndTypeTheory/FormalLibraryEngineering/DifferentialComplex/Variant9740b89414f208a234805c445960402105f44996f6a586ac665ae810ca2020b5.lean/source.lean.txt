import DAF.Hilbert.Finite
import Mathlib.Tactic.NoncommRing

/-!
# Proof-carrying finite differential complexes

This module records an exact finite complex by a complex matrix `d` together
with the kernel-checked relation `d * d = 0`.  The codifferential is the
conjugate transpose, the Hodge--Dirac matrix is `d + dᴴ`, and the Laplacian is
`d dᴴ + dᴴ d`.  All results are finite-dimensional matrix identities.
-/

noncomputable section

namespace DAF.Hilbert

universe u

/-- A finite differential together with its exact square-zero law. -/
structure FiniteDifferentialComplex
    (Index : Type u) [Fintype Index] [DecidableEq Index] where
  differential : FiniteOperator Index Index
  differential_square_zero : differential * differential = 0

namespace FiniteDifferentialComplex

variable {Index : Type u} [Fintype Index] [DecidableEq Index]

/-- The finite codifferential is the conjugate transpose of the differential. -/
def codifferential (complex : FiniteDifferentialComplex Index) :
    FiniteOperator Index Index :=
  complex.differential.conjTranspose

/-- The exact finite Hodge--Dirac matrix `d + dᴴ`. -/
def hodgeDirac (complex : FiniteDifferentialComplex Index) :
    FiniteOperator Index Index :=
  complex.differential + complex.codifferential

/-- The exact finite Hodge Laplacian `d dᴴ + dᴴ d`. -/
def laplacian (complex : FiniteDifferentialComplex Index) :
    FiniteOperator Index Index :=
  complex.differential * complex.codifferential +
    complex.codifferential * complex.differential

/-- The codifferential also squares to zero. -/
theorem codifferential_square_zero
    (complex : FiniteDifferentialComplex Index) :
    complex.codifferential * complex.codifferential = 0 := by
  have conjugated := congrArg Matrix.conjTranspose
    complex.differential_square_zero
  simpa [codifferential] using conjugated

/-- The finite Hodge--Dirac matrix is Hermitian. -/
theorem hodgeDirac_isHermitian
    (complex : FiniteDifferentialComplex Index) :
    complex.hodgeDirac.IsHermitian := by
  simp [hodgeDirac, codifferential, Matrix.IsHermitian, add_comm]

/-- The finite Hodge Laplacian is Hermitian. -/
theorem laplacian_isHermitian
    (complex : FiniteDifferentialComplex Index) :
    complex.laplacian.IsHermitian := by
  simp [laplacian, codifferential, Matrix.IsHermitian]

/-- Squaring the finite Hodge--Dirac matrix gives the Hodge Laplacian. -/
theorem hodgeDirac_square
    (complex : FiniteDifferentialComplex Index) :
    complex.hodgeDirac * complex.hodgeDirac = complex.laplacian := by
  calc
    complex.hodgeDirac * complex.hodgeDirac =
        complex.differential * complex.differential +
          complex.differential * complex.codifferential +
          complex.codifferential * complex.differential +
          complex.codifferential * complex.codifferential := by
            simp only [hodgeDirac]
            noncomm_ring
    _ = complex.laplacian := by
      rw [complex.differential_square_zero,
        complex.codifferential_square_zero]
      simp [laplacian]

/-- The linear operator induced by the exact Hodge--Dirac matrix. -/
def hodgeDiracOperator (complex : FiniteDifferentialComplex Index) :
    FiniteHilbert Index →ₗ[ℂ] FiniteHilbert Index :=
  complex.hodgeDirac.toLinearMap

/-- The linear operator induced by the exact Hodge Laplacian. -/
def laplacianOperator (complex : FiniteDifferentialComplex Index) :
    FiniteHilbert Index →ₗ[ℂ] FiniteHilbert Index :=
  complex.laplacian.toLinearMap

/-- The induced finite Hodge--Dirac operator is symmetric. -/
theorem hodgeDiracOperator_isSymmetric
    (complex : FiniteDifferentialComplex Index) :
    complex.hodgeDiracOperator.IsSymmetric :=
  Matrix.isSymmetric_toEuclideanLin_iff.mpr
    complex.hodgeDirac_isHermitian

/-- The induced finite Hodge--Dirac operator equals its Hilbert adjoint. -/
theorem hodgeDiracOperator_adjoint
    (complex : FiniteDifferentialComplex Index) :
    complex.hodgeDiracOperator.adjoint = complex.hodgeDiracOperator := by
  simpa [hodgeDiracOperator, FiniteOperator.toLinearMap,
    complex.hodgeDirac_isHermitian.eq] using
    (Matrix.toEuclideanLin_conjTranspose_eq_adjoint
      complex.hodgeDirac).symm

/-- An explicit self-adjointness name for the finite Hodge--Dirac operator. -/
theorem hodgeDiracOperator_isSelfAdjoint
    (complex : FiniteDifferentialComplex Index) :
    complex.hodgeDiracOperator.adjoint = complex.hodgeDiracOperator :=
  complex.hodgeDiracOperator_adjoint

/-- The induced finite Hodge Laplacian equals its Hilbert adjoint. -/
theorem laplacianOperator_adjoint
    (complex : FiniteDifferentialComplex Index) :
    complex.laplacianOperator.adjoint = complex.laplacianOperator := by
  simpa [laplacianOperator, FiniteOperator.toLinearMap,
    complex.laplacian_isHermitian.eq] using
    (Matrix.toEuclideanLin_conjTranspose_eq_adjoint
      complex.laplacian).symm

end FiniteDifferentialComplex

end DAF.Hilbert
