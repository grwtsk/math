/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.CyclicSecondVariationFourierBudget
import GRWTSK.OperatorTheory.CyclicPotentialTailMultiplierRecovery

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Frequency-dependent actual multiplier conditioning. Zero distance is
excluded explicitly. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicDistanceWeightedVariationTail
open CyclicSecondVariationFourierBudget CyclicSecondDifferenceDistanceBound
open CyclicPotentialTailMultiplierRecovery CyclicPotentialFourierEntry
open ArithmeticCyclicSecondVariation
variable (N : ℕ) [NeZero N]

theorem actual_distance_weighted_coefficient (q : ZMod N → ℝ) (r : ZMod N)
    (hd : 0<cyclicFrequencyDistance N r) :
    ‖potentialFourierCoefficient N q r‖ ≤
      (secondVariation N q/(N : ℝ))/
        (16*((cyclicFrequencyDistance N r : ℝ)/(N : ℝ))^2) := by
  have hN : (0 : ℝ)<N := by exact_mod_cast Nat.pos_of_ne_zero (NeZero.ne N)
  have hdR : (0 : ℝ)<cyclicFrequencyDistance N r := by exact_mod_cast hd
  have hm : 0<16*((cyclicFrequencyDistance N r : ℝ)/(N : ℝ))^2 := by positivity
  calc
    _ ≤ ‖potentialFourierCoefficient N (secondDifference N q) r‖/
        (16*((cyclicFrequencyDistance N r : ℝ)/(N : ℝ))^2) :=
      actual_coefficient_le_conditioned_difference N q r _ hm
        (actual_cyclic_distance_multiplier_lower N r)
    _ ≤ _ := div_le_div_of_nonneg_right
      (actual_fourier_coefficient_l1_bound N (secondDifference N q) r) hm.le

theorem actual_distance_weighted_tail (q : ZMod N → ℝ)
    (R : Finset (ZMod N)) (hR : ∀ r ∈ R, 0<cyclicFrequencyDistance N r) :
    (∑ r ∈ R, ‖potentialFourierCoefficient N q r‖) ≤
      ∑ r ∈ R, (secondVariation N q/(N : ℝ))/
        (16*((cyclicFrequencyDistance N r : ℝ)/(N : ℝ))^2) := by
  apply Finset.sum_le_sum
  intro r hr
  exact actual_distance_weighted_coefficient N q r (hR r hr)

/- Each nonzero frequency retains its own distance instead of paying the
smallest denominator at every site. Summing distance multiplicities and
the inverse-square tail gives the sharper N*V2/(8L) paper budget for L>=1;
that finite geometric summation and uniform arithmetic smallness remain
separate obligations. No physical Yang–Mills mass claim follows. -/
end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicDistanceWeightedVariationTail
