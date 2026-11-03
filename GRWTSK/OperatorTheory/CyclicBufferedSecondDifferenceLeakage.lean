/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.CyclicBufferedPotentialTailBound
import GRWTSK.OperatorTheory.CyclicPotentialTailMultiplierRecovery

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual buffered potential leakage paid by the conditioned full second-
difference Fourier tail. Physical sectors are not inferred. NOT_RUN. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicBufferedSecondDifferenceLeakage
open ZMod CyclicPotentialFourierEntry ArithmeticCyclicSecondVariation
open CyclicBufferedPotentialTailBound CyclicPotentialTailMultiplierRecovery
open CyclicPotentialConvolutionConjugacy
variable (N : ℕ) [NeZero N]

theorem actual_buffered_secondDifference_leakage (A B R : Finset (ZMod N))
    (hbuffer : ∀ r ∈ R, ∀ l ∈ A, l+r ∈ B)
    (q : ZMod N → ℝ) (x : EuclideanSpace ℂ (ZMod N))
    (hx : ∀ l ∉ A, x l=0) (η : ℝ) (hη : 0<η)
    (hphase : ∀ r ∈ Finset.univ \ R, η ≤ ‖1-stdAddChar r‖^2) :
    ‖outsideMask N B (potentialConvolution N q x)‖ ≤
      ((∑ r ∈ Finset.univ \ R,
        ‖potentialFourierCoefficient N (secondDifference N q) r‖)/η)*‖x‖ := by
  exact (buffered_actual_potential_tail_bound N A B R hbuffer q x hx).trans
    (mul_le_mul_of_nonneg_right
      (actual_finite_tail_recovery N q (Finset.univ \ R) η hη hphase) (norm_nonneg x))

theorem actual_leakage_of_difference_budget (A B R : Finset (ZMod N))
    (hbuffer : ∀ r ∈ R, ∀ l ∈ A, l+r ∈ B)
    (q : ZMod N → ℝ) (x : EuclideanSpace ℂ (ZMod N))
    (hx : ∀ l ∉ A, x l=0) (η ε : ℝ) (hη : 0<η)
    (hphase : ∀ r ∈ Finset.univ \ R, η ≤ ‖1-stdAddChar r‖^2)
    (hbudget : (∑ r ∈ Finset.univ \ R,
      ‖potentialFourierCoefficient N (secondDifference N q) r‖) ≤ η*ε) :
    ‖outsideMask N B (potentialConvolution N q x)‖ ≤ ε*‖x‖ := by
  apply (actual_buffered_secondDifference_leakage N A B R hbuffer q x hx η hη hphase).trans
  apply mul_le_mul_of_nonneg_right _ (norm_nonneg x)
  exact (div_le_iff₀ hη).mpr (by simpa only [mul_comm] using hbudget)

/- The joint source suppliers hphase/hbudget and physical gauge/core/vacuum
identification remain explicit; finite consumers do not supply them. -/
end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicBufferedSecondDifferenceLeakage
