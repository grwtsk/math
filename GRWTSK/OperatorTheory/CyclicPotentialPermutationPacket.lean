/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.CyclicPotentialConvolutionConjugacy
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.CyclicConvolutionBufferedSupport

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact actual-potential convolution equals the full permutation packet.
The l1 allowance is source-specific but not asserted uniformly small.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicPotentialPermutationPacket
open CyclicPotentialFourierEntry CyclicPotentialConvolutionConjugacy
open CyclicFourierConvolutionBound CyclicConvolutionBufferedSupport
open CyclicFourierSynthesisCompleteness
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability
variable (N : ℕ) [NeZero N]

theorem convolution_reindex (c x : ZMod N → ℂ) (k : ZMod N) :
    (∑ l : ZMod N, c (k-l)*x l)=∑ r : ZMod N, c r*x (k-r) := by
  apply Fintype.sum_equiv (Equiv.subLeft k)
  intro l
  simp

theorem convolutionPacket_apply (S : Finset (ZMod N)) (c : ZMod N → ℂ)
    (x : EuclideanSpace ℂ (ZMod N)) (k : ZMod N) :
    convolutionPacket N S c x k=∑ r ∈ S, c r*x (k-r) := by
  simp [convolutionPacket, frequencyShift_apply]

theorem potentialConvolution_eq_packet (q : ZMod N → ℝ) (x : EuclideanSpace ℂ (ZMod N)) :
    potentialConvolution N q x=convolutionPacket N Finset.univ (potentialFourierCoefficient N q) x := by
  apply WithLp.ofLp_injective 2
  funext k
  change (∑ l : ZMod N, potentialFourierCoefficient N q (k-l)*x l)=_
  rw [convolutionPacket_apply]
  exact convolution_reindex N _ _ k

theorem actual_potential_l1_vector_bound (q : ZMod N → ℝ) (x : EuclideanSpace ℂ (ZMod N)) :
    ‖diagonalOperator N q (synthesisLinear N x)‖ ≤
      (∑ r : ZMod N, ‖potentialFourierCoefficient N q r‖)*‖x‖ := by
  rw [actual_potential_convolution, synthesisLinear_norm, potentialConvolution_eq_packet]
  exact convolutionPacket_vector_bound N Finset.univ _ x

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicPotentialPermutationPacket
