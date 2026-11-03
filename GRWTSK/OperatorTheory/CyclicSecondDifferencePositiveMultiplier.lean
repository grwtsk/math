/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.CyclicSecondDifferenceFourierMultiplier

set_option autoImplicit false
noncomputable section

/-! Positive exact Fourier multiplier, with zero mode separated. No
uniform lower bound away from zero frequency is assumed. NOT_RUN. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicSecondDifferencePositiveMultiplier
open ZMod AddChar CyclicPotentialFourierEntry ArithmeticCyclicSecondVariation
open CyclicSecondDifferenceFourierMultiplier
variable (N : ℕ) [NeZero N]

theorem unit_phase_multiplier (z : ℂ) (hz : ‖z‖=1) :
    2-z-Complex.conj z = (‖1-z‖^2 : ℝ) := by
  have hs : z.re^2+z.im^2=1 := by
    have hh : ‖z‖^2=z.re^2+z.im^2 := by
      simp [Complex.sq_norm,Complex.normSq_apply,pow_two]
    rw [hz] at hh
    nlinarith
  have hd : ‖1-z‖^2=(1-z.re)^2+z.im^2 := by
    simp [Complex.sq_norm,Complex.normSq_apply,pow_two]
  apply Complex.ext
  · simp only [Complex.sub_re,Complex.ofNat_re,Complex.conj_re,Complex.ofReal_re]
    rw [hd]
    nlinarith
  · simp

theorem actual_phase_multiplier (r : ZMod N) :
    2-stdAddChar r-stdAddChar (-r) = (‖1-stdAddChar r‖^2 : ℝ) := by
  rw [map_neg_eq_conj]
  exact unit_phase_multiplier _ (by simp [ZMod.stdAddChar_apply])

theorem actual_secondDifference_coefficient_norm (q : ZMod N → ℝ) (r : ZMod N) :
    ‖potentialFourierCoefficient N (secondDifference N q) r‖ =
      ‖1-stdAddChar r‖^2*‖potentialFourierCoefficient N q r‖ := by
  rw [actual_secondDifference_coefficient,actual_phase_multiplier,norm_mul]
  simp [abs_of_nonneg (sq_nonneg ‖1-stdAddChar r‖)]

theorem nonzero_frequency_multiplier_pos (r : ZMod N) (hr : r ≠ 0) :
    0 < ‖1-stdAddChar r‖^2 := by
  apply sq_pos_of_ne_zero
  apply norm_ne_zero_iff.mpr
  intro h
  have he : stdAddChar r=stdAddChar (0 : ZMod N) := by
    simpa using (sub_eq_zero.mp h).symm
  exact hr (ZMod.injective_stdAddChar he)

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicSecondDifferencePositiveMultiplier
