/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239FiniteAffinePointCount
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.ArithmeticCyclicHamiltonian

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Literal discriminant labels in the maintained arithmetic operator.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
variable (p : ℕ) [Fact (Nat.Prime p)]

def recordQuadraticCharacter : DirichletCharacter ℂ p :=
  (quadraticChar (ZMod p)).ringHomComp (Int.castRingHom ℂ)

def recordDiscriminantLabel (x : ZMod p) : ℕ := (recordFiberDiscriminant x).val

theorem actual_record_potential (x : ZMod p) :
    arithmeticPotential p p (recordQuadraticCharacter p)
      (recordDiscriminantLabel p) 0 0 1 x =
      (quadraticChar (ZMod p) (recordFiberDiscriminant x) : ℝ) := by
  simp [arithmeticPotential,recordQuadraticCharacter,recordDiscriminantLabel]

theorem actual_record_diagonal_trace :
    Matrix.trace (hamiltonian p 0
      (arithmeticPotential p p (recordQuadraticCharacter p)
        (recordDiscriminantLabel p) 0 0 1)) =
      ∑ x : ZMod p, (quadraticChar (ZMod p) (recordFiberDiscriminant x) : ℂ) := by
  simp only [hamiltonian, Complex.ofReal_zero, zero_smul, zero_add, Matrix.trace_diagonal]
  apply Finset.sum_congr rfl
  intro x _
  rw [actual_record_potential]
  norm_cast

/- This exact t=0 specialization uses source-derived canonical natural
labels and the genuine quadratic character. It is a local character-sum
trace, not an analytic-zero spectral realization. Extending trace equality
to arbitrary hopping needs the off-diagonal shift proof for p>2; actual
good/bad reduction and the global analytic BSD bridge remain separate. -/
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
