/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ActualMobiusQuadraticPerturbation

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Structured coefficient errors with exactly zero full increment prefix.
This premise is explicit, not supplied by finite approximation accuracy.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.ActualMobiusZeroPrefixError
open CyclicActualMertensPrefixSource MertensCoefficientKernelCongruence
open ActualMobiusIncrementMatrixBridge ActualMobiusQuadraticPerturbation
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
variable (N : ℕ) [NeZero N]

theorem actual_zero_prefix_error_identity (e : ZMod N ≃ Fin N) (h : ZMod N → ℝ)
    (hzero : (∑ i, (mertensIncrementMatrix N e).mulVec h i)=0) :
    let B := mertensIncrementMatrix N e
    let z := mobiusCoefficientVector N e+h
    let y := B.mulVec h
    sampleSignedMixedPrefix N = z ⬝ᵥ ((pulledKernel N B).mulVec z)+
      2*(∑ i, actualIncrement N e i*y i)+(∑ i, y i^2) := by
  have hh := actual_coefficient_full_perturbation N e h
  dsimp only at hh ⊢
  rw [hzero] at hh
  linarith

theorem actual_orthogonal_zero_prefix_error (e : ZMod N ≃ Fin N) (h : ZMod N → ℝ)
    (hzero : (∑ i, (mertensIncrementMatrix N e).mulVec h i)=0)
    (horth : (∑ i, actualIncrement N e i*(mertensIncrementMatrix N e).mulVec h i)=0) :
    let B := mertensIncrementMatrix N e
    let z := mobiusCoefficientVector N e+h
    sampleSignedMixedPrefix N = z ⬝ᵥ ((pulledKernel N B).mulVec z)+
      (∑ i, (B.mulVec h i)^2) := by
  have hh := actual_zero_prefix_error_identity N e h hzero
  dsimp only at hh ⊢
  rw [horth] at hh
  linarith

/- Even exact prefix cancellation does not cancel the mixed mass.
With additional orthogonality the square mass must still be paid when
transferring an upper bound back to the actual source. -/
end GRWTSK.NumberTheory.Zeta.Riemann.ActualMobiusZeroPrefixError
