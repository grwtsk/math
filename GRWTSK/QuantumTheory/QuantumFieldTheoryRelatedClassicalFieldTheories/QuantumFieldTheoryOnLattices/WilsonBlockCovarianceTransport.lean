/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonNormalizedEndpointTransport
import GRWTSK.MeasureAndIntegration.TwoDensityCovarianceCentering

/-!
# Literal finite Wilson block covariance in the two-density representation

Actual spatial blocks lifted at the two distinct positive-arc endpoints retain
the original finite Wilson law and its partition. Stationary centering preserves
covariance; it does not identify the biased endpoint means with stationary means.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay, transitive axioms and expected
interfaces NOT_RUN. No quantitative block estimate or physical gap is claimed.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.WilsonBlockCovarianceTransport
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
variable (p q : ℕ)
local notation "ℓ" => (p+1)+(q+1)

theorem block_endpoint (r : ZMod ℓ) (B : Finset (SpatialPlaquette ℓ)) :
    blockObservable ℓ r B = endpoint p q r (sliceObservable ℓ B) := by
  ext a
  rfl

variable (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace ℓ)
variable (hf : ∀ᵐ b ∂sliceHaar ℓ, 0 ≤ (f : RealSliceL2 ℓ) b) (hne : f ≠ 0)
variable (hn : ‖f‖ = 1)
variable (he : invariantOperator ℓ β hβ.le f = lambda0 ℓ β hβ.le • f)
local instance stationary_probability_instance : IsProbabilityMeasure (stationaryMeasure ℓ β hβ f) :=
  stationary_probability ℓ β hβ f hn he
include hf hne hn he
local notation "π" => stationaryMeasure ℓ β hβ f
local notation "Q" => quotientPower ℓ β hβ f hf hne

/-- Literal finite Wilson covariance, not a ground-state replacement. -/
theorem lifted_covariance_eq_relative (B C : Finset (SpatialPlaquette ℓ)) :
    blockCovariance ℓ β (liftBlock ℓ 0 B)
      (liftBlock ℓ ((p+1 : ℕ) : ZMod ℓ) C) =
    normalizedCovariance π (Q p) (Q q) (sliceObservable ℓ B) (sliceObservable ℓ C) := by
  rw [← cutIndex_eq_nat p q]
  rw [lifted_block_covariance ℓ β hβ.le]
  simp_rw [block_endpoint p q]
  rw [normalized_endpoints p q β hβ f hf hne hn he,
    normalized_left_endpoint p q β hβ f hf hne hn he,
    normalized_right_endpoint p q β hβ f hf hne hn he]
  simp only [normalizedCovariance, relativeInsertion, density, ContinuousMap.const_apply,
    ContinuousMap.coe_mk, Prod.swap_prod_mk, one_mul, mul_one, mul_assoc]

/-- Stationary-centered slice energies give exactly the same actual covariance. -/
theorem lifted_covariance_eq_centered (B C : Finset (SpatialPlaquette ℓ)) :
    blockCovariance ℓ β (liftBlock ℓ 0 B)
      (liftBlock ℓ ((p+1 : ℕ) : ZMod ℓ) C) =
    normalizedCovariance π (Q p) (Q q)
      (centered π (sliceObservable ℓ B)) (centered π (sliceObservable ℓ C)) := by
  rw [lifted_covariance_eq_relative p q β hβ f hf hne hn he]
  exact (normalizedCovariance_centered π (Q p) (Q q)
    (sliceObservable ℓ B) (sliceObservable ℓ C)
    (relative_normalizer_pos p q β hβ f hf hne hn he).ne').symm

end GRWTSK.Geometry.GaugeTheory.WilsonBlockCovarianceTransport
