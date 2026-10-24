/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerQuadraticCorrelationSlackBarrier
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Boundary-minimal seven-eighths Fejer cutoff schedule

The corrected Fejer boundary condition at threshold `rho` requires bandwidth
exponent at least `2 * (1-rho)`. At `rho=7/8` the boundary-minimal exponent is
therefore `1/4`.

This file constructs the concrete dyadic integer cutoff

  N_j = ceil ((dyadicScale j)^(1/4))

and proves that it is positive, remains strictly below the non-aliasing period
`4 * dyadicScale j`, and lies between `X^(1/4)` and `X^(1/4)+1`.

Consequently the previously abstract boundary-minimal cutoff schedule is now
source-constructed. The remaining seven-eighths route is reduced to the exact
`X^(3/2) log(X)^4` weighted prime-atom correlation theorem and its deterministic
exact readout.

No exact correlation estimate, readout, partial-prime discrepancy theorem,
threshold descent, or Riemann Hypothesis result is proved here.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
BOUNDARY_MINIMAL_FEJER_CUTOFF_SCHEDULE_SOURCE_PROVED /
SEVEN_EIGHTHS_CUTOFF_NONALIASING_SOURCE_PROVED /
EXACT_CORRELATION_FRONTIER_REDUCED_TO_BOUND_AND_READOUT /
SEVEN_EIGHTHS_EXACT_CORRELATION_BOUND_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy

/-- Boundary-minimal integer cutoff at the seven-eighths threshold. -/
def sevenEighthsBoundaryMinimalFejerCutoff (j : ℕ) : ℕ :=
  Nat.ceil
    (Real.rpow (dyadicScale j : ℝ) ((1 : ℝ) / 4))

/-- Every dyadic scale used by the arithmetic packet is positive. -/
theorem dyadicScale_pos_for_boundaryMinimalFejerSchedule
    (j : ℕ) :
    0 < dyadicScale j := by
  unfold dyadicScale
  positivity

/-- Every dyadic scale is at least one. -/
theorem one_le_dyadicScale_for_boundaryMinimalFejerSchedule
    (j : ℕ) :
    1 ≤ dyadicScale j := by
  have h :=
    dyadicScale_pos_for_boundaryMinimalFejerSchedule j
  omega

/-- The fourth-root scale is positive. -/
theorem sevenEighthsBoundaryMinimalFejerPower_pos
    (j : ℕ) :
    0 <
      Real.rpow (dyadicScale j : ℝ)
        ((1 : ℝ) / 4) := by
  apply Real.rpow_pos_of_pos
  exact_mod_cast
    dyadicScale_pos_for_boundaryMinimalFejerSchedule j

/-- The integer cutoff is positive. -/
theorem sevenEighthsBoundaryMinimalFejerCutoff_pos
    (j : ℕ) :
    0 < sevenEighthsBoundaryMinimalFejerCutoff j := by
  unfold sevenEighthsBoundaryMinimalFejerCutoff
  exact Nat.ceil_pos.mpr
    (sevenEighthsBoundaryMinimalFejerPower_pos j)

/-- The ceiling cutoff lies above the desired fourth-root power. -/
theorem sevenEighthsBoundaryMinimalFejerCutoff_lower_power
    (j : ℕ) :
    Real.rpow (dyadicScale j : ℝ)
        ((1 : ℝ) / 4) ≤
      (sevenEighthsBoundaryMinimalFejerCutoff j : ℝ) := by
  unfold sevenEighthsBoundaryMinimalFejerCutoff
  exact Nat.le_ceil _

/-- The ceiling cutoff costs less than one above the desired fourth-root
power, hence satisfies the schedule's weak upper bound. -/
theorem sevenEighthsBoundaryMinimalFejerCutoff_upper_power
    (j : ℕ) :
    (sevenEighthsBoundaryMinimalFejerCutoff j : ℝ) ≤
      Real.rpow (dyadicScale j : ℝ)
          ((1 : ℝ) / 4) + 1 := by
  unfold sevenEighthsBoundaryMinimalFejerCutoff
  have hnonneg :
      0 ≤
        Real.rpow (dyadicScale j : ℝ)
          ((1 : ℝ) / 4) := by
    exact (sevenEighthsBoundaryMinimalFejerPower_pos j).le
  exact (Nat.ceil_lt_add_one hnonneg).le

/-- Since the dyadic scale is at least one and `1/4 ≤ 1`, its fourth root is
bounded by the scale itself. -/
theorem sevenEighthsBoundaryMinimalFejerPower_le_scale
    (j : ℕ) :
    Real.rpow (dyadicScale j : ℝ)
        ((1 : ℝ) / 4) ≤
      (dyadicScale j : ℝ) := by
  apply Real.rpow_le_self_of_one_le
  · exact_mod_cast
      one_le_dyadicScale_for_boundaryMinimalFejerSchedule j
  · norm_num

