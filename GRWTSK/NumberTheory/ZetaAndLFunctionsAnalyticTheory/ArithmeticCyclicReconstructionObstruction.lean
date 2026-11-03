/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ArithmeticCyclicReconstructionTransfer

set_option autoImplicit false
noncomputable section

/-! SOURCE_PROOF_CANDIDATE / NOT_RUN. The operator comparison is indispensable. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticCyclicReconstructionObstruction
open ArithmeticCyclicReconstructionTransfer ArithmeticCyclicZetaResidualCriterion
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability

theorem no_subcritical_budget (N : ℕ) [NeZero N] (t : ℝ) (q : ZMod N → ℝ)
    (U : EuclideanSpace ℂ (ZMod N) →L[ℂ] EuclideanSpace ℂ (ZMod N))
    (s : ℂ) (ε δ : ℝ) (x : EuclideanSpace ℂ (ZMod N))
    (hε : 0 ≤ ε) (hδ : 0 ≤ δ) (hx : x ≠ 0)
    (hbudget : ε + δ < |s.re - 1 / 2|)
    (hmodel : ‖U x - zetaSpectralParameter s • x‖ ≤ ε * ‖x‖) :
    ¬ ‖hamiltonianOperator N t q - U‖ ≤ δ := by
  intro hsource
  exact (not_lt_of_ge (critical_distance_le_of_reconstruction
    N t q U s ε δ x hε hδ hx hmodel hsource)) hbudget

end GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticCyclicReconstructionObstruction
