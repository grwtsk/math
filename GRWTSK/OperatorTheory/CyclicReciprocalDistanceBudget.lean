/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.CyclicDistanceWeightedSum

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual finite inverse-distance budget, retaining floor(N/2) endpoint.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicReciprocalDistanceBudget
open CyclicSecondDifferenceDistanceBound CyclicDistanceWeightedSum FiniteReciprocalSquareTail

theorem interval_reciprocal_square_bound (L H : ℕ) (hL : 0<L) (hLH : L≤H) :
    (∑ d ∈ Finset.Icc (L+1) H, 1/(d : ℝ)^2) ≤ 1/(L : ℝ)-1/(H : ℝ) := by
  have he : (∑ d ∈ Finset.Icc (L+1) H, 1/(d : ℝ)^2)=
      ∑ k ∈ Finset.range (H-L), 1/((L+k+1 : ℕ) : ℝ)^2 := by
    refine Finset.sum_bij (fun d _ => d-(L+1)) ?_ ?_ ?_ ?_
    · intro d hd
      simp only [Finset.mem_Icc] at hd
      apply Finset.mem_range.mpr
      omega
    · intro d hd e he h
      simp only [Finset.mem_Icc] at hd he
      omega
    · intro k hk
      have hk' := Finset.mem_range.mp hk
      refine ⟨L+k+1,Finset.mem_Icc.mpr ⟨by omega,by omega⟩,by omega⟩
    · intro d hd
      have hd' := Finset.mem_Icc.mp hd
      have hh : L+(d-(L+1))+1=d := by omega
      rw [hh]
  rw [he]
  have hh := finite_integer_reciprocal_square_tail L (H-L) hL
  simpa only [Nat.add_sub_of_le hLH] using hh

theorem actual_reciprocal_distance_budget (N : ℕ) [NeZero N] (L : ℕ)
    (hL : 0<L) (hLH : L≤N/2) :
    (∑ r ∈ Finset.univ.filter (fun r : ZMod N => L<cyclicFrequencyDistance N r),
      1/(cyclicFrequencyDistance N r : ℝ)^2) ≤
      2*(1/(L : ℝ)-1/((N/2 : ℕ) : ℝ)) := by
  apply (distance_weighted_sum_le_two N L (fun d => 1/(d : ℝ)^2)
    (fun _ _ => by positivity)).trans
  exact mul_le_mul_of_nonneg_left (interval_reciprocal_square_bound L (N/2) hL hLH)
    (by norm_num)

/- The all-frequency coefficient bound then pays N*V2/16 times this finite
budget. The exact fiber identity retains a possible Nyquist improvement;
this two-per-distance relaxation is valid at both parities. Uniform actual
source smallness and physical form-core/mass bridges remain unsupplied. -/
end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicReciprocalDistanceBudget
