/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.CyclicSecondVariationFourierBudget

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual finite leakage from literal source variation. The full cardinal,
lattice and buffer costs remain. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicVariationBandLeakage
open CyclicSecondVariationFourierBudget CyclicExplicitBandLeakageBudget
open CyclicIntegerLiftBufferedBands CyclicBufferedPotentialTailBound
open CyclicPotentialConvolutionConjugacy ArithmeticCyclicSecondVariation
variable (N : ℕ) [NeZero N]

def variationLeakageCost (L : ℕ) (q : ZMod N → ℝ) : ℝ :=
  (((Finset.univ \ frequencyBand N L).card : ℝ)*
    (secondVariation N q/(N : ℝ)))/bandMultiplierMargin N L

theorem actual_variation_band_leakage (K₀ L K : ℕ) (hK : K₀+L≤K)
    (q : ZMod N → ℝ) (x : EuclideanSpace ℂ (ZMod N))
    (hx : ∀ l ∉ frequencyBand N K₀, x l=0) :
    ‖outsideMask N (frequencyBand N K) (potentialConvolution N q x)‖ ≤
      variationLeakageCost N L q * ‖x‖ := by
  have ht := actual_difference_tail_variation_bound N q
    (Finset.univ \ frequencyBand N L)
  calc
    _ ≤ _ := actual_explicit_band_leakage N K₀ L K hK q x hx
    _ ≤ variationLeakageCost N L q * ‖x‖ := by
      apply mul_le_mul_of_nonneg_right _ (norm_nonneg x)
      exact div_le_div_of_nonneg_right ht (le_of_lt (bandMultiplierMargin_pos N L))

theorem actual_variation_epsilon_budget (K₀ L K : ℕ) (hK : K₀+L≤K)
    (q : ZMod N → ℝ) (x : EuclideanSpace ℂ (ZMod N))
    (hx : ∀ l ∉ frequencyBand N K₀, x l=0) (ε : ℝ)
    (hbudget : ((Finset.univ \ frequencyBand N L).card : ℝ)*
      (secondVariation N q/(N : ℝ)) ≤ ε*bandMultiplierMargin N L) :
    ‖outsideMask N (frequencyBand N K) (potentialConvolution N q x)‖ ≤ ε*‖x‖ := by
  apply (actual_variation_band_leakage N K₀ L K hK q x hx).trans
  apply mul_le_mul_of_nonneg_right _ (norm_nonneg x)
  exact (div_le_iff₀ (bandMultiplierMargin_pos N L)).mpr hbudget

/- For arithmeticPotential use actual_arithmetic_secondVariation_bound;
no bounded-label assumption makes hbudget uniform. Joint regulator/volume
control and a physical sector/form-core identification remain unsupplied. -/
end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicVariationBandLeakage
