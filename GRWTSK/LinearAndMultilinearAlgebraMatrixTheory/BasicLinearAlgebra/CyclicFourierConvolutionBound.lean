/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicHoppingBounds

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Finite cyclic convolution norm with the exact l1 coefficient allowance.
Fourier conjugacy with the actual potential and buffered support geometry
remain separate. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicFourierConvolutionBound
variable (N : ℕ) [NeZero N]

def frequencyShift (r : ZMod N) :
    EuclideanSpace ℂ (ZMod N) →L[ℂ] EuclideanSpace ℂ (ZMod N) :=
  Matrix.toEuclideanCLM (n := ZMod N) (𝕜 := ℂ)
    ((Equiv.addRight (-r)).permMatrix ℂ)

open scoped Matrix.Norms.L2Operator in
theorem frequencyShift_norm (r : ZMod N) : ‖frequencyShift N r‖ = 1 := by
  rw [frequencyShift, Matrix.l2_opNorm_toEuclideanCLM]
  exact Matrix.permMatrix_l2_opNorm_eq (Equiv.addRight (-r))

def convolutionPacket (S : Finset (ZMod N)) (c : ZMod N → ℂ) :
    EuclideanSpace ℂ (ZMod N) →L[ℂ] EuclideanSpace ℂ (ZMod N) :=
  ∑ r ∈ S, c r • frequencyShift N r

theorem convolutionPacket_norm_le (S : Finset (ZMod N)) (c : ZMod N → ℂ) :
    ‖convolutionPacket N S c‖ ≤ ∑ r ∈ S, ‖c r‖ := by
  unfold convolutionPacket
  calc
    _ ≤ ∑ r ∈ S, ‖c r • frequencyShift N r‖ := norm_sum_le _ _
    _ = _ := by
      apply Finset.sum_congr rfl
      intro r _
      rw [norm_smul, frequencyShift_norm, mul_one]

theorem convolutionPacket_vector_bound (S : Finset (ZMod N)) (c : ZMod N → ℂ)
    (x : EuclideanSpace ℂ (ZMod N)) :
    ‖convolutionPacket N S c x‖ ≤ (∑ r ∈ S, ‖c r‖)*‖x‖ :=
  (ContinuousLinearMap.le_opNorm _ x).trans
    (mul_le_mul_of_nonneg_right (convolutionPacket_norm_le N S c) (norm_nonneg x))

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicFourierConvolutionBound
