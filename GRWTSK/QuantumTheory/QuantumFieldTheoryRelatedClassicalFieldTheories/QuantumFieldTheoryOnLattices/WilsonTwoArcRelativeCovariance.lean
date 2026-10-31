/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonRelativeColumnBound
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonRelativePowerNormalization

/-!
# Actual Wilson two-arc relative covariance bound

This consumer supplies actual stationary measure, principal transform, both
normalization directions and relative-power errors to the generic signed
residual estimate. It does not yet identify the quotient covariance below with
finite periodic Wilson observable covariance. Both arcs have positive length;
all constants and the small-product premise depend on the regulator.
SOURCE_PROOF_CANDIDATE; compilation, fresh kernel replay, transitive axiom audit
and expected-interface checks NOT_RUN. No physical mass-gap conclusion.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonTwoArcRelativeCovariance
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceRegularity
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivePrincipal
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePrincipalRepresentativeBounds
open GRWTSK.Geometry.GaugeTheory.WilsonStationaryDensity
open GRWTSK.Geometry.GaugeTheory.WilsonRelativeKernelPowers
open GRWTSK.Geometry.GaugeTheory.WilsonRowOscillation
open GRWTSK.Geometry.GaugeTheory.WilsonIteratedOscillation
open GRWTSK.Geometry.GaugeTheory.WilsonStationaryIterateMean
open GRWTSK.Analysis.Integration.ContinuousKernelPowers
variable (L : ℕ) [NeZero L] (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace L)
variable (hf : ∀ᵐ b ∂sliceHaar L, 0 ≤ (f : RealSliceL2 L) b) (hne : f ≠ 0)

open GRWTSK.Geometry.GaugeTheory.WilsonRelativeColumnBound
open GRWTSK.Geometry.GaugeTheory.WilsonRelativePowerNormalization
open GRWTSK.Analysis.Integration.TwoDensityCovarianceIdentity

/-- Explicit error for a positive arc of length m+1. -/
def powerError (m : ℕ) : ℝ := initialBound L β hβ f hf hne * (theta L β)^m

theorem powerError_nonneg (m : ℕ) : 0 ≤ powerError L β hβ f hf hne m :=
  mul_nonneg (norm_nonneg _) (pow_nonneg (theta_nonneg L β hβ.le) m)

variable (hn : ‖f‖ = 1)
variable (he : invariantOperator L β hβ.le f = lambda0 L β hβ.le • f)
local instance stationary_probability_instance : IsProbabilityMeasure (stationaryMeasure L β hβ f) :=
  stationary_probability L β hβ f hn he
include hf hne hn he
local notation "π" => stationaryMeasure L β hβ f
local notation "Q" => quotientPower L β hβ f hf hne
local notation "E" => powerError L β hβ f hf hne

/-- The denominator is the actual double integral, with its residual lower bound. -/
theorem relative_normalizer_lower (p q : ℕ) :
    1-E p*E q ≤ normalizer π (Q p) (Q q) := by
  exact GRWTSK.Analysis.Integration.TwoDensityCovarianceBound.normalizer_lower
    π (Q p) (Q q)
    (powerError_nonneg L β hβ f hf hne p) (powerError_nonneg L β hβ f hf hne q)
    (quotient_power_bound L β hβ f hf hne hn he p)
    (fun x y => quotient_power_bound L β hβ f hf hne hn he q y x)
    (quotient_power_row L β hβ f hf hne hn he p)
    (quotient_power_column L β hβ f hf hne hn he q)

theorem relative_normalizer_pos (p q : ℕ) (hsmall : E p*E q < 1) :
    0 < normalizer π (Q p) (Q q) := by
  have hl := relative_normalizer_lower L β hβ f hf hne hn he p q
  linarith

/-- Quantitative covariance of the actual quotient-density expression.
The finite-loop expectation transport remains a separate, explicitly unpaid bridge. -/
theorem relative_covariance_bound (p q : ℕ) (O P : C(Slice L SU2, ℝ))
    (M N : ℝ) (hM : 0 ≤ M) (hN : 0 ≤ N)
    (hO : ∀ x, |O x| ≤ M) (hP : ∀ y, |P y| ≤ N)
    (hOm : (∫ x, O x ∂π) = 0) (hPm : (∫ y, P y ∂π) = 0)
    (hsmall : E p*E q < 1) :
    |normalizedCovariance π (Q p) (Q q) O P| ≤
      M*N*((E p+E q+E p*E q)/(1-E p*E q)+(E p*E q)^2/(1-E p*E q)^2) := by
  exact GRWTSK.Analysis.Integration.TwoDensityCovarianceBound.covariance_bound
    π (Q p) (Q q)
    (powerError_nonneg L β hβ f hf hne p) (powerError_nonneg L β hβ f hf hne q)
    (quotient_power_bound L β hβ f hf hne hn he p)
    (fun x y => quotient_power_bound L β hβ f hf hne hn he q y x)
    (quotient_power_row L β hβ f hf hne hn he p)
    (quotient_power_column L β hβ f hf hne hn he p)
    (quotient_power_row L β hβ f hf hne hn he q)
    (quotient_power_column L β hβ f hf hne hn he q)
    O P hM hN hO hP hOm hPm hsmall

end GRWTSK.Geometry.GaugeTheory.WilsonTwoArcRelativeCovariance
