/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletFullCharacterResidualCoordinates
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletUnitPhaseResidualSquare

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact global cancellation of oriented cyclic imaginary neighbor phases.
This is not coordinatewise cancellation or an analytic zero bridge. NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletCyclicPhaseCancellation
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian
variable (N : ℕ) [NeZero N]

def neighborPhase (x : ZMod N → ℂ) (i : ZMod N) : ℝ :=
  ((x (i+1)+x (i-1))*Complex.conj (x i)).im

theorem full_neighbor_phase_sum_zero (x : ZMod N → ℂ) :
    (∑ i : ZMod N, neighborPhase N x i)=0 := by
  have he : (∑ i : ZMod N, (x (i+1)+x (i-1))*Complex.conj (x i)) =
      forwardCorrelation N x+Complex.conj (forwardCorrelation N x) := by
    simp_rw [add_mul]
    rw [Finset.sum_add_distrib]
    have hf : (∑ i : ZMod N, x (i+1)*Complex.conj (x i))=forwardCorrelation N x := by
      simp [forwardCorrelation,mul_comm]
    have hr : (∑ i : ZMod N, x (i-1)*Complex.conj (x i))=
        Complex.conj (forwardCorrelation N x) := by
      simpa only [mul_comm] using reverseCorrelation_eq_conj N x
    rw [hf,hr]
  have hi := congrArg Complex.im he
  simpa [neighborPhase,map_sum] using hi

theorem genuine_character_unit_phase_sum_zero (χ : DirichletCharacter ℂ N) :
    (∑ i : ZMod N, if IsUnit i then neighborPhase N (fun j => χ j) i else 0)=0 := by
  classical
  have he : (∑ i : ZMod N, if IsUnit i then neighborPhase N (fun j => χ j) i else 0)=
      ∑ i : ZMod N, neighborPhase N (fun j => χ j) i := by
    apply Finset.sum_congr rfl
    intro i _
    by_cases hu : IsUnit i
    · simp [hu]
    · simp [hu,neighborPhase,χ.map_nonunit hu]
  rw [he]
  exact full_neighbor_phase_sum_zero N _

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletCyclicPhaseCancellation
