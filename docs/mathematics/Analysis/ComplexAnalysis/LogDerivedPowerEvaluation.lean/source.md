# Complete source: GRWTSK.Analysis.Complex.LogDerivedPowerEvaluation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a418a1a2d9cc029bef119b9ec81119db3d3a285` · SHA-256 `a04192d2ef12989c085b124471de6ae6afd0b5e84055bcea95af5ea91ed449bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Real.RationalLogEnclosure
import GRWTSK.Analysis.Complex.TentKernelEnclosure

set_option autoImplicit false

/-!
# Derived logarithms supply the existing endpoint-power evaluator

Logarithm centers and errors are finite rational expressions, not externally
certified fields. The remaining degree and displacement guards are finite
arithmetic inequalities. The coordinate enclosure and the positive center
quotient denominator remain independent. No zero identity or completeness is
created by this adapter. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.LogDerivedPowerEvaluation

open Filter
open scoped Topology
open GRWTSK.Analysis.Real.RationalLogEnclosure
open GRWTSK.Analysis.Complex.IntervalMellinKernel
open GRWTSK.Analysis.Complex.FiniteExponentialEnclosure
open GRWTSK.Analysis.Complex.TentMellinKernel
open GRWTSK.Analysis.Complex.TentKernelEnclosure

noncomputable section

/-- No logarithm-enclosure certificate is stored. The radius is derived from
rectangular norm and the computed rational center. Log and exp degrees differ. -/
structure PowerInput (t : ℝ) (z : ℂ) where
  logarithm : DyadicInput t
  degree : ℕ
  degree_guard : rectNorm z * |(logarithm.center : ℝ)| / ((degree : ℝ) + 1) ≤ 1 / 2
  displacement_guard : rectNorm z * (logarithm.error : ℝ) ≤ 1

namespace PowerInput

variable {t : ℝ} {z : ℂ}

/-- Instantiate the original evaluator without weakening any of its hypotheses. -/
def toPowerEvaluation (p : PowerInput t z) : PowerEvaluation t z where
  logCenter := (p.logarithm.center : ℝ)
  logError := (p.logarithm.error : ℝ)
  logError_nonneg := by exact_mod_cast p.logarithm.error_nonneg
  log_enclosure := p.logarithm.sound
  degree := p.degree
  radius := rectNorm z * |(p.logarithm.center : ℝ)|
  argument_bound := by
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs]
    exact mul_le_mul_of_nonneg_right (norm_le_rectNorm z) (abs_nonneg _)
  degree_guard := p.degree_guard
  displacement_guard := p.displacement_guard

theorem value_eq_polynomial (p : PowerInput t z) :
    p.toPowerEvaluation.value =
      expPolynomial (z * (((p.logarithm.center : ℝ) : ℂ))) p.degree := rfl

theorem sound (p : PowerInput t z) :
    ‖logPower t z - p.toPowerEvaluation.value‖ ≤ p.toPowerEvaluation.error :=
  p.toPowerEvaluation.sound

end PowerInput

/-- The log displacement guard is attainable for a FIXED endpoint and complex
parameter under reduced mantissa. This is not a numerical precision selector. -/
theorem exists_log_terms (t : ℝ) (p : DyadicInput t) (hm : p.mantissa ≤ 2) (z : ℂ) :
    ∃ K : ℕ, rectNorm z * ((p.withTerms K).error : ℝ) ≤ 1 := by
  have ht : Tendsto (fun K : ℕ => rectNorm z * ((p.withTerms K).error : ℝ))
      atTop (𝓝 0) := by
    simpa using (p.error_tendsto_zero hm).const_mul (rectNorm z)
  obtain ⟨K, hK⟩ := ((tendsto_order.mp ht).2 1 (by norm_num)).exists
  exact ⟨K, hK.le⟩

/-- Increasing the exponential degree can satisfy its independent finite guard. -/
theorem exists_exp_degree (r : ℝ) :
    ∃ K : ℕ, r / ((K : ℝ) + 1) ≤ 1 / 2 := by
  obtain ⟨K, hK⟩ := exists_nat_gt (2 * r)
  refine ⟨K, (div_le_iff₀ (by positivity : (0 : ℝ) < (K : ℝ) + 1)).mpr ?_⟩
  linarith

/-- Coordinate data is still bound to the actual represented point. Only the
three endpoint logarithms have acquired internal suppliers. -/
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

def toPointEvaluation (p : PointInput x h z) : PointEvaluation x h z where
  center := p.center
  center_re := p.center_re
  coordinateError := p.coordinateError
  coordinate_enclosure := p.coordinate_enclosure
  denominatorLower := p.denominatorLower
  denominator_pos := p.denominator_pos
  denominator_bound := p.denominator_bound
  lower := p.lower.toPowerEvaluation
  middle := p.middle.toPowerEvaluation
  upper := p.upper.toPowerEvaluation

theorem sound (p : PointInput x h z) (hh : 0 < h) (ha : 1 < x - h)
    (hz : z.re ≤ 1) :
    ‖tentKernel x h z - p.toPointEvaluation.value‖ ≤ p.toPointEvaluation.error :=
  p.toPointEvaluation.sound hh ha hz

end PointInput
end
end GRWTSK.Analysis.Complex.LogDerivedPowerEvaluation
```
