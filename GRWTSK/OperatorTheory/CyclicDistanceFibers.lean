/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.CyclicDistanceWeightedVariationTail

set_option autoImplicit false
noncomputable section

/-! Exact cyclic distance fibers, including zero and Nyquist.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicDistanceFibers
open CyclicSecondDifferenceDistanceBound
variable (N : ℕ) [NeZero N]

theorem distance_fiber_values (r : ZMod N) (d : ℕ)
    (hd : cyclicFrequencyDistance N r=d) : r.val=d ∨ r.val=N-d := by
  have hv := r.val_lt
  unfold cyclicFrequencyDistance at hd
  omega

theorem distance_zero_iff (r : ZMod N) : cyclicFrequencyDistance N r=0 ↔ r=0 := by
  constructor
  · intro h
    rcases distance_fiber_values N r 0 h with h | h
    · have he : (r.val : ZMod N)=r := by simp
      rw [h] at he
      simpa using he.symm
    · have hv := r.val_lt
      omega
  · rintro rfl
    simp [cyclicFrequencyDistance]

theorem distance_fiber_subset (d : ℕ) :
    Finset.univ.filter (fun r : ZMod N => cyclicFrequencyDistance N r=d) ⊆
      {(d : ZMod N),((N-d : ℕ) : ZMod N)} := by
  intro r hr
  have hd := (Finset.mem_filter.mp hr).2
  rcases distance_fiber_values N r d hd with h | h
  · have he : r=(d : ZMod N) := by rw [← h]; simp
    simp [he]
  · have he : r=((N-d : ℕ) : ZMod N) := by rw [← h]; simp
    simp [he]

theorem distance_fiber_card_le_two (d : ℕ) :
    (Finset.univ.filter (fun r : ZMod N => cyclicFrequencyDistance N r=d)).card≤2 := by
  have h := Finset.card_le_card (distance_fiber_subset N d)
  have hp : ({(d : ZMod N),((N-d : ℕ) : ZMod N)} : Finset (ZMod N)).card≤2 := by
    by_cases he : (d : ZMod N)=((N-d : ℕ) : ZMod N)
    · simp [he]
    · simp [he]
  exact h.trans hp

/- Nyquist has one representative when the two displayed residues coincide.
Inverse-square summation and uniform source smallness remain separate. -/
end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicDistanceFibers
