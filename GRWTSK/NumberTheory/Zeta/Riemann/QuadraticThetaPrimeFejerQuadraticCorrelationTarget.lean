/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerArithmeticGainSplit
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerArithmeticReduction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Quadratic-correlation target for the residual Fejer arithmetic gain

The corrected threshold-graded Fejer route separates the total value gain into

* `beta / 2`, which neutralizes the square-root bandwidth loss;
* `alpha`, which must come from arithmetic cancellation.

The remaining arithmetic condition is `alpha >= 1-rho`.  Squaring the smoothed
value doubles this obligation.  If the weighted quadratic correlation has a
power saving `kappa`, then the corresponding amplitude gain is `kappa / 2`.
Thus quadratic closure is equivalent to

  kappa >= 2 * (1-rho).

At rho=7/8, the residual arithmetic eighth is exactly a quarter-power saving in
the square.  This file also identifies that square with an explicit finite
double correlation of the corrected period-4X Fejer weights and the prime
discrepancy atoms.

No correlation estimate, cutoff schedule, square-root asymptotic readout,
partial-prime discrepancy estimate, or threshold descent is proved here.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EXPLICIT_FEJER_QUADRATIC_CORRELATION_IDENTITY_SOURCE_PROVED /
QUADRATIC_SAVING_TO_ARITHMETIC_GAIN_SOURCE_PROVED /
SEVEN_EIGHTHS_CORRELATION_QUARTER_REQUIRED /
QUADRATIC_CORRELATION_SUPPLIER_INTERFACE_TYPED /
SEVEN_EIGHTHS_SMOOTHED_VALUE_SUPPLIER_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

/-- One corrected Fejer-weighted prime discrepancy atom on the ambient octave. -/
def nonAliasingFejerWeightedPrimeAtom
    (X N m n : ℕ) : ℝ :=
  nonAliasingFejerPrefixWeight X N m n *
    primeDiscrepancyAtom n

/-- The corrected smoothed discrepancy is exactly the sum of the weighted
prime discrepancy atoms. -/
theorem nonAliasingPrimePrefixFejerOperator_value_eq_weightedPrimeAtom_sum
    (X N m : ℕ) :
    nonAliasingPrimePrefixFejerOperator.value X N m =
      ∑ n ∈ Finset.Ioc (2 * X) (4 * X),
        nonAliasingFejerWeightedPrimeAtom X N m n := by
  simpa [nonAliasingFejerWeightedPrimeAtom] using
    nonAliasingPrimePrefixFejerOperator_eq_atom_sum X N m

/-- Explicit finite quadratic correlation of the corrected Fejer-weighted
prime discrepancy atoms. -/
def nonAliasingFejerQuadraticCorrelation
    (X N m : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc (2 * X) (4 * X),
    ∑ q ∈ Finset.Ioc (2 * X) (4 * X),
      nonAliasingFejerWeightedPrimeAtom X N m n *
        nonAliasingFejerWeightedPrimeAtom X N m q

/-- The explicit double correlation is exactly the square of the corrected
smoothed prime-prefix discrepancy. -/
theorem nonAliasingFejerQuadraticCorrelation_eq_value_sq
    (X N m : ℕ) :
    nonAliasingFejerQuadraticCorrelation X N m =
      (nonAliasingPrimePrefixFejerOperator.value X N m)^2 := by
  rw [nonAliasingPrimePrefixFejerOperator_value_eq_weightedPrimeAtom_sum]
  unfold nonAliasingFejerQuadraticCorrelation
  rw [pow_two, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro n hn
  rw [Finset.mul_sum]

/-- In particular, the explicit quadratic correlation is nonnegative. -/
theorem nonAliasingFejerQuadraticCorrelation_nonnegative
    (X N m : ℕ) :
    0 ≤ nonAliasingFejerQuadraticCorrelation X N m := by
  rw [nonAliasingFejerQuadraticCorrelation_eq_value_sq]
  exact sq_nonneg _

/-- Diagonal part of the explicit quadratic correlation. -/
def nonAliasingFejerQuadraticDiagonal
    (X N m : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc (2 * X) (4 * X),
    (nonAliasingFejerWeightedPrimeAtom X N m n)^2

/-- Off-diagonal remainder, defined without discarding its sign. -/
def nonAliasingFejerQuadraticOffDiagonal
    (X N m : ℕ) : ℝ :=
  nonAliasingFejerQuadraticCorrelation X N m -
    nonAliasingFejerQuadraticDiagonal X N m

/-- Exact diagonal/off-diagonal ledger for the smoothed-value square. -/
theorem nonAliasingPrimePrefixFejerOperator_value_sq_eq_diagonal_add_offDiagonal
    (X N m : ℕ) :
    (nonAliasingPrimePrefixFejerOperator.value X N m)^2 =
      nonAliasingFejerQuadraticDiagonal X N m +
        nonAliasingFejerQuadraticOffDiagonal X N m := by
  rw [← nonAliasingFejerQuadraticCorrelation_eq_value_sq]
  unfold nonAliasingFejerQuadraticOffDiagonal
  ring

/-- Exponent of a squared smoothed-value estimate carrying correlation saving
`kappa`. -/
def gradedQuadraticCorrelationExponent
    (ρ κ : ℝ) : ℝ :=
  2 * ρ - κ

/-- Amplitude exponent recovered by taking the square root of the quadratic
correlation scale. -/
def gradedQuadraticCorrelationAmplitudeExponent
    (ρ κ : ℝ) : ℝ :=
  gradedQuadraticCorrelationExponent ρ κ / 2

/-- Arithmetic gain in the unsquared value supplied by correlation saving
`kappa`. -/
def gradedQuadraticCorrelationArithmeticGain
    (κ : ℝ) : ℝ :=
  κ / 2

theorem gradedQuadraticCorrelationAmplitudeExponent_eq
    (ρ κ : ℝ) :
    gradedQuadraticCorrelationAmplitudeExponent ρ κ =
      ρ - κ / 2 := by
  unfold gradedQuadraticCorrelationAmplitudeExponent
    gradedQuadraticCorrelationExponent
  ring

/-- The quadratic correlation saving is precisely twice the residual
arithmetic gain. -/
theorem gradedQuadraticCorrelationArithmeticGain_eq_half
    (κ : ℝ) :
    gradedQuadraticCorrelationArithmeticGain κ = κ / 2 := by
  rfl

/-- Exact squared-moment criterion for reaching the quadratic threshold. -/
theorem gradedQuadraticCorrelationAmplitude_le_quadratic_iff
    {ρ κ : ℝ} :
    gradedQuadraticCorrelationAmplitudeExponent ρ κ ≤
        quadraticThreshold ρ ↔
      2 * (1 - ρ) ≤ κ := by
  unfold gradedQuadraticCorrelationAmplitudeExponent
    gradedQuadraticCorrelationExponent quadraticThreshold
  constructor <;> intro h <;> linarith

/-- The same criterion expressed as the residual arithmetic-gain obligation. -/
theorem gradedArithmeticGain_le_quadraticCorrelationGain_iff
    {ρ κ : ℝ} :
    gradedArithmeticGainRequirement ρ ≤
        gradedQuadraticCorrelationArithmeticGain κ ↔
      2 * (1 - ρ) ≤ κ := by
  unfold gradedArithmeticGainRequirement
    gradedQuadraticCorrelationArithmeticGain
  constructor <;> intro h <;> linarith

/-- The split smoothed-value exponent with arithmetic gain `kappa/2` is exactly
the amplitude exponent extracted from the quadratic correlation. -/
theorem gradedSplitSmoothedValueExponent_quadraticCorrelationGain
    (ρ β κ : ℝ) :
    gradedSplitSmoothedValueExponent ρ β
        (gradedQuadraticCorrelationArithmeticGain κ) =
      gradedQuadraticCorrelationAmplitudeExponent ρ κ := by
  unfold gradedSplitSmoothedValueExponent
    gradedSmoothedValueExponent gradedBandwidthGain
    gradedQuadraticCorrelationArithmeticGain
    gradedQuadraticCorrelationAmplitudeExponent
    gradedQuadraticCorrelationExponent
    gradedFourierMaximalExponent
  ring

/-- A dyadic cutoff schedule whose integer cutoff tracks `X^beta` and remains
inside the corrected non-aliasing period.  Existence is deliberately separate
from the correlation estimate. -/
structure DyadicFejerPowerCutoffSchedule
    (β : ℝ) where
  cutoff : ℕ → ℕ
  cutoff_positive :
    ∀ j, 0 < cutoff j
  nonaliasing :
    ∀ j,
      NonAliasingFejerCutoffRegime
        (dyadicScale j) (cutoff j)
  lower_power :
    ∀ j,
      Real.rpow (dyadicScale j : ℝ) β ≤
        (cutoff j : ℝ)
  upper_power :
    ∀ j,
      (cutoff j : ℝ) ≤
        Real.rpow (dyadicScale j : ℝ) β + 1

/-- Exact dyadic quadratic-correlation target.  The logarithmic fourth power is
the square of the logarithmic-square amplitude envelope. -/
def DyadicPrimeFejerQuadraticCorrelationBoundAt
    {β : ℝ}
    (schedule : DyadicFejerPowerCutoffSchedule β)
    (ρ κ : ℝ) : Prop :=
  ∀ η : ℝ, 0 < η →
    ∃ C : ℝ, 0 ≤ C ∧
      ∃ j₀ : ℕ,
        ∀ j ≥ j₀, ∀ m : ℕ,
          2 * dyadicScale j ≤ m →
          m ≤ 4 * dyadicScale j →
            nonAliasingFejerQuadraticCorrelation
                (dyadicScale j) (schedule.cutoff j) m ≤
              C *
                Real.rpow (dyadicScale j : ℝ)
                  (gradedQuadraticCorrelationExponent ρ κ + η) *
                (Real.log (dyadicScale j : ℝ))^4

/-- Deterministic readout still required after the explicit correlation bound:
take square roots, combine the already proved Fejer boundary estimate, and
absorb constants and logarithmic slack. -/
def DyadicPrimeFejerQuadraticCorrelationReadoutAt
    {β : ℝ}
    (schedule : DyadicFejerPowerCutoffSchedule β)
    (ρ κ : ℝ) : Prop :=
  DyadicPrimeFejerQuadraticCorrelationBoundAt
      schedule ρ κ →
    DyadicPrimePartialDiscrepancyLogSqAt ρ

/-- Corrected supplier phrased at the squared-correlation level.  The hard
arithmetic field is an explicit weighted prime-atom correlation estimate rather
than an opaque amplitude gain. -/
structure ThresholdGradedPrimeFejerQuadraticCorrelationSupplier
    (ρ β κ : ℝ) where
  schedule :
    DyadicFejerPowerCutoffSchedule β
  bandwidthExponent_nonnegative :
    0 ≤ β
  correlationSaving_nonnegative :
    0 ≤ κ
  boundary_closure :
    truncatedFourierBoundaryExponent β ≤
      quadraticThreshold ρ
  amplitude_closure :
    gradedQuadraticCorrelationAmplitudeExponent ρ κ ≤
      quadraticThreshold ρ
  correlation_bound :
    AllDyadicPrimeOnlyFourierCoordinateBoundAt ρ →
      DyadicPrimeFejerQuadraticCorrelationBoundAt
        schedule ρ κ
  readout :
    DyadicPrimeFejerQuadraticCorrelationReadoutAt
      schedule ρ κ

/-- Every quadratic-correlation supplier carries the exact required correlation
saving. -/
theorem thresholdGradedPrimeFejerQuadraticCorrelationSupplier_saving_requirement
    {ρ β κ : ℝ}
    (supplier :
      ThresholdGradedPrimeFejerQuadraticCorrelationSupplier
        ρ β κ) :
    2 * (1 - ρ) ≤ κ :=
  gradedQuadraticCorrelationAmplitude_le_quadratic_iff.mp
    supplier.amplitude_closure

/-- A quadratic-correlation supplier canonically yields the previous split
supplier, with arithmetic gain `kappa/2`. -/
def ThresholdGradedPrimeFejerQuadraticCorrelationSupplier.toSplitSupplier
    {ρ β κ : ℝ}
    (supplier :
      ThresholdGradedPrimeFejerQuadraticCorrelationSupplier
        ρ β κ) :
    ThresholdGradedPrimeFejerSplitSupplier ρ β where
  bandwidthExponent_nonnegative :=
    supplier.bandwidthExponent_nonnegative
  arithmeticGain :=
    gradedQuadraticCorrelationArithmeticGain κ
  arithmeticGain_nonnegative := by
    unfold gradedQuadraticCorrelationArithmeticGain
    exact div_nonneg supplier.correlationSaving_nonnegative (by norm_num)
  boundary_closure :=
    supplier.boundary_closure
  value_closure := by
    rw [gradedSplitSmoothedValueExponent_quadraticCorrelationGain]
    exact supplier.amplitude_closure
  readout := by
    intro hgraded
    exact supplier.readout
      (supplier.correlation_bound hgraded)

/-- At seven eighths the required saving in the squared correlation is exactly
one quarter. -/
@[simp]
theorem sevenEighths_quadraticCorrelationSavingRequirement :
    2 * (1 - ((7 : ℝ) / 8)) = (1 : ℝ) / 4 := by
  norm_num

/-- A quarter-power correlation saving gives the residual arithmetic eighth. -/
@[simp]
theorem sevenEighths_quarterCorrelationSaving_arithmeticGain :
    gradedQuadraticCorrelationArithmeticGain ((1 : ℝ) / 4) =
      (1 : ℝ) / 8 := by
  norm_num [gradedQuadraticCorrelationArithmeticGain]

/-- The quarter-saving square estimate produces the desired three-quarter
amplitude exponent. -/
@[simp]
theorem sevenEighths_quarterCorrelationSaving_amplitudeExponent :
    gradedQuadraticCorrelationAmplitudeExponent
        ((7 : ℝ) / 8) ((1 : ℝ) / 4) =
      (3 : ℝ) / 4 := by
  norm_num [gradedQuadraticCorrelationAmplitudeExponent,
    gradedQuadraticCorrelationExponent]

/-- At the boundary-minimal cutoff, the quarter total gain is again an eighth
of bandwidth neutralization plus an eighth extracted from the quadratic
correlation. -/
theorem sevenEighths_boundaryMinimal_quadraticCorrelationGainSplit :
    gradedBandwidthGain ((1 : ℝ) / 4) +
        gradedQuadraticCorrelationArithmeticGain ((1 : ℝ) / 4) =
      (1 : ℝ) / 4 := by
  norm_num [gradedBandwidthGain,
    gradedQuadraticCorrelationArithmeticGain]

/-- Every seven-eighths quadratic-correlation supplier must provide at least a
quarter-power saving in the square. -/
theorem sevenEighths_quadraticCorrelationSupplier_saving_ge_quarter
    {β κ : ℝ}
    (supplier :
      ThresholdGradedPrimeFejerQuadraticCorrelationSupplier
        ((7 : ℝ) / 8) β κ) :
    (1 : ℝ) / 4 ≤ κ := by
  have h :=
    thresholdGradedPrimeFejerQuadraticCorrelationSupplier_saving_requirement
      supplier
  norm_num at h
  exact h

/-- Equivalently, every such supplier carries at least an arithmetic eighth in
the unsquared value. -/
theorem sevenEighths_quadraticCorrelationSupplier_arithmeticGain_ge_eighth
    {β κ : ℝ}
    (supplier :
      ThresholdGradedPrimeFejerQuadraticCorrelationSupplier
        ((7 : ℝ) / 8) β κ) :
    (1 : ℝ) / 8 ≤
      gradedQuadraticCorrelationArithmeticGain κ := by
  have h :=
    sevenEighths_quadraticCorrelationSupplier_saving_ge_quarter
      supplier
  unfold gradedQuadraticCorrelationArithmeticGain
  linarith

/-- A concrete seven-eighths quadratic-correlation supplier discharges the
existing finite partial-prime discrepancy target. -/
theorem sevenEighths_quadraticCorrelationSupplier_to_partialDiscrepancy
    {β κ : ℝ}
    (supplier :
      ThresholdGradedPrimeFejerQuadraticCorrelationSupplier
        ((7 : ℝ) / 8) β κ)
    (hgraded :
      AllDyadicPrimeOnlyFourierCoordinateBoundAt
        ((7 : ℝ) / 8)) :
    SevenEighthsPrimePartialDiscrepancy :=
  supplier.readout
    (supplier.correlation_bound hgraded)

end GRWTSK.RiemannHypothesis
