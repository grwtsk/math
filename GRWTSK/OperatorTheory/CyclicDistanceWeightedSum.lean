/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.FiniteReciprocalSquareTail

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Finite cyclic distance-fiber summation, preserving exact multiplicities.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicDistanceWeightedSum
open CyclicSecondDifferenceDistanceBound CyclicDistanceFibers
variable (N : ℕ) [NeZero N]

theorem distance_le_half (r : ZMod N) : cyclicFrequencyDistance N r≤N/2 := by
  have hv := r.val_lt
  unfold cyclicFrequencyDistance
  omega

theorem exact_distance_weighted_sum (L : ℕ) (f : ℕ → ℝ) :
    (∑ r ∈ Finset.univ.filter (fun r : ZMod N => L<cyclicFrequencyDistance N r),
      f (cyclicFrequencyDistance N r)) =
    ∑ d ∈ Finset.Icc (L+1) (N/2),
      ((Finset.univ.filter (fun r : ZMod N => cyclicFrequencyDistance N r=d)).card : ℝ)*f d := by
  have he := Finset.sum_fiberwise_eq_sum_filter' (Finset.univ : Finset (ZMod N))
    (Finset.Icc (L+1) (N/2)) (cyclicFrequencyDistance N) f
  have hf : Finset.univ.filter (fun r : ZMod N =>
      cyclicFrequencyDistance N r ∈ Finset.Icc (L+1) (N/2)) =
      Finset.univ.filter (fun r : ZMod N => L<cyclicFrequencyDistance N r) := by
    ext r
    have hr := distance_le_half N r
    simp only [Finset.mem_filter,Finset.mem_univ,true_and,Finset.mem_Icc]
    omega
  rw [hf] at he
  simpa only [Finset.sum_const,nsmul_eq_mul] using he.symm

theorem distance_weighted_sum_le_two (L : ℕ) (f : ℕ → ℝ)
    (hf : ∀ d ∈ Finset.Icc (L+1) (N/2), 0≤f d) :
    (∑ r ∈ Finset.univ.filter (fun r : ZMod N => L<cyclicFrequencyDistance N r),
      f (cyclicFrequencyDistance N r)) ≤
      2*(∑ d ∈ Finset.Icc (L+1) (N/2), f d) := by
  rw [exact_distance_weighted_sum,Finset.mul_sum]
  apply Finset.sum_le_sum
  intro d hd
  apply mul_le_mul_of_nonneg_right _ (hf d hd)
  exact_mod_cast distance_fiber_card_le_two N d

/- The first identity preserves the actual Nyquist fiber cardinality rather
than duplicating it. The second is a deliberate relaxation. Specializing
to inverse squares and the endpoint telescope remains to be assembled;
uniform arithmetic variation and physical mass are not supplied. -/
end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicDistanceWeightedSum
