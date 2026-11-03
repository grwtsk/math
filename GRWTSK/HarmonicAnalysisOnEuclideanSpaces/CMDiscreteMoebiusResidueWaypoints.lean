/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMDiscreteModularLattice
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMDiscreteRSBoundaryBulk
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMCenteredResidueWaypointDeployment
import Mathlib.Tactic

/-!
# Original signed Möbius atoms on an actual transformed discrete lattice

The geometric map is the matrix Möbius action of SL(2,Z). The arithmetic
weights are the UNCHANGED original ArithmeticFunction.moebius n and literal
pickupResponse n t. Every atom is attached to a full integer n and a genuine
integer-grid location BEFORE the matrix acts. Its parity and additive residue
(n/2 modulo d²) are derived from that original n, never from a lossy inverse
of a residue bucket or from the transformed geometric coordinate.

The finite coherent readout of the geometric samples is exactly the original
complete signed wave, including nonunits, squareful zeros, both parities and
mixed products. The CERN waypoints have their original keys, times and values;
only their separate geometric site locations are transformed. The previous
full data/source boundary residual is carried verbatim, with NO claimed fit.

The 2D modular action on lattice positions, the 4D RS boundary conformal
kinematics, and the arithmetic Möbius function are kept as DISTINCT types.
An actual RS/AdS5 field map or a CERN-measurement operator remains open.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators MatrixGroups UpperHalfPlane

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMDiscreteMoebiusResidueWaypoints

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform
open GRWTSK.NumberTheory.Moebius.DyadicWeightedCorrelationInterface
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMDiscreteModularLattice
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMCenteredResidueWaypointDeployment

/-- Original integer-labelled signed atom, with its transformed DISCRETE
lattice site and complete arithmetic channel metadata. -/
structure TransformedSignedAtom (d : ℕ) [NeZero d] where
  originalIndex : ℕ
  geometricPosition : UpperHalfPlane
  parity : ℕ
  additiveResidue : ZMod (d * d)
  originalSignedResponse : ℝ

/-- No arithmetic label, sign or parity is recomputed from the image point. -/
def transformedSignedAtom (g : SL(2, ℤ)) (d n : ℕ) [NeZero d]
    (t : ℝ) : TransformedSignedAtom d where
  originalIndex := n
  geometricPosition := transformedLatticePoint g (sourceLatticeSite n)
  parity := n % 2
  additiveResidue := classCoordinate d n
  originalSignedResponse := moebiusReal n * pickupResponse n t

@[simp] theorem atom_label (g : SL(2, ℤ)) (d n : ℕ) [NeZero d]
    (t : ℝ) : (transformedSignedAtom g d n t).originalIndex = n := rfl

@[simp] theorem atom_parity (g : SL(2, ℤ)) (d n : ℕ) [NeZero d]
    (t : ℝ) : (transformedSignedAtom g d n t).parity = n % 2 := rfl

@[simp] theorem atom_residue (g : SL(2, ℤ)) (d n : ℕ) [NeZero d]
    (t : ℝ) :
    (transformedSignedAtom g d n t).additiveResidue = classCoordinate d n := rfl

@[simp] theorem atom_signedResponse (g : SL(2, ℤ)) (d n : ℕ)
    [NeZero d] (t : ℝ) :
    (transformedSignedAtom g d n t).originalSignedResponse =
      moebiusReal n * pickupResponse n t := rfl

/-- The Möbius transformation acts on the positions, and no two original
integer source labels collide (in particular no alias modulo d²). -/
theorem atom_positions_injective (g : SL(2, ℤ)) (d : ℕ) [NeZero d]
    (t : ℝ) :
    Function.Injective (fun n : ℕ =>
      (transformedSignedAtom g d n t).geometricPosition) :=
  transformed_source_injective g

/-- Coherent scalar observation over the original CLOSED finite inventory.
This is a sum of signed weights attached to transformed integer lattice
positions, NOT a new analytic continuation or positive variance. -/
def transformedLatticeReadout (g : SL(2, ℤ)) (d j : ℕ)
    [NeZero d] (t : ℝ) : ℝ :=
  ∑ n ∈ indices j,
    (transformedSignedAtom g d n t).originalSignedResponse

/-- Exact, source-backed comparison with the unchanged original signed sum. -/
theorem transformedLatticeReadout_source (g : SL(2, ℤ))
    (d j : ℕ) [NeZero d] (t : ℝ) :
    transformedLatticeReadout g d j t = originalFixedWave j t := by
  rfl

/-- ALL original signed parity/residue channels, including nonunits,
are returned after the geometric action, before taking the square. -/
theorem transformedLatticeReadout_complete (g : SL(2, ℤ))
    (d j : ℕ) [NeZero d] (t : ℝ) :
    transformedLatticeReadout g d j t = completeWave j d t := by
  rw [transformedLatticeReadout_source]
  exact (completeWave_eq_originalFixedWave j d t).symm

/-- Exact original causal pickup at every time in its closed dyadic window. -/
theorem transformedLatticeReadout_wholePickup (g : SL(2, ℤ))
    (d j : ℕ) [NeZero d] {t : ℝ}
    (ht : 0 ≤ t) (hT : t ≤ dyadicTime j) :
    transformedLatticeReadout g d j t = wholePickup t := by
  rw [transformedLatticeReadout_complete]
  exact (wholePickup_eq_completeWave j d ht hT).symm

/-- The original integrated signed energy is unchanged by moving
lattice POSITIONS while preserving the signed SOURCE weights. -/
theorem transformedLatticeReadout_energy (g : SL(2, ℤ))
    (d j : ℕ) [NeZero d] :
    pickupEnergy (dyadicTime j) =
      ∫ t in (0 : ℝ)..dyadicTime j,
        (transformedLatticeReadout g d j t) ^ 2 := by
  rw [← completeResidueEnergy_eq_pickupEnergy j d]
  unfold completeResidueEnergy
  apply intervalIntegral.integral_congr
  intro t _
  rw [transformedLatticeReadout_complete]

/-- A separately geometry-tagged dataset event. This does NOT convert a
CERN event into a Mobius coefficient, geometric Hodge class or RS field. -/
structure DiscreteWaypoint where
  eventKey : String
  latticeImage : UpperHalfPlane
  center : ℝ
  observedValue : ℝ
  citation : String

/-- Dataset rows remain fixed CENTERED waypoints; only the distinct
spatial geometry is moved by a discrete modular Möbius element. -/
def transformedWaypoint (g : SL(2, ℤ)) (D : WaypointDataset)
    (i : ℕ) : DiscreteWaypoint where
  eventKey := D.eventKey i
  latticeImage := transformedLatticePoint g ((i : ℤ), i)
  center := dataCenters D i
  observedValue := D.observedValue i
  citation := D.sourceCitation

@[simp] theorem waypoint_center_unchanged (g : SL(2, ℤ))
    (D : WaypointDataset) (i : ℕ) :
    (transformedWaypoint g D i).center = dataCenters D i := rfl

@[simp] theorem waypoint_value_unchanged (g : SL(2, ℤ))
    (D : WaypointDataset) (i : ℕ) :
    (transformedWaypoint g D i).observedValue = D.observedValue i := rfl

@[simp] theorem waypoint_key_unchanged (g : SL(2, ℤ))
    (D : WaypointDataset) (i : ℕ) :
    (transformedWaypoint g D i).eventKey = D.eventKey i := rfl

/-- Strongest mathematically honest CERN/source return: anchors plus the
WHOLE unpaid residual equal the exact original signed lattice observable.
It is NOT evidence of an experimental fit or correspondence. -/
theorem source_equals_transformed_lattice_plus_data_boundary
    (g : SL(2, ℤ)) (D : WaypointDataset)
    (k j d : ℕ) [NeZero d] (t : ℝ) :
    dataCenteredSignal D k t + dataCenteredPaidResidual D k j d t =
      transformedLatticeReadout g d j t := by
  calc
    _ = completeWave j d t := source_equals_anchor_plus_full_residual D k j d t
    _ = transformedLatticeReadout g d j t :=
      (transformedLatticeReadout_complete g d j t).symm

/-- The original signed square keeps the COMPLETE data/model mixed term. -/
theorem transformed_lattice_signed_square
    (g : SL(2, ℤ)) (D : WaypointDataset)
    (k j d : ℕ) [NeZero d] (t : ℝ) :
    (transformedLatticeReadout g d j t) ^ 2 =
      (dataCenteredSignal D k t) ^ 2 +
        2 * dataCenteredSignal D k t * dataCenteredPaidResidual D k j d t +
        (dataCenteredPaidResidual D k j d t) ^ 2 := by
  rw [← source_equals_transformed_lattice_plus_data_boundary g D k j d t]
  ring

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMDiscreteMoebiusResidueWaypoints
