/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.CyclicSecondDifferencePositiveMultiplier
import GRWTSK.OperatorTheory.CyclicStandardFourierPhase

set_option autoImplicit false
noncomputable section

/-! Exact frequency-dependent sine multiplier. No uniform lower bound in
N is inferred from finite nonzero-frequency positivity. NOT_RUN. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicSecondDifferenceSineMultiplier
open ZMod AddChar CyclicSecondDifferencePositiveMultiplier CyclicStandardFourierPhase
variable (N : ℕ) [NeZero N]

theorem actual_multiplier_cosine (k : ℤ) :
    ‖1-stdAddChar (k : ZMod N)‖^2=2-2*Real.cos (fourierAngle N k) := by
  have hp : stdAddChar (k : ZMod N)+stdAddChar (-(k : ZMod N)) =
      (2*Real.cos (fourierAngle N k) : ℝ) := by
    simpa [fourierCharacter,AddChar.mulShift_apply] using standard_fourier_phase N k
  have hr := congrArg Complex.re hp
  have hm := congrArg Complex.re (actual_phase_multiplier N (k : ZMod N))
  simp only [Complex.add_re,Complex.ofReal_re] at hr
  simp only [Complex.sub_re,Complex.ofNat_re,Complex.ofReal_re] at hm
  linarith

theorem actual_multiplier_sine (k : ℤ) :
    ‖1-stdAddChar (k : ZMod N)‖^2=4*Real.sin (fourierAngle N k/2)^2 := by
  rw [actual_multiplier_cosine]
  have hc := Real.cos_two_mul' (fourierAngle N k/2)
  have hs := Real.sin_sq_add_cos_sq (fourierAngle N k/2)
  have he : 2*(fourierAngle N k/2)=fourierAngle N k := by ring
  rw [he] at hc
  nlinarith

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicSecondDifferenceSineMultiplier
