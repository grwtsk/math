# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerQuadraticCorrelationSlackBarrier

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `580f1a5957ac7a8ab1f6ebc445fae16ebe1d4918` · SHA-256 `d2c3aa1df03b7d0ccec45d85ec6bc9683cfe534c63d8f45604e308fffe33316a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerQuadraticCorrelationTarget
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Power-slack barrier in the Fejer quadratic-correlation readout

The current quadratic-correlation premise is an epsilon-envelope:

  correlation <= C * X^(2*rho-kappa+eta) * log(X)^4

for every positive eta.  Taking square roots produces amplitude exponent

  rho - kappa/2 + eta/2.

At the threshold-closing saving `kappa = 2*(1-rho)`, this is

  2*rho - 1 + eta/2,

strictly above the exact target `2*rho-1` for every positive eta.  Thus the
existing epsilon-envelope premise does not close the exact partial-discrepancy
target by the deterministic square-root calculation alone.

This file separates three interfaces:

* an epsilon-envelope correlation bound;
* an exact-power correlation bound with no `X^eta` loss;
* an explicit power-slack-removal theorem connecting the two.

It also types an exact-correlation supplier which feeds the existing split
supplier without silently assuming that epsilon slack disappears.

No power-slack removal, exact correlation estimate, cutoff schedule, or
partial-prime discrepancy estimate is proved here.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
QUADRATIC_CORRELATION_POWER_SLACK_BARRIER_SOURCE_PROVED /
EXACT_CORRELATION_BOUND_INTERFACE_TYPED /
READOUT_SLACK_REMOVAL_OBLIGATION_EXPOSED /
SEVEN_EIGHTHS_EXACT_CORRELATION_BOUND_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Squared-correlation exponent after retaining the positive envelope slack. -/
def gradedQuadraticCorrelationSlackExponent
    (ρ κ η : ℝ) : ℝ :=
  gradedQuadraticCorrelationExponent ρ κ + η

/-- Amplitude exponent obtained by taking the square-root scale of the
slackened quadratic-correlation exponent. -/
def gradedQuadraticCorrelationSlackAmplitudeExponent
    (ρ κ η : ℝ) : ℝ :=
  gradedQuadraticCorrelationSlackExponent ρ κ η / 2

/-- Square-root extraction sends correlation slack eta to amplitude slack
eta/2. -/
theorem gradedQuadraticCorrelationSlackAmplitudeExponent_eq
    (ρ κ η : ℝ) :
    gradedQuadraticCorrelationSlackAmplitudeExponent ρ κ η =
      gradedQuadraticCorrelationAmplitudeExponent ρ κ + η / 2 := by
  unfold gradedQuadraticCorrelationSlackAmplitudeExponent
    gradedQuadraticCorrelationSlackExponent
    gradedQuadraticCorrelationAmplitudeExponent
  ring

/-- Every positive correlation-envelope slack creates a strict positive gap in
the recovered amplitude exponent. -/
theorem gradedQuadraticCorrelationAmplitudeExponent_lt_slack
    {ρ κ η : ℝ}
    (hη : 0 < η) :
    gradedQuadraticCorrelationAmplitudeExponent ρ κ <
      gradedQuadraticCorrelationSlackAmplitudeExponent ρ κ η := by
  rw [gradedQuadraticCorrelationSlackAmplitudeExponent_eq]
  linarith

/-- At the threshold-closing saving, the unslackened amplitude exponent is
exactly the quadratic target. -/
theorem gradedQuadraticCorrelationAmplitude_exactSaving
    (ρ : ℝ) :
    gradedQuadraticCorrelationAmplitudeExponent
        ρ (2 * (1 - ρ)) =
      quadraticThreshold ρ := by
  unfold gradedQuadraticCorrelationAmplitudeExponent
    gradedQuadraticCorrelationExponent quadraticThreshold
  ring

/-- At the same saving, an eta-slack correlation bound recovers only the target
plus eta/2. -/
theorem gradedQuadraticCorrelationSlackAmplitude_exactSaving
    (ρ η : ℝ) :
    gradedQuadraticCorrelationSlackAmplitudeExponent
        ρ (2 * (1 - ρ)) η =
      quadraticThreshold ρ + η / 2 := by
  unfold gradedQuadraticCorrelationSlackAmplitudeExponent
    gradedQuadraticCorrelationSlackExponent
    gradedQuadraticCorrelationExponent quadraticThreshold
  ring

/-- Therefore positive power slack misses the exact quadratic target even when
the correlation saving is exactly threshold-closing. -/
theorem quadraticThreshold_lt_slackAmplitude_exactSaving
    {ρ η : ℝ}
    (hη : 0 < η) :
    quadraticThreshold ρ <
      gradedQuadraticCorrelationSlackAmplitudeExponent
        ρ (2 * (1 - ρ)) η := by
  rw [gradedQuadraticCorrelationSlackAmplitude_exactSaving]
  linarith

/-- Exact-power version of the dyadic Fejer quadratic-correlation bound.  This
removes the `X^eta` loss from the exponent while retaining the logarithmic
fourth power which is compatible with a logarithmic-square amplitude target. -/
def DyadicPrimeFejerQuadraticCorrelationExactBoundAt
    {β : ℝ}
    (schedule : DyadicFejerPowerCutoffSchedule β)
    (ρ κ : ℝ) : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∃ j₀ : ℕ,
      ∀ j ≥ j₀, ∀ m : ℕ,
        2 * dyadicScale j ≤ m →
        m ≤ 4 * dyadicScale j →
          nonAliasingFejerQuadraticCorrelation
              (dyadicScale j) (schedule.cutoff j) m ≤
            C *
              Real.rpow (dyadicScale j : ℝ)
                (gradedQuadraticCorrelationExponent ρ κ) *
              (Real.log (dyadicScale j : ℝ))^4

/-- Epsilon-envelope version of the finite partial-prime discrepancy target.
This is the natural deterministic output of a square-root calculation starting
from the current epsilon-envelope quadratic-correlation premise. -/
def DyadicPrimePartialDiscrepancyLogSqEnvelopeAt
    (ρ : ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ S : ℝ, 0 ≤ S ∧
      ∃ j₀ : ℕ,
        ∀ j ≥ j₀, ∀ m : ℕ,
          2 * dyadicScale j ≤ m →
          m ≤ 4 * dyadicScale j →
          |primeIntervalLogMass (2 * dyadicScale j) m -
              ((m : ℝ) -
                ((2 * dyadicScale j : ℕ) : ℝ))| ≤
            S *
              Real.rpow (dyadicScale j : ℝ)
                (quadraticThreshold ρ + ε) *
              (Real.log (dyadicScale j : ℝ))^2

/-- Readout compatible with the presently stated epsilon-envelope correlation
bound.  Proving it may use square roots, the already proved Fejer boundary
estimate, and logarithmic absorption, but its conclusion retains power slack. -/
def DyadicPrimeFejerQuadraticCorrelationEnvelopeReadoutAt
    {β : ℝ}
    (schedule : DyadicFejerPowerCutoffSchedule β)
    (ρ κ : ℝ) : Prop :=
  DyadicPrimeFejerQuadraticCorrelationBoundAt
      schedule ρ κ →
    DyadicPrimePartialDiscrepancyLogSqEnvelopeAt ρ

/-- Exact deterministic readout expected from an exact-power correlation bound. -/
def DyadicPrimeFejerQuadraticCorrelationExactReadoutAt
    {β : ℝ}
    (schedule : DyadicFejerPowerCutoffSchedule β)
    (ρ κ : ℝ) : Prop :=
  DyadicPrimeFejerQuadraticCorrelationExactBoundAt
      schedule ρ κ →
    DyadicPrimePartialDiscrepancyLogSqAt ρ

/-- Additional theorem required if one wants to retain the current
epsilon-envelope correlation premise but conclude the exact-power target. -/
def DyadicPrimeFejerQuadraticCorrelationPowerSlackRemovalAt
    {β : ℝ}
    (schedule : DyadicFejerPowerCutoffSchedule β)
    (ρ κ : ℝ) : Prop :=
  DyadicPrimeFejerQuadraticCorrelationBoundAt
      schedule ρ κ →
    DyadicPrimeFejerQuadraticCorrelationExactBoundAt
      schedule ρ κ

/-- A power-slack-removal theorem followed by the exact deterministic readout
is sufficient for the previously declared exact readout interface. -/
theorem powerSlackRemoval_exactReadout_to_readout
    {β ρ κ : ℝ}
    {schedule : DyadicFejerPowerCutoffSchedule β}
    (hremove :
      DyadicPrimeFejerQuadraticCorrelationPowerSlackRemovalAt
        schedule ρ κ)
    (hexact :
      DyadicPrimeFejerQuadraticCorrelationExactReadoutAt
        schedule ρ κ) :
    DyadicPrimeFejerQuadraticCorrelationReadoutAt
      schedule ρ κ := by
  intro hbound
  exact hexact (hremove hbound)

/-- Explicit packet for the deterministic route from the current envelope
premise to the exact target. -/
structure DyadicPrimeFejerQuadraticCorrelationExactReadoutData
    {β : ℝ}
    (schedule : DyadicFejerPowerCutoffSchedule β)
    (ρ κ : ℝ) where
  powerSlackRemoval :
    DyadicPrimeFejerQuadraticCorrelationPowerSlackRemovalAt
      schedule ρ κ
  exactReadout :
    DyadicPrimeFejerQuadraticCorrelationExactReadoutAt
      schedule ρ κ

def DyadicPrimeFejerQuadraticCorrelationExactReadoutData.toReadout
    {β ρ κ : ℝ}
    {schedule : DyadicFejerPowerCutoffSchedule β}
    (data :
      DyadicPrimeFejerQuadraticCorrelationExactReadoutData
        schedule ρ κ) :
    DyadicPrimeFejerQuadraticCorrelationReadoutAt
      schedule ρ κ :=
  powerSlackRemoval_exactReadout_to_readout
    data.powerSlackRemoval data.exactReadout

/-- Corrected supplier whose arithmetic field is an exact-power correlation
estimate.  It does not require a separate power-slack-removal theorem. -/
structure ThresholdGradedPrimeFejerQuadraticCorrelationExactSupplier
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
  exact_correlation_bound :
    AllDyadicPrimeOnlyFourierCoordinateBoundAt ρ →
      DyadicPrimeFejerQuadraticCorrelationExactBoundAt
        schedule ρ κ
  exact_readout :
    DyadicPrimeFejerQuadraticCorrelationExactReadoutAt
      schedule ρ κ

/-- Every exact-correlation supplier still carries the same sharp saving
requirement. -/
theorem thresholdGradedPrimeFejerQuadraticCorrelationExactSupplier_saving_requirement
    {ρ β κ : ℝ}
    (supplier :
      ThresholdGradedPrimeFejerQuadraticCorrelationExactSupplier
        ρ β κ) :
    2 * (1 - ρ) ≤ κ :=
  gradedQuadraticCorrelationAmplitude_le_quadratic_iff.mp
    supplier.amplitude_closure

/-- An exact-correlation supplier canonically yields the previous split
supplier with arithmetic gain kappa/2. -/
def ThresholdGradedPrimeFejerQuadraticCorrelationExactSupplier.toSplitSupplier
    {ρ β κ : ℝ}
    (supplier :
      ThresholdGradedPrimeFejerQuadraticCorrelationExactSupplier
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
    exact supplier.exact_readout
      (supplier.exact_correlation_bound hgraded)

/-- At seven eighths with quarter saving, the exact squared-correlation exponent
is three halves. -/
@[simp]
theorem sevenEighths_quarter_exactCorrelationExponent :
    gradedQuadraticCorrelationExponent
        ((7 : ℝ) / 8) ((1 : ℝ) / 4) =
      (3 : ℝ) / 2 := by
  norm_num [gradedQuadraticCorrelationExponent]

/-- The current envelope premise instead carries exponent `3/2 + eta`. -/
@[simp]
theorem sevenEighths_quarter_slackCorrelationExponent
    (η : ℝ) :
    gradedQuadraticCorrelationSlackExponent
        ((7 : ℝ) / 8) ((1 : ℝ) / 4) η =
      (3 : ℝ) / 2 + η := by
  norm_num [gradedQuadraticCorrelationSlackExponent,
    gradedQuadraticCorrelationExponent]

/-- After square-root extraction, that becomes `3/4 + eta/2`. -/
@[simp]
theorem sevenEighths_quarter_slackAmplitudeExponent
    (η : ℝ) :
    gradedQuadraticCorrelationSlackAmplitudeExponent
        ((7 : ℝ) / 8) ((1 : ℝ) / 4) η =
      (3 : ℝ) / 4 + η / 2 := by
  norm_num [gradedQuadraticCorrelationSlackAmplitudeExponent,
    gradedQuadraticCorrelationSlackExponent,
    gradedQuadraticCorrelationExponent]

/-- Every positive envelope slack remains strictly above the required
three-quarter amplitude exponent. -/
theorem sevenEighths_threeQuarters_lt_quarterSlackAmplitude
    {η : ℝ}
    (hη : 0 < η) :
    (3 : ℝ) / 4 <
      gradedQuadraticCorrelationSlackAmplitudeExponent
        ((7 : ℝ) / 8) ((1 : ℝ) / 4) η := by
  rw [sevenEighths_quarter_slackAmplitudeExponent]
  linarith

/-- Every exact seven-eighths supplier requires at least quarter-power saving in
the squared correlation. -/
theorem sevenEighths_exactCorrelationSupplier_saving_ge_quarter
    {β κ : ℝ}
    (supplier :
      ThresholdGradedPrimeFejerQuadraticCorrelationExactSupplier
        ((7 : ℝ) / 8) β κ) :
    (1 : ℝ) / 4 ≤ κ := by
  have h :=
    thresholdGradedPrimeFejerQuadraticCorrelationExactSupplier_saving_requirement
      supplier
  norm_num at h
  exact h

/-- A concrete exact seven-eighths supplier discharges the finite partial-prime
discrepancy target without a separate power-slack-removal theorem. -/
theorem sevenEighths_exactCorrelationSupplier_to_partialDiscrepancy
    {β κ : ℝ}
    (supplier :
      ThresholdGradedPrimeFejerQuadraticCorrelationExactSupplier
        ((7 : ℝ) / 8) β κ)
    (hgraded :
      AllDyadicPrimeOnlyFourierCoordinateBoundAt
        ((7 : ℝ) / 8)) :
    SevenEighthsPrimePartialDiscrepancy :=
  supplier.exact_readout
    (supplier.exact_correlation_bound hgraded)

end GRWTSK.RiemannHypothesis
```
