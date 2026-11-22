/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRationalSineSamples
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRationalLogarithms
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Data.Matrix.Notation

/-!
# Nonzero radius-two samples at original prime-logarithmic displacements

The three values are for the ORIGINAL zeroExtendedSine at log(2),
1/2+log(2), and 1/2-log(2). Finite rational triple-angle traces, the original
logarithm bounds, pi bounds, and square-tested normalization pay every error.
No floating-point sine, logarithm, square root or branch decision is trusted.
Python checked the finite rational conditions; Lean execution is NOT_RUN.
These are scalar fixtures, not a full row, matrix sign, or RH/GRH certificate.
-/
set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SineSampleExamples

open OddRootProjection OddGammaOutput RationalSineSamples

-- Decimal displays denote exact rational numbers.
def piCenter : ℚ := 3141592653589793 / 1000000000000000
def piRadius : ℚ := 1 / 1000000000000000
def logCenter : ℚ := 69314718056 / 100000000000
def logRadius : ℚ := 1 / 1000000000000
def normalizer : ℚ := 1414213562373 / 2000000000000
def normalizerRadius : ℚ := 1 / 2000000000000

def position : Fin 3 → ℚ := ![logCenter, 1 / 2 + logCenter, 1 / 2 - logCenter]
noncomputable def actualPosition : Fin 3 → ℝ :=
  ![Real.log 2, 1 / 2 + Real.log 2, 1 / 2 - Real.log 2]
def phase (i : Fin 3) : ℚ := phaseCenter 2 piCenter (position i) 1

def valueNumerator : Fin 3 → Fin 9 → ℤ :=
  ![![165949251662014976984, 497847736705636855709, 1493542716545946905664, 4480614823235033788244, 13441484660039799668903, 40314739899274036869617, 120682129017663981764899, 355015843857165785977191, 886068069836911160672543],
    ![285656330294235329912, 856968897645006489500, 2570904175517954642598, 7712644556492781699509, 23136098526347848581928, 69358758503219332397193, 206741636164206707821408, 584878618333954914977196, 954327729667733466797827],
    ![-46242170651777445815, -138726511559806710508, -416179524000228295577, -1248538283662527512483, -3745607065862727137788, -11236611000527752010204, -33704157999434988812482, -100959326312932483876708, -298761751881377144843106]]

def errorNumerator : Fin 3 → Fin 9 → ℕ :=
  ![![1259, 11332, 101989, 917902, 8261119, 74350072, 669150649, 6022355842, 54201202579],
    ![19021, 171190, 1540711, 13866400, 124797601, 1123178410, 10108605691, 90977451220, 818797060981],
    ![3, 28, 253, 2278, 20503, 184528, 1660753, 14946778, 134521003]]

def traceValue (i : Fin 3) (j : Fin 9) : ℚ := (valueNumerator i j : ℚ) / 10 ^ 24
def traceError (i : Fin 3) (j : Fin 9) : ℚ := (errorNumerator i j : ℚ) / 10 ^ 24

def centerRadius (i : Fin 3) : ℚ := normalizerRadius + |normalizer| *
  (phaseRadius 2 piRadius (position i) 1 + traceError i (Fin.last 8))

def observed : Fin 3 → ℚ :=
  ![626544741 / 1000000000, 674811609 / 1000000000, -211256461 / 1000000000]

theorem pi_error : |Real.pi - (piCenter : ℝ)| ≤ (piRadius : ℝ) := by
  norm_num [piCenter, piRadius]
  exact abs_le.mpr ⟨by linarith [Real.pi_gt_d20], by linarith [Real.pi_lt_d20]⟩

/-- The logarithmic displacement enclosure uses the existing actual-log supplier. -/
theorem log_two_error : |Real.log 2 - (logCenter : ℝ)| ≤ (logRadius : ℝ) := by
  obtain ⟨hl, hu⟩ := RationalLogarithms.log_enclosure (by norm_num : (1 : ℚ) ≤ 2) 15
  have hlq : logCenter - logRadius ≤ RationalLogarithms.lower 2 15 := by
    norm_num [logCenter, logRadius, RationalLogarithms.lower,
      RationalLogarithms.ratio, Finset.sum_range_succ]
  have huq : RationalLogarithms.upper 2 15 ≤ logCenter + logRadius := by
    norm_num [logCenter, logRadius, RationalLogarithms.upper,
      RationalLogarithms.lower, RationalLogarithms.width,
      RationalLogarithms.ratio, Finset.sum_range_succ]
  have hlr : (logCenter : ℝ) - (logRadius : ℝ) ≤
      (RationalLogarithms.lower 2 15 : ℝ) := by exact_mod_cast hlq
  have hur : (RationalLogarithms.upper 2 15 : ℝ) ≤
      (logCenter : ℝ) + (logRadius : ℝ) := by exact_mod_cast huq
  norm_num only [Rat.cast_ofNat] at hl hu
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- No numerical square-root oracle: both endpoints are checked by squaring. -/
theorem normalization_error :
    |1 / Real.sqrt 2 - (normalizer : ℝ)| ≤ (normalizerRadius : ℝ) := by
  have h := inv_sqrt_midpoint (T := (2 : ℝ))
    (l := 707106781186 / 1000000000000) (u := 707106781187 / 1000000000000)
    (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  norm_num [normalizer, normalizerRadius] at h ⊢
  exact h

/-- All three rational traces include the initial analytic remainder and eight roundings. -/
set_option maxRecDepth 8192 in
set_option maxHeartbeats 6000000 in
theorem trace_valid (i : Fin 3) : TraceValid (phase i) 8 (traceValue i) (traceError i) := by
  fin_cases i <;>
    norm_num [TraceValid, phase, phaseCenter, piCenter, position, logCenter,
      traceValue, traceError, valueNumerator, errorNumerator, triple, Fin.forall_fin_succ]

/-- Exact rational post-processing budget, including position and output rounding. -/
set_option maxRecDepth 8192 in
set_option maxHeartbeats 6000000 in
theorem rational_budget (i : Fin 3) :
    2 * logRadius + centerRadius i +
      |normalizer * traceValue i (Fin.last 8) - observed i| ≤ (1 / 1000000000 : ℚ) := by
  fin_cases i <;>
    norm_num [logRadius, centerRadius, normalizerRadius, normalizer,
      phaseRadius, piRadius, position, logCenter, traceValue, traceError,
      valueNumerator, errorNumerator, observed]

theorem sample_at_center (i : Fin 3) :
    |zeroExtendedSine 2 1 (position i : ℝ) -
      ((normalizer * traceValue i (Fin.last 8) : ℚ) : ℝ)| ≤ (centerRadius i : ℝ) := by
  have ht : (position i : ℝ) ∈ Set.Icc (-2) 2 := by
    fin_cases i <;> norm_num [position, logCenter]
  have hp := phase_error 2 piCenter (position i) piRadius 1 pi_error
  simp only [Rat.cast_ofNat] at hp
  have hs := trace_sound (phase i) 8 (traceValue i) (traceError i) (trace_valid i)
  have h := normalized_error (T := (2 : ℝ)) (n := 1) ht hp normalization_error hs
  simpa only [centerRadius, phase, Rat.cast_add, Rat.cast_mul, Rat.cast_abs,
    Rat.cast_ofNat, Nat.cast_one] using h

theorem position_error (i : Fin 3) :
    |actualPosition i - (position i : ℝ)| ≤ (logRadius : ℝ) := by
  have h := log_two_error
  fin_cases i
  · simpa [actualPosition, position] using h
  · simpa [actualPosition, position, add_sub_add_left_eq_sub] using h
  · simpa [actualPosition, position, sub_sub_sub_cancel_left, abs_sub_comm] using h

private theorem radius_two_slope : |Real.pi * (1 : ℝ) / 2| / Real.sqrt 2 ≤ 2 := by
  have hs : 0 < Real.sqrt 2 := Real.sqrt_pos.mpr (by norm_num)
  have hs1 : 1 ≤ Real.sqrt 2 := by
    nlinarith [Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2)]
  rw [abs_of_pos (by positivity), div_le_iff₀ hs]
  nlinarith [Real.pi_lt_four]

/-- Original logarithmic sample, with complete normalization/phase/position/rounding costs. -/
theorem source_samples (i : Fin 3) :
    |zeroExtendedSine 2 1 (actualPosition i) - (observed i : ℝ)| ≤
      (1 / 1000000000 : ℝ) := by
  have h := source_position_error 2 (by norm_num) 1
    radius_two_slope (position_error i) (sample_at_center i)
  have hb : 2 * (logRadius : ℝ) + (centerRadius i : ℝ) +
      |((normalizer * traceValue i (Fin.last 8) : ℚ) : ℝ) - (observed i : ℝ)| ≤
        (1 / 1000000000 : ℝ) := by exact_mod_cast rational_budget i
  exact ((abs_sub_le _ ((normalizer * traceValue i (Fin.last 8) : ℚ) : ℝ) _).trans
    (add_le_add_right h _)).trans hb

/-- Both oriented prime-shift samples at the nonzero physical point 1/2. -/
theorem prime_two_pair_at_half :
    |zeroExtendedSine 2 1 (1 / 2 + Real.log 2) +
      zeroExtendedSine 2 1 (1 / 2 - Real.log 2) - (115888787 / 250000000 : ℝ)| ≤
        (1 / 500000000 : ℝ) := by
  have hp := source_samples (1 : Fin 3)
  have hm := source_samples (2 : Fin 3)
  norm_num [actualPosition, observed] at hp hm
  have h := paired_shift_sample (f := zeroExtendedSine 2 1) hp hm
  norm_num at h ⊢
  exact h

private theorem sine_at_half : zeroExtendedSine 2 1 (1 / 2) = (1 / 2 : ℝ) := by
  rw [zeroExtendedSine, if_pos (by norm_num : (1 / 2 : ℝ) ∈ Set.Icc (-2) 2)]
  have hphase : Real.pi * ((1 : ℕ) : ℝ) * (1 / 2) / 2 = Real.pi / 4 := by
    norm_num <;> ring
  rw [hphase, Real.sin_pi_div_four]
  field_simp [(Real.sqrt_pos.mpr (by norm_num : (0 : ℝ) < 2)).ne'] <;> ring

/-- A genuine gamma-difference sample, not just a standalone trigonometric value. -/
theorem gamma_log_two_difference_at_half :
    |symmetricDifference (Real.log 2) (zeroExtendedSine 2 1) (1 / 2) -
      (134111213 / 250000000 : ℝ)| ≤ (1 / 500000000 : ℝ) := by
  have h := prime_two_pair_at_half
  have hid : symmetricDifference (Real.log 2) (zeroExtendedSine 2 1) (1 / 2) -
      (134111213 / 250000000 : ℝ) =
      -(zeroExtendedSine 2 1 (1 / 2 + Real.log 2) +
        zeroExtendedSine 2 1 (1 / 2 - Real.log 2) - (115888787 / 250000000 : ℝ)) := by
    unfold symmetricDifference
    rw [sine_at_half]
    ring
  rw [hid, abs_neg]
  exact h

/-- A nonlinear reconstruction step is not nonexpansive: its error must grow. -/
theorem triple_requires_error_amplification :
    |triple 1 - triple (9 / 10)| > |(1 : ℚ) - 9 / 10| := by
  norm_num [triple]

/-- Dropping the support indicator changes the original source even at an exact point. -/
theorem support_boundary_control :
    zeroExtendedSine 2 1 3 = 0 ∧ Real.sin (3 * Real.pi / 2) / Real.sqrt 2 ≠ 0 := by
  constructor
  · norm_num [zeroExtendedSine]
  · have hs : Real.sin (3 * Real.pi / 2) = -1 := by
      rw [show 3 * Real.pi / 2 = 3 * (Real.pi / 2) by ring,
        Real.sin_three_mul, Real.sin_pi_div_two]
      norm_num
    rw [hs]
    exact div_ne_zero (by norm_num) (Real.sqrt_pos.mpr (by norm_num : (0 : ℝ) < 2)).ne'

end GRWTSK.NumberTheory.WeilQuadraticForm.SineSampleExamples
