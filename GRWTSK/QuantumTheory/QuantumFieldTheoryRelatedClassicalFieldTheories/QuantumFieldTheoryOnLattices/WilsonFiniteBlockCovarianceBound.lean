/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonBlockCovarianceTransport
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonTwoArcRelativeCovariance

/-!
# Concrete finite Wilson block covariance bound

Actual spatial block energies lie between zero and twice their cardinalities.
Their stationary-centered ranges supply the constants in the two-density bound.
The original finite Wilson law and both directed positive arcs are retained.
All constants and the small-error premise depend on the regulator.
SOURCE_PROOF_CANDIDATE; compilation, fresh kernel replay, transitive axiom audit
and expected-interface checks NOT_RUN. No continuum or physical gap is asserted.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.Geometry.GaugeTheory.WilsonFiniteBlockCovarianceBound
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.FiniteSU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSpatialBlockLift
open GRWTSK.Geometry.GaugeTheory.WilsonSpatialBlockCovariance
open GRWTSK.Geometry.GaugeTheory.WilsonBlockArithmeticCovariance
open GRWTSK.Geometry.GaugeTheory.WilsonCyclicPartition
open GRWTSK.Geometry.GaugeTheory.WilsonPartitionDiagonal
open GRWTSK.Analysis.Integration.ContinuousKernelPowers
open GRWTSK.Analysis.Integration.TwoObservableCyclicIntegral

open GRWTSK.Geometry.GaugeTheory.WilsonTwoBlockArcs
open GRWTSK.Geometry.GaugeTheory.WilsonTwoArcDensityConversion
open GRWTSK.Geometry.GaugeTheory.WilsonStationaryDensity
open GRWTSK.Geometry.GaugeTheory.WilsonRelativeKernelPowers
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivePrincipal
open GRWTSK.Analysis.Integration.TwoDensityCovarianceIdentity
open GRWTSK.Analysis.Integration.TwoDensityResidualIdentity
open GRWTSK.Geometry.GaugeTheory.WilsonNormalizedEndpointTransport
open GRWTSK.Analysis.Integration.TwoDensityCovarianceCentering
open GRWTSK.Geometry.GaugeTheory.WilsonBlockCovarianceTransport
open GRWTSK.Geometry.GaugeTheory.WilsonTwoArcRelativeCovariance

/-- Empty blocks are included. Each actual SU2 penalty lies in [0,2]. -/
theorem slice_block_range (L : ℕ) [NeZero L] (B : Finset (SpatialPlaquette L))
    (x : Slice L SU2) : 0 ≤ sliceBlockEnergy L B x ∧
      sliceBlockEnergy L B x ≤ 2*(B.card : ℝ) := by
  constructor
  · exact Finset.sum_nonneg (fun p _ => (penalty_bounds (sliceHolonomy x p)).1)
  · calc
      _ ≤ ∑ p ∈ B, (2 : ℝ) :=
        Finset.sum_le_sum (fun p _ => (penalty_bounds (sliceHolonomy x p)).2)
      _ = _ := by simp; ring

/-- Range-to-centered bound uses only the actual probability law, not biased marginal centering. -/
theorem centered_slice_bound (L : ℕ) [NeZero L] (ν : Measure (Slice L SU2))
    [IsProbabilityMeasure ν] (B : Finset (SpatialPlaquette L)) (x : Slice L SU2) :
    |centered ν (sliceObservable L B) x| ≤ 2*(B.card : ℝ) := by
  have hi : Integrable (sliceObservable L B) ν :=
    (sliceObservable L B).continuous.integrable_of_hasCompactSupport
      (HasCompactSupport.of_compactSpace _)
  have hlo : 0 ≤ ∫ y, sliceObservable L B y ∂ν :=
    integral_nonneg (fun y => (slice_block_range L B y).1)
  have hhi : (∫ y, sliceObservable L B y ∂ν) ≤ 2*(B.card : ℝ) := by
    calc
      _ ≤ ∫ _, 2*(B.card : ℝ) ∂ν := integral_mono_ae hi (integrable_const _)
        (ae_of_all _ (fun y => (slice_block_range L B y).2))
      _ = _ := by simp
  have hx := slice_block_range L B x
  change |sliceBlockEnergy L B x - (∫ y, sliceObservable L B y ∂ν)| ≤ _
  exact abs_le.mpr ⟨by linarith, by linarith⟩

variable (p q : ℕ)
local notation "ℓ" => (p+1)+(q+1)
variable (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace ℓ)
variable (hf : ∀ᵐ b ∂sliceHaar ℓ, 0 ≤ (f : RealSliceL2 ℓ) b) (hne : f ≠ 0)
variable (hn : ‖f‖ = 1)
variable (he : invariantOperator ℓ β hβ.le f = lambda0 ℓ β hβ.le • f)
local instance stationary_probability_instance : IsProbabilityMeasure (stationaryMeasure ℓ β hβ f) :=
  stationary_probability ℓ β hβ f hn he
include hf hne hn he
local notation "π" => stationaryMeasure ℓ β hβ f
local notation "E" => powerError ℓ β hβ f hf hne

/-- Actual finite Wilson covariance estimate, conditional on explicit regulator-dependent errors. -/
theorem finite_block_covariance_bound (B C : Finset (SpatialPlaquette ℓ))
    (hsmall : E p*E q < 1) :
    |blockCovariance ℓ β (liftBlock ℓ 0 B)
      (liftBlock ℓ ((p+1 : ℕ) : ZMod ℓ) C)| ≤
      (2*(B.card : ℝ))*(2*(C.card : ℝ))*
        ((E p+E q+E p*E q)/(1-E p*E q)+(E p*E q)^2/(1-E p*E q)^2) := by
  rw [lifted_covariance_eq_centered p q β hβ f hf hne hn he B C]
  exact relative_covariance_bound ℓ β hβ f hf hne hn he p q
    (centered π (sliceObservable ℓ B)) (centered π (sliceObservable ℓ C))
    (2*(B.card : ℝ)) (2*(C.card : ℝ)) (by positivity) (by positivity)
    (centered_slice_bound ℓ π B) (centered_slice_bound ℓ π C)
    (centered_mean π (sliceObservable ℓ B)) (centered_mean π (sliceObservable ℓ C)) hsmall

end GRWTSK.Geometry.GaugeTheory.WilsonFiniteBlockCovarianceBound
