import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Analysis.Matrix.Hermitian

/-!
# Exact finite Hilbert coordinates for DAF

This module fixes the finite semantic carrier used by the first DAF Hilbert
realization.  A finite Hilbert space is an `L²` Euclidean space over `ℂ`, and
an operator is represented by its exact complex matrix.  No assertion about an
infinite-dimensional `L²` space or an unbounded operator is made here.
-/

noncomputable section

namespace DAF.Hilbert

universe u v

/-- The exact complex Hilbert space with a finite coordinate type. -/
abbrev FiniteHilbert (Index : Type u) [Fintype Index] :=
  EuclideanSpace ℂ Index

/-- A finite operator represented in the canonical Euclidean basis. -/
abbrev FiniteOperator (Row : Type u) (Column : Type v) :=
  Matrix Row Column ℂ

/-- Interpret an exact matrix as a linear map between finite Euclidean spaces. -/
def FiniteOperator.toLinearMap
    {Row : Type u} {Column : Type v}
    [Fintype Row] [Fintype Column] [DecidableEq Column]
    (A : FiniteOperator Row Column) :
    FiniteHilbert Column →ₗ[ℂ] FiniteHilbert Row :=
  Matrix.toEuclideanLin A

/-- Matrix Hermiticity is exactly symmetry of the induced finite linear map. -/
theorem FiniteOperator.isSymmetric_toLinearMap_iff
    {Index : Type u} [Fintype Index] [DecidableEq Index]
    (A : FiniteOperator Index Index) :
    A.toLinearMap.IsSymmetric ↔ A.IsHermitian :=
  Matrix.isSymmetric_toEuclideanLin_iff

/-- The adjoint of the induced map is represented by the conjugate transpose. -/
theorem FiniteOperator.conjTranspose_toLinearMap_eq_adjoint
    {Row : Type u} {Column : Type v}
    [Fintype Row] [Fintype Column]
    [DecidableEq Row] [DecidableEq Column]
    (A : FiniteOperator Row Column) :
    FiniteOperator.toLinearMap A.conjTranspose =
      (FiniteOperator.toLinearMap A).adjoint :=
  Matrix.toEuclideanLin_conjTranspose_eq_adjoint A

end DAF.Hilbert
