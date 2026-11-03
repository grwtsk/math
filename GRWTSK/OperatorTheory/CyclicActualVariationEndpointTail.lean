/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.CyclicReciprocalDistanceBudget

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual source Fourier tail with the finite endpoint retained.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicActualVariationEndpointTail
open CyclicSecondDifferenceDistanceBound CyclicDistanceWeightedVariationTail
open CyclicReciprocalDistanceBudget CyclicPotentialFourierEntry ArithmeticCyclicSecondVariation
open CyclicIntegerLiftBufferedBands CyclicBufferDistanceMargin
variable (N : ℕ) [NeZero N]

theorem actual_distance_cut_variation_tail (q : ZMod N → ℝ) (L : ℕ)
    (hL : 0<L) (hLH : L≤N/2) :
    (∑ r ∈ Finset.univ.filter (fun r : ZMod N => L<cyclicFrequencyDistance N r),
      ‖potentialFourierCoefficient N q r‖) ≤
    ((N : ℝ)*secondVariation N q/8)*(1/(L : ℝ)-1/((N/2 : ℕ) : ℝ)) := by
  have hN : (N : ℝ)≠0 := by exact_mod_cast NeZero.ne N
  have hV : 0≤secondVariation N q := by unfold secondVariation; positivity
  have hc : 0≤(N : ℝ)*secondVariation N q/16 := by positivity
  calc
    _ ≤ ∑ r ∈ Finset.univ.filter (fun r : ZMod N => L<cyclicFrequencyDistance N r),
        ((N : ℝ)*secondVariation N q/16)*(1/(cyclicFrequencyDistance N r : ℝ)^2) := by
      apply Finset.sum_le_sum
      intro r hr
      have hd : 0<cyclicFrequencyDistance N r := by
        have hh := (Finset.mem_filter.mp hr).2
        omega
      have hdR : (cyclicFrequencyDistance N r : ℝ)≠0 := by exact_mod_cast ne_of_gt hd
      have hh := actual_distance_weighted_coefficient N q r hd
      convert hh using 1 <;> field_simp <;> ring
    _ = ((N : ℝ)*secondVariation N q/16)*
        (∑ r ∈ Finset.univ.filter (fun r : ZMod N => L<cyclicFrequencyDistance N r),
          1/(cyclicFrequencyDistance N r : ℝ)^2) := by rw [Finset.mul_sum]
    _ ≤ ((N : ℝ)*secondVariation N q/16)*
        (2*(1/(L : ℝ)-1/((N/2 : ℕ) : ℝ))) :=
      mul_le_mul_of_nonneg_left (actual_reciprocal_distance_budget N L hL hLH) hc
    _ = _ := by ring

theorem actual_band_variation_endpoint_tail (q : ZMod N → ℝ) (L : ℕ)
    (hL : 0<L) (hLH : L≤N/2) :
    (∑ r ∈ Finset.univ \ frequencyBand N L, ‖potentialFourierCoefficient N q r‖) ≤
      ((N : ℝ)*secondVariation N q/8)*(1/(L : ℝ)-1/((N/2 : ℕ) : ℝ)) := by
  apply (Finset.sum_le_sum_of_subset_of_nonneg
    (show Finset.univ \ frequencyBand N L ⊆
      Finset.univ.filter (fun r : ZMod N => L<cyclicFrequencyDistance N r) from by
      intro r hr
      exact Finset.mem_filter.mpr ⟨Finset.mem_univ r,
        outside_actual_band_distance N L r (Finset.mem_sdiff.mp hr).2⟩)
    (fun r _ _ => norm_nonneg (potentialFourierCoefficient N q r))).trans
  exact actual_distance_cut_variation_tail N q L hL hLH

/- This finite arithmetic tail bound supplies no uniform variation budget.
Actual channel variations and physical form-core/mass hypotheses remain
explicitly unsupplied. The endpoint branch requires 1≤L≤floor(N/2). -/
end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicActualVariationEndpointTail
