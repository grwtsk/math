import DAF.Fold.Core
import DAF.Hilbert.HodgeDirac

/-!
# Unitary finite fold chain maps

Accepted folds carry exact two-sided unitarity, differential intertwining, and
grading intertwining.  These proofs imply Hodge--Dirac and Laplacian
intertwining; graph reachability or a reversible metadata bit is insufficient.
-/

noncomputable section

namespace DAF.Fold

universe u

open DAF.Hilbert

variable {Index : Type u} [Fintype Index] [DecidableEq Index]

/-- Exact finite unitary implementing one fold. -/
structure FoldUnitary (terrain : GradedTerrainComplex Index) where
  fold : FoldDatum
  operator : FiniteOperator Index Index
  unitary_left : operator.conjTranspose * operator = 1
  unitary_right : operator * operator.conjTranspose = 1
  intertwinesCoboundary :
    operator * terrain.complex.differential =
      terrain.complex.differential * operator
  intertwinesGrading :
    operator * terrain.grading = terrain.grading * operator

namespace FoldUnitary

variable {terrain : GradedTerrainComplex Index}

/-- Differential intertwining plus two-sided unitarity forces
codifferential intertwining. -/
theorem intertwinesCodifferential (fold : FoldUnitary terrain) :
    fold.operator * terrain.complex.codifferential =
      terrain.complex.codifferential * fold.operator := by
  have adjointRelation := congrArg Matrix.conjTranspose
    fold.intertwinesCoboundary
  have relation :
      terrain.complex.codifferential * fold.operator.conjTranspose =
        fold.operator.conjTranspose * terrain.complex.codifferential := by
    simpa [FiniteDifferentialComplex.codifferential] using adjointRelation
  calc
    fold.operator * terrain.complex.codifferential =
        fold.operator * terrain.complex.codifferential *
          (fold.operator.conjTranspose * fold.operator) := by
            rw [fold.unitary_left, mul_one]
    _ = fold.operator *
        (terrain.complex.codifferential * fold.operator.conjTranspose) *
          fold.operator := by noncomm_ring
    _ = fold.operator *
        (fold.operator.conjTranspose * terrain.complex.codifferential) *
          fold.operator := by rw [relation]
    _ = (fold.operator * fold.operator.conjTranspose) *
        terrain.complex.codifferential * fold.operator := by noncomm_ring
    _ = terrain.complex.codifferential * fold.operator := by
      rw [fold.unitary_right, one_mul]

theorem fold_intertwines_hodgeDirac (fold : FoldUnitary terrain) :
    fold.operator * terrain.complex.hodgeDirac =
      terrain.complex.hodgeDirac * fold.operator := by
  simp only [FiniteDifferentialComplex.hodgeDirac, mul_add, add_mul]
  rw [fold.intertwinesCoboundary, fold.intertwinesCodifferential]

theorem fold_intertwines_laplacian (fold : FoldUnitary terrain) :
    fold.operator * terrain.complex.laplacian =
      terrain.complex.laplacian * fold.operator := by
  rw [← terrain.complex.hodgeDirac_square]
  calc
    fold.operator * (terrain.complex.hodgeDirac * terrain.complex.hodgeDirac) =
        (fold.operator * terrain.complex.hodgeDirac) *
          terrain.complex.hodgeDirac := by simp [mul_assoc]
    _ = (terrain.complex.hodgeDirac * fold.operator) *
          terrain.complex.hodgeDirac := by rw [fold.fold_intertwines_hodgeDirac]
    _ = terrain.complex.hodgeDirac *
        (fold.operator * terrain.complex.hodgeDirac) := by simp [mul_assoc]
    _ = terrain.complex.hodgeDirac *
        (terrain.complex.hodgeDirac * fold.operator) := by
          rw [fold.fold_intertwines_hodgeDirac]
    _ = (terrain.complex.hodgeDirac * terrain.complex.hodgeDirac) *
        fold.operator := by simp [mul_assoc]

/-- Fold unitarity is exact matrix unitarity. -/
theorem isUnitary (fold : FoldUnitary terrain) :
    fold.operator.conjTranspose * fold.operator = 1 ∧
      fold.operator * fold.operator.conjTranspose = 1 :=
  ⟨fold.unitary_left, fold.unitary_right⟩

end FoldUnitary

end DAF.Fold
