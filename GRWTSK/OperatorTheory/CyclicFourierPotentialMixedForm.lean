/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.CyclicNormalizedFourierModes

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual normalized potential mixed form, retaining every Fourier pair.
No coefficient-tail estimate or physical gauge identification is supplied.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicFourierPotentialMixedForm
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicOperatorStability
open CyclicPotentialFourierEntry CyclicNormalizedFourierModes
variable (N : ℕ) [NeZero N]

theorem normalized_potential_entry (q : ZMod N → ℝ) (k l : ZMod N) :
    inner ℂ (normalizedFourierMode N k)
      (diagonalOperator N q (normalizedFourierMode N l)) = potentialFourierCoefficient N q (k-l) := by
  unfold normalizedFourierMode
  rw [map_smul, inner_smul_left, inner_smul_right]
  simp only [map_inv₀, starRingEnd_apply, Complex.star_def, Complex.conj_ofReal]
  rw [← mul_assoc, normalization_square]
  exact actual_potential_fourier_entry N q k l

def synthesis (a : ZMod N → ℂ) : EuclideanSpace ℂ (ZMod N) :=
  ∑ k : ZMod N, a k • normalizedFourierMode N k

theorem synthesis_inner (a b : ZMod N → ℂ) :
    inner ℂ (synthesis N a) (synthesis N b) = ∑ k : ZMod N, star (a k)*b k := by
  simp only [synthesis, sum_inner, inner_sum, inner_smul_left, inner_smul_right,
    starRingEnd_apply, Finset.mul_sum, normalizedFourierMode_inner]
  simp [mul_ite]

theorem actual_potential_mixed_form (q : ZMod N → ℝ) (a b : ZMod N → ℂ) :
    inner ℂ (synthesis N a) (diagonalOperator N q (synthesis N b)) =
      ∑ k : ZMod N, ∑ l : ZMod N,
        star (a k)*b l*potentialFourierCoefficient N q (k-l) := by
  simp only [synthesis, map_sum, map_smul, sum_inner, inner_sum,
    inner_smul_left, inner_smul_right, starRingEnd_apply, Finset.mul_sum]
  simp_rw [normalized_potential_entry]
  apply Finset.sum_congr rfl
  intro k _
  apply Finset.sum_congr rfl
  intro l _
  ring

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicFourierPotentialMixedForm
