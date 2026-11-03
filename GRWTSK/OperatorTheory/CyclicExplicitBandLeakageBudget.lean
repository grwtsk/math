/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.CyclicBufferDistanceMargin
import GRWTSK.OperatorTheory.CyclicBufferedSecondDifferenceLeakage

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual band geometry discharges the Fourier multiplier premise.
The arithmetic difference-tail budget is still an unsupplied source input.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicExplicitBandLeakageBudget
open CyclicIntegerLiftBufferedBands CyclicBufferDistanceMargin
open CyclicBufferedSecondDifferenceLeakage CyclicBufferedPotentialTailBound
open CyclicPotentialConvolutionConjugacy CyclicPotentialFourierEntry ArithmeticCyclicSecondVariation
variable (N : ℕ) [NeZero N]

def bandMultiplierMargin (L : ℕ) : ℝ := 16*(((L+1 : ℕ) : ℝ)/(N : ℝ))^2

theorem bandMultiplierMargin_pos (L : ℕ) : 0<bandMultiplierMargin N L := by
  have hN : (0 : ℝ)<N := by exact_mod_cast Nat.pos_of_ne_zero (NeZero.ne N)
  unfold bandMultiplierMargin
  positivity

theorem actual_explicit_band_leakage (K₀ L K : ℕ) (hK : K₀+L≤K)
    (q : ZMod N → ℝ) (x : EuclideanSpace ℂ (ZMod N))
    (hx : ∀ l ∉ frequencyBand N K₀, x l=0) :
    ‖outsideMask N (frequencyBand N K) (potentialConvolution N q x)‖ ≤
      ((∑ r ∈ Finset.univ \ frequencyBand N L,
        ‖potentialFourierCoefficient N (secondDifference N q) r‖)/bandMultiplierMargin N L)*‖x‖ := by
  apply actual_buffered_secondDifference_leakage N (frequencyBand N K₀)
    (frequencyBand N K) (frequencyBand N L) _ q x hx
    (bandMultiplierMargin N L) (bandMultiplierMargin_pos N L)
  · intro r hr l hl
    exact frequencyBand_mono N hK (frequencyBand_add N K₀ L l r hl hr)
  · intro r hr
    exact outside_actual_band_multiplier_lower N L r (Finset.mem_sdiff.mp hr).2

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicExplicitBandLeakageBudget
