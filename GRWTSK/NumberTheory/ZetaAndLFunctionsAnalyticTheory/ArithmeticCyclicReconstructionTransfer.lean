/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ArithmeticCyclicZetaResidualCriterion
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Residual transfer from a reconstructed model to the actual arithmetic operator

The reconstructed finite model U need not be self-adjoint. Its full-vector
residual and its operator-norm discrepancy from the existing signed arithmetic
Hamiltonian are charged separately. A fitted scalar model has zero model
residual but must still pay the full imaginary displacement in operator norm.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
No reconstruction, comparison estimate, tail estimate or all-zero supplier is
constructed. The same complete vector and exact spectral parameter are retained.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticCyclicReconstructionTransfer

open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability
open GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticCyclicZetaResidualCriterion

variable (N : ℕ) [hN : NeZero N]
include hN

theorem residual_transfer (t : ℝ) (q : ZMod N → ℝ)
    (U : EuclideanSpace ℂ (ZMod N) →L[ℂ] EuclideanSpace ℂ (ZMod N))
    (z : ℂ) (x : EuclideanSpace ℂ (ZMod N)) :
    ‖hamiltonianOperator N t q x - z • x‖ ≤
      ‖U x - z • x‖ + ‖hamiltonianOperator N t q - U‖ * ‖x‖ := by
  have heq : hamiltonianOperator N t q x - z • x =
      (U x - z • x) + (hamiltonianOperator N t q - U) x := by
    simp only [ContinuousLinearMap.sub_apply]
    abel
  rw [heq]
  exact (norm_add_le _ _).trans
    (add_le_add_left ((hamiltonianOperator N t q - U).le_opNorm x) _)

/-- A non-self-adjoint computational model requires an independently proved source comparison. -/
theorem critical_distance_le_of_reconstruction (t : ℝ) (q : ZMod N → ℝ)
    (U : EuclideanSpace ℂ (ZMod N) →L[ℂ] EuclideanSpace ℂ (ZMod N))
    (s : ℂ) (ε δ : ℝ) (x : EuclideanSpace ℂ (ZMod N))
    (hε : 0 ≤ ε) (hδ : 0 ≤ δ) (hx : x ≠ 0)
    (hmodel : ‖U x - zetaSpectralParameter s • x‖ ≤ ε * ‖x‖)
    (hsource : ‖hamiltonianOperator N t q - U‖ ≤ δ) :
    |s.re - 1 / 2| ≤ ε + δ := by
  apply critical_distance_le_of_residual N t q s (ε + δ) x (add_nonneg hε hδ) hx
  calc
    ‖hamiltonianOperator N t q x - zetaSpectralParameter s • x‖ ≤
        ‖U x - zetaSpectralParameter s • x‖ +
          ‖hamiltonianOperator N t q - U‖ * ‖x‖ :=
      residual_transfer N t q U (zetaSpectralParameter s) x
    _ ≤ ε * ‖x‖ + δ * ‖x‖ :=
      add_le_add hmodel (mul_le_mul_of_nonneg_right hsource (norm_nonneg x))
    _ = (ε + δ) * ‖x‖ := by ring

/-- Fitting the scalar model z*I cannot evade the actual source-comparison cost. -/
theorem scalar_model_norm_barrier (t : ℝ) (q : ZMod N → ℝ) (z : ℂ) :
    |z.im| ≤ ‖hamiltonianOperator N t q -
      z • ContinuousLinearMap.id ℂ (EuclideanSpace ℂ (ZMod N))‖ := by
  let x : EuclideanSpace ℂ (ZMod N) := WithLp.toLp 2 (fun _ => (1 : ℂ))
  have hx : x ≠ 0 := by
    intro h
    have h0 := congrArg (fun y : EuclideanSpace ℂ (ZMod N) => y (0 : ZMod N)) h
    norm_num [x] at h0
  apply parameter_im_le_of_residual N t q z
    ‖hamiltonianOperator N t q - z • ContinuousLinearMap.id ℂ (EuclideanSpace ℂ (ZMod N))‖
    x (norm_nonneg _) hx
  simpa only [ContinuousLinearMap.sub_apply, ContinuousLinearMap.smul_apply,
    ContinuousLinearMap.id_apply] using
    (hamiltonianOperator N t q -
      z • ContinuousLinearMap.id ℂ (EuclideanSpace ℂ (ZMod N))).le_opNorm x

end GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticCyclicReconstructionTransfer
