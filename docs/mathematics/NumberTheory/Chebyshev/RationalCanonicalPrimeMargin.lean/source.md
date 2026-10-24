# Complete source: GRWTSK.NumberTheory.Chebyshev.RationalCanonicalPrimeMargin

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ff2c07d0b593b14207670441f6c0e540d793ecd` · SHA-256 `a5d63954ae28a5e5e9a358efd6fb41de2482126f0bf22729e1098399c256c289`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Real.RationalLogEnclosure
import GRWTSK.NumberTheory.Chebyshev.CanonicalTentPrimeCriterion
import GRWTSK.NumberTheory.Chebyshev.CanonicalRationalTentEvaluation
import Mathlib.Tactic

set_option autoImplicit false

/-!
# A decidable rational lower bound for the canonical prime margin

The canonical prime margin still contains two real logarithmic budgets:

* the complete nontrivial-zero tail, with coefficient `44 / log (6/5)`;
* the complete higher-prime-power correction,
  `2 log(n+1) log(exponentCutoff n)`.

This module replaces an opaque real positivity premise by finite rational data.
`RationalLogEnclosure.DyadicInput` already represents its real source exactly and
supplies a rational upper endpoint for its logarithm. We use:

* the explicit source-derived bound `44 / log(6/5) <= 242`;
* one dyadic log input for the zero cutoff;
* one dyadic log input for `n+1`;
* one dyadic log input for `exponentCutoff n`.

The resulting rational margin subtracts certified UPPER bounds for both analytic
budgets. Positivity of that rational number therefore implies positivity of the
existing real `canonicalPrimeMargin`.

No Turing packet, zero rows, accepted endpoint, prime margin instance, prime, or
RH result is constructed. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.RationalCanonicalPrimeMargin

open GRWTSK.Analysis.Real.RationalLogEnclosure
open GRWTSK.RiemannHypothesis.CanonicalHighCounting
open GRWTSK.NumberTheory.Chebyshev.HigherPrimePowers
open GRWTSK.NumberTheory.Chebyshev.LegendreLogBudget
open CanonicalRationalTentEvaluation TentSource
open CanonicalTentAbsolute CanonicalTentPrimeCriterion

noncomputable section

namespace MarginLog

/-- The exact rational source represented by a dyadic log input. -/
def sourceQ {t : ℝ} (p : DyadicInput t) : ℚ :=
  (2 : ℚ) ^ p.exponent * p.mantissa

/-- Rational upper endpoint for the represented logarithm. -/
def upperQ {t : ℝ} (p : DyadicInput t) : ℚ :=
  p.lowerValue + p.totalWidth

@[simp] theorem cast_sourceQ {t : ℝ} (p : DyadicInput t) :
    (sourceQ p : ℝ) = t := by
  unfold sourceQ
  rw [p.source_eq]
  push_cast

@[simp] theorem cast_upperQ {t : ℝ} (p : DyadicInput t) :
    (upperQ p : ℝ) = (p.lowerValue : ℝ) + (p.totalWidth : ℝ) := by
  simp [upperQ]

/-- The actual logarithm lies below the rational upper endpoint. -/
theorem log_le_upperQ {t : ℝ} (p : DyadicInput t) :
    Real.log t ≤ (upperQ p : ℝ) := by
  simpa [upperQ] using p.bounds.2

/-- The exact represented source is positive. -/
theorem sourceQ_pos {t : ℝ} (p : DyadicInput t) : 0 < sourceQ p := by
  have hp : (0 : ℝ) < (sourceQ p : ℝ) := by
    rw [cast_sourceQ]
    exact p.source_pos
  exact_mod_cast hp

/-- On a source at least one, the rational logarithm upper endpoint is nonnegative. -/
theorem upperQ_nonneg {t : ℝ} (p : DyadicInput t) (ht : 1 ≤ t) :
    0 ≤ (upperQ p : ℝ) :=
  (Real.log_nonneg ht).trans p.log_le_upperQ

end MarginLog

/-- A simple rational upper bound for the retained Jensen coefficient.
The first Cayley-series term gives `log(6/5) >= 2/11`, hence the bound 242. -/
def countingCoefficientUpperQ : ℚ := 242

/-- The actual source-derived coefficient is below the rational constant 242. -/
theorem countingCoefficient_le_upper :
    countingCoefficient ≤ (countingCoefficientUpperQ : ℝ) := by
  have hseries :=
    (log_bounds (6 / 5 : ℚ) (by norm_num) 1).1
  have hlower : (2 / 11 : ℝ) ≤ Real.log (6 / 5 : ℝ) := by
    norm_num [lower, ratio] at hseries ⊢
    exact hseries
  have hlog : 0 < Real.log (6 / 5 : ℝ) :=
    Real.log_pos (by norm_num)
  unfold countingCoefficient countingCoefficientUpperQ
  apply (div_le_iff₀ hlog).2
  nlinarith

/-- Rational upper bound for the complete canonical zero tail at square geometry. -/
def squareTailUpperQ
    (n : ℕ) {T : ℝ} (heightLog : DyadicInput T) : ℚ :=
  8 * countingCoefficientUpperQ * (((n + 1 : ℕ) : ℚ) ^ 4) *
      (MarginLog.upperQ heightLog + 1) /
    (squareRadiusQ n * MarginLog.sourceQ heightLog)

@[simp] theorem cast_squareTailUpperQ
    (n : ℕ) {T : ℝ} (heightLog : DyadicInput T) :
    (squareTailUpperQ n heightLog : ℝ) =
      8 * (countingCoefficientUpperQ : ℝ) * ((n : ℝ) + 1) ^ 4 *
        ((MarginLog.upperQ heightLog : ℝ) + 1) /
          (squareRadius n * T) := by
  unfold squareTailUpperQ
  rw [cast_squareRadiusQ, MarginLog.cast_sourceQ]
  push_cast
  ring

/-- Square specialization of the exact canonical tail formula. -/
theorem canonicalSquareTail_eq (n : ℕ) (T : ℝ) :
    canonicalTailBudget (squareCenter n) (squareRadius n) T =
      8 * countingCoefficient * ((n : ℝ) + 1) ^ 4 *
        (Real.log T + 1) / (squareRadius n * T) := by
  have hb : 0 < squareCenter n + squareRadius n := by
    rw [center_add_radius]
    positivity
  rw [canonicalTailBudget_eq _ _ _ hb, center_add_radius]
  ring

/-- The dyadic logarithm input and coefficient bound majorize the complete tail. -/
theorem canonicalSquareTail_le_upper
    (n : ℕ) {T : ℝ} (hT : 2 ≤ T)
    (heightLog : DyadicInput T) :
    canonicalTailBudget (squareCenter n) (squareRadius n) T ≤
      (squareTailUpperQ n heightLog : ℝ) := by
  rw [canonicalSquareTail_eq, cast_squareTailUpperQ]
  have hlog0 : 0 ≤ Real.log T :=
    Real.log_nonneg (by linarith)
  have hlog := MarginLog.log_le_upperQ heightLog
  have hlogOne : 0 ≤ Real.log T + 1 := by linarith
  have hden : 0 ≤ squareRadius n * T :=
    mul_nonneg (squareRadius_pos n).le (by linarith)
  apply div_le_div_of_nonneg_right ?_ hden
  calc
    8 * countingCoefficient * ((n : ℝ) + 1) ^ 4 * (Real.log T + 1) =
        (8 * ((n : ℝ) + 1) ^ 4 * (Real.log T + 1)) *
          countingCoefficient := by ring
    _ ≤ (8 * ((n : ℝ) + 1) ^ 4 * (Real.log T + 1)) *
          (countingCoefficientUpperQ : ℝ) := by
      exact mul_le_mul_of_nonneg_left countingCoefficient_le_upper
        (mul_nonneg
          (mul_nonneg (by norm_num) (by positivity)) hlogOne)
    _ = 8 * (countingCoefficientUpperQ : ℝ) * ((n : ℝ) + 1) ^ 4 *
          (Real.log T + 1) := by ring
    _ ≤ 8 * (countingCoefficientUpperQ : ℝ) * ((n : ℝ) + 1) ^ 4 *
          ((MarginLog.upperQ heightLog : ℝ) + 1) := by
      exact mul_le_mul_of_nonneg_left (add_le_add_right hlog 1) (by positivity)

/-- Rational upper bound for the complete higher-prime-power logarithmic budget. -/
def squareCorrectionUpperQ
    (n : ℕ)
    (stageLog : DyadicInput (((n + 1 : ℕ) : ℝ)))
    (cutoffLog : DyadicInput ((exponentCutoff n : ℕ) : ℝ)) : ℚ :=
  2 * MarginLog.upperQ stageLog * MarginLog.upperQ cutoffLog

@[simp] theorem cast_squareCorrectionUpperQ
    (n : ℕ)
    (stageLog : DyadicInput (((n + 1 : ℕ) : ℝ)))
    (cutoffLog : DyadicInput ((exponentCutoff n : ℕ) : ℝ)) :
    (squareCorrectionUpperQ n stageLog cutoffLog : ℝ) =
      2 * (MarginLog.upperQ stageLog : ℝ) *
        (MarginLog.upperQ cutoffLog : ℝ) := by
  simp [squareCorrectionUpperQ]

/-- The two dyadic logarithm inputs majorize the actual proper-prime-power budget. -/
theorem squareCorrectionBudget_le_upper
    (n : ℕ) (hn : 1 ≤ n)
    (stageLog : DyadicInput (((n + 1 : ℕ) : ℝ)))
    (cutoffLog : DyadicInput ((exponentCutoff n : ℕ) : ℝ)) :
    squareCorrectionBudget n ≤
      (squareCorrectionUpperQ n stageLog cutoffLog : ℝ) := by
  rw [cast_squareCorrectionUpperQ]
  unfold squareCorrectionBudget
  have hstage := MarginLog.log_le_upperQ stageLog
  have hcutoff := MarginLog.log_le_upperQ cutoffLog
  have hstage0 : 0 ≤ Real.log ((n + 1 : ℕ) : ℝ) :=
    Real.log_natCast_nonneg _
  have hcutoff0 : 0 ≤ Real.log (exponentCutoff n : ℝ) :=
    Real.log_natCast_nonneg _
  have hstageUpper0 : 0 ≤ (MarginLog.upperQ stageLog : ℝ) :=
    hstage0.trans hstage
  calc
    2 * Real.log ((n + 1 : ℕ) : ℝ) * Real.log (exponentCutoff n : ℝ) ≤
        2 * (MarginLog.upperQ stageLog : ℝ) *
          Real.log (exponentCutoff n : ℝ) := by
      exact mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left hstage (by norm_num)) hcutoff0
    _ ≤ 2 * (MarginLog.upperQ stageLog : ℝ) *
          (MarginLog.upperQ cutoffLog : ℝ) := by
      exact mul_le_mul_of_nonneg_left hcutoff
        (mul_nonneg (by norm_num) hstageUpper0)

/-- Fully rational lower approximation to the canonical prime margin. -/
def marginQ
    (n : ℕ) {T : ℝ}
    (heightLog : DyadicInput T)
    (stageLog : DyadicInput (((n + 1 : ℕ) : ℝ)))
    (cutoffLog : DyadicInput ((exponentCutoff n : ℕ) : ℝ))
    (zeroUpper correctionLower : ℚ) : ℚ :=
  squareRadiusQ n - zeroUpper + correctionLower -
    squareTailUpperQ n heightLog -
    squareCorrectionUpperQ n stageLog cutoffLog

@[simp] theorem cast_marginQ
    (n : ℕ) {T : ℝ}
    (heightLog : DyadicInput T)
    (stageLog : DyadicInput (((n + 1 : ℕ) : ℝ)))
    (cutoffLog : DyadicInput ((exponentCutoff n : ℕ) : ℝ))
    (zeroUpper correctionLower : ℚ) :
    (marginQ n heightLog stageLog cutoffLog zeroUpper correctionLower : ℝ) =
      squareRadius n - (zeroUpper : ℝ) + (correctionLower : ℝ) -
        (squareTailUpperQ n heightLog : ℝ) -
        (squareCorrectionUpperQ n stageLog cutoffLog : ℝ) := by
  simp [marginQ, cast_squareRadiusQ]

/-- The rational margin is a lower bound for the existing real canonical margin. -/
theorem marginQ_le_canonicalPrimeMargin
    (n : ℕ) (hn : 2 ≤ n) {T : ℝ} (hT : 2 ≤ T)
    (heightLog : DyadicInput T)
    (stageLog : DyadicInput (((n + 1 : ℕ) : ℝ)))
    (cutoffLog : DyadicInput ((exponentCutoff n : ℕ) : ℝ))
    (zeroUpper correctionLower : ℚ) :
    (marginQ n heightLog stageLog cutoffLog zeroUpper correctionLower : ℝ) ≤
      canonicalPrimeMargin n T (zeroUpper : ℝ) (correctionLower : ℝ) := by
  have htail := canonicalSquareTail_le_upper n hT heightLog
  have hcorrection := squareCorrectionBudget_le_upper n (by omega) stageLog cutoffLog
  rw [cast_marginQ]
  unfold canonicalPrimeMargin
  linarith

/-- Decidable pure-rational acceptance condition. -/
def accepts
    (n : ℕ) {T : ℝ}
    (heightLog : DyadicInput T)
    (stageLog : DyadicInput (((n + 1 : ℕ) : ℝ)))
    (cutoffLog : DyadicInput ((exponentCutoff n : ℕ) : ℝ))
    (zeroUpper correctionLower : ℚ) : Bool :=
  decide (0 < marginQ n heightLog stageLog cutoffLog zeroUpper correctionLower)

@[simp] theorem accepts_iff
    (n : ℕ) {T : ℝ}
    (heightLog : DyadicInput T)
    (stageLog : DyadicInput (((n + 1 : ℕ) : ℝ)))
    (cutoffLog : DyadicInput ((exponentCutoff n : ℕ) : ℝ))
    (zeroUpper correctionLower : ℚ) :
    accepts n heightLog stageLog cutoffLog zeroUpper correctionLower = true ↔
      0 < marginQ n heightLog stageLog cutoffLog zeroUpper correctionLower := by
  simp [accepts]

/-- Rational acceptance discharges the former real strict-margin premise. -/
theorem canonicalPrimeMargin_pos_of_accepts
    (n : ℕ) (hn : 2 ≤ n) {T : ℝ} (hT : 2 ≤ T)
    (heightLog : DyadicInput T)
    (stageLog : DyadicInput (((n + 1 : ℕ) : ℝ)))
    (cutoffLog : DyadicInput ((exponentCutoff n : ℕ) : ℝ))
    (zeroUpper correctionLower : ℚ)
    (accepted : accepts n heightLog stageLog cutoffLog
      zeroUpper correctionLower = true) :
    0 < canonicalPrimeMargin n T (zeroUpper : ℝ) (correctionLower : ℝ) := by
  have hq := (accepts_iff n heightLog stageLog cutoffLog
    zeroUpper correctionLower).mp accepted
  have hqR :
      0 < (marginQ n heightLog stageLog cutoffLog
        zeroUpper correctionLower : ℝ) := by
    exact_mod_cast hq
  exact hqR.trans_le
    (marginQ_le_canonicalPrimeMargin n hn hT heightLog stageLog cutoffLog
      zeroUpper correctionLower)

/-- Equality at zero is rejected; the strict margin is not weakened. -/
theorem zero_margin_rejected_fixture
    (n : ℕ) {T : ℝ}
    (heightLog : DyadicInput T)
    (stageLog : DyadicInput (((n + 1 : ℕ) : ℝ)))
    (cutoffLog : DyadicInput ((exponentCutoff n : ℕ) : ℝ)) :
    accepts n heightLog stageLog cutoffLog
      (squareRadiusQ n)
      (squareTailUpperQ n heightLog +
        squareCorrectionUpperQ n stageLog cutoffLog) = false := by
  simp [accepts, marginQ]

end

end GRWTSK.NumberTheory.Chebyshev.RationalCanonicalPrimeMargin
```
