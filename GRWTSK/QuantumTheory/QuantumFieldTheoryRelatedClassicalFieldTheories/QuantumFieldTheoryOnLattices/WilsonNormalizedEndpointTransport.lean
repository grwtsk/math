/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonTwoBlockArcs
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonTwoArcDensityConversion
import GRWTSK.MeasureAndIntegration.TwoDensityCovarianceIdentity

/-!
# Actual normalized periodic Wilson endpoint insertions

Constant insertions identify the true relative normalizer with Z/lambda0^L.
Both directed arcs and the original partition are retained. No empty block is
used for a constant insertion. SOURCE_PROOF_CANDIDATE; compilation, fresh replay,
transitive axiom audit and expected-interface checks NOT_RUN. Covariance assembly
and regulator-uniform physical scaling remain separate obligations.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.Geometry.GaugeTheory.WilsonNormalizedEndpointTransport
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
variable (p q : ℕ)
local notation "ℓ" => (p+1)+(q+1)

/-- Actual continuous endpoint observable on the spatial history. -/
def endpoint (r : ZMod ℓ) (O : C(Slice ℓ SU2, ℝ)) : C(SpatialHistory ℓ SU2, ℝ) :=
  ⟨fun a => O (a r), O.continuous.comp (continuous_apply r)⟩

theorem endpoint_numerator (β : ℝ) (O P : C(Slice ℓ SU2, ℝ)) :
    (∫ a, endpoint p q 0 O a * endpoint p q (cutIndex p q) P a *
      (∏ r, sliceKernel ℓ β (a r) (a (r+1))) ∂spatialHistoryHaar ℓ) =
    ∫ x, ∫ y, O x * P y * positivePower (sliceHaar ℓ) (actualKernel ℓ β) p (x,y) *
      positivePower (sliceHaar ℓ) (actualKernel ℓ β) q (y,x) ∂sliceHaar ℓ ∂sliceHaar ℓ := by
  change (∫ h : Fin ℓ → Slice ℓ SU2,
    O (h ((0 : Fin (p+1)).castAdd (q+1))) *
      P (h (Fin.natAdd (p+1) (0 : Fin (q+1)))) *
      (∏ i, actualKernel ℓ β (h i,h (i+1)))
      ∂Measure.pi (fun _ : Fin ℓ => sliceHaar ℓ)) = _
  exact two_observable_integral (sliceHaar ℓ) (actualKernel ℓ β) p q O P

variable (β : ℝ) (hβ : 0 < β) (f : gaugeInvariantSpace ℓ)
variable (hf : ∀ᵐ b ∂sliceHaar ℓ, 0 ≤ (f : RealSliceL2 ℓ) b) (hne : f ≠ 0)
variable (hn : ‖f‖ = 1)
variable (he : invariantOperator ℓ β hβ.le f = lambda0 ℓ β hβ.le • f)
local instance stationary_probability_instance : IsProbabilityMeasure (stationaryMeasure ℓ β hβ f) :=
  stationary_probability ℓ β hβ f hn he
include hf hne hn he
local notation "π" => stationaryMeasure ℓ β hβ f
local notation "Q" => quotientPower ℓ β hβ f hf hne

def relativeInsertion (O P : C(Slice ℓ SU2, ℝ)) : ℝ :=
  ∫ x, ∫ y, O x * P y * Q p (x,y) * Q q (y,x) ∂π ∂π

theorem insertion_conversion (O P : C(Slice ℓ SU2, ℝ)) :
    relativeInsertion p q β hβ f hf hne O P =
    (∫ x, ∫ y, O x * P y * positivePower (sliceHaar ℓ) (actualKernel ℓ β) p (x,y) *
      positivePower (sliceHaar ℓ) (actualKernel ℓ β) q (y,x) ∂sliceHaar ℓ ∂sliceHaar ℓ) /
      (lambda0 ℓ β hβ.le)^ℓ := by
  let F : C(Slice ℓ SU2 × Slice ℓ SU2, ℝ) := ⟨fun z => O z.1 * P z.2,
    (O.continuous.comp continuous_fst).mul (P.continuous.comp continuous_snd)⟩
  have hh := two_arc_density_integral ℓ β hβ f hf hne hn he p q F
  rw [relative_positivePower ℓ β hβ f hf hne hn he p,
    relative_positivePower ℓ β hβ f hf hne hn he q] at hh
  have hl : p+q+2 = ℓ := by omega
  simpa only [relativeInsertion, F, hl] using hh

/-- The normalizer is positive, but generally differs from one. -/
theorem normalizer_partition :
    normalizer π (Q p) (Q q) = cyclicPartition ℓ β / (lambda0 ℓ β hβ.le)^ℓ := by
  have hh := insertion_conversion p q β hβ f hf hne hn he
    (ContinuousMap.const _ 1) (ContinuousMap.const _ 1)
  have hz := endpoint_numerator p q β (ContinuousMap.const _ 1) (ContinuousMap.const _ 1)
  simp only [endpoint, ContinuousMap.coe_mk, ContinuousMap.const_apply, one_mul] at hz
  change cyclicPartition ℓ β = _ at hz
  simpa only [relativeInsertion, ContinuousMap.const_apply, one_mul, normalizer, density,
    ContinuousMap.coe_mk, Prod.swap_prod_mk, ← hz] using hh

theorem relative_normalizer_pos : 0 < normalizer π (Q p) (Q q) := by
  rw [normalizer_partition p q β hβ f hf hne hn he]
  exact div_pos (cyclicPartition_pos ℓ β hβ.le) (pow_pos (lambda0_pos ℓ β hβ) _)

theorem normalized_endpoints (O P : C(Slice ℓ SU2, ℝ)) :
    cyclicMoment ℓ β (endpoint p q 0 O * endpoint p q (cutIndex p q) P) =
      relativeInsertion p q β hβ f hf hne O P / normalizer π (Q p) (Q q) := by
  unfold cyclicMoment
  simp only [ContinuousMap.mul_apply]
  rw [endpoint_numerator, insertion_conversion, normalizer_partition p q β hβ f hf hne hn he]
  have hc : (lambda0 ℓ β hβ.le)^ℓ ≠ 0 := (pow_pos (lambda0_pos ℓ β hβ) _).ne'
  have hz := (cyclicPartition_pos ℓ β hβ.le).ne'
  field_simp [hc, hz]
  <;> ring

theorem normalized_left_endpoint (O : C(Slice ℓ SU2, ℝ)) :
    cyclicMoment ℓ β (endpoint p q 0 O) =
      relativeInsertion p q β hβ f hf hne O (ContinuousMap.const _ 1) /
        normalizer π (Q p) (Q q) := by
  have hh := normalized_endpoints p q β hβ f hf hne hn he O (ContinuousMap.const _ 1)
  have hm : endpoint p q 0 O * endpoint p q (cutIndex p q) (ContinuousMap.const _ 1) =
      endpoint p q 0 O := by ext a; simp [endpoint]
  rw [hm] at hh
  exact hh

theorem normalized_right_endpoint (P : C(Slice ℓ SU2, ℝ)) :
    cyclicMoment ℓ β (endpoint p q (cutIndex p q) P) =
      relativeInsertion p q β hβ f hf hne (ContinuousMap.const _ 1) P /
        normalizer π (Q p) (Q q) := by
  have hh := normalized_endpoints p q β hβ f hf hne hn he (ContinuousMap.const _ 1) P
  have hm : endpoint p q 0 (ContinuousMap.const _ 1) * endpoint p q (cutIndex p q) P =
      endpoint p q (cutIndex p q) P := by ext a; simp [endpoint]
  rw [hm] at hh
  exact hh

end GRWTSK.Geometry.GaugeTheory.WilsonNormalizedEndpointTransport
