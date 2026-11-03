/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.CyclicIntegerLiftBufferedBands
import GRWTSK.OperatorTheory.CyclicSecondDifferenceDistanceBound

set_option autoImplicit false
noncomputable section

/-! Actual integer-lift band to cyclic-distance margin, retaining both
possible lifts. No uniform physical margin is inferred. NOT_RUN. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicBufferDistanceMargin
open ZMod CyclicIntegerLiftBufferedBands CyclicSecondDifferenceDistanceBound
variable (N : ℕ) [NeZero N]

theorem distance_le_implies_actual_band (L : ℕ) (r : ZMod N)
    (hd : cyclicFrequencyDistance N r ≤ L) : r ∈ frequencyBand N L := by
  unfold frequencyBand
  by_cases hv : r.val ≤ L
  · apply Finset.mem_image.mpr
    refine ⟨(r.val : ℤ),?_,by simp⟩
    simp only [Finset.mem_Icc]
    constructor <;> omega
  · have hn : N-r.val ≤ L := by unfold cyclicFrequencyDistance at hd; omega
    apply Finset.mem_image.mpr
    refine ⟨-((N-r.val : ℕ) : ℤ),?_,?_⟩
    · simp only [Finset.mem_Icc]
      constructor <;> omega
    · have hval : r.val ≤ N := Nat.le_of_lt r.val_lt
      push_cast
      rw [Nat.cast_sub hval]
      simp

theorem outside_actual_band_distance (L : ℕ) (r : ZMod N)
    (hr : r ∉ frequencyBand N L) : L<cyclicFrequencyDistance N r := by
  by_contra h
  exact hr (distance_le_implies_actual_band N L r (by omega))

theorem outside_actual_band_multiplier_lower (L : ℕ) (r : ZMod N)
    (hr : r ∉ frequencyBand N L) :
    16*(((L+1 : ℕ) : ℝ)/(N : ℝ))^2 ≤ ‖1-stdAddChar r‖^2 := by
  have hd := outside_actual_band_distance N L r hr
  have hN : (0 : ℝ)≤N := Nat.cast_nonneg N
  have hdnat : L+1 ≤ cyclicFrequencyDistance N r := by omega
  have hcast : ((L+1 : ℕ) : ℝ) ≤ (cyclicFrequencyDistance N r : ℝ) := by exact_mod_cast hdnat
  have hratio := div_le_div_of_nonneg_right hcast hN
  have hl : (0 : ℝ)≤((L+1 : ℕ) : ℝ)/(N : ℝ) := by positivity
  have hs := (sq_le_sq₀ hl (hl.trans hratio)).mpr hratio
  exact (by nlinarith : 16*(((L+1 : ℕ) : ℝ)/(N : ℝ))^2 ≤
    16*((cyclicFrequencyDistance N r : ℝ)/(N : ℝ))^2).trans
      (actual_cyclic_distance_multiplier_lower N r)

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicBufferDistanceMargin
