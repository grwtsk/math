/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.FiniteExponentialEnclosure
import GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
import Mathlib.Tactic.FieldSimp

set_option autoImplicit false

/-!
# Coordinate balls and finite endpoint evaluation for the actual tent kernel

Sensitivity is inherited from the four integral-defined interval kernels.
Only evaluation at the center uses a quotient; its positive denominator bound
excludes centers zero and minus one. No exclusion of those points from an
entire coordinate ball is needed. Endpoint exponential errors, coordinate
uncertainty, and later finite accumulation are different errors.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.TentKernelEnclosure

open scoped BigOperators
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
open GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
open GRWTSK.Analysis.ComplexAnalysis.FiniteExponentialEnclosure

noncomputable section

/-- Integral sensitivity, with no singular parameter denominator. -/
def tentSensitivity (x h β : ℝ) : ℝ :=
  (sensitivity (x - h) x (β + 1) + (x - h) * sensitivity (x - h) x β +
    (x + h) * sensitivity x (x + h) β + sensitivity x (x + h) (β + 1)) / h

theorem norm_tentKernel_sub_le (x h β : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (z w : ℂ) (hz : z.re ≤ β) (hw : w.re ≤ β) :
    ‖tentKernel x h z - tentKernel x h w‖ ≤ tentSensitivity x h β * ‖z - w‖ := by
  have hx : 1 < x := by linarith
  have hab : x - h ≤ x := by linarith
  have hbc : x ≤ x + h := by linarith
  have hp : ‖(z + 1) - (w + 1)‖ = ‖z - w‖ := by congr 1; ring
  have hA := norm_kernel_sub_le ha hab
    (show (z + 1).re ≤ β + 1 by simpa using add_le_add_right hz 1)
    (show (w + 1).re ≤ β + 1 by simpa using add_le_add_right hw 1)
  have hB := norm_kernel_sub_le ha hab hz hw
  have hC := norm_kernel_sub_le hx hbc hz hw
  have hD := norm_kernel_sub_le hx hbc
    (show (z + 1).re ≤ β + 1 by simpa using add_le_add_right hz 1)
    (show (w + 1).re ≤ β + 1 by simpa using add_le_add_right hw 1)
  rw [hp] at hA hD
  let A := kernel (x - h) x (z + 1) - kernel (x - h) x (w + 1)
  let B := kernel (x - h) x z - kernel (x - h) x w
  let C := kernel x (x + h) z - kernel x (x + h) w
  let D := kernel x (x + h) (z + 1) - kernel x (x + h) (w + 1)
  have he : tentKernel x h z - tentKernel x h w =
      (A - ((x - h : ℝ) : ℂ) * B + ((x + h : ℝ) : ℂ) * C - D) / (h : ℂ) := by
    dsimp [A, B, C, D, tentKernel]
    ring
  have htri : ‖A - ((x - h : ℝ) : ℂ) * B + ((x + h : ℝ) : ℂ) * C - D‖ ≤
      ‖A‖ + (x - h) * ‖B‖ + (x + h) * ‖C‖ + ‖D‖ := by
    have h1 := norm_sub_le (A - ((x - h : ℝ) : ℂ) * B + ((x + h : ℝ) : ℂ) * C) D
    have h2 := norm_add_le (A - ((x - h : ℝ) : ℂ) * B) (((x + h : ℝ) : ℂ) * C)
    have h3 := norm_sub_le A (((x - h : ℝ) : ℂ) * B)
    rw [norm_mul, Complex.norm_of_nonneg (by linarith : 0 ≤ x + h)] at h2
    rw [norm_mul, Complex.norm_of_nonneg (by linarith : 0 ≤ x - h)] at h3
    linarith
  have hB' := mul_le_mul_of_nonneg_left hB (by linarith : 0 ≤ x - h)
  have hC' := mul_le_mul_of_nonneg_left hC (by linarith : 0 ≤ x + h)
  rw [he, norm_div, Complex.norm_of_nonneg hh.le]
  apply (div_le_iff₀ hh).mpr
  dsimp [A, B, C, D] at htri
  unfold tentSensitivity
  field_simp [hh.ne']
  nlinarith

/-- A coarse pole-free bound is useful for coordinates throughout Re <= 1. -/
theorem tentSensitivity_one_le (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    tentSensitivity x h 1 ≤ 4 * (x + h) * Real.log (x + h) := by
  have hlog : Real.log x ≤ Real.log (x + h) :=
    Real.log_le_log (by linarith) (by linarith)
  have hlog0 : 0 ≤ Real.log x := Real.log_nonneg (by linarith)
  have hlogb : 0 ≤ Real.log (x + h) := Real.log_nonneg (by linarith)
  have h1 (a b : ℝ) : sensitivity a b 1 = (b - a) * Real.log b := by
    simp [sensitivity, densityBound]
  have h2 (a b : ℝ) (ha0 : 0 < a) (hab : a ≤ b) :
      sensitivity a b 2 = (b - a) * Real.log b * b := by
    have hl := Real.log_le_log ha0 hab
    norm_num [sensitivity, densityBound, max_eq_right hl, Real.exp_log (ha0.trans_le hab)]
  have he : tentSensitivity x h 1 = (2 * x - h) * Real.log x +
      2 * (x + h) * Real.log (x + h) := by
    unfold tentSensitivity
    norm_num only [one_add_one_eq_two]
    rw [h2 (x - h) x (by linarith) (by linarith), h1, h1,
      h2 x (x + h) (by linarith) (by linarith)]
    field_simp [hh.ne']
    <;> ring
  rw [he]
  have hprod := mul_le_mul hlog (show 2 * x - h ≤ 2 * (x + h) by linarith)
    (by linarith : 0 ≤ 2 * x - h) hlogb
  nlinarith

theorem norm_tentKernel_sub_le_one (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (z w : ℂ) (hz : z.re ≤ 1) (hw : w.re ≤ 1) :
    ‖tentKernel x h z - tentKernel x h w‖ ≤
      4 * (x + h) * Real.log (x + h) * ‖z - w‖ :=
  (norm_tentKernel_sub_le x h 1 hh ha z w hz hw).trans
    (mul_le_mul_of_nonneg_right (tentSensitivity_one_le x h hh ha) (norm_nonneg _))

/-- Complete finite endpoint errors retain the middle coefficient TWO. -/
theorem endpoint_quotient_error (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (c A X B : ℂ) (eA eX eB d : ℝ) (hd : 0 < d)
    (hden : d ≤ h * ‖c‖ * ‖c + 1‖)
    (hA : ‖logPower (x - h) (c + 1) - A‖ ≤ eA)
    (hX : ‖logPower x (c + 1) - X‖ ≤ eX)
    (hB : ‖logPower (x + h) (c + 1) - B‖ ≤ eB) :
    ‖tentKernel x h c - (B - 2 * X + A) / ((h : ℂ) * c * (c + 1))‖ ≤
      (eB + 2 * eX + eA) / d := by
  have hc : c ≠ 0 := by intro he; rw [he] at hden; simp at hden; linarith
  have hc1 : c + 1 ≠ 0 := by intro he; rw [he, norm_zero, mul_zero] at hden; linarith
  have hN : ‖(logPower (x + h) (c + 1) - 2 * logPower x (c + 1) +
      logPower (x - h) (c + 1)) - (B - 2 * X + A)‖ ≤ eB + 2 * eX + eA := by
    have he : (logPower (x + h) (c + 1) - 2 * logPower x (c + 1) +
        logPower (x - h) (c + 1)) - (B - 2 * X + A) =
        (logPower (x + h) (c + 1) - B) - 2 * (logPower x (c + 1) - X) +
          (logPower (x - h) (c + 1) - A) := by ring
    rw [he]
    have htri := (norm_add_le
      ((logPower (x + h) (c + 1) - B) - 2 * (logPower x (c + 1) - X))
      (logPower (x - h) (c + 1) - A)).trans
        (add_le_add_left (norm_sub_le (logPower (x + h) (c + 1) - B)
          (2 * (logPower x (c + 1) - X))) _)
    rw [norm_mul] at htri
    norm_num only [Complex.norm_ofNat] at htri
    linarith
  have hE : 0 ≤ eB + 2 * eX + eA := (norm_nonneg _).trans hN
  rw [tentKernel_eq_quotient x h hh ha c hc hc1, ← sub_div,
    norm_div, norm_mul, norm_mul, Complex.norm_of_nonneg hh.le]
  exact (div_le_div_of_nonneg_right hN (by positivity)).trans
    (div_le_div_of_nonneg_left hE hd hden)

/-- The actual parameter is bound to its center, not identified with it.
Fields certify primitive inputs, not an already evaluated kernel. -/
structure PointEvaluation (x h : ℝ) (z : ℂ) where
  center : ℂ
  center_re : center.re ≤ 1
  coordinateError : ℝ
  coordinate_enclosure : ‖z - center‖ ≤ coordinateError
  denominatorLower : ℝ
  denominator_pos : 0 < denominatorLower
  denominator_bound : denominatorLower ≤ h * ‖center‖ * ‖center + 1‖
  lower : PowerEvaluation (x - h) (center + 1)
  middle : PowerEvaluation x (center + 1)
  upper : PowerEvaluation (x + h) (center + 1)

namespace PointEvaluation

variable {x h : ℝ} {z : ℂ}

def value (p : PointEvaluation x h z) : ℂ :=
  (p.upper.value - 2 * p.middle.value + p.lower.value) /
    ((h : ℂ) * p.center * (p.center + 1))

def error (p : PointEvaluation x h z) : ℝ :=
  4 * (x + h) * (p.upper.logCenter + p.upper.logError) * p.coordinateError +
    (p.upper.error + 2 * p.middle.error + p.lower.error) / p.denominatorLower

/-- The actual entire kernel, a coordinate error, and three finite polynomial errors. -/
theorem sound (p : PointEvaluation x h z) (hh : 0 < h) (ha : 1 < x - h)
    (hz : z.re ≤ 1) : ‖tentKernel x h z - p.value‖ ≤ p.error := by
  have hc := norm_tentKernel_sub_le_one x h hh ha z p.center hz p.center_re
  have hr0 : 0 ≤ p.coordinateError := (norm_nonneg _).trans p.coordinate_enclosure
  have hb0 : 0 ≤ 4 * (x + h) := by linarith
  have hlog0 : 0 ≤ Real.log (x + h) := Real.log_nonneg (by linarith)
  have hl : Real.log (x + h) ≤ p.upper.logCenter + p.upper.logError := by
    have hu := (abs_le.mp p.upper.log_enclosure).2
    linarith
  have hcoord : ‖tentKernel x h z - tentKernel x h p.center‖ ≤
      4 * (x + h) * (p.upper.logCenter + p.upper.logError) * p.coordinateError := by
    refine hc.trans ?_
    exact mul_le_mul (mul_le_mul_of_nonneg_left hl hb0) p.coordinate_enclosure
      (norm_nonneg _) (mul_nonneg hb0 (hlog0.trans hl))
  have he := endpoint_quotient_error x h hh ha p.center p.lower.value p.middle.value
    p.upper.value p.lower.error p.middle.error p.upper.error p.denominatorLower
    p.denominator_pos p.denominator_bound p.lower.sound p.middle.sound p.upper.sound
  change ‖tentKernel x h p.center - p.value‖ ≤ _ at he
  calc
    _ = ‖(tentKernel x h z - tentKernel x h p.center) +
          (tentKernel x h p.center - p.value)‖ := by congr 1; ring
    _ ≤ _ := (norm_add_le _ _).trans (add_le_add hcoord he)

/-- This follows from a proved bound, not from nonnegative metadata alone. -/
theorem error_nonneg (p : PointEvaluation x h z) (hh : 0 < h) (ha : 1 < x - h)
    (hz : z.re ≤ 1) : 0 ≤ p.error := (norm_nonneg _).trans (p.sound hh ha hz)

end PointEvaluation
end
end GRWTSK.Analysis.ComplexAnalysis.TentKernelEnclosure
