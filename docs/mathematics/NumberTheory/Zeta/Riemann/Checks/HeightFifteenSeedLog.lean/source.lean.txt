/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.IntegerSeedWindows
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenSquareWitness

set_option autoImplicit false

/-!
# The literal base-sixteen logarithm and source guard of cell 275

The source input, scale, two series lengths and grid are unchanged. The full
fourfold log-two remainder and final coordinate displacement are retained.
Every finite proof script remains NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenSeedLog

open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure RationalDyadicArithmetic IntegerSeedWindows
open RationalNewtonDisk (magnitude)
open HeightFifteenSquareWitness (center resolution center_value resolution_value)

def rawLog : Ball := ⟨((40889372415589810883810816/14747723702258348925112275),0),(1/20383222077370251)⟩

def logState : IntegerDyadicSquare.State := ⟨3351854093488004906387806,0,59309850⟩

def logValue : Ball := IntegerDyadicSquare.decode 80 logState

/-- Exact finite atanh sum, not a stored approximation accepted on trust. -/
theorem raw_log_value :
    (⟨(RationalAtanhLog.center 16 4 16 16,0),
      RationalAtanhLog.radius 16 4 16 16⟩ : Ball) = rawLog := by
  norm_num [RationalAtanhLog.center, RationalAtanhLog.radius, RationalAtanhLog.lower,
    RationalAtanhLog.remainder, RationalAtanhLog.coordinate, RationalLogEnclosure.mantissa,
    Finset.sum_range_succ, rawLog]

theorem log_real_window : FloorWindow 80 rawLog.mid.1 logState.re := by
  norm_num [FloorWindow, rawLog, logState, denominator]

theorem log_imag_window : FloorWindow 80 rawLog.mid.2 logState.im := by
  norm_num [FloorWindow, rawLog, logState, denominator]

theorem log_radius_window : CeilWindow 80
    (rawLog.rad + magnitude (sub logValue.mid rawLog.mid)) logState.error := by
  norm_num [CeilWindow, rawLog, logState, logValue, IntegerDyadicSquare.decode,
    IntegerDyadicSquare.scale, denominator, magnitude, sub]

theorem logBall_value : RationalPowerValue.logBall 16 resolution = logValue := by
  rw [resolution_value]
  change roundBall 80 ⟨(RationalAtanhLog.center 16 4 16 16,0),
    RationalAtanhLog.radius 16 4 16 16⟩ = logValue
  rw [raw_log_value]
  exact roundBall_eq_of_windows log_real_window log_imag_window log_radius_window

def exponentValue : Coordinates := ((-1675927046744002453193903/2417851639229258349412352),(-417002491843795946401253750557/9903520314283042199192993792))

theorem exponent_value : RationalPowerValue.exponent center 16 resolution = exponentValue := by
  change mul (sub zero center) (RationalPowerValue.logBall 16 resolution).mid = exponentValue
  rw [logBall_value, center_value]
  norm_num [exponentValue, logValue, logState, IntegerDyadicSquare.decode,
    IntegerDyadicSquare.scale, mul, sub, zero]

theorem scale_checked : RationalAtanhLog.validScale (16 : ℚ) 4 = true := by decide

/-- The true source guard is proved independently of the proposed successor rows. -/
theorem source_guard : RationalPowerValue.check center 16 resolution = true := by
  apply (RationalPowerValue.check_iff_valid _ _ _).mpr
  refine ⟨?_,?_,?_⟩
  · rw [center_value]; norm_num
  · simpa only [resolution_value] using scale_checked
  · rw [exponent_value, resolution_value]
    norm_num [exponentValue, magnitude]

/-- Semantic use reuses the original analytic logarithm theorem. -/
theorem actual_log_enclosure : Holds logValue (Real.log (16 : ℝ) : ℂ) := by
  rw [← logBall_value]
  exact RationalPowerValue.logBall_sound source_guard

/-- A floor center alone is not an exact logarithm; the retained radius is positive. -/
theorem log_radius_positive : 0 < logValue.rad := by
  norm_num [logValue, logState, IntegerDyadicSquare.decode, IntegerDyadicSquare.scale]

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenSeedLog
