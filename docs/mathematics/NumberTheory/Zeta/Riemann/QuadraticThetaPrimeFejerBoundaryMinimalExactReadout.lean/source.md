# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerBoundaryMinimalExactReadout

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `440e1957e04c7480d04be040ce5d07afc312d50a` · SHA-256 `c982dc8257dee5b3d039ae91a0e9305f52d6149a59de74308b4ccc49b2809d62`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerBoundaryMinimalSchedule
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerFiniteDistanceRegrouping
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Deterministic exact-correlation readout at the boundary-minimal cutoff

At the concrete seven-eighths schedule

  X_j = dyadicScale j,
  N_j = ceil (X_j^(1/4)),

the preceding source reduces the arithmetic frontier to an exact weighted
quadratic-correlation estimate and a deterministic readout.

This file closes the deterministic part.  The exact correlation identity gives

  |smoothedValue| <= sqrt C * X^(3/4) * log(X)^2

from an exact

  correlation <= C * X^(3/2) * log(X)^4

bound.  The already proved period-4X Fejer comparison gives

  |sharpValue - smoothedValue|
    <= 4 (1 + log(4X)) (X/N) (1 + log(2X)).

For dyadic X >= 2 and N >= X^(1/4), the source proves

  X/N <= X^(3/4),
  1 + log(2X) <= 4 log X,
  1 + log(4X) <= 5 log X,

so the boundary error is at most

  80 * X^(3/4) * log(X)^2.

Therefore the deterministic exact readout is source-complete.  The sole
remaining field of `SevenEighthsBoundaryMinimalExactCorrelationData` is the
exact `X^(3/2) log(X)^4` weighted prime-atom correlation theorem.

No exact correlation estimate, threshold descent, or Riemann Hypothesis result
is proved here.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
BOUNDARY_MINIMAL_EXACT_CORRELATION_READOUT_SOURCE_PROVED /
SMOOTHED_VALUE_SQUARE_ROOT_EXTRACTION_SOURCE_PROVED /
FEJER_BOUNDARY_LOG_NORMALIZATION_SOURCE_PROVED /
SEVEN_EIGHTHS_EXACT_CORRELATION_BOUND_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Every dyadic scale in the packet is at least two. -/
theorem two_le_dyadicScale_for_exactCorrelationReadout
    (j : ℕ) :
    2 ≤ dyadicScale j := by
  unfold dyadicScale
  rw [pow_succ]
  have hpow : 0 < (2 : ℕ) ^ j := by
    positivity
  omega

/-- `log 2` is bounded above by the logarithm of every dyadic scale. -/
theorem log_two_le_log_dyadicScale_for_exactCorrelationReadout
    (j : ℕ) :
    Real.log 2 ≤ Real.log (dyadicScale j : ℝ) := by
  exact Real.log_le_log
    (by norm_num)
    (by
      exact_mod_cast
        two_le_dyadicScale_for_exactCorrelationReadout j)

/-- The dyadic logarithm is uniformly larger than one half. -/
theorem half_lt_log_dyadicScale_for_exactCorrelationReadout
    (j : ℕ) :
    (1 : ℝ) / 2 < Real.log (dyadicScale j : ℝ) := by
  have hhalfTwo :
      (1 : ℝ) / 2 < Real.log 2 := by
    linarith [Real.log_two_gt_d9]
  exact hhalfTwo.trans_le
    (log_two_le_log_dyadicScale_for_exactCorrelationReadout j)

/-- A convenient normalization of the additive constant by the dyadic
logarithm. -/
theorem one_le_two_mul_log_dyadicScale_for_exactCorrelationReadout
    (j : ℕ) :
    1 ≤ 2 * Real.log (dyadicScale j : ℝ) := by
  have h :=
    half_lt_log_dyadicScale_for_exactCorrelationReadout j
  linarith

/-- Exact logarithm decomposition at twice the dyadic scale. -/
theorem log_two_mul_dyadicScale_for_exactCorrelationReadout
    (j : ℕ) :
    Real.log (((2 * dyadicScale j : ℕ) : ℝ)) =
      Real.log 2 + Real.log (dyadicScale j : ℝ) := by
  have hXne : (dyadicScale j : ℝ) ≠ 0 := by
    positivity
  rw [show (((2 * dyadicScale j : ℕ) : ℝ)) =
      (2 : ℝ) * (dyadicScale j : ℝ) by norm_num,
    Real.log_mul (by norm_num) hXne]

/-- Exact logarithm decomposition at four times the dyadic scale. -/
theorem log_four_mul_dyadicScale_for_exactCorrelationReadout
    (j : ℕ) :
    Real.log (((4 * dyadicScale j : ℕ) : ℝ)) =
      Real.log 4 + Real.log (dyadicScale j : ℝ) := by
  have hXne : (dyadicScale j : ℝ) ≠ 0 := by
    positivity
  rw [show (((4 * dyadicScale j : ℕ) : ℝ)) =
      (4 : ℝ) * (dyadicScale j : ℝ) by norm_num,
    Real.log_mul (by norm_num) hXne]

/-- The first boundary logarithm costs at most four copies of the dyadic
logarithm. -/
theorem one_add_log_two_mul_dyadicScale_le_four_log
    (j : ℕ) :
    1 + Real.log (((2 * dyadicScale j : ℕ) : ℝ)) ≤
      4 * Real.log (dyadicScale j : ℝ) := by
  rw [log_two_mul_dyadicScale_for_exactCorrelationReadout]
  linarith [
    one_le_two_mul_log_dyadicScale_for_exactCorrelationReadout j,
    log_two_le_log_dyadicScale_for_exactCorrelationReadout j]

/-- The second boundary logarithm costs at most five copies of the dyadic
logarithm. -/
theorem one_add_log_four_mul_dyadicScale_le_five_log
    (j : ℕ) :
    1 + Real.log (((4 * dyadicScale j : ℕ) : ℝ)) ≤
      5 * Real.log (dyadicScale j : ℝ) := by
  have hlogFour :
      Real.log (4 : ℝ) =
        Real.log 2 + Real.log 2 := by
    rw [show (4 : ℝ) = 2 * 2 by norm_num,
      Real.log_mul (by norm_num) (by norm_num)]
  rw [log_four_mul_dyadicScale_for_exactCorrelationReadout,
    hlogFour]
  linarith [
    one_le_two_mul_log_dyadicScale_for_exactCorrelationReadout j,
    log_two_le_log_dyadicScale_for_exactCorrelationReadout j]

/-- At the ceiling fourth-root cutoff, the factor `X/N` has the exact
three-quarter-power bound required by the boundary estimate. -/
theorem sevenEighthsBoundaryMinimalFejer_ratio_le_threeQuarter
    (j : ℕ) :
    (dyadicScale j : ℝ) /
        (sevenEighthsBoundaryMinimalFejerCutoff j : ℝ) ≤
      Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 4) := by
  have hXpos : 0 < (dyadicScale j : ℝ) := by
    exact_mod_cast
      dyadicScale_pos_for_boundaryMinimalFejerSchedule j
  have hrootPos :
      0 <
        Real.rpow (dyadicScale j : ℝ)
          ((1 : ℝ) / 4) :=
    sevenEighthsBoundaryMinimalFejerPower_pos j
  have hdiv :
      (dyadicScale j : ℝ) /
          (sevenEighthsBoundaryMinimalFejerCutoff j : ℝ) ≤
        (dyadicScale j : ℝ) /
          Real.rpow (dyadicScale j : ℝ)
            ((1 : ℝ) / 4) := by
    exact div_le_div_of_nonneg_left
      hXpos.le hrootPos
      (sevenEighthsBoundaryMinimalFejerCutoff_lower_power j)
  calc
    (dyadicScale j : ℝ) /
        (sevenEighthsBoundaryMinimalFejerCutoff j : ℝ)
      ≤
        (dyadicScale j : ℝ) /
          Real.rpow (dyadicScale j : ℝ)
            ((1 : ℝ) / 4) := hdiv
    _ =
        Real.rpow (dyadicScale j : ℝ)
          (1 - (1 : ℝ) / 4) := by
            rw [Real.rpow_sub hXpos, Real.rpow_one]
    _ =
        Real.rpow (dyadicScale j : ℝ)
          ((3 : ℝ) / 4) := by
            congr 1
            ring

/-- An exact bound for the explicit quadratic correlation gives the matching
square-root bound for the corrected smoothed value. -/
theorem nonAliasingPrimePrefixFejerOperator_value_abs_le_of_exactCorrelation
    {X N m : ℕ}
    (hX : 0 < X)
    {C : ℝ}
    (hC : 0 ≤ C)
    (hcorr :
      nonAliasingFejerQuadraticCorrelation X N m ≤
        C * Real.rpow (X : ℝ) ((3 : ℝ) / 2) *
          (Real.log (X : ℝ))^4) :
    |nonAliasingPrimePrefixFejerOperator.value X N m| ≤
      Real.sqrt C *
        Real.rpow (X : ℝ) ((3 : ℝ) / 4) *
        (Real.log (X : ℝ))^2 := by
  have hXpos : 0 < (X : ℝ) := by
    exact_mod_cast hX
  have hrpowSq :
      (Real.rpow (X : ℝ) ((3 : ℝ) / 4))^2 =
        Real.rpow (X : ℝ) ((3 : ℝ) / 2) := by
    rw [pow_two, ← Real.rpow_add hXpos]
    congr 1
    ring
  apply abs_le_of_sq_le_sq
  · rw [← nonAliasingFejerQuadraticCorrelation_eq_value_sq]
    calc
      nonAliasingFejerQuadraticCorrelation X N m
          ≤
        C * Real.rpow (X : ℝ) ((3 : ℝ) / 2) *
          (Real.log (X : ℝ))^4 := hcorr
      _ =
        (Real.sqrt C *
          Real.rpow (X : ℝ) ((3 : ℝ) / 4) *
          (Real.log (X : ℝ))^2)^2 := by
            conv_lhs =>
              rw [← Real.sq_sqrt hC, ← hrpowSq]
            ring
  · positivity

/-- The already proved period-4X Fejer comparison has exact
`X^(3/4) log(X)^2` shape at the concrete cutoff. -/
theorem sevenEighthsBoundaryMinimalFejer_error_abs_le
    (j m : ℕ)
    (hm0 : 2 * dyadicScale j ≤ m)
    (hm1 : m ≤ 4 * dyadicScale j) :
    |nonAliasingPrimePrefixFejerOperator.error
        (dyadicScale j)
        (sevenEighthsBoundaryMinimalFejerCutoff j)
        m| ≤
      80 *
        Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 4) *
        (Real.log (dyadicScale j : ℝ))^2 := by
  have hraw :=
    cyclicKernelPairing_to_arithmeticTailShape
      cyclicDistanceWeightedKernelPairing
      (sevenEighthsBoundaryMinimalFejerCutoff_nonaliasing j)
      hm0 hm1
  have hlogPos :
      0 < Real.log (dyadicScale j : ℝ) := by
    linarith [
      half_lt_log_dyadicScale_for_exactCorrelationReadout j]
  have htwoLogNonneg :
      0 ≤
        1 + Real.log (((2 * dyadicScale j : ℕ) : ℝ)) := by
    have h :
        0 ≤ Real.log (((2 * dyadicScale j : ℕ) : ℝ)) := by
      apply Real.log_nonneg
      exact_mod_cast
        (show 1 ≤ 2 * dyadicScale j by
          have hX :=
            dyadicScale_pos_for_boundaryMinimalFejerSchedule j
          omega)
    linarith
  have hratioNonneg :
      0 ≤
        (dyadicScale j : ℝ) /
          (sevenEighthsBoundaryMinimalFejerCutoff j : ℝ) := by
    positivity
  have hrightNonneg :
      0 ≤
        ((dyadicScale j : ℝ) /
          (sevenEighthsBoundaryMinimalFejerCutoff j : ℝ)) *
        (1 + Real.log (((2 * dyadicScale j : ℕ) : ℝ))) :=
    mul_nonneg hratioNonneg htwoLogNonneg
  have hfirst :
      4 *
          (1 + Real.log (((4 * dyadicScale j : ℕ) : ℝ))) *
          (((dyadicScale j : ℝ) /
            (sevenEighthsBoundaryMinimalFejerCutoff j : ℝ)) *
            (1 + Real.log (((2 * dyadicScale j : ℕ) : ℝ))))
        ≤
      4 *
          (5 * Real.log (dyadicScale j : ℝ)) *
          (((dyadicScale j : ℝ) /
            (sevenEighthsBoundaryMinimalFejerCutoff j : ℝ)) *
            (1 + Real.log (((2 * dyadicScale j : ℕ) : ℝ)))) := by
    exact mul_le_mul_of_nonneg_right
      (mul_le_mul_of_nonneg_left
        (one_add_log_four_mul_dyadicScale_le_five_log j)
        (by norm_num))
      hrightNonneg
  have hproduct :
      ((dyadicScale j : ℝ) /
          (sevenEighthsBoundaryMinimalFejerCutoff j : ℝ)) *
          (1 + Real.log (((2 * dyadicScale j : ℕ) : ℝ)))
        ≤
      Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 4) *
          (4 * Real.log (dyadicScale j : ℝ)) := by
    exact mul_le_mul
      (sevenEighthsBoundaryMinimalFejer_ratio_le_threeQuarter j)
      (one_add_log_two_mul_dyadicScale_le_four_log j)
      htwoLogNonneg
      (by positivity)
  have hsecond :
      4 *
          (5 * Real.log (dyadicScale j : ℝ)) *
          (((dyadicScale j : ℝ) /
            (sevenEighthsBoundaryMinimalFejerCutoff j : ℝ)) *
            (1 + Real.log (((2 * dyadicScale j : ℕ) : ℝ))))
        ≤
      4 *
          (5 * Real.log (dyadicScale j : ℝ)) *
          (Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 4) *
            (4 * Real.log (dyadicScale j : ℝ))) := by
    exact mul_le_mul_of_nonneg_left hproduct (by positivity)
  calc
    |nonAliasingPrimePrefixFejerOperator.error
        (dyadicScale j)
        (sevenEighthsBoundaryMinimalFejerCutoff j)
        m|
      ≤
      4 *
          (1 + Real.log (((4 * dyadicScale j : ℕ) : ℝ))) *
          (((dyadicScale j : ℝ) /
            (sevenEighthsBoundaryMinimalFejerCutoff j : ℝ)) *
            (1 + Real.log (((2 * dyadicScale j : ℕ) : ℝ)))) := hraw
    _ ≤
      4 *
          (5 * Real.log (dyadicScale j : ℝ)) *
          (((dyadicScale j : ℝ) /
            (sevenEighthsBoundaryMinimalFejerCutoff j : ℝ)) *
            (1 + Real.log (((2 * dyadicScale j : ℕ) : ℝ)))) := hfirst
    _ ≤
      4 *
          (5 * Real.log (dyadicScale j : ℝ)) *
          (Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 4) *
            (4 * Real.log (dyadicScale j : ℝ))) := hsecond
    _ =
      80 *
        Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 4) *
        (Real.log (dyadicScale j : ℝ))^2 := by
          ring

/-- The deterministic exact-correlation readout at the concrete
boundary-minimal schedule is source-proved. -/
theorem sevenEighthsBoundaryMinimalExactCorrelationReadout :
    SevenEighthsBoundaryMinimalExactCorrelationReadout := by
  intro hbound
  rcases hbound with ⟨C, hC, j₀, hcorr⟩
  refine ⟨Real.sqrt C + 80, by positivity, j₀, ?_⟩
  intro j hj m hm0 hm1
  have hcorr' :
      nonAliasingFejerQuadraticCorrelation
          (dyadicScale j)
          (sevenEighthsBoundaryMinimalFejerCutoff j)
          m
        ≤
      C *
        Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
        (Real.log (dyadicScale j : ℝ))^4 := by
    simpa using hcorr j hj m hm0 hm1
  have hvalue :
      |nonAliasingPrimePrefixFejerOperator.value
          (dyadicScale j)
          (sevenEighthsBoundaryMinimalFejerCutoff j)
          m| ≤
        Real.sqrt C *
          Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 4) *
          (Real.log (dyadicScale j : ℝ))^2 :=
    nonAliasingPrimePrefixFejerOperator_value_abs_le_of_exactCorrelation
      (dyadicScale_pos_for_boundaryMinimalFejerSchedule j)
      hC hcorr'
  have herror :
      |nonAliasingPrimePrefixFejerOperator.error
          (dyadicScale j)
          (sevenEighthsBoundaryMinimalFejerCutoff j)
          m| ≤
        80 *
          Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 4) *
          (Real.log (dyadicScale j : ℝ))^2 :=
    sevenEighthsBoundaryMinimalFejer_error_abs_le
      j m hm0 hm1
  have hdecomp :
      sharpPrimePrefixDiscrepancy (dyadicScale j) m =
        nonAliasingPrimePrefixFejerOperator.value
            (dyadicScale j)
            (sevenEighthsBoundaryMinimalFejerCutoff j)
            m +
          nonAliasingPrimePrefixFejerOperator.error
            (dyadicScale j)
            (sevenEighthsBoundaryMinimalFejerCutoff j)
            m := by
    unfold PrimePrefixSmoothingOperator.error
    ring
  have hsharp :
      |sharpPrimePrefixDiscrepancy (dyadicScale j) m| ≤
        (Real.sqrt C + 80) *
          Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 4) *
          (Real.log (dyadicScale j : ℝ))^2 := by
    rw [hdecomp]
    calc
      |nonAliasingPrimePrefixFejerOperator.value
            (dyadicScale j)
            (sevenEighthsBoundaryMinimalFejerCutoff j)
            m +
          nonAliasingPrimePrefixFejerOperator.error
            (dyadicScale j)
            (sevenEighthsBoundaryMinimalFejerCutoff j)
            m|
        ≤
      |nonAliasingPrimePrefixFejerOperator.value
          (dyadicScale j)
          (sevenEighthsBoundaryMinimalFejerCutoff j)
          m| +
        |nonAliasingPrimePrefixFejerOperator.error
          (dyadicScale j)
          (sevenEighthsBoundaryMinimalFejerCutoff j)
          m| := abs_add _ _
      _ ≤
        Real.sqrt C *
            Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 4) *
            (Real.log (dyadicScale j : ℝ))^2 +
          80 *
            Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 4) *
            (Real.log (dyadicScale j : ℝ))^2 :=
              add_le_add hvalue herror
      _ =
        (Real.sqrt C + 80) *
          Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 4) *
          (Real.log (dyadicScale j : ℝ))^2 := by
            ring
  have hthreshold :
      quadraticThreshold ((7 : ℝ) / 8) =
        (3 : ℝ) / 4 := by
    norm_num [quadraticThreshold]
  simpa [sharpPrimePrefixDiscrepancy, hthreshold] using hsharp

/-- The boundary-minimal data packet now has only the exact arithmetic
correlation theorem as a genuine field. -/
def SevenEighthsBoundaryMinimalExactCorrelationBound.toData
    (hbound : SevenEighthsBoundaryMinimalExactCorrelationBound) :
    SevenEighthsBoundaryMinimalExactCorrelationData where
  exactCorrelationBound := hbound
  exactReadout :=
    sevenEighthsBoundaryMinimalExactCorrelationReadout

/-- The exact arithmetic correlation theorem alone now supplies the existing
finite partial-prime discrepancy target. -/
theorem sevenEighthsBoundaryMinimalExactCorrelationBound_to_partialDiscrepancy
    (hbound : SevenEighthsBoundaryMinimalExactCorrelationBound)
    (hgraded :
      AllDyadicPrimeOnlyFourierCoordinateBoundAt
        ((7 : ℝ) / 8)) :
    SevenEighthsPrimePartialDiscrepancy := by
  exact
    sevenEighthsBoundaryMinimalExactCorrelationData_to_partialDiscrepancy
      hbound.toData hgraded

end GRWTSK.RiemannHypothesis
```
