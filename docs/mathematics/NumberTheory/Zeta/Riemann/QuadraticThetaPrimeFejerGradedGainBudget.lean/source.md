# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerGradedGainBudget

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d75d123d728a702fe0536bd8cc7c10b1dc46057e` · SHA-256 `7be745c8b70d486a198d5bb82cb05323b5f55fe84b82e9147fa1836c641c7409`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaGradedFourierNoDescent
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeDFTSmoothingWindow
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Threshold-graded Fejer smoothed-value gain budget

The corrected Fejer boundary comparison and the threshold-graded Fourier energy
premise impose two simultaneous exponent obligations.

For threshold rho, bandwidth exponent beta, and nonlinear gain gamma:

* the Fejer boundary exponent is `1 - beta`;
* the naive graded smoothed-value exponent is `rho + beta / 2`;
* after gain gamma the value exponent is `rho + beta / 2 - gamma`;
* the quadratic target is `2 * rho - 1`.

Boundary closure forces `beta >= 2 * (1 - rho)`.  Value closure forces

`gamma >= 1 - rho + beta / 2`.

Consequently, any supplier satisfying both obligations must provide total gain
at least `2 * (1 - rho)`.  At rho=7/8 this is a quarter power.  Merely removing
the raw square-root bandwidth loss contributes `beta / 2` and leaves exponent
rho, so an additional arithmetic gain of at least `1 - rho` remains.  At
rho=7/8 that irreducible extra gain is one eighth.

No smoothed-value estimate or arithmetic supplier is proved here.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
GRADED_FEJER_GAIN_BUDGET_SOURCE_PROVED /
QUARTER_POWER_TOTAL_GAIN_REQUIRED /
EIGHTH_POWER_ARITHMETIC_GAIN_REQUIRED /
SEVEN_EIGHTHS_SMOOTHED_VALUE_SUPPLIER_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

/-- Total power saving required beyond naive threshold-graded
Cauchy--Schwarz reconstruction. -/
def gradedSmoothedValueGainRequirement (ρ β : ℝ) : ℝ :=
  1 - ρ + β / 2

/-- Smoothed-value exponent after a supplier contributes gain gamma. -/
def gradedSmoothedValueExponent (ρ β γ : ℝ) : ℝ :=
  gradedFourierMaximalExponent ρ β - γ

/-- The required gain is exactly the gap between the naive graded exponent and
the quadratic target. -/
theorem gradedSmoothedValueGainRequirement_eq_gap
    (ρ β : ℝ) :
    gradedSmoothedValueGainRequirement ρ β =
      gradedFourierMaximalExponent ρ β -
        quadraticThreshold ρ := by
  unfold gradedSmoothedValueGainRequirement
    gradedFourierMaximalExponent quadraticThreshold
  ring

/-- Closing the smoothed-value exponent is equivalent to supplying the full
threshold-plus-bandwidth gain budget. -/
theorem gradedSmoothedValueExponent_le_quadratic_iff
    {ρ β γ : ℝ} :
    gradedSmoothedValueExponent ρ β γ ≤
        quadraticThreshold ρ ↔
      gradedSmoothedValueGainRequirement ρ β ≤ γ := by
  unfold gradedSmoothedValueExponent
    gradedSmoothedValueGainRequirement
    gradedFourierMaximalExponent quadraticThreshold
  constructor <;> intro h <;> linarith

/-- Fejer boundary closure at threshold rho forces the bandwidth exponent to
be at least twice the threshold gap. -/
theorem truncatedFourierBoundary_le_quadratic_iff
    {ρ β : ℝ} :
    truncatedFourierBoundaryExponent β ≤
        quadraticThreshold ρ ↔
      2 * (1 - ρ) ≤ β := by
  unfold truncatedFourierBoundaryExponent quadraticThreshold
  constructor <;> intro h <;> linarith

/-- Boundary closure alone places the required total nonlinear gain above twice
the threshold gap. -/
theorem fejerBoundary_forces_gainRequirementFloor
    {ρ β : ℝ}
    (hboundary :
      truncatedFourierBoundaryExponent β ≤
        quadraticThreshold ρ) :
    2 * (1 - ρ) ≤
      gradedSmoothedValueGainRequirement ρ β := by
  have hβ :
      2 * (1 - ρ) ≤ β :=
    truncatedFourierBoundary_le_quadratic_iff.mp hboundary
  unfold gradedSmoothedValueGainRequirement
  linarith

/-- If the raw square-root bandwidth loss beta/2 were removed perfectly, the
remaining exponent would still be rho. -/
theorem gradedSmoothedValueExponent_cancel_bandwidth
    (ρ β : ℝ) :
    gradedSmoothedValueExponent ρ β (β / 2) = ρ := by
  unfold gradedSmoothedValueExponent gradedFourierMaximalExponent
  ring

/-- Therefore pure maximal improvement, with no additional arithmetic gain,
still misses the quadratic target at every subunit threshold. -/
theorem pureBandwidthGain_misses_quadratic
    {ρ β : ℝ}
    (hρ : ρ < 1) :
    quadraticThreshold ρ <
      gradedSmoothedValueExponent ρ β (β / 2) := by
  rw [gradedSmoothedValueExponent_cancel_bandwidth]
  unfold quadraticThreshold
  linarith

/-- Any value-closing gain contains an additional arithmetic component of at
least `1-rho` beyond complete removal of the square-root bandwidth loss. -/
theorem smoothedValueClosure_forces_extraArithmeticGain
    {ρ β γ : ℝ}
    (hvalue :
      gradedSmoothedValueExponent ρ β γ ≤
        quadraticThreshold ρ) :
    1 - ρ ≤ γ - β / 2 := by
  have hrequired :
      gradedSmoothedValueGainRequirement ρ β ≤ γ :=
    gradedSmoothedValueExponent_le_quadratic_iff.mp hvalue
  unfold gradedSmoothedValueGainRequirement at hrequired
  linarith

/-- Simultaneous Fejer boundary and smoothed-value closure force total gain at
least twice the threshold gap. -/
theorem fejerBoundary_and_valueClosure_force_doubleGap
    {ρ β γ : ℝ}
    (hboundary :
      truncatedFourierBoundaryExponent β ≤
        quadraticThreshold ρ)
    (hvalue :
      gradedSmoothedValueExponent ρ β γ ≤
        quadraticThreshold ρ) :
    2 * (1 - ρ) ≤ γ := by
  exact le_trans
    (fejerBoundary_forces_gainRequirementFloor hboundary)
    (gradedSmoothedValueExponent_le_quadratic_iff.mp hvalue)

/-- Exact corrected supplier interface.  Unlike the earlier critical-line
readouts, this structure consumes the threshold-graded Fourier premise at the
same rho as the desired partial-discrepancy conclusion and exposes the gain
budget required by both Fejer boundary and smoothed-value closure. -/
structure ThresholdGradedPrimeFejerSupplier (ρ β : ℝ) where
  gain : ℝ
  gain_nonnegative : 0 ≤ gain
  boundary_closure :
    truncatedFourierBoundaryExponent β ≤
      quadraticThreshold ρ
  smoothed_value_closure :
    gradedSmoothedValueExponent ρ β gain ≤
      quadraticThreshold ρ
  readout :
    AllDyadicPrimeOnlyFourierCoordinateBoundAt ρ →
      DyadicPrimePartialDiscrepancyLogSqAt ρ

theorem thresholdGradedPrimeFejerSupplier_gain_requirement
    {ρ β : ℝ}
    (supplier : ThresholdGradedPrimeFejerSupplier ρ β) :
    gradedSmoothedValueGainRequirement ρ β ≤
      supplier.gain :=
  gradedSmoothedValueExponent_le_quadratic_iff.mp
    supplier.smoothed_value_closure

theorem thresholdGradedPrimeFejerSupplier_gain_floor
    {ρ β : ℝ}
    (supplier : ThresholdGradedPrimeFejerSupplier ρ β) :
    2 * (1 - ρ) ≤ supplier.gain :=
  fejerBoundary_and_valueClosure_force_doubleGap
    supplier.boundary_closure supplier.smoothed_value_closure

theorem thresholdGradedPrimeFejerSupplier_extraArithmeticGain
    {ρ β : ℝ}
    (supplier : ThresholdGradedPrimeFejerSupplier ρ β) :
    1 - ρ ≤ supplier.gain - β / 2 :=
  smoothedValueClosure_forces_extraArithmeticGain
    supplier.smoothed_value_closure

@[simp]
theorem sevenEighths_gradedSmoothedValueGainRequirement
    (β : ℝ) :
    gradedSmoothedValueGainRequirement ((7 : ℝ) / 8) β =
      (1 : ℝ) / 8 + β / 2 := by
  unfold gradedSmoothedValueGainRequirement
  ring

@[simp]
theorem sevenEighths_oneThird_gainRequirement :
    gradedSmoothedValueGainRequirement
        ((7 : ℝ) / 8) ((1 : ℝ) / 3) =
      (7 : ℝ) / 24 := by
  norm_num [gradedSmoothedValueGainRequirement]

/-- The boundary-minimal cutoff beta=1/4 closes both exponents exactly only
after a total quarter-power gain. -/
theorem sevenEighths_boundaryMinimal_gainPoint :
    truncatedFourierBoundaryExponent ((1 : ℝ) / 4) =
        quadraticThreshold ((7 : ℝ) / 8) ∧
      gradedSmoothedValueExponent
          ((7 : ℝ) / 8) ((1 : ℝ) / 4) ((1 : ℝ) / 4) =
        quadraticThreshold ((7 : ℝ) / 8) := by
  constructor <;>
    norm_num [truncatedFourierBoundaryExponent,
      gradedSmoothedValueExponent,
      gradedFourierMaximalExponent, quadraticThreshold]

/-- Every corrected seven-eighths Fejer supplier must expose at least a
quarter-power total gain. -/
theorem sevenEighths_thresholdGradedPrimeFejerSupplier_gain_ge_quarter
    {β : ℝ}
    (supplier :
      ThresholdGradedPrimeFejerSupplier ((7 : ℝ) / 8) β) :
    (1 : ℝ) / 4 ≤ supplier.gain := by
  have h :=
    thresholdGradedPrimeFejerSupplier_gain_floor supplier
  norm_num at h
  exact h

/-- Even after accounting for complete removal of the square-root bandwidth
loss, every corrected seven-eighths supplier still needs an extra one-eighth
arithmetic gain. -/
theorem sevenEighths_thresholdGradedPrimeFejerSupplier_extra_gain_ge_eighth
    {β : ℝ}
    (supplier :
      ThresholdGradedPrimeFejerSupplier ((7 : ℝ) / 8) β) :
    (1 : ℝ) / 8 ≤ supplier.gain - β / 2 := by
  have h :=
    thresholdGradedPrimeFejerSupplier_extraArithmeticGain supplier
  norm_num at h
  exact h

/-- A concrete corrected supplier would discharge the existing seven-eighths
finite partial-prime discrepancy target without importing the critical-line
Fourier premise. -/
theorem sevenEighths_thresholdGradedPrimeFejerSupplier_to_partialDiscrepancy
    {β : ℝ}
    (supplier :
      ThresholdGradedPrimeFejerSupplier ((7 : ℝ) / 8) β)
    (hgraded :
      AllDyadicPrimeOnlyFourierCoordinateBoundAt ((7 : ℝ) / 8)) :
    SevenEighthsPrimePartialDiscrepancy :=
  supplier.readout hgraded

end GRWTSK.RiemannHypothesis
```
