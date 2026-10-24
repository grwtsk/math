# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerOffDiagonalReduction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0395e4d6d09c52140c055bbd7bf78d569d522245` · SHA-256 `1a1c731ca82b8425c5a6a00e5f26f187b5f9fc9d692da89faaf77f59bbf92b88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerBoundaryMinimalExactReadout
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicConvexContraction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Diagonal closure and signed off-diagonal reduction

The concrete boundary-minimal seven-eighths Fejer schedule and the deterministic
exact-correlation readout are already source-closed.  The remaining arithmetic
theorem is the exact estimate

  correlation <= C * X^(3/2) * log(X)^4.

This file separates its elementary diagonal part from the genuinely arithmetic
signed off-diagonal part.

The period-4X Fejer kernel is nonnegative and has mass one.  Therefore its
convolution with a sharp interval indicator takes values in [0,1].  The
arithmetic prefix weight is the restriction of that cyclic convolution, so
every weighted prime-discrepancy atom has absolute value at most

  1 + log(4X).

The diagonal correlation is consequently at most

  2X * (1 + log(4X))^2.

On dyadic scales this is bounded by

  200 * X^(3/2) * log(X)^4,

so the diagonal is strictly below the target scale.  The exact correlation
theorem is therefore reduced to an upper bound for the signed off-diagonal
remainder.  Absolute off-diagonal control is recorded as a stronger sufficient
premise but is not required.

No signed off-diagonal cancellation estimate, exact correlation estimate,
threshold descent, or Riemann Hypothesis result is proved here.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
FEJER_WEIGHT_UNIT_INTERVAL_SOURCE_PROVED /
DIAGONAL_EXACT_TARGET_SOURCE_PROVED /
EXACT_CORRELATION_REDUCED_TO_SIGNED_OFFDIAGONAL /
SEVEN_EIGHTHS_SIGNED_OFFDIAGONAL_BOUND_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- A sharp cyclic prefix indicator is pointwise nonnegative. -/
theorem cyclicSharpPrefixIndicator_nonnegative
    (X m : ℕ)
    (z : ZMod (fejerOctavePeriod X)) :
    0 ≤ cyclicSharpPrefixIndicator X m z := by
  unfold cyclicSharpPrefixIndicator
  split_ifs <;> norm_num

/-- A sharp cyclic prefix indicator is pointwise at most one. -/
theorem cyclicSharpPrefixIndicator_le_one
    (X m : ℕ)
    (z : ZMod (fejerOctavePeriod X)) :
    cyclicSharpPrefixIndicator X m z ≤ 1 := by
  unfold cyclicSharpPrefixIndicator
  split_ifs <;> norm_num

/-- A nonnegative Fejer kernel convolved with a nonnegative sharp indicator is
nonnegative. -/
theorem cyclicFejerSmoothedPrefix_nonnegative
    {X N m : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (x : ZMod (fejerOctavePeriod X)) :
    0 ≤ cyclicFejerSmoothedPrefix X N m x := by
  unfold cyclicFejerSmoothedPrefix
  exact Finset.sum_nonneg fun y hy =>
    mul_nonneg
      (cyclicFejerKernel_nonnegative hreg (x - y))
      (cyclicSharpPrefixIndicator_nonnegative X m y)

/-- Mass one and nonnegativity make the Fejer-smoothed sharp indicator at most
one. -/
theorem cyclicFejerSmoothedPrefix_le_one
    {X N m : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (x : ZMod (fejerOctavePeriod X)) :
    cyclicFejerSmoothedPrefix X N m x ≤ 1 := by
  unfold cyclicFejerSmoothedPrefix
  calc
    (∑ y : ZMod (fejerOctavePeriod X),
        cyclicFejerKernel X N (x - y) *
          cyclicSharpPrefixIndicator X m y)
      ≤
    ∑ y : ZMod (fejerOctavePeriod X),
      cyclicFejerKernel X N (x - y) * 1 := by
        apply Finset.sum_le_sum
        intro y hy
        exact mul_le_mul_of_nonneg_left
          (cyclicSharpPrefixIndicator_le_one X m y)
          (cyclicFejerKernel_nonnegative hreg (x - y))
    _ =
      ∑ y : ZMod (fejerOctavePeriod X),
        cyclicFejerKernel X N (x - y) := by
          simp
    _ = 1 :=
      cyclicFejerKernel_shifted_sum_one hreg x

/-- On the arithmetic octave, the corrected Fejer prefix weight is
nonnegative. -/
theorem nonAliasingFejerPrefixWeight_nonnegative
    {X N m n : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X)
    (hn : n ∈ Finset.Ioc (2 * X) (4 * X)) :
    0 ≤ nonAliasingFejerPrefixWeight X N m n := by
  have hnI := Finset.mem_Ioc.mp hn
  have hbridge :=
    arithmeticPrefixWeightEqualsCyclicConvolution
      X N m n hreg hnI.1 hnI.2 hm0 hm1
  rw [hbridge]
  exact cyclicFejerSmoothedPrefix_nonnegative hreg _

/-- On the arithmetic octave, the corrected Fejer prefix weight is at most
one. -/
theorem nonAliasingFejerPrefixWeight_le_one
    {X N m n : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X)
    (hn : n ∈ Finset.Ioc (2 * X) (4 * X)) :
    nonAliasingFejerPrefixWeight X N m n ≤ 1 := by
  have hnI := Finset.mem_Ioc.mp hn
  have hbridge :=
    arithmeticPrefixWeightEqualsCyclicConvolution
      X N m n hreg hnI.1 hnI.2 hm0 hm1
  rw [hbridge]
  exact cyclicFejerSmoothedPrefix_le_one hreg _

/-- The elementary arithmetic envelope used for the diagonal estimate is
nonnegative. -/
theorem one_add_log_four_mul_nonnegative
    {X : ℕ}
    (hX : 0 < X) :
    0 ≤ 1 + Real.log (((4 * X : ℕ) : ℝ)) := by
  have hlog :
      0 ≤ Real.log (((4 * X : ℕ) : ℝ)) := by
    apply Real.log_nonneg
    exact_mod_cast (by omega : 1 ≤ 4 * X)
  linarith

/-- Every Fejer-weighted prime-discrepancy atom is bounded by the same safe
logarithmic envelope as the unweighted atom. -/
theorem nonAliasingFejerWeightedPrimeAtom_abs_le
    {X N m n : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X)
    (hn : n ∈ Finset.Ioc (2 * X) (4 * X)) :
    |nonAliasingFejerWeightedPrimeAtom X N m n| ≤
      1 + Real.log (((4 * X : ℕ) : ℝ)) := by
  have hw0 :=
    nonAliasingFejerPrefixWeight_nonnegative
      hreg hm0 hm1 hn
  have hw1 :=
    nonAliasingFejerPrefixWeight_le_one
      hreg hm0 hm1 hn
  unfold nonAliasingFejerWeightedPrimeAtom
  rw [abs_mul, abs_of_nonneg hw0]
  calc
    nonAliasingFejerPrefixWeight X N m n *
        |primeDiscrepancyAtom n|
      ≤
    1 * |primeDiscrepancyAtom n| := by
      exact mul_le_mul_of_nonneg_right hw1 (abs_nonneg _)
    _ = |primeDiscrepancyAtom n| := by ring
    _ ≤ 1 + Real.log (((4 * X : ℕ) : ℝ)) :=
      primeDiscrepancyAtom_abs_le hreg.1 hn

/-- The diagonal correlation has only `2X` summands, each bounded by the square
of the safe logarithmic atom envelope. -/
theorem nonAliasingFejerQuadraticDiagonal_le_atomEnvelope
    {X N m : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    nonAliasingFejerQuadraticDiagonal X N m ≤
      (2 * X : ℝ) *
        (1 + Real.log (((4 * X : ℕ) : ℝ)))^2 := by
  have hB0 :=
    one_add_log_four_mul_nonnegative hreg.1
  have hpoint :
      ∀ n ∈ Finset.Ioc (2 * X) (4 * X),
        (nonAliasingFejerWeightedPrimeAtom X N m n)^2 ≤
          (1 + Real.log (((4 * X : ℕ) : ℝ)))^2 := by
    intro n hn
    have habs :=
      nonAliasingFejerWeightedPrimeAtom_abs_le
        hreg hm0 hm1 hn
    apply (sq_le_sq).2
    simpa [abs_of_nonneg hB0] using habs
  unfold nonAliasingFejerQuadraticDiagonal
  calc
    (∑ n ∈ Finset.Ioc (2 * X) (4 * X),
        (nonAliasingFejerWeightedPrimeAtom X N m n)^2)
      ≤
    ∑ n ∈ Finset.Ioc (2 * X) (4 * X),
      (1 + Real.log (((4 * X : ℕ) : ℝ)))^2 := by
        exact Finset.sum_le_sum hpoint
    _ =
      (2 * X : ℝ) *
        (1 + Real.log (((4 * X : ℕ) : ℝ)))^2 := by
          have hcard :
              (Finset.Ioc (2 * X) (4 * X)).card = 2 * X := by
            rw [Nat.card_Ioc]
            omega
          rw [Finset.sum_const, nsmul_eq_mul, hcard]
          push_cast

/-- The elementary diagonal is already within the exact seven-eighths
correlation target, with a fixed harmless constant. -/
theorem sevenEighthsBoundaryMinimalFejerQuadraticDiagonal_le_exactTarget
    (j m : ℕ)
    (hm0 : 2 * dyadicScale j ≤ m)
    (hm1 : m ≤ 4 * dyadicScale j) :
    nonAliasingFejerQuadraticDiagonal
        (dyadicScale j)
        (sevenEighthsBoundaryMinimalFejerCutoff j)
        m
      ≤
    200 *
      Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
      (Real.log (dyadicScale j : ℝ))^4 := by
  have hdiag :=
    nonAliasingFejerQuadraticDiagonal_le_atomEnvelope
      (sevenEighthsBoundaryMinimalFejerCutoff_nonaliasing j)
      hm0 hm1
  have hlogPos :
      0 < Real.log (dyadicScale j : ℝ) := by
    linarith [
      half_lt_log_dyadicScale_for_exactCorrelationReadout j]
  have hB0 :
      0 ≤
        1 + Real.log (((4 * dyadicScale j : ℕ) : ℝ)) :=
    one_add_log_four_mul_nonnegative
      (dyadicScale_pos_for_boundaryMinimalFejerSchedule j)
  have hBsq :
      (1 + Real.log (((4 * dyadicScale j : ℕ) : ℝ)))^2 ≤
        (5 * Real.log (dyadicScale j : ℝ))^2 := by
    exact
      (sq_le_sq₀ hB0 (by positivity)).2
        (one_add_log_four_mul_dyadicScale_le_five_log j)
  have hXone :
      (1 : ℝ) ≤ (dyadicScale j : ℝ) := by
    exact_mod_cast
      one_le_dyadicScale_for_boundaryMinimalFejerSchedule j
  have hXpow :
      (dyadicScale j : ℝ) ≤
        Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) := by
    simpa only [Real.rpow_one] using
      Real.rpow_le_rpow_of_exponent_le
        hXone (by norm_num : (1 : ℝ) ≤ (3 : ℝ) / 2)
  have hLhalf :
      (1 : ℝ) / 2 ≤ Real.log (dyadicScale j : ℝ) := by
    exact le_of_lt
      (half_lt_log_dyadicScale_for_exactCorrelationReadout j)
  have hLsqQuarter :
      (1 : ℝ) / 4 ≤
        (Real.log (dyadicScale j : ℝ))^2 := by
    nlinarith [
      sq_nonneg
        (Real.log (dyadicScale j : ℝ) - (1 : ℝ) / 2)]
  have hfactor :
      0 ≤
        4 * (Real.log (dyadicScale j : ℝ))^2 - 1 := by
    nlinarith
  have hproduct :
      0 ≤
        (Real.log (dyadicScale j : ℝ))^2 *
          (4 * (Real.log (dyadicScale j : ℝ))^2 - 1) :=
    mul_nonneg (sq_nonneg _) hfactor
  have hlogPower :
      (Real.log (dyadicScale j : ℝ))^2 ≤
        4 * (Real.log (dyadicScale j : ℝ))^4 := by
    nlinarith [hproduct]
  calc
    nonAliasingFejerQuadraticDiagonal
        (dyadicScale j)
        (sevenEighthsBoundaryMinimalFejerCutoff j)
        m
      ≤
    (2 * dyadicScale j : ℝ) *
      (1 + Real.log (((4 * dyadicScale j : ℕ) : ℝ)))^2 := hdiag
    _ ≤
    (2 * dyadicScale j : ℝ) *
      (5 * Real.log (dyadicScale j : ℝ))^2 := by
        exact mul_le_mul_of_nonneg_left hBsq (by positivity)
    _ =
    50 * (dyadicScale j : ℝ) *
      (Real.log (dyadicScale j : ℝ))^2 := by
        push_cast
        ring
    _ ≤
    50 *
        Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
        (Real.log (dyadicScale j : ℝ))^2 := by
          exact mul_le_mul_of_nonneg_right
            (mul_le_mul_of_nonneg_left hXpow (by norm_num))
            (sq_nonneg _)
    _ ≤
    50 *
        Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
        (4 * (Real.log (dyadicScale j : ℝ))^4) := by
          exact mul_le_mul_of_nonneg_left hlogPower (by positivity)
    _ =
    200 *
      Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
      (Real.log (dyadicScale j : ℝ))^4 := by
        ring

/-- Exact ledger in correlation form rather than value-square form. -/
theorem nonAliasingFejerQuadraticCorrelation_eq_diagonal_add_offDiagonal
    (X N m : ℕ) :
    nonAliasingFejerQuadraticCorrelation X N m =
      nonAliasingFejerQuadraticDiagonal X N m +
        nonAliasingFejerQuadraticOffDiagonal X N m := by
  rw [nonAliasingFejerQuadraticCorrelation_eq_value_sq,
    nonAliasingPrimePrefixFejerOperator_value_sq_eq_diagonal_add_offDiagonal]

/-- The exact remaining arithmetic supplier after closing the diagonal.  Only
an upper bound for the signed off-diagonal remainder is required. -/
def SevenEighthsBoundaryMinimalExactOffDiagonalBound : Prop :=
  AllDyadicPrimeOnlyFourierCoordinateBoundAt
      ((7 : ℝ) / 8) →
    ∃ C : ℝ, 0 ≤ C ∧
      ∃ j₀ : ℕ,
        ∀ j ≥ j₀, ∀ m : ℕ,
          2 * dyadicScale j ≤ m →
          m ≤ 4 * dyadicScale j →
          nonAliasingFejerQuadraticOffDiagonal
              (dyadicScale j)
              (sevenEighthsBoundaryMinimalFejerCutoff j)
              m
            ≤
          C *
            Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
            (Real.log (dyadicScale j : ℝ))^4

/-- Absolute off-diagonal control is a stronger sufficient condition, but the
signed upper bound is the exact logical requirement. -/
def SevenEighthsBoundaryMinimalExactOffDiagonalAbsoluteBound : Prop :=
  AllDyadicPrimeOnlyFourierCoordinateBoundAt
      ((7 : ℝ) / 8) →
    ∃ C : ℝ, 0 ≤ C ∧
      ∃ j₀ : ℕ,
        ∀ j ≥ j₀, ∀ m : ℕ,
          2 * dyadicScale j ≤ m →
          m ≤ 4 * dyadicScale j →
          |nonAliasingFejerQuadraticOffDiagonal
              (dyadicScale j)
              (sevenEighthsBoundaryMinimalFejerCutoff j)
              m|
            ≤
          C *
            Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
            (Real.log (dyadicScale j : ℝ))^4

/-- Absolute off-diagonal control implies the exact signed supplier. -/
theorem absoluteOffDiagonalBound_to_signedOffDiagonalBound
    (habs :
      SevenEighthsBoundaryMinimalExactOffDiagonalAbsoluteBound) :
    SevenEighthsBoundaryMinimalExactOffDiagonalBound := by
  intro hgraded
  rcases habs hgraded with ⟨C, hC, j₀, hbound⟩
  refine ⟨C, hC, j₀, ?_⟩
  intro j hj m hm0 hm1
  exact
    (le_abs_self
      (nonAliasingFejerQuadraticOffDiagonal
        (dyadicScale j)
        (sevenEighthsBoundaryMinimalFejerCutoff j)
        m)).trans
      (hbound j hj m hm0 hm1)

/-- The signed off-diagonal supplier, together with the now-closed diagonal,
gives the exact weighted correlation theorem. -/
theorem signedOffDiagonalBound_to_exactCorrelationBound
    (hoff :
      SevenEighthsBoundaryMinimalExactOffDiagonalBound) :
    SevenEighthsBoundaryMinimalExactCorrelationBound := by
  intro hgraded
  rcases hoff hgraded with ⟨C, hC, j₀, hbound⟩
  refine ⟨C + 200, add_nonneg hC (by norm_num), j₀, ?_⟩
  intro j hj m hm0 hm1
  change
    nonAliasingFejerQuadraticCorrelation
        (dyadicScale j)
        (sevenEighthsBoundaryMinimalFejerCutoff j)
        m
      ≤
    (C + 200) *
      Real.rpow (dyadicScale j : ℝ)
        (gradedQuadraticCorrelationExponent
          ((7 : ℝ) / 8) ((1 : ℝ) / 4)) *
      (Real.log (dyadicScale j : ℝ))^4
  have hdiag :=
    sevenEighthsBoundaryMinimalFejerQuadraticDiagonal_le_exactTarget
      j m hm0 hm1
  have hoffdiag :=
    hbound j hj m hm0 hm1
  calc
    nonAliasingFejerQuadraticCorrelation
        (dyadicScale j)
        (sevenEighthsBoundaryMinimalFejerCutoff j)
        m
      =
    nonAliasingFejerQuadraticDiagonal
        (dyadicScale j)
        (sevenEighthsBoundaryMinimalFejerCutoff j)
        m +
      nonAliasingFejerQuadraticOffDiagonal
        (dyadicScale j)
        (sevenEighthsBoundaryMinimalFejerCutoff j)
        m :=
          nonAliasingFejerQuadraticCorrelation_eq_diagonal_add_offDiagonal
            _ _ _
    _ ≤
    200 *
        Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
        (Real.log (dyadicScale j : ℝ))^4 +
      C *
        Real.rpow (dyadicScale j : ℝ) ((3 : ℝ) / 2) *
        (Real.log (dyadicScale j : ℝ))^4 :=
          add_le_add hdiag hoffdiag
    _ =
    (C + 200) *
      Real.rpow (dyadicScale j : ℝ)
        (gradedQuadraticCorrelationExponent
          ((7 : ℝ) / 8) ((1 : ℝ) / 4)) *
      (Real.log (dyadicScale j : ℝ))^4 := by
        norm_num [gradedQuadraticCorrelationExponent]
        ring

/-- The signed off-diagonal theorem alone now reaches the existing
seven-eighths finite partial-prime discrepancy target. -/
theorem signedOffDiagonalBound_to_partialDiscrepancy
    (hoff :
      SevenEighthsBoundaryMinimalExactOffDiagonalBound)
    (hgraded :
      AllDyadicPrimeOnlyFourierCoordinateBoundAt
        ((7 : ℝ) / 8)) :
    SevenEighthsPrimePartialDiscrepancy :=
  sevenEighthsBoundaryMinimalExactCorrelationBound_to_partialDiscrepancy
    (signedOffDiagonalBound_to_exactCorrelationBound hoff)
    hgraded

end GRWTSK.RiemannHypothesis
```
