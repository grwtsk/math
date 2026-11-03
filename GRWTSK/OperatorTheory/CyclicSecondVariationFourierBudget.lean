/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.CyclicExplicitBandLeakageBudget

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! A finite source-derived numerator bound; its cardinal and N dependence
are retained. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicSecondVariationFourierBudget
open CyclicPotentialFourierEntry ArithmeticCyclicSecondVariation
open CyclicExplicitBandLeakageBudget CyclicIntegerLiftBufferedBands
open CyclicBufferedPotentialTailBound CyclicPotentialConvolutionConjugacy
variable (N : ℕ) [NeZero N]

theorem actual_fourier_coefficient_l1_bound (q : ZMod N → ℝ) (r : ZMod N) :
    ‖potentialFourierCoefficient N q r‖ ≤ (∑ j : ZMod N, |q j|)/(N : ℝ) := by
  unfold potentialFourierCoefficient
  rw [norm_mul, norm_inv]
  have hs : ‖∑ j : ZMod N, (q j : ℂ)*ZMod.stdAddChar ((-r)*j)‖ ≤
      ∑ j : ZMod N, |q j| := by
    calc
      _ ≤ ∑ j : ZMod N, ‖(q j : ℂ)*ZMod.stdAddChar ((-r)*j)‖ := norm_sum_le _ _
      _ = _ := by simp [norm_mul, ZMod.stdAddChar_apply]
  have hn : ‖(N : ℂ)‖ = (N : ℝ) := by simp
  rw [hn]
  simpa [div_eq_mul_inv, mul_comm] using
    mul_le_mul_of_nonneg_left hs (inv_nonneg.mpr (Nat.cast_nonneg N))

theorem actual_difference_tail_variation_bound (q : ZMod N → ℝ)
    (R : Finset (ZMod N)) :
    (∑ r ∈ R, ‖potentialFourierCoefficient N (secondDifference N q) r‖) ≤
      (R.card : ℝ)*(secondVariation N q/(N : ℝ)) := by
  calc
    _ ≤ ∑ r ∈ R, secondVariation N q/(N : ℝ) := by
      apply Finset.sum_le_sum
      intro r _
      exact actual_fourier_coefficient_l1_bound N (secondDifference N q) r
    _ = _ := by simp

/- Combining with actual_explicit_band_leakage costs
card(outsideBand)*V2(q)/(N*16*((L+1)/N)^2).
This finite bound does not tend to zero without a source-specific joint
budget. Arithmetic channel variation bounds apply to the literal q;
physical form-core embeddings and a volume-uniform mass remain missing. -/
end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicSecondVariationFourierBudget
