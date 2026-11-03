/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.Record4239FullHoppingTrace

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Source-model local coefficient; identifying it with good-reduction
Frobenius data is separate. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
variable (p : ℕ) [Fact (Nat.Prime p)]

/-- Literal affine count plus one infinity point, without a reduction claim. -/
def recordLocalSourcePointCount : ℕ := Nat.card (RecordAffinePoints (ZMod p))+1

def recordLocalSourceCoefficient : ℤ := (p : ℤ)+1-(recordLocalSourcePointCount p : ℤ)

theorem actual_local_source_coefficient (h2 : (2 : ZMod p)≠0)
    (hodd : ringChar (ZMod p)≠2) :
    recordLocalSourceCoefficient p =
      -(∑ x : ZMod p, quadraticChar (ZMod p) (recordFiberDiscriminant x)) := by
  have hc := record_actual_affine_point_count h2 hodd
  simp only [ZMod.card] at hc
  unfold recordLocalSourceCoefficient recordLocalSourcePointCount
  push_cast
  linarith

theorem actual_local_source_coefficient_trace (h2 : (2 : ZMod p)≠0)
    (hodd : ringChar (ZMod p)≠2) (t : ℝ) :
    (recordLocalSourceCoefficient p : ℂ) =
      -Matrix.trace (hamiltonian p t
        (arithmeticPotential p p (recordQuadraticCharacter p)
          (recordDiscriminantLabel p) 0 0 1)) := by
  rw [actual_record_full_hopping_trace]
  exact_mod_cast actual_local_source_coefficient p h2 hodd

/- The polynomial 1-a*T+p*T^2 with this source a becomes a good-prime
Euler factor only after an exact nonsingular reduction/projective model
bridge. Bad-prime factors, global analytic continuation, analytic rank,
regulator and Sha/leading-term identities are not supplied here. -/
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