/-- The ceiling fourth-root cutoff remains strictly below the corrected
non-aliasing period `4X`. -/
theorem sevenEighthsBoundaryMinimalFejerCutoff_lt_octavePeriod
    (j : ℕ) :
    sevenEighthsBoundaryMinimalFejerCutoff j <
      fejerOctavePeriod (dyadicScale j) := by
  have hceil :
      (sevenEighthsBoundaryMinimalFejerCutoff j : ℝ) <
        Real.rpow (dyadicScale j : ℝ)
            ((1 : ℝ) / 4) + 1 := by
    unfold sevenEighthsBoundaryMinimalFejerCutoff
    exact Nat.ceil_lt_add_one
      (sevenEighthsBoundaryMinimalFejerPower_pos j).le
  have hnat :
      dyadicScale j + 1 ≤
        fejerOctavePeriod (dyadicScale j) := by
    unfold fejerOctavePeriod
    have hpos :=
      dyadicScale_pos_for_boundaryMinimalFejerSchedule j
    omega
  have hreal :
      (sevenEighthsBoundaryMinimalFejerCutoff j : ℝ) <
        (fejerOctavePeriod (dyadicScale j) : ℝ) := by
    calc
      (sevenEighthsBoundaryMinimalFejerCutoff j : ℝ)
          <
        Real.rpow (dyadicScale j : ℝ)
            ((1 : ℝ) / 4) + 1 := hceil
      _ ≤ (dyadicScale j : ℝ) + 1 := by
        exact add_le_add_right
          (sevenEighthsBoundaryMinimalFejerPower_le_scale j) 1
      _ ≤
        (fejerOctavePeriod (dyadicScale j) : ℝ) := by
          exact_mod_cast hnat
  exact_mod_cast hreal

/-- The concrete cutoff satisfies the period-`4X` non-aliasing regime at every
dyadic scale. -/
theorem sevenEighthsBoundaryMinimalFejerCutoff_nonaliasing
    (j : ℕ) :
    NonAliasingFejerCutoffRegime
      (dyadicScale j)
      (sevenEighthsBoundaryMinimalFejerCutoff j) := by
  exact
    ⟨dyadicScale_pos_for_boundaryMinimalFejerSchedule j,
      sevenEighthsBoundaryMinimalFejerCutoff_pos j,
      sevenEighthsBoundaryMinimalFejerCutoff_lt_octavePeriod j⟩

/-- Concrete boundary-minimal dyadic Fejer schedule at exponent `1/4`. -/
def sevenEighthsBoundaryMinimalFejerSchedule :
    DyadicFejerPowerCutoffSchedule ((1 : ℝ) / 4) where
  cutoff :=
    sevenEighthsBoundaryMinimalFejerCutoff
  cutoff_positive :=
    sevenEighthsBoundaryMinimalFejerCutoff_pos
  nonaliasing :=
    sevenEighthsBoundaryMinimalFejerCutoff_nonaliasing
  lower_power :=
    sevenEighthsBoundaryMinimalFejerCutoff_lower_power
  upper_power :=
    sevenEighthsBoundaryMinimalFejerCutoff_upper_power

@[simp]
theorem sevenEighthsBoundaryMinimalFejerSchedule_cutoff
    (j : ℕ) :
    sevenEighthsBoundaryMinimalFejerSchedule.cutoff j =
      sevenEighthsBoundaryMinimalFejerCutoff j := by
  rfl

/-- The exact remaining arithmetic theorem at the now-concrete schedule. -/
def SevenEighthsBoundaryMinimalExactCorrelationBound : Prop :=
  AllDyadicPrimeOnlyFourierCoordinateBoundAt
      ((7 : ℝ) / 8) →
    DyadicPrimeFejerQuadraticCorrelationExactBoundAt
      sevenEighthsBoundaryMinimalFejerSchedule
      ((7 : ℝ) / 8)
      ((1 : ℝ) / 4)

/-- The deterministic exact-correlation readout at the now-concrete schedule. -/
def SevenEighthsBoundaryMinimalExactCorrelationReadout : Prop :=
  DyadicPrimeFejerQuadraticCorrelationExactReadoutAt
    sevenEighthsBoundaryMinimalFejerSchedule
    ((7 : ℝ) / 8)
    ((1 : ℝ) / 4)

/-- The schedule obligation is closed; the remaining exact supplier contains
only the explicit correlation theorem and deterministic readout. -/
structure SevenEighthsBoundaryMinimalExactCorrelationData where
  exactCorrelationBound :
    SevenEighthsBoundaryMinimalExactCorrelationBound
  exactReadout :
    SevenEighthsBoundaryMinimalExactCorrelationReadout

/-- Boundary and amplitude exponent closure are automatic at the concrete
boundary-minimal parameters. -/
def SevenEighthsBoundaryMinimalExactCorrelationData.toExactSupplier
    (data : SevenEighthsBoundaryMinimalExactCorrelationData) :
    ThresholdGradedPrimeFejerQuadraticCorrelationExactSupplier
      ((7 : ℝ) / 8)
      ((1 : ℝ) / 4)
      ((1 : ℝ) / 4) where
  schedule :=
    sevenEighthsBoundaryMinimalFejerSchedule
  bandwidthExponent_nonnegative := by
    norm_num
  correlationSaving_nonnegative := by
    norm_num
  boundary_closure := by
    norm_num [truncatedFourierBoundaryExponent,
      quadraticThreshold]
  amplitude_closure := by
    norm_num [gradedQuadraticCorrelationAmplitudeExponent,
      gradedQuadraticCorrelationExponent,
      quadraticThreshold]
  exact_correlation_bound :=
    data.exactCorrelationBound
  exact_readout :=
    data.exactReadout

/-- Once the two genuine remaining obligations are supplied, the concrete
schedule feeds the existing seven-eighths finite partial-prime target. -/
theorem sevenEighthsBoundaryMinimalExactCorrelationData_to_partialDiscrepancy
    (data : SevenEighthsBoundaryMinimalExactCorrelationData)
    (hgraded :
      AllDyadicPrimeOnlyFourierCoordinateBoundAt
        ((7 : ℝ) / 8)) :
    SevenEighthsPrimePartialDiscrepancy := by
  exact
    sevenEighths_exactCorrelationSupplier_to_partialDiscrepancy
      data.toExactSupplier hgraded

end GRWTSK.RiemannHypothesis
