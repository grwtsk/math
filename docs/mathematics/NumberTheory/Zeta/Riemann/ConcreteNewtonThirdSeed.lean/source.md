# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonThirdSeed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b90ac2c3a8eab147d460e3e35c555d3432e35b38` · SHA-256 `2103b6683d2ccc55662051b44eee77951eac1d13ac5ea3d9eb18f8985eaa0620`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.IntegerTaylorPolynomial
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonPacket
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Base three: a non-unit-mantissa seed through exact integer normalization

The fixed base is 3 = 2 * (3/2). BOTH finite logarithm contributions and BOTH
widths remain, with the same center, exponent, 22-term polynomial and complete
error as the original evaluator. This reuses IntegerTaylorPolynomial rather
than expanding a rational Taylor polynomial in each seed-window proof.

The three closed integer-window scripts are unexecuted and their resource
requirements are not measured. Matching a rounded state cannot validate an
omitted logarithm contribution. No endpoint/source acceptance is assumed.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonThirdSeed

open GRWTSK.Analysis.Complex
open RationalRoundedArithmetic IntegerDyadicTrace IntegerTaylorPolynomial
open GRWTSK.Analysis.Real.RationalLogEnclosure
open ConcreteNewtonPacket RationalZetaCenterEvaluation

/-- Common denominator for BOTH coordinates of the actual reduced argument. -/
def argDen : ℤ := 92298447414465346165704064071178436279296875000000000000000000

def argNum : Gaussian :=
  (-198047282333044815789784300364986614764735319676234750000000, -5598687801795321950313245474251712160417145476006165241438169)

def radiusNum : ℤ := 1932245028042788922034343258205566258393960265227466663812723
def radiusDen : ℤ := 30766149138155115388568021357059478759765625000000000000000000

def displacementNum : ℤ := 3549388014619381488718247150866379
def displacementDen : ℤ := 24850937276581777632236480712890625000000000000000000

/-- Neither contribution is simplified to the mantissa-one case. -/
theorem reduction_data :
    RationalPowerEvaluation.mantissa 3 (schedule 3) = 3 / 2 ∧
      ratio (3 / 2) = 1 / 5 := by
  norm_num [RationalPowerEvaluation.mantissa, schedule, logExponent, scaleQ, ratio]

/-- The width of the non-unit mantissa is small but strictly positive. -/
theorem mantissa_width :
    width (3 / 2) 18 = 1 / 34924596548080444335937500 := by
  norm_num [width, ratio]

/-- Literal decomposition of the existing supplier, not a new logarithm oracle. -/
theorem log_decomposition :
    RationalPowerEvaluation.logCenter 3 (schedule 3) =
        lower 2 18 + lower (3 / 2) 18 + (width 2 18 + width (3 / 2) 18) / 2 ∧
      RationalPowerEvaluation.logError 3 (schedule 3) =
        (width 2 18 + width (3 / 2) 18) / 2 := by
  norm_num [RationalPowerEvaluation.logCenter, RationalPowerEvaluation.logError,
    RationalPowerEvaluation.logLower, RationalPowerEvaluation.logWidth,
    RationalPowerEvaluation.mantissa, schedule, logExponent, scaleQ]

/-- The existing finite midpoint/half-width are identified, not replaced by log(3). -/
theorem log_data :
    RationalPowerEvaluation.logCenter 3 (schedule 3) =
      792189129332179263159137201459946459058941278704939 / 721081620425510516919563000556081533432006835937500 ∧
    RationalPowerEvaluation.logError 3 (schedule 3) = 1455191531175276030497347 / 582443842419885413255542516708374023437500 := by
  norm_num [RationalPowerEvaluation.logCenter, RationalPowerEvaluation.logError,
    RationalPowerEvaluation.logLower, RationalPowerEvaluation.logWidth,
    RationalPowerEvaluation.mantissa, schedule, logExponent, scaleQ,
    lower, width, ratio, Finset.sum_range_succ]

/-- Literal identity with the old seed's base, exponent, scale and log data. -/
theorem argument_identity : RationalPowerEvaluation.argument 3
    (sourceExponent center) (schedule 3) = argumentQ argDen argNum := by
  unfold RationalPowerEvaluation.argument
  rw [log_data.1]
  norm_num [argumentQ, argDen, argNum, sourceExponent, center, schedule,
    scaleQ, QComplex.smul]

theorem radius_identity : RationalPowerEvaluation.radius 3
    (sourceExponent center) (schedule 3) = (radiusNum : ℚ) / radiusDen := by
  unfold RationalPowerEvaluation.radius
  rw [log_data.1]
  norm_num [radiusNum, radiusDen, sourceExponent, center, schedule,
    scaleQ, QComplex.rect, QComplex.smul]

theorem displacement_identity : RationalPowerEvaluation.displacement 3
    (sourceExponent center) (schedule 3) = (displacementNum : ℚ) / displacementDen := by
  unfold RationalPowerEvaluation.displacement
  rw [log_data.2]
  norm_num [displacementNum, displacementDen, sourceExponent, center, schedule,
    scaleQ, QComplex.rect, QComplex.smul]

/-- Every original endpoint guard is retained before the trace is used. -/
theorem third_admissible : RationalPowerEvaluation.Admissible 3
    (sourceExponent center) (schedule 3) := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · norm_num [RationalPowerEvaluation.mantissa, schedule, logExponent, scaleQ]
  · norm_num [schedule]
  · rw [radius_identity]
    norm_num [radiusNum, radiusDen]
  · rw [displacement_identity]
    norm_num [displacementNum, displacementDen]

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

def start : GridState := ⟨18373350954544269177, -1115869325961005862, 8⟩

theorem denominators_pos : 0 < argDen ∧ 0 < seedDen ∧ 0 < taylorDen ∧
    0 < displacementDen ∧ 0 < errorDen := by
  have ha : 0 < argDen := by norm_num [argDen]
  have hs : 0 < seedDen := denominator_pos argDen ha 21
  have ht : 0 < taylorDen := by norm_num [taylorDen, radiusDen]
  have hd : 0 < displacementDen := by norm_num [displacementDen]
  exact ⟨ha, hs, ht, hd, mul_pos (mul_pos ht hs) hd⟩

theorem seed_identity : RationalPowerEvaluation.seed 3
    (sourceExponent center) (schedule 3) = decodeQ seedDen seedNum := by
  change QComplex.polynomial _ 22 = _
  rw [argument_identity]
  exact polynomial_eq_decode argDen denominators_pos.1 argNum 21

/-- Symbolic rational identity first; the later concrete checks are integers only. -/
theorem seed_error_identity : RationalPowerEvaluation.seedError 3
    (sourceExponent center) (schedule 3) = (errorNum : ℚ) / errorDen := by
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

/-- Independent route to the EXACT old seed predicate; no base-two seed-window theorem is used. -/
theorem original_seed_valid : SeedValid 64
    (RationalPowerEvaluation.seed 3 (sourceExponent center) (schedule 3))
    (RationalPowerEvaluation.seedError 3 (sourceExponent center) (schedule 3)) start := by
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
    (RationalPowerEvaluation.seed 3 (sourceExponent center) (schedule 3))
    (RationalPowerEvaluation.seedError 3 (sourceExponent center) (schedule 3)) = decode 64 start :=
  seed_refines _ _ _ _ original_seed_valid

end GRWTSK.RiemannHypothesis.ConcreteNewtonThirdSeed
```
