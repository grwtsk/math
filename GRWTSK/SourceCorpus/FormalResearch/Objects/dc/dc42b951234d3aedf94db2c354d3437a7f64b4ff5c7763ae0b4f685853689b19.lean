import FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter
import FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceKernel
import FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelMoment
import FormalResearch.RiemannHypothesis.SourceComparison.SpectralMeasureAtom
import FormalResearch.RiemannHypothesis.SourceComparison.BlaschkeFloor
import FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceTransfer
import FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential

set_option autoImplicit false
open MeasureTheory Set Filter
open scoped Topology NNReal ContDiff ComplexConjugate InnerProductSpace
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourceComparison
noncomputable section
section FixedSourceFilterLiteralChecks
open Realization CorrelationRegularity BridgeNormalization ZeroSideTargets
open FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter

example : fixedBump = sourceBump := rfl

example : fixedBumpFirst = (Icc (-1 : ℝ) 1).indicator (firstInterior 1) := rfl

example : v = normalizedTest explicitSecondDerivative 1 := rfl

example (z : ℂ) : V z = ∫ x : ℝ, (v x : ℂ) * Complex.exp (z * (x : ℂ)) := rfl

example : sourceNormalization 1 = (45056 / 1105 : ℝ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.sourceNormalization_one

example : fixedBump = scaledBump 1 :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.fixedBump_eq_scaled

example :
    IsWeakSecondDerivative fixedBump (explicitSecondDerivative 1) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.fixedBump_weak_second_derivative

example (x : ℝ) : HasDerivAt fixedBump (fixedBumpFirst x) x :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.fixedBump_hasDerivAt x

example (x : ℝ) :
    HasDerivAt fixedBumpFirst (explicitSecondDerivative 1 x) x :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.fixedBumpFirst_hasDerivAt x

example : deriv fixedBump = fixedBumpFirst :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.fixedBump_deriv

example : deriv (deriv fixedBump) = explicitSecondDerivative 1 :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.fixedBump_second_deriv

example (x : ℝ) :
    v x = (deriv (deriv fixedBump) x - fixedBump x / 4) /
      Real.sqrt (45056 / 1105 : ℝ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.v_eq_fixed_differential x

example : ContDiff ℝ 1 v :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.v_contDiff

example : HasCompactSupport v :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.v_hasCompactSupport

example (x : ℝ) (hx : 1 ≤ |x|) : v x = 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.v_zero_of_one_le_abs x hx

example : Function.support v ⊆ Icc (-1 : ℝ) 1 :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.v_support_subset

example : Function.Even v :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.v_even

example : Integrable v volume :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.v_integrable

example : MemLp v 2 volume :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.v_memLp_two

example : Integrable (fun x ↦ v x ^ 2) volume :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.v_square_integrable

example : (∫ x, v x ^ 2) = 1 :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.v_square_integral

example : HasCompactSupport (deriv v) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.v_deriv_hasCompactSupport

example : ∃ C : ℝ, ∀ x : ℝ, ‖deriv v x‖ ≤ C :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.v_deriv_bounded

example (x : ℝ) :
    (v x : ℂ) = (actualTest 1 x : ℂ) / (Real.sqrt (45056 / 1105 : ℝ) : ℂ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.v_complex_eq_actual x

example (z : ℂ) :
    Integrable (fun x : ℝ ↦ (v x : ℂ) * Complex.exp (z * (x : ℂ))) volume :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.V_integrable z

example (z : ℂ) :
    V z = bilateralTransform 1 z / (Real.sqrt (45056 / 1105 : ℝ) : ℂ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.V_eq_bilateral z

example (z : ℂ) (hz : z ≠ 0) :
    V z = dividedTransform 1 z / (Real.sqrt (45056 / 1105 : ℝ) : ℂ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.V_eq_closed_formula z hz

example : V (1 / 2) = 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.V_positive_pole_zero

example : V (-1 / 2) = 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.V_negative_pole_zero

example (z : ℂ) : removedFilter z = 384 * (Complex.exp z * transformPolynomial z -
    Complex.exp (-z) * transformPolynomial (-z)) /
      (z ^ 9 * (Real.sqrt (45056 / 1105 : ℝ) : ℂ)) := rfl

example : positivePoleSlope = 12288 * (1001 * Real.exp (1 / 2) - 2721 * Real.exp (-1 / 2)) /
    Real.sqrt (45056 / 1105 : ℝ) := rfl

example (z : ℂ) (hz : z ≠ 0) :
    V z = (z ^ 2 - 1 / 4) * removedFilter z :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.V_eq_removedFilter z hz

example (z : ℂ) (hz : z ≠ 0) :
    DifferentiableAt ℂ removedFilter z :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.removedFilter_differentiableAt z hz

example : removedFilter (1 / 2) = (positivePoleSlope : ℂ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.removedFilter_positive_pole

example : 0 < positivePoleSlope :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.positivePoleSlope_pos

example :
    HasDerivAt V (positivePoleSlope : ℂ) (1 / 2) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.V_hasDerivAt_positive_pole

example : deriv V (1 / 2) = (positivePoleSlope : ℂ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.V_deriv_positive_pole

example : deriv V (1 / 2) ≠ 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.V_deriv_positive_pole_ne_zero

example :
    Filter.Tendsto (fun z : ℂ ↦ V z / (z - 1 / 2))
      (𝓝[≠] (1 / 2)) (𝓝 (positivePoleSlope : ℂ)) :=
  FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter.V_removed_pole_limit

end FixedSourceFilterLiteralChecks

section FixedSourceKernelLiteralChecks
open Realization CorrelationRegularity CorrelationMoment
open FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceKernel

example (t x : ℝ) :
    logSample t x = Real.exp (-Real.log x / 2) *
      normalizedTest explicitSecondDerivative 1 (t - 1 - Real.log x) := rfl

example (y : ℝ) :
    sampleDerivativeProfile y = -normalizedTest explicitSecondDerivative 1 y / 2 -
      deriv (normalizedTest explicitSecondDerivative 1) y := rfl

example (t x : ℝ) (hx : 0 < x) :
    HasDerivAt (logSample t)
      (Real.exp (-Real.log x / 2) *
        (-normalizedTest explicitSecondDerivative 1 (t - 1 - Real.log x) / 2 -
          deriv (normalizedTest explicitSecondDerivative 1) (t - 1 - Real.log x)) / x) x :=
  logSample_hasDerivAt t x hx

example (t x : ℝ) (hx : 0 < x) :
    logSample t x = 1 / Real.sqrt x *
      normalizedTest explicitSecondDerivative 1 (t - 1 - Real.log x) :=
  logSample_eq t x hx

example (t r : ℝ) :
    Real.exp r * logSample t (Real.exp r) =
      Real.exp (r / 2) * normalizedTest explicitSecondDerivative 1 (t - 1 - r) :=
  logSample_exp t r

example (t : ℝ) : IntegrableOn (logSample t) (Ioi 1) :=
  logSample_integrableOn t

example (t r : ℝ) :
    Real.exp r * |deriv (logSample t) (Real.exp r)| =
      Real.exp (-r / 2) *
        |-normalizedTest explicitSecondDerivative 1 (t - 1 - r) / 2 -
          deriv (normalizedTest explicitSecondDerivative 1) (t - 1 - r)| :=
  logSample_deriv_exp t r

example : derivativeBudget =
    ∫ y : ℝ, Real.exp (y / 2) *
      |-normalizedTest explicitSecondDerivative 1 y / 2 -
        deriv (normalizedTest explicitSecondDerivative 1) y| := rfl

example : Integrable (fun y : ℝ => Real.exp (y / 2) *
    |-normalizedTest explicitSecondDerivative 1 y / 2 -
      deriv (normalizedTest explicitSecondDerivative 1) y|) :=
  derivativeBudget_integrable

example : 0 ≤ derivativeBudget := derivativeBudget_nonneg

example (t : ℝ) : IntegrableOn (deriv (logSample t)) (Ioi 1) :=
  logSample_deriv_integrableOn t

example (t : ℝ) :
    (∫ x in Ioi (1 : ℝ), |deriv (logSample t) x|) ≤
      Real.exp ((1 - t) / 2) * derivativeBudget :=
  logSample_variation_le t

example (t x : ℝ) (h : t ≤ Real.log x) : logSample t x = 0 :=
  logSample_zero_of_time_le_log t x h

example (t x : ℝ) (hx : 0 < x) (h : Real.exp t ≤ x) : logSample t x = 0 :=
  logSample_zero_of_exp_le t x hx h

example (t : ℝ) : fixedKernel t = ∑' n : ℕ,
    Real.exp (-Real.log (n + 1) / 2) *
      normalizedTest explicitSecondDerivative 1 (t - 1 - Real.log (n + 1)) := rfl

example (t : ℝ) (N : ℕ) (hN : Real.exp t ≤ N) :
    fixedKernel t = ∑ n ∈ Finset.range N, logSample t (n + 1) :=
  fixedKernel_eq_sum t N hN

example (t : ℝ) : Summable (fun n : ℕ => logSample t (n + 1)) :=
  fixedKernel_summable t

example (t : ℝ) :
    fixedKernel t = ∑' n : ℕ, 1 / Real.sqrt (n + 1 : ℝ) *
      normalizedTest explicitSecondDerivative 1 (t - 1 - Real.log (n + 1)) :=
  fixedKernel_eq_literal t

example : Measurable fixedKernel := fixedKernel_measurable

example (t : ℝ) (ht : t ≤ 0) : fixedKernel t = 0 :=
  fixedKernel_zero_of_nonpos t ht

example (a b : ℝ) : IntegrableOn fixedKernel (Icc a b) :=
  fixedKernel_integrableOn_Icc a b

end FixedSourceKernelLiteralChecks

section FixedKernelMomentLiteralChecks
open FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelMoment

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceKernel FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelMoment

example (t : ℝ) : Integrable (fun r : ℝ => Real.exp (r / 2) *
    normalizedTest explicitSecondDerivative 1 (t - 1 - r)) :=
  weighted_translated_integrable t

example (t : ℝ) :
    (∫ r : ℝ, Real.exp (r / 2) *
      normalizedTest explicitSecondDerivative 1 (t - 1 - r)) = 0 :=
  weighted_translated_integral_zero t

example (t : ℝ) (ht : 2 ≤ t) :
    (∫ x in Ioi (1 : ℝ), Real.exp (-Real.log x / 2) *
      normalizedTest explicitSecondDerivative 1 (t - 1 - Real.log x)) = 0 :=
  logSample_integral_zero t ht

example (t : ℝ) (ht : 2 ≤ t) :
    IntegrableOn (fun x : ℝ => Real.exp (-Real.log x / 2) *
      normalizedTest explicitSecondDerivative 1 (t - 1 - Real.log x)) (Ioi 1) ∧
    (∫ x in Ioi (1 : ℝ), Real.exp (-Real.log x / 2) *
      normalizedTest explicitSecondDerivative 1 (t - 1 - Real.log x)) = 0 :=
  logSample_integrableOn_and_integral_zero t ht

end FixedKernelMomentLiteralChecks

section SpectralMeasureAtomLiteralChecks
open FormalResearch.RiemannHypothesis.SourceComparison.SpectralMeasureAtom

open FormalResearch.RiemannHypothesis.SourceComparison.SpectralMeasureAtom

example (α : ℝ) (x : ℝ≥0) : resolventMassKernel α x = α / ((x : ℝ) + α) := rfl

example (ν : Measure ℝ≥0) (α : ℝ) :
    resolventMass ν α = ∫ x : ℝ≥0, α / ((x : ℝ) + α) ∂ν := rfl

example (α : ℝ) (hα : 0 < α) (x : ℝ≥0) :
    0 ≤ α / ((x : ℝ) + α) ∧ α / ((x : ℝ) + α) ≤ 1 :=
  resolventMassKernel_nonneg_le_one α hα x

example (α : ℝ) : Measurable (fun x : ℝ≥0 => α / ((x : ℝ) + α)) :=
  resolventMassKernel_measurable α

example (ν : Measure ℝ≥0) [IsFiniteMeasure ν] (α : ℝ) (hα : 0 < α) :
    Integrable (fun x : ℝ≥0 => α / ((x : ℝ) + α)) ν :=
  resolventMassKernel_integrable ν α hα

example (ν : Measure ℝ≥0) [IsFiniteMeasure ν] (α : ℝ) (hα : 0 < α) :
    0 ≤ (∫ x : ℝ≥0, α / ((x : ℝ) + α) ∂ν) ∧
      (∫ x : ℝ≥0, α / ((x : ℝ) + α) ∂ν) ≤ ν.real Set.univ :=
  resolventMass_nonneg_le_total ν α hα

example (x : ℝ≥0) :
    Tendsto (fun α : ℝ => α / ((x : ℝ) + α)) (𝓝[>] 0)
      (𝓝 (({0} : Set ℝ≥0).indicator (fun _ => (1 : ℝ)) x)) :=
  resolventMassKernel_tendsto_zero_right x

example (ν : Measure ℝ≥0) [IsFiniteMeasure ν] :
    Tendsto (fun α : ℝ => ∫ x : ℝ≥0, α / ((x : ℝ) + α) ∂ν)
      (𝓝[>] 0) (𝓝 (ν.real {0})) :=
  resolventMass_tendsto_zero_atom ν

example (ν : Measure ℝ≥0) [IsFiniteMeasure ν] (α : ℝ) (hα : 0 < α) :
    ν.real {0} ≤ ∫ x : ℝ≥0, α / ((x : ℝ) + α) ∂ν :=
  zero_atom_le_resolventMass ν α hα

example (ν : Measure ℝ≥0) [IsFiniteMeasure ν] (α : ℝ) (hα : 0 < α) :
    ν.real (Set.Icc 0 (⟨α, hα.le⟩ : ℝ≥0)) ≤
      2 * ∫ x : ℝ≥0, α / ((x : ℝ) + α) ∂ν :=
  spectral_interval_mass_le_resolventMass ν α hα

end SpectralMeasureAtomLiteralChecks

section BlaschkeFloorLiteralChecks
open FormalResearch.RiemannHypothesis.SourceComparison.BlaschkeFloor

example (z : ℂ) : blaschkeAtOne z = (1 - z) / (1 + starRingEnd ℂ z) := rfl

example (z : ℂ) (hz : 0 < z.re) :
    1 + z ≠ 0 :=
  reference_denominator_ne_zero z hz

example (z : ℂ) :
    Complex.normSq (1 + starRingEnd ℂ z) = Complex.normSq (1 + z) :=
  reference_denominator_normSq z

example (z : ℂ) (hz : 0 < z.re) :
    (1 - ‖blaschkeAtOne z‖ ^ 2) / 2 = 2 * z.re / ‖1 + z‖ ^ 2 :=
  blaschke_deficit z hz

example (z q : ℂ) (hz : 0 < z.re) (hq : ‖q‖ ≤ 1) :
    2 * z.re / ‖1 + z‖ ^ 2 ≤ (1 - ‖blaschkeAtOne z * q‖ ^ 2) / 2 :=
  factor_deficit_lower z q hz hq

example (z : ℂ) (hz : 0 < z.re) :
    0 < 2 * z.re / ‖1 + z‖ ^ 2 :=
  blaschke_floor_pos z hz


end BlaschkeFloorLiteralChecks

section FixedSourceTransferLiteralChecks
open FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter
open FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceTransfer

example (z : ℂ) : transferProduct z =
    Complex.exp (-z) * riemannZeta (1 / 2 + z) * V z := rfl

example : removedPoleValue = Complex.exp (-(1 / 2 : ℂ)) * (positivePoleSlope : ℂ) := rfl

example : repairedTransfer = (by
    classical
    exact Function.update transferProduct (1 / 2) removedPoleValue) := rfl

example :
    Tendsto (fun z : ℂ ↦ 1 / 2 + z) (𝓝[≠] (1 / 2)) (𝓝[≠] 1) :=
  positive_pole_shift_tendsto

example :
    Tendsto (fun z : ℂ ↦ (z - 1 / 2) * riemannZeta (1 / 2 + z))
      (𝓝[≠] (1 / 2)) (𝓝 1) :=
  shifted_zeta_residue

example :
    Tendsto transferProduct (𝓝[≠] (1 / 2)) (𝓝 removedPoleValue) :=
  transferProduct_removed_pole_limit

example : repairedTransfer (1 / 2) = removedPoleValue :=
  repairedTransfer_at_pole

example (z : ℂ) (hz : z ≠ 1 / 2) :
    repairedTransfer z = Complex.exp (-z) * riemannZeta (1 / 2 + z) * V z :=
  repairedTransfer_eq_product z hz

example : ContinuousAt repairedTransfer (1 / 2) :=
  repairedTransfer_continuousAt_pole

example : removedPoleValue ≠ 0 :=
  removedPoleValue_ne_zero

example : repairedTransfer (1 / 2) ≠ 0 :=
  repairedTransfer_pole_ne_zero

example (ρ : ℂ) (hρ : riemannZeta ρ = 0)
    (hρ1 : ρ ≠ 1) : repairedTransfer (ρ - 1 / 2) = 0 :=
  repairedTransfer_zero_of_zeta_zero ρ hρ hρ1

example (ρ : ℂ)
    (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ) :
    repairedTransfer (ρ - 1 / 2) = 0 :=
  repairedTransfer_zero_of_nontrivial ρ hρ

example (o : ZeroObject.ZeroOccurrence) :
    repairedTransfer (ZeroObject.shiftedValue o) = 0 :=
  repairedTransfer_zero_occurrence o

example (E : ℂ → ℂ) :
    Complex.exp (-(1 / 2 : ℂ)) * E (1 / 2) * V (1 / 2) = 0 :=
  finite_factor_product_at_pole E

example (E : ℂ → ℂ) (hE : ContinuousAt E (1 / 2)) :
    Tendsto (fun z : ℂ ↦ Complex.exp (-z) * E z * V z)
      (𝓝 (1 / 2)) (𝓝 0) :=
  finite_factor_product_limit E hE

example (E : ℂ → ℂ) :
    ‖repairedTransfer (1 / 2) -
      Complex.exp (-(1 / 2 : ℂ)) * E (1 / 2) * V (1 / 2)‖ =
      ‖removedPoleValue‖ :=
  finite_factor_pole_discrepancy E


end FixedSourceTransferLiteralChecks

section HalfLineExponentialLiteralChecks
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential

example : halfLineMeasure = volume.restrict (Ioi (0 : ℝ)) := rfl

example : H = Lp ℂ 2 halfLineMeasure := rfl

example (z : ℂ) (t : ℝ) : exponentialFunction z t = Complex.exp (-conj z * (t : ℂ)) := rfl

example (z : ℂ) : Continuous (exponentialFunction z) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.exponentialFunction_continuous z

example (z : ℂ) (hz : 0 < z.re) :
    Integrable (exponentialFunction z) halfLineMeasure :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.exponentialFunction_integrable z hz

example (z : ℂ) (t : ℝ) :
    ‖exponentialFunction z t‖ ^ 2 = Real.exp ((-2 * z.re) * t) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.exponentialFunction_norm_sq z t

example (z : ℂ) (hz : 0 < z.re) :
    Integrable (fun t : ℝ ↦ ‖exponentialFunction z t‖ ^ 2) halfLineMeasure :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.exponentialFunction_sq_integrable z hz

example (z : ℂ) (hz : 0 < z.re) :
    MemLp (exponentialFunction z) 2 halfLineMeasure :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.exponentialFunction_memLp z hz

example (z : ℂ) (hz : 0 < z.re) :
    (∫ t : ℝ, ‖exponentialFunction z t‖ ^ 2 ∂halfLineMeasure) = 1 / (2 * z.re) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.exponentialFunction_sq_integral z hz

example (z : ℂ) (hz : 0 < z.re) : exponentialVector z hz =
    (exponentialFunction_memLp z hz).toLp (exponentialFunction z) := rfl

example (z : ℂ) (hz : 0 < z.re) :
    exponentialVector z hz =ᵐ[halfLineMeasure] exponentialFunction z :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.exponentialVector_ae z hz

example (w z : ℂ) (t : ℝ) :
    inner ℂ (exponentialFunction w t) (exponentialFunction z t) =
      Complex.exp (-(w + conj z) * (t : ℂ)) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.pointwise_inner_exponential w z t

example (w z : ℂ) (hw : 0 < w.re) (hz : 0 < z.re) :
    Integrable (fun t : ℝ ↦ inner ℂ (exponentialFunction w t) (exponentialFunction z t))
      halfLineMeasure :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.inner_exponential_integrable w z hw hz

example (w z : ℂ) (hw : 0 < w.re) (hz : 0 < z.re) :
    (∫ t : ℝ, inner ℂ (exponentialFunction w t) (exponentialFunction z t)
      ∂halfLineMeasure) = 1 / (w + conj z) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.inner_exponential_integral w z hw hz

example (w z : ℂ) (hw : 0 < w.re) (hz : 0 < z.re) :
    inner ℂ (exponentialVector w hw) (exponentialVector z hz) = 1 / (w + conj z) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.inner_exponentialVector w z hw hz

example (z : ℂ) (hz : 0 < z.re) :
    ‖exponentialVector z hz‖ ^ 2 = 1 / (2 * z.re) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.exponentialVector_norm_sq z hz

example (z : ℂ) (hz : 0 < z.re) :
    exponentialVector z hz ≠ 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.exponentialVector_ne_zero z hz

example : referenceVector = exponentialVector 1 (by norm_num) := rfl

example :
    referenceVector =ᵐ[halfLineMeasure] (fun t : ℝ ↦ (Real.exp (-t) : ℂ)) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.referenceVector_ae

example : ‖referenceVector‖ ^ 2 = (1 / 2 : ℝ) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.referenceVector_norm_sq

example (z : ℂ) (hz : 0 < z.re) :
    inner ℂ referenceVector (exponentialVector z hz) = 1 / (1 + conj z) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.inner_reference_exponential z hz

example (z : ℂ) (hz : 0 < z.re) :
    inner ℂ (exponentialVector z hz) referenceVector = 1 / (z + 1) :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.inner_exponential_reference z hz

example (z : ℂ) (hz : 0 < z.re) :
    ‖inner ℂ referenceVector (exponentialVector z hz)‖ ^ 2 = 1 / ‖1 + z‖ ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.norm_sq_inner_reference_exponential z hz

example (z : ℂ) (hz : 0 < z.re) :
    ‖inner ℂ referenceVector (exponentialVector z hz)‖ ^ 2 /
      ‖exponentialVector z hz‖ ^ 2 = 2 * z.re / ‖1 + z‖ ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.reference_projection_coefficient z hz

example (z : ℂ) (hz : 0 < z.re) : 1 + z ≠ 0 :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.one_add_ne_zero z hz

example (z : ℂ) (hz : 0 < z.re) :
    0 < ‖inner ℂ referenceVector (exponentialVector z hz)‖ ^ 2 /
      ‖exponentialVector z hz‖ ^ 2 :=
  FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.reference_projection_coefficient_pos z hz

end HalfLineExponentialLiteralChecks

end
