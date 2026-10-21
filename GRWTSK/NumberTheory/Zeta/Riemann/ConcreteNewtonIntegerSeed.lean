/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.IntegerTaylorPolynomial
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonPacket
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# A division-free polynomial route to the original base-two seed windows

This module does NOT import ConcreteNewtonSecondSeed or its large rational
window scripts. It binds independently to the ORIGINAL endpoint functions.
The exact polynomial numerator and complete error numerator are integers;
only their generic interpretation uses division. All finite inequalities
still need trusted elaboration. No speed or memory improvement is measured.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonIntegerSeed

open GRWTSK.Analysis.Complex
open RationalRoundedArithmetic IntegerDyadicTrace IntegerTaylorPolynomial
open GRWTSK.Analysis.Real.RationalLogEnclosure
open ConcreteNewtonPacket RationalZetaCenterEvaluation

/-- Common denominator for BOTH coordinates of the actual reduced argument. -/
def argDen : ℤ := 317135050493363535285614361600000000000

def argNum : Gaussian :=
  (-429338410363693023287871079250000000, -12137160846788010280474125695059299007)

def radiusNum : ℤ := 4188833085717234434587332258103099669
def radiusDen : ℤ := 105711683497787845095204787200000000000

def displacementNum : ℤ := 2439120857
def displacementDen : ℤ := 17077434060458566656000000000

/-- The existing finite midpoint/half-width are identified, not replaced by log(2). -/
theorem log_data :
    RationalPowerEvaluation.logCenter 2 (schedule 2) =
      1717353641454772093151484317 / 2477617581979402619418862200 ∧
    RationalPowerEvaluation.logError 2 (schedule 2) = 1 / 400252360791997656 := by
  norm_num [RationalPowerEvaluation.logCenter, RationalPowerEvaluation.logError,
    RationalPowerEvaluation.logLower, RationalPowerEvaluation.logWidth,
    RationalPowerEvaluation.mantissa, schedule, logExponent, scaleQ,
    lower, width, ratio, Finset.sum_range_succ]

/-- Literal identity with the old seed's base, exponent, scale and log data. -/
theorem argument_identity : RationalPowerEvaluation.argument 2
    (sourceExponent center) (schedule 2) = argumentQ argDen argNum := by
  unfold RationalPowerEvaluation.argument
  rw [log_data.1]
  norm_num [argumentQ, argDen, argNum, sourceExponent, center, schedule,
    scaleQ, QComplex.smul]

theorem radius_identity : RationalPowerEvaluation.radius 2
    (sourceExponent center) (schedule 2) = (radiusNum : ℚ) / radiusDen := by
  unfold RationalPowerEvaluation.radius
  rw [log_data.1]
  norm_num [radiusNum, radiusDen, sourceExponent, center, schedule,
    scaleQ, QComplex.rect, QComplex.smul]

theorem displacement_identity : RationalPowerEvaluation.displacement 2
    (sourceExponent center) (schedule 2) = (displacementNum : ℚ) / displacementDen := by
  unfold RationalPowerEvaluation.displacement
  rw [log_data.2]
  norm_num [displacementNum, displacementDen, sourceExponent, center, schedule,
    scaleQ, QComplex.rect, QComplex.smul]

/-- Stage 21 means exactly 22 terms. These are unreduced integers. -/
def seedNum : Gaussian := numeratorZ argDen argNum 21
def seedDen : ℤ := denominatorZ argDen 21

def taylorNum : ℤ := 2 * radiusNum ^ 22
def taylorDen : ℤ := radiusDen ^ 22 * (Nat.factorial 22 : ℤ)

/-- FULL error t + 2*(rect(seed)+t)*displacement; no uncertainty is dropped. -/
def errorNum : ℤ :=
  taylorNum * seedDen * displacementDen +
    2 * ((|seedNum.1| + |seedNum.2|) * taylorDen + taylorNum * seedDen) * displacementNum

def errorDen : ℤ := taylorDen * seedDen * displacementDen

def start : GridState := ⟨18408298253608376264, -704853099503417683, 8⟩

theorem denominators_pos : 0 < argDen ∧ 0 < seedDen ∧ 0 < taylorDen ∧
    0 < displacementDen ∧ 0 < errorDen := by
  have ha : 0 < argDen := by norm_num [argDen]
  have hs : 0 < seedDen := denominator_pos argDen ha 21
  have ht : 0 < taylorDen := by norm_num [taylorDen, radiusDen]
  have hd : 0 < displacementDen := by norm_num [displacementDen]
  exact ⟨ha, hs, ht, hd, mul_pos (mul_pos ht hs) hd⟩

theorem seed_identity : RationalPowerEvaluation.seed 2
    (sourceExponent center) (schedule 2) = decodeQ seedDen seedNum := by
  change QComplex.polynomial _ 22 = _
  rw [argument_identity]
  exact polynomial_eq_decode argDen denominators_pos.1 argNum 21

/-- Symbolic rational identity first; the later concrete checks are integers only. -/
theorem seed_error_identity : RationalPowerEvaluation.seedError 2
    (sourceExponent center) (schedule 2) = (errorNum : ℚ) / errorDen := by
  have hS : (seedDen : ℚ) ≠ 0 := by exact_mod_cast (ne_of_gt denominators_pos.2.1)
  have hD : (displacementDen : ℚ) ≠ 0 := by exact_mod_cast (ne_of_gt denominators_pos.2.2.2.1)
  have hR : (radiusDen : ℚ) ≠ 0 := by norm_num [radiusDen]
  have hF : (Nat.factorial 22 : ℚ) ≠ 0 := by norm_num
  simp only [RationalPowerEvaluation.seedError, radius_identity,
    displacement_identity, seed_identity]
  rw [rect_decode seedDen denominators_pos.2.1]
  change 2 * ((radiusNum : ℚ) / radiusDen) ^ 22 / (Nat.factorial 22 : ℚ) +
    2 * (((|seedNum.1| + |seedNum.2| : ℤ) : ℚ) / seedDen +
      2 * ((radiusNum : ℚ) / radiusDen) ^ 22 / (Nat.factorial 22 : ℚ)) *
        ((displacementNum : ℚ) / displacementDen) = (errorNum : ℚ) / errorDen
  simp only [errorNum, errorDen, taylorNum, taylorDen, Int.cast_add,
    Int.cast_mul, Int.cast_pow, Int.cast_ofNat, Int.cast_natCast]
  field_simp [hS, hD, hR, hF] <;> ring

theorem errorNum_nonneg : 0 ≤ errorNum := by
  have hs := denominators_pos.2.1.le
  have ht := denominators_pos.2.2.1.le
  have hd := denominators_pos.2.2.2.1.le
  have hr : 0 ≤ radiusNum := by norm_num [radiusNum]
  have hv : 0 ≤ displacementNum := by norm_num [displacementNum]
  unfold errorNum taylorNum
  positivity

/-- The concrete expensive leaves now expand INTEGER arithmetic, not rational powers. -/
theorem real_integer_window : FloorWindow seedDen (scaleZ 64 * seedNum.1) start.realPart := by
  norm_num [FloorWindow, start, seedNum, seedDen, numeratorZ, powerZ,
    addZ, mulZ, scalePair, denominatorZ, argNum, argDen, scaleZ, Nat.factorial]

theorem imag_integer_window : FloorWindow seedDen (scaleZ 64 * seedNum.2) start.imagPart := by
  norm_num [FloorWindow, start, seedNum, seedDen, numeratorZ, powerZ,
    addZ, mulZ, scalePair, denominatorZ, argNum, argDen, scaleZ, Nat.factorial]

theorem error_integer_window :
    CeilingWindow errorDen (scaleZ 64 * errorNum + 2 * errorDen) start.errorPart := by
  norm_num [CeilingWindow, start, errorNum, errorDen, taylorNum, taylorDen,
    radiusNum, radiusDen, displacementNum, displacementDen,
    seedNum, seedDen, numeratorZ, powerZ, addZ, mulZ, scalePair,
    denominatorZ, argNum, argDen, scaleZ, Nat.factorial]

/-- Independent route to the EXACT old seed predicate; no old seed-window theorem is used. -/
theorem original_seed_valid : SeedValid 64
    (RationalPowerEvaluation.seed 2 (sourceExponent center) (schedule 2))
    (RationalPowerEvaluation.seedError 2 (sourceExponent center) (schedule 2)) start := by
  rw [seed_identity, seed_error_identity]
  have hE : (0 : ℚ) ≤ (errorNum : ℚ) / errorDen :=
    div_nonneg (by exact_mod_cast errorNum_nonneg)
      (by exact_mod_cast denominators_pos.2.2.2.2.le)
  have hr := floor_window_scaled seedDen (scaleZ 64) seedNum.1 start.realPart
    denominators_pos.2.1 real_integer_window
  have hi := floor_window_scaled seedDen (scaleZ 64) seedNum.2 start.imagPart
    denominators_pos.2.1 imag_integer_window
  have he := error_window_scaled errorDen (scaleZ 64) errorNum start.errorPart
    denominators_pos.2.2.2.2 error_integer_window
  have hgrid : scaleQ 64 ≠ 0 := ne_of_gt (scaleQ_pos 64)
  have herr : scaleQ 64 * ((errorNum : ℚ) / errorDen + roundoffQ 64) =
      scaleQ 64 * ((errorNum : ℚ) / errorDen) + 2 := by
    unfold roundoffQ
    field_simp [hgrid] <;> ring
  simp only [cast_scaleZ] at hr hi he
  refine ⟨hE, by norm_num [start], ?_, ?_, ?_⟩
  · exact hr
  · exact hi
  · simpa only [herr] using he

/-- This equality is only the initialized state, not the restored endpoint or a full block. -/
theorem initial_state_eq : initialState 64
    (RationalPowerEvaluation.seed 2 (sourceExponent center) (schedule 2))
    (RationalPowerEvaluation.seedError 2 (sourceExponent center) (schedule 2)) = decode 64 start :=
  seed_refines _ _ _ _ original_seed_valid

end GRWTSK.RiemannHypothesis.ConcreteNewtonIntegerSeed
