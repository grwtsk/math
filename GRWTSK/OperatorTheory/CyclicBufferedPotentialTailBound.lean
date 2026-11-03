/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.CyclicPotentialPermutationPacket

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual coefficient-space buffered potential leakage with exact tail norm.
Fourier masks are not identified with physical gauge sectors. No uniform
smallness of the actual tail is supplied. NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicBufferedPotentialTailBound
open CyclicPotentialFourierEntry CyclicPotentialConvolutionConjugacy
open CyclicFourierConvolutionBound CyclicConvolutionBufferedSupport CyclicPotentialPermutationPacket
variable (N : ℕ) [NeZero N]

def outsideMask (B : Finset (ZMod N)) (x : EuclideanSpace ℂ (ZMod N)) :
    EuclideanSpace ℂ (ZMod N) := WithLp.toLp 2 (fun i => if i ∈ B then 0 else x i)

theorem outsideMask_norm_le (B : Finset (ZMod N)) (x : EuclideanSpace ℂ (ZMod N)) :
    ‖outsideMask N B x‖ ≤ ‖x‖ := by
  have hs : ‖outsideMask N B x‖^2 ≤ ‖x‖^2 := by
    rw [PiLp.norm_sq_eq_of_L2,PiLp.norm_sq_eq_of_L2]
    apply Finset.sum_le_sum
    intro i _
    change ‖(if i ∈ B then (0 : ℂ) else x i)‖^2 ≤ ‖x i‖^2
    split_ifs <;> simp
  nlinarith [norm_nonneg (outsideMask N B x),norm_nonneg x]

theorem masked_packet_exact_tail (A B R : Finset (ZMod N))
    (hbuffer : ∀ r ∈ R, ∀ l ∈ A, l+r ∈ B)
    (c : ZMod N → ℂ) (x : EuclideanSpace ℂ (ZMod N))
    (hx : ∀ l ∉ A, x l=0) :
    outsideMask N B (convolutionPacket N Finset.univ c x) =
      outsideMask N B (convolutionPacket N (Finset.univ \ R) c x) := by
  apply WithLp.ofLp_injective 2
  funext k
  change (if k ∈ B then 0 else convolutionPacket N Finset.univ c x k) =
    (if k ∈ B then 0 else convolutionPacket N (Finset.univ \ R) c x k)
  by_cases hk : k ∈ B
  · simp [hk]
  · simp only [if_neg hk,convolutionPacket_apply]
    exact outside_buffer_exact_tail N A B R hbuffer c (fun l => x l) hx k hk

theorem buffered_actual_potential_tail_bound (A B R : Finset (ZMod N))
    (hbuffer : ∀ r ∈ R, ∀ l ∈ A, l+r ∈ B)
    (q : ZMod N → ℝ) (x : EuclideanSpace ℂ (ZMod N))
    (hx : ∀ l ∉ A, x l=0) :
    ‖outsideMask N B (potentialConvolution N q x)‖ ≤
      (∑ r ∈ Finset.univ \ R, ‖potentialFourierCoefficient N q r‖)*‖x‖ := by
  rw [potentialConvolution_eq_packet,masked_packet_exact_tail N A B R hbuffer _ x hx]
  exact (outsideMask_norm_le N B _).trans (convolutionPacket_vector_bound N _ _ x)

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicBufferedPotentialTailBound
