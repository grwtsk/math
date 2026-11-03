/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSpatialBlockLift
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceExplicitLogGap
import Mathlib

/-!
# Source-specific spatial Wilson observables in the regulated logarithmic domain

Local mathematical attribution: grwtsk contributors.

An actual spatial plaquette block at one time slice is turned into an
actual continuous SU(2) gauge-invariant function, centered under the
original slice Haar probability, then embedded in the already constructed
closed gauge-invariant real Hilbert space.

The existing domain-correct regulated transfer-logarithm inequality is
applied ONLY when the explicit centered source vector belongs to its
maximal logarithmic domain AND has vanishing entire principal spectral
coordinate. These inputs are not asserted for every spatial block.
The resulting statement is about the ACTUAL source-defined REGULATED
slice operator. A physical full four-dimensional/continuum Hamiltonian
comparison and its reconstruction are not supplied by this module.

SOURCE_PROOF_CANDIDATE; LEAN_BUILD_NOT_RUN; FRESH_KERNEL_NOT_RUN;
TRANSITIVE_AXIOMS_NOT_RUN; EXPECTED_TYPES_NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceObservableLogDomain
open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceAction
open GRWTSK.Geometry.GaugeTheory.WilsonSpatialBlockLift
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSliceExplicitLogGap

variable (L : ℕ) [NeZero L]

/-- Genuine continuous trace-penalty observation on the original spatial slice. -/
def continuousSliceBlock (B : Finset (SpatialPlaquette L)) :
    C(Slice L SU2, ℝ) :=
  ⟨sliceBlockEnergy L B, continuous_sliceBlockEnergy L B⟩

/-- The actual plaquette-holonomy conjugation proves pointwise gauge
invariance, not an assumed property of an abstract function. -/
theorem continuousSliceBlock_gauge (B : Finset (SpatialPlaquette L))
    (g : SliceGauge L SU2) (a : Slice L SU2) :
    continuousSliceBlock L B (sliceGaugeAction g a) =
      continuousSliceBlock L B a := by
  change sliceBlockEnergy L B (sliceGaugeAction g a) = sliceBlockEnergy L B a
  unfold sliceBlockEnergy
  apply Finset.sum_congr rfl
  intro p _
  rw [sliceHolonomy_gauge, penalty_conjugation]

/-- Exact Haar mean, distinguished from the Wilson beta>0 expectation. -/
def sliceBlockHaarMean (B : Finset (SpatialPlaquette L)) : ℝ :=
  ∫ a, sliceBlockEnergy L B a ∂sliceHaar L

/-- Concrete source-centered continuous observable. -/
def centeredContinuousSliceBlock (B : Finset (SpatialPlaquette L)) :
    C(Slice L SU2, ℝ) :=
  continuousSliceBlock L B -
    ContinuousMap.const (Slice L SU2) (sliceBlockHaarMean L B)

/-- The subtraction is scalar, so the actual gauge symmetry is preserved. -/
theorem centeredContinuousSliceBlock_gauge (B : Finset (SpatialPlaquette L))
    (g : SliceGauge L SU2) (a : Slice L SU2) :
    centeredContinuousSliceBlock L B (sliceGaugeAction g a) =
      centeredContinuousSliceBlock L B a := by
  simp only [centeredContinuousSliceBlock, ContinuousMap.sub_apply,
    ContinuousMap.const_apply]
  rw [continuousSliceBlock_gauge]

/-- Source-derived element of the actual CLOSED gauge-invariant slice Hilbert
space. The map from the finite 4D block is literal only for spatial blocks. -/
def centeredSliceBlockVector (B : Finset (SpatialPlaquette L)) :
    gaugeInvariantSpace L :=
  ⟨ContinuousMap.toLp 2 (sliceHaar L) ℝ (centeredContinuousSliceBlock L B),
    continuous_mem_gaugeInvariantSpace L (centeredContinuousSliceBlock L B)
      (centeredContinuousSliceBlock_gauge L B)⟩

/-- Domain-correct comparison with the ACTUAL existing normalized transfer
logarithm. No total-domain fiction: both the maximal-domain membership and
principal-mode vanishing are required for the particular physical observable.
The coefficient depends explicitly on beta, L, and the lattice spacing a. -/
theorem centeredBlock_regulated_logarithmic_gap
    (β : ℝ) (hβ : 0 < β) {a : ℝ} (ha : 0 < a)
    (B : Finset (SpatialPlaquette L))
    (hdom : centeredSliceBlockVector L B ∈ logarithmicDomain L β hβ.le a)
    (hperp : spectralCoordinates L β hβ.le (centeredSliceBlockVector L B)
      (lambda0 L β hβ.le) = 0) :
    (-Real.log (1 - Real.exp (-24 * β * (L : ℝ)^3)) / a) *
        ‖centeredSliceBlockVector L B‖^2 ≤
      inner ℝ (centeredSliceBlockVector L B)
        (logarithmicOperator L β hβ.le a
          ⟨centeredSliceBlockVector L B, hdom⟩) := by
  exact explicit_logarithmic_gap L β hβ ha
    ⟨centeredSliceBlockVector L B, hdom⟩ hperp

end GRWTSK.Geometry.GaugeTheory.WilsonSliceObservableLogDomain
