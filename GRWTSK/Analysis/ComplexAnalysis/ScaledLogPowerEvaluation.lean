/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.DyadicExponentialEnclosure
import GRWTSK.Analysis.RealAnalysis.RationalLogEnclosure
import GRWTSK.Analysis.ComplexAnalysis.TentKernelEnclosure

set_option autoImplicit false

/-!
# Log-derived powers evaluated by scaling and squaring

The rational logarithm supplier is unchanged. The polynomial is evaluated at
z*lambda/2^s, then squared exactly s times, with the seed uncertainty propagated
through every squaring. The old PowerEvaluation has a different value formula
and is NOT asserted equal to this evaluator. Only the existing analytic kernel
transport and quotient-error theorems are reused. SOURCE_ONLY / NOT_RUN /
NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.ScaledLogPowerEvaluation

open GRWTSK.Analysis.RealAnalysis.RationalLogEnclosure
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
open GRWTSK.Analysis.ComplexAnalysis.FiniteExponentialEnclosure
open GRWTSK.Analysis.ComplexAnalysis.DyadicExponentialEnclosure
open GRWTSK.Analysis.ComplexAnalysis.TentMellinKernel
open GRWTSK.Analysis.ComplexAnalysis.TentKernelEnclosure

noncomputable section

/-- Three independent precision parameters: log terms, exponential degree,
and squaring count. No exponential-value or error certificate is a field. -/
structure PowerInput (t : ℝ) (z : ℂ) where
  logarithm : DyadicInput t
  squarings : ℕ
  degree : ℕ
  degree_pos : 1 ≤ degree
  radius_guard : rectNorm z * |(logarithm.center : ℝ)| / (2 : ℝ) ^ squarings ≤ 1
  displacement_guard : rectNorm z * (logarithm.error : ℝ) / (2 : ℝ) ^ squarings ≤ 1

namespace PowerInput

variable {t : ℝ} {z : ℂ}

def radius (p : PowerInput t z) : ℝ :=
  rectNorm z * |(p.logarithm.center : ℝ)| / (2 : ℝ) ^ p.squarings

def displacement (p : PowerInput t z) : ℝ :=
  rectNorm z * (p.logarithm.error : ℝ) / (2 : ℝ) ^ p.squarings

def value (p : PowerInput t z) : ℂ :=
  scaledValue (z * ((p.logarithm.center : ℝ) : ℂ)) p.squarings p.degree

def error (p : PowerInput t z) : ℝ :=
  scaledError (z * ((p.logarithm.center : ℝ) : ℂ)) p.squarings p.degree
    p.radius p.displacement

/-- The logarithm displacement is divided by the same exact dyadic scale. -/
theorem sound (p : PowerInput t z) : ‖logPower t z - p.value‖ ≤ p.error := by
  have hr : ‖(z * ((p.logarithm.center : ℝ) : ℂ)) / (2 : ℂ) ^ p.squarings‖ ≤ p.radius := by
    rw [norm_div, norm_mul, norm_pow, Complex.norm_ofNat,
      Complex.norm_real, Real.norm_eq_abs]
    exact div_le_div_of_nonneg_right
      (mul_le_mul_of_nonneg_right (norm_le_rectNorm z) (abs_nonneg _)) (by positivity)
  have hd0 : ‖z * (Real.log t : ℂ) - z * ((p.logarithm.center : ℝ) : ℂ)‖ ≤
      rectNorm z * (p.logarithm.error : ℝ) := by
    rw [← mul_sub, norm_mul, ← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs]
    exact mul_le_mul (norm_le_rectNorm z) p.logarithm.sound
      (abs_nonneg _) (rectNorm_nonneg z)
  have hd : ‖(z * (Real.log t : ℂ)) / (2 : ℂ) ^ p.squarings -
      (z * ((p.logarithm.center : ℝ) : ℂ)) / (2 : ℂ) ^ p.squarings‖ ≤ p.displacement := by
    rw [← sub_div, norm_div, norm_pow, Complex.norm_ofNat]
    exact div_le_div_of_nonneg_right hd0 (by positivity)
  exact scaled_exp_sound (z * (Real.log t : ℂ)) (z * ((p.logarithm.center : ℝ) : ℂ))
    p.squarings p.degree p.radius p.displacement hr
    (degree_guard_of_unit_radius p.radius p.radius_guard p.degree p.degree_pos)
    hd p.displacement_guard

theorem error_nonneg (p : PowerInput t z) : 0 ≤ p.error :=
  (norm_nonneg _).trans p.sound

/-- No reduction recovers the original polynomial VALUE, not an arbitrary oracle. -/
theorem value_zero_squarings (p : PowerInput t z) (hs : p.squarings = 0) :
    p.value = expPolynomial (z * ((p.logarithm.center : ℝ) : ℂ)) p.degree := by
  simp [value, scaledValue, hs, squareValue]

end PowerInput

/-- Scaling can make both finite guards hold, even before refining the log.
This proves admissibility, NOT a useful final accuracy or an algorithm. -/
theorem exists_powerInput (t : ℝ) (z : ℂ) (p : DyadicInput t) (K : ℕ) (hK : 1 ≤ K) :
    ∃ input : PowerInput t z, input.logarithm = p ∧ input.degree = K := by
  obtain ⟨s, hr, hd⟩ := exists_scaling
    (rectNorm z * |(p.center : ℝ)|) (rectNorm z * (p.error : ℝ))
  exact ⟨⟨p, s, K, hK, hr, hd⟩, rfl, rfl⟩

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
  4 * (x + h) * ((p.upper.logarithm.center : ℝ) + (p.upper.logarithm.error : ℝ)) *
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
      (p.upper.logarithm.center : ℝ) + (p.upper.logarithm.error : ℝ) := by
    have hu := (abs_le.mp p.upper.logarithm.sound).2
    linarith
  have hcoord : ‖tentKernel x h z - tentKernel x h p.center‖ ≤
      4 * (x + h) * ((p.upper.logarithm.center : ℝ) + (p.upper.logarithm.error : ℝ)) *
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
end GRWTSK.Analysis.ComplexAnalysis.ScaledLogPowerEvaluation
