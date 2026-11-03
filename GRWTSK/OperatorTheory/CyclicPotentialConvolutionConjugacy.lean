/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.CyclicFourierSynthesisCompleteness

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Full-vector actual potential action equals synthesized cyclic convolution.
No uniform Fourier tail, continuum gauge map or physical margin follows.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicPotentialConvolutionConjugacy
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability
open CyclicPotentialFourierEntry CyclicFourierPotentialMixedForm CyclicFourierSynthesisCompleteness
variable (N : ℕ) [NeZero N]

def potentialConvolution (q : ZMod N → ℝ) (a : EuclideanSpace ℂ (ZMod N)) :
    EuclideanSpace ℂ (ZMod N) :=
  WithLp.toLp 2 (fun k => ∑ l : ZMod N, potentialFourierCoefficient N q (k-l)*a l)

theorem actual_potential_convolution_pairing (q : ZMod N → ℝ)
    (a b : EuclideanSpace ℂ (ZMod N)) :
    inner ℂ (synthesisLinear N b) (diagonalOperator N q (synthesisLinear N a)) =
      inner ℂ (synthesisLinear N b) (synthesisLinear N (potentialConvolution N q a)) := by
  change inner ℂ (synthesis N (fun k => b k))
    (diagonalOperator N q (synthesis N (fun k => a k))) =
      inner ℂ (synthesis N (fun k => b k))
        (synthesis N (fun k => potentialConvolution N q a k))
  rw [actual_potential_mixed_form, synthesis_inner]
  change (∑ k : ZMod N, ∑ l : ZMod N,
      star (b k)*a l*potentialFourierCoefficient N q (k-l)) =
    ∑ k : ZMod N, star (b k)*(∑ l : ZMod N, potentialFourierCoefficient N q (k-l)*a l)
  simp only [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro k _
  apply Finset.sum_congr rfl
  intro l _
  ring

theorem actual_potential_convolution (q : ZMod N → ℝ) (a : EuclideanSpace ℂ (ZMod N)) :
    diagonalOperator N q (synthesisLinear N a) =
      synthesisLinear N (potentialConvolution N q a) := by
  let d := diagonalOperator N q (synthesisLinear N a)-synthesisLinear N (potentialConvolution N q a)
  obtain ⟨b,hb⟩ := synthesisLinear_surjective N d
  have hz : inner ℂ (synthesisLinear N b) d=0 := by
    dsimp [d]
    rw [inner_sub_right, actual_potential_convolution_pairing, sub_self]
  rw [hb] at hz
  have hd : d=0 := (inner_self_eq_zero).mp hz
  exact sub_eq_zero.mp hd

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicPotentialConvolutionConjugacy
