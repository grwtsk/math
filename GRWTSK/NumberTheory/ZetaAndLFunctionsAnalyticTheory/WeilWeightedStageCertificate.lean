/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilWeightedStageMoments
import Mathlib.Analysis.Real.Pi.Bounds

/-!
# Exact first-stage observation arithmetic, with its source boundary

The rational endpoints below are copied from the supplied
`weil_threshold_round/certificate.json`, not recomputed with floating point.
Source mathematical revision: 261473ab7e3852d61e94f2decea9a51ae3f037bc.
Certificate SHA-256: 8f42f93d6ef9c689962978a6f44d923ad1aa0d05dca3d26d49b90ac17613c498.

`recorded_bounds` proves only rational arithmetic. The separate theorem
`moment_price_lt` consumes the correctly directed bounds on ACTUAL moments.
The negative fourth-order term uses lower, not upper, endpoints. A slightly
weaker denominator 2*(157/50) is justified by Mathlib's actual pi bound.
Thus the observed archUpper is not assumed to be the integral, nor used as
an oracle. The sharper recorded archUpper remains provenance data.

The connection from the exact interval implementation to the literal theta
and frequency integrals is NOT established here. In particular these
endpoints are not axioms or automatic instances asserting that connection.
The original count of interval guards is not a Lean proof. The infinite
prime tail deltaEight is an upper allowance, not an observed operator norm.

Elaboration, compilation, fresh kernel replay, transitive axiom audit,
and independent analytical review: NOT_RUN. This is exact finite proof
source and conditional moment transport, not a completed RH/GRH proof.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.WeightedStage

namespace Observation

def m2Upper : ℚ := 899665596842890304949883293 / 79228162514264337593543950336

def m4Lower : ℚ := 113901597061717863125339484 / 79228162514264337593543950336

def m6Upper : ℚ := 23099799444016836332375585 / 79228162514264337593543950336

def j2Upper : ℚ := 4835342955193848509971800469054 / 79228162514264337593543950336

def j4Lower : ℚ := 71897145235949582527970667907362 / 79228162514264337593543950336

def j6Upper : ℚ := 1546717498752325723520793955577978 / 79228162514264337593543950336

def archUpper : ℚ := 6445107089764894483419133522 / 79228162514264337593543950336

def primeUpper : ℚ := 11902574393031980929625253204 / 79228162514264337593543950336

def poleUpper : ℚ := 455499355370709928614955039 / 79228162514264337593543950336

def deltaEight : ℚ := 3591177 / 651605000000

def momentNumerator : ℚ :=
  m2Upper * j2Upper - m4Lower * j4Lower / 3 + 2 * m6Upper * j6Upper / 45

theorem recorded_bounds :
    0 ≤ archUpper ∧ archUpper < 41 / 500 ∧
    0 ≤ primeUpper ∧ primeUpper < 151 / 1000 ∧
    0 ≤ poleUpper ∧ poleUpper < 3 / 500 := by
  norm_num [archUpper, primeUpper, poleUpper]

theorem moment_numerator_nonneg : 0 ≤ momentNumerator := by
  norm_num [momentNumerator, m2Upper, j2Upper, m4Lower, j4Lower, m6Upper, j6Upper]

theorem moment_price_rational_lt : momentNumerator / (2 * (157 / 50)) < 41 / 500 := by
  norm_num [momentNumerator, m2Upper, j2Upper, m4Lower, j4Lower, m6Upper, j6Upper]

/-- Correct interval directions for the three signed products. No assertion
about the theta moments is supplied by the names of the variables. -/
theorem moment_price_lt (m2 m4 m6 j2 j4 j6 : ℝ)
    (hm4 : 0 ≤ m4) (hj2 : 0 ≤ j2) (hj6 : 0 ≤ j6)
    (hm2u : m2 ≤ (m2Upper : ℝ)) (hm4l : (m4Lower : ℝ) ≤ m4)
    (hm6u : m6 ≤ (m6Upper : ℝ)) (hj2u : j2 ≤ (j2Upper : ℝ))
    (hj4l : (j4Lower : ℝ) ≤ j4) (hj6u : j6 ≤ (j6Upper : ℝ)) :
    (m2 * j2 - m4 * j4 / 3 + 2 * m6 * j6 / 45) / (2 * Real.pi) < 41 / 500 := by
  have h2 := mul_le_mul hm2u hj2u hj2 (by norm_num [m2Upper] : (0 : ℝ) ≤ m2Upper)
  have h4 := mul_le_mul hm4l hj4l (by norm_num [j4Lower] : (0 : ℝ) ≤ j4Lower) hm4
  have h6 := mul_le_mul hm6u hj6u hj6 (by norm_num [m6Upper] : (0 : ℝ) ≤ m6Upper)
  have hn : m2 * j2 - m4 * j4 / 3 + 2 * m6 * j6 / 45 ≤ (momentNumerator : ℝ) := by
    dsimp only [momentNumerator]
    push_cast
    nlinarith
  have hn0 : (0 : ℝ) ≤ (momentNumerator : ℝ) := by
    exact_mod_cast moment_numerator_nonneg
  have hpi : (157 / 50 : ℝ) ≤ Real.pi := by linarith [Real.pi_gt_d2]
  have hrat : (momentNumerator : ℝ) / (2 * (157 / 50 : ℝ)) < 41 / 500 := by
    exact_mod_cast moment_price_rational_lt
  calc
    _ ≤ (momentNumerator : ℝ) / (2 * Real.pi) :=
      div_le_div_of_nonneg_right hn (by positivity)
    _ ≤ (momentNumerator : ℝ) / (2 * (157 / 50 : ℝ)) :=
      div_le_div_of_nonneg_left hn0 (by norm_num) (by linarith)
    _ < _ := hrat

theorem signedMomentPrice_lt (sigma : ℝ → ℝ)
    (hm2 : spatialMoment sigma 2 ≤ (m2Upper : ℝ))
    (hm4 : (m4Lower : ℝ) ≤ spatialMoment sigma 4)
    (hm6 : spatialMoment sigma 6 ≤ (m6Upper : ℝ))
    (hj2 : frequencyMoment 2 ≤ (j2Upper : ℝ))
    (hj4 : (j4Lower : ℝ) ≤ frequencyMoment 4)
    (hj6 : frequencyMoment 6 ≤ (j6Upper : ℝ)) :
    signedMomentPrice sigma < 41 / 500 := by
  apply moment_price_lt
  · exact MeasureTheory.integral_nonneg (fun t =>
      mul_nonneg (by positivity) (sq_nonneg _))
  · simpa only [Nat.reduceMul] using even_frequencyMoment_nonneg 1
  · simpa only [Nat.reduceMul] using even_frequencyMoment_nonneg 3
  · exact hm2
  · exact hm4
  · exact hm6
  · exact hj2
  · exact hj4
  · exact hj6

/-- The full prime remainder is paid before taking the positive margin. -/
theorem first_stage_margin :
    (1 / 100 : ℝ) < 1 / 4 - 239 / 1000 - (deltaEight : ℝ) := by
  norm_num [deltaEight]

theorem deltaEight_nonneg : (0 : ℝ) ≤ (deltaEight : ℝ) := by norm_num [deltaEight]

theorem trace_budget : (3 ^ 13 / 24 + 3 / 500 : ℝ) < 70000 := by norm_num

theorem comparison_ratio_lt_one : (7000000 / 7000001 : ℝ) < 1 := by norm_num

/-- A floor and a positive-remainder upper bound produce the strict ratio.
This is the scalar step in the form congruence, not an existence theorem
for inverse square roots or an asserted trace bound on the actual V. -/
theorem comparison_ratio_of_margin {g v mass : ℝ}
    (hfloor : (1 / 100) * mass ≤ g - v) (hupper : v ≤ 70000 * mass) :
    v ≤ (7000000 / 7000001) * g := by
  linarith

/-- Without the floor, even a positive trace-class model can fail the sign. -/
theorem trace_class_scalar_control :
    (0 : ℝ) ≤ 2 ∧ (2 : ℝ) ≤ 70000 ∧ ¬ (2 : ℝ) ≤ 1 := by norm_num

end Observation
end GRWTSK.NumberTheory.WeilQuadraticForm.WeightedStage
