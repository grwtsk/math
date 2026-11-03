/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ActualMobiusIncrementMatrixBridge

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact full signed-source perturbation. Both mixed terms are retained;
no arithmetic approximation accuracy or signed upper bound is supplied.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.ActualMobiusQuadraticPerturbation
open CyclicConstantModeSignedPrefixObstruction CyclicActualMertensPrefixSource
open MertensCoefficientKernelCongruence ActualMobiusIncrementMatrixBridge
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
variable (N : ℕ) [NeZero N]

theorem signed_statistic_full_perturbation (x h : ZMod N → ℝ) :
    signedPrefixStatistic N (x+h)-signedPrefixStatistic N x =
      2*(∑ i, x i)*(∑ i, h i)+(∑ i, h i)^2-
        2*(∑ i, x i*h i)-(∑ i, h i^2) := by
  have hs : (∑ i : ZMod N, (x i+h i)^2) =
      (∑ i, x i^2)+2*(∑ i, x i*h i)+(∑ i, h i^2) := by
    simp only [Finset.mul_sum,← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro i _
    ring
  unfold signedPrefixStatistic
  simp only [Pi.add_apply,Finset.sum_add_distrib]
  rw [hs]
  ring

theorem actual_coefficient_full_perturbation (e : ZMod N ≃ Fin N)
    (h : ZMod N → ℝ) :
    let B := mertensIncrementMatrix N e
    let z := mobiusCoefficientVector N e+h
    let y := B.mulVec h
    z ⬝ᵥ ((pulledKernel N B).mulVec z)-sampleSignedMixedPrefix N =
      2*sampleResidue (N+1)*(∑ i, y i)+(∑ i, y i)^2-
        2*(∑ i, actualIncrement N e i*y i)-(∑ i, y i^2) := by
  dsimp only
  rw [pulledKernel_quadratic,Matrix.mulVec_add,actual_mobius_matrix_increment,
    ← actual_signed_prefix_statistic N e,signed_statistic_full_perturbation,
    actual_full_prefix]

end GRWTSK.NumberTheory.Zeta.Riemann.ActualMobiusQuadraticPerturbation
