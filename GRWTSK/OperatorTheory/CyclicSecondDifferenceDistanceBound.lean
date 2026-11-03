/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.CyclicSecondDifferenceHalfCircleBound

set_option autoImplicit false
noncomputable section

/-! Full cyclic-distance multiplier bound, preserving wraparound and the
zero/Nyquist cases. No uniform growing-source tail is supplied. NOT_RUN. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicSecondDifferenceDistanceBound
open ZMod CyclicSecondDifferencePositiveMultiplier CyclicSecondDifferenceHalfCircleBound
variable (N : ℕ) [NeZero N]

def cyclicFrequencyDistance (r : ZMod N) : ℕ := min r.val (N-r.val)

theorem reflected_multiplier (r : ZMod N) :
    ‖1-stdAddChar r‖^2=‖1-stdAddChar (-r)‖^2 := by
  have hp := actual_phase_multiplier N r
  have hm := actual_phase_multiplier N (-r)
  simp only [neg_neg] at hm
  have he : (‖1-stdAddChar r‖^2 : ℝ) = (‖1-stdAddChar (-r)‖^2 : ℝ) := by
    have hc : ((‖1-stdAddChar r‖^2 : ℝ) : ℂ)=((‖1-stdAddChar (-r)‖^2 : ℝ) : ℂ) := by
      rw [← hp,← hm]
      ring
    exact_mod_cast hc
  exact he

theorem actual_cyclic_distance_multiplier_lower (r : ZMod N) :
    16*((cyclicFrequencyDistance N r : ℝ)/(N : ℝ))^2 ≤ ‖1-stdAddChar r‖^2 := by
  by_cases hh : 2*r.val ≤ N
  · have hk : 2*(r.val : ℤ) ≤ (N : ℤ) := by exact_mod_cast hh
    have hb := actual_half_circle_multiplier_lower N (r.val : ℤ) (by omega) hk
    have hmin : min r.val (N-r.val)=r.val := Nat.min_eq_left (by omega)
    simpa [cyclicFrequencyDistance,hmin] using hb
  · have hr : r ≠ 0 := by intro hz; subst r; simp at hh
    have hv : (-r).val=N-r.val := by rw [ZMod.neg_val,if_neg hr]
    have hn : 2*(-r).val ≤ N := by rw [hv]; have := r.val_lt; omega
    have hk : 2*((-r).val : ℤ) ≤ (N : ℤ) := by exact_mod_cast hn
    have hb := actual_half_circle_multiplier_lower N ((-r).val : ℤ) (by omega) hk
    have hmin : min r.val (N-r.val)=N-r.val := Nat.min_eq_right (by omega)
    have hm := reflected_multiplier N r
    simpa [cyclicFrequencyDistance,hmin,hv,← hm] using hb

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicSecondDifferenceDistanceBound
