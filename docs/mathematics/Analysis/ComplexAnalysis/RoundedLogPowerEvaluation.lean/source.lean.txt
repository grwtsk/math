/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.ScaledLogPowerEvaluation
import GRWTSK.Analysis.Complex.DyadicRoundedSquaring
import GRWTSK.Analysis.ErrorBounds.FinitePrecisionSelection

set_option autoImplicit false

/-!
# Rounded endpoint powers with finite requested-error selection

The inherited scaled input supplies actual log bounds and finite seed guards.
No seed, square, local rounding, or final analytic-error proof is an input.
The specified directed grid operation provides each local rounding bound.
Selecting an admissible candidate is separate from meeting a final tolerance.
The finite selector may return none. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.RoundedLogPowerEvaluation

open GRWTSK.Analysis.Complex.IntervalMellinKernel
open GRWTSK.Analysis.Complex.FiniteExponentialEnclosure
open GRWTSK.Analysis.Complex.DyadicExponentialEnclosure
open GRWTSK.Analysis.Complex.DyadicRoundedSquaring
open GRWTSK.Analysis.Complex.TentMellinKernel
open GRWTSK.Analysis.Complex.TentKernelEnclosure
open GRWTSK.Analysis.ErrorBounds.FinitePrecisionSelection

noncomputable section

/-- Grid bits are independent of the log terms, seed degree and scaling count. -/
structure PowerInput (t : ℝ) (z : ℂ) where
  base : GRWTSK.Analysis.Complex.ScaledLogPowerEvaluation.PowerInput t z
  bits : ℕ

namespace PowerInput

variable {t : ℝ} {z : ℂ}

def seed (p : PowerInput t z) : ℂ :=
  expPolynomial ((z * ((p.base.logarithm.center : ℝ) : ℂ)) /
    (2 : ℂ) ^ p.base.squarings) p.base.degree

def seedError (p : PowerInput t z) : ℝ :=
  expRemainder p.base.radius p.base.degree +
    2 * (rectNorm p.seed + expRemainder p.base.radius p.base.degree) * p.base.displacement

def value (p : PowerInput t z) : ℂ :=
  roundedValue p.bits p.seed p.base.squarings

def error (p : PowerInput t z) : ℝ :=
  roundedError p.bits p.seed p.seedError p.base.squarings

/-- The error before rounding is re-derived for the SMALL argument, not the restored value. -/
theorem seed_sound (p : PowerInput t z) :
    ‖Complex.exp ((z * (Real.log t : ℂ)) / (2 : ℂ) ^ p.base.squarings) - p.seed‖ ≤
      p.seedError := by
  have hr : ‖(z * ((p.base.logarithm.center : ℝ) : ℂ)) / (2 : ℂ) ^ p.base.squarings‖ ≤ p.base.radius := by
    rw [norm_div, norm_mul, norm_pow, Complex.norm_ofNat,
      Complex.norm_real, Real.norm_eq_abs]
    exact div_le_div_of_nonneg_right
      (mul_le_mul_of_nonneg_right (norm_le_rectNorm z) (abs_nonneg _)) (by positivity)
  have hd0 : ‖z * (Real.log t : ℂ) - z * ((p.base.logarithm.center : ℝ) : ℂ)‖ ≤
      rectNorm z * (p.base.logarithm.error : ℝ) := by
    rw [← mul_sub, norm_mul, ← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs]
    exact mul_le_mul (norm_le_rectNorm z) p.base.logarithm.sound
      (abs_nonneg _) (rectNorm_nonneg z)
  have hd : ‖(z * (Real.log t : ℂ)) / (2 : ℂ) ^ p.base.squarings -
      (z * ((p.base.logarithm.center : ℝ) : ℂ)) / (2 : ℂ) ^ p.base.squarings‖ ≤ p.base.displacement := by
    rw [← sub_div, norm_div, norm_pow, Complex.norm_ofNat]
    exact div_le_div_of_nonneg_right hd0 (by positivity)
  exact expPolynomial_perturbed_error
    ((z * (Real.log t : ℂ)) / (2 : ℂ) ^ p.base.squarings)
    ((z * ((p.base.logarithm.center : ℝ) : ℂ)) / (2 : ℂ) ^ p.base.squarings)
    p.base.radius p.base.displacement p.base.degree hr
    (degree_guard_of_unit_radius p.base.radius p.base.radius_guard
      p.base.degree p.base.degree_pos) hd p.base.displacement_guard

/-- Includes initial rounding, every rounded square, and upward-rounded error storage. -/
theorem sound (p : PowerInput t z) : ‖logPower t z - p.value‖ ≤ p.error := by
  have h := rounded_chain_sound p.bits
    (Complex.exp ((z * (Real.log t : ℂ)) / (2 : ℂ) ^ p.base.squarings))
    p.seed p.seedError p.seed_sound p.base.squarings
  rw [squareValue_exp_div] at h
  exact h

theorem error_nonneg (p : PowerInput t z) : 0 ≤ p.error :=
  (norm_nonneg _).trans p.sound

/-- The final numerical value and error are on one prescribed dyadic grid. -/
theorem output_on_grid (p : PowerInput t z) :
    (∃ kr ki : ℤ, p.value.re = (kr : ℝ) / scale p.bits ∧
      p.value.im = (ki : ℝ) / scale p.bits) ∧
    (∃ ke : ℤ, p.error = (ke : ℝ) / scale p.bits) :=
  rounded_state_on_grid p.bits p.seed p.seedError p.base.squarings

end PowerInput

/-- A bounded search over supplied ADMISSIBLE candidates, using the final bound. -/
def selectPower (t : ℝ) (z : ℂ) (tolerance : ℝ) (candidates : List (PowerInput t z)) :
    Option (PowerInput t z) := firstWithin PowerInput.error tolerance candidates

theorem selectPower_sound (t : ℝ) (z : ℂ) (tolerance : ℝ)
    (candidates : List (PowerInput t z)) (p : PowerInput t z)
    (h : selectPower t z tolerance candidates = some p) :
    p ∈ candidates ∧ ‖logPower t z - p.value‖ ≤ tolerance := by
  have hs := firstWithin_some PowerInput.error tolerance candidates p h
  exact ⟨hs.1, p.sound.trans hs.2⟩

/-- Failure is only failure of THESE computed budgets, not impossibility of approximation. -/
theorem selectPower_none_iff (t : ℝ) (z : ℂ) (tolerance : ℝ)
    (candidates : List (PowerInput t z)) :
    selectPower t z tolerance candidates = none ↔
      ∀ p ∈ candidates, tolerance < p.error :=
  firstWithin_none_iff PowerInput.error tolerance candidates

/-- The same actual point and denominator conditions, with new endpoint algorithms. -/
structure PointInput (x h : ℝ) (z : ℂ) where
  center : ℂ
  center_re : center.re ≤ 1
  coordinateError : ℝ
  coordinate_enclosure : ‖z - center‖ ≤ coordinateError
  denominatorLower : ℝ
  denominator_pos : 0 < denominatorLower
  denominator_bound : denominatorLower ≤ h * ‖center‖ * ‖center + 1‖
  lower : PowerInput (x - h) (center + 1)
  middle : PowerInput x (center + 1)
  upper : PowerInput (x + h) (center + 1)

namespace PointInput

variable {x h : ℝ} {z : ℂ}

def value (p : PointInput x h z) : ℂ :=
  (p.upper.value - 2 * p.middle.value + p.lower.value) /
    ((h : ℂ) * p.center * (p.center + 1))

def error (p : PointInput x h z) : ℝ :=
  4 * (x + h) * ((p.upper.base.logarithm.center : ℝ) + (p.upper.base.logarithm.error : ℝ)) *
      p.coordinateError +
    (p.upper.error + 2 * p.middle.error + p.lower.error) / p.denominatorLower

/-- No quotient evaluation occurs at the uncertain point, only at its guarded center. -/
theorem sound (p : PointInput x h z) (hh : 0 < h) (ha : 1 < x - h)
    (hz : z.re ≤ 1) : ‖tentKernel x h z - p.value‖ ≤ p.error := by
  have hc := norm_tentKernel_sub_le_one x h hh ha z p.center hz p.center_re
  have hr0 : 0 ≤ p.coordinateError := (norm_nonneg _).trans p.coordinate_enclosure
  have hb0 : 0 ≤ 4 * (x + h) := by linarith
  have hlog0 : 0 ≤ Real.log (x + h) := Real.log_nonneg (by linarith)
  have hl : Real.log (x + h) ≤
      (p.upper.base.logarithm.center : ℝ) + (p.upper.base.logarithm.error : ℝ) := by
    have hu := (abs_le.mp p.upper.base.logarithm.sound).2
    linarith
  have hcoord : ‖tentKernel x h z - tentKernel x h p.center‖ ≤
      4 * (x + h) * ((p.upper.base.logarithm.center : ℝ) + (p.upper.base.logarithm.error : ℝ)) *
        p.coordinateError := by
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

theorem error_nonneg (p : PointInput x h z) (hh : 0 < h) (ha : 1 < x - h)
    (hz : z.re ≤ 1) : 0 ≤ p.error := (norm_nonneg _).trans (p.sound hh ha hz)

end PointInput
end
end GRWTSK.Analysis.Complex.RoundedLogPowerEvaluation
