/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMWindowedBirthResidueRegularization
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMCenteredWaypointPartition
import Mathlib.Tactic

/-!
# Nested waypoint-centered boundary windows on every signed residue channel

The source labels remain the actual (n mod 2, floor(n/2) mod d^2), including
nonunit classes and zero Mobius coefficients. A shared finite partition of
C-infinity time windows is applied to EVERY original signed class. Dataset
waypoints supply ONLY centers (after separately chosen clock conversion)
and observed scalar values; NO arbitrary mapping from a detector event to an
arithmetic residue, CM class, or physical Hamiltonian is manufactured.

There are two separately paid residuals:
  * the uncovered boundary and source-minus-datum residual around the fixed
    CERN or other data waypoints;
  * the exact original-versus-birth-smoothed Mobius waveform correction.

The full source is recovered EXACTLY by the sum of fixed dataset anchors and
both residuals; its squared value keeps the full signed mixed term. The
regularized waveform is C-infinity across birth times, but no false claim is
made that simply multiplying the UNREGULARIZED waveform by a smooth bump
would remove its derivative kink. Physical units, time normalization,
experimental proper-time errors and calibration are separate inputs.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMCenteredResidueWaypointDeployment

open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMCenteredWaypointPartition
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMWindowedBirthResidueRegularization
open GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.RiemannHypothesis.CCC

/-- A single chosen dataset time window on one original, signed class. -/
def selectedClassWindow (centers : ℕ → ℝ) (N k j d r : ℕ) [NeZero d]
    (a : ZMod (d * d)) (i : ℕ) (t : ℝ) : ℝ :=
  waypointWeight centers k i t * regularizedClassWave k j d r a t

/-- True C-infinity deployment across each original parity/residue class.
This is the smoothed class, NOT the original source falsely declared C1. -/
theorem selectedClassWindow_smooth (centers : ℕ → ℝ)
    (N k j d r : ℕ) [NeZero d] (a : ZMod (d * d)) (i : ℕ) :
    ContDiff ℝ (⊤ : ℕ∞) (selectedClassWindow centers N k j d r a i) := by
  unfold selectedClassWindow
  exact (waypointWeight_smooth centers k i).mul
    (regularizedClassWave_smooth k j d r a)

/-- The exact unselected remainder PLUS the difference introduced by
regularizing the ORIGINAL causal response inside its birth boundary. -/
def classBoundaryReturn (centers : ℕ → ℝ) (N k j d r : ℕ) [NeZero d]
    (a : ZMod (d * d)) (t : ℝ) : ℝ :=
  boundaryWeight centers k N t * regularizedClassWave k j d r a t +
    classRegularizationError k j d r a t

/-- Every original signed source class is returned with NO omitted residue,
no loss of source sign and no assumption that the data fit the model. -/
theorem source_class_return (centers : ℕ → ℝ) (N k j d r : ℕ)
    [NeZero d] (a : ZMod (d * d)) (t : ℝ) :
    (∑ i ∈ Finset.range N, selectedClassWindow centers N k j d r a i t) +
      classBoundaryReturn centers N k j d r a t = classWave j d r a t := by
  have hpart := partition_exact centers k N t
  have hsum :
      (∑ i ∈ Finset.range N, selectedClassWindow centers N k j d r a i t) =
        (∑ i ∈ Finset.range N, waypointWeight centers k i t) *
          regularizedClassWave k j d r a t := by
    simp only [selectedClassWindow, Finset.sum_mul]
  rw [hsum]
  unfold classBoundaryReturn classRegularizationError
  calc
    _ = ((∑ i ∈ Finset.range N, waypointWeight centers k i t) +
         boundaryWeight centers k N t) * regularizedClassWave k j d r a t +
          (classWave j d r a t - regularizedClassWave k j d r a t) := by ring
    _ = classWave j d r a t := by rw [hpart]; ring

/-- The TOTAL all-class signed source, with both parities and all nonunit
residues, survives the windowed deployment. -/
theorem all_residue_channels_return (centers : ℕ → ℝ) (N k j d : ℕ)
    [NeZero d] (t : ℝ) :
    (∑ r ∈ Finset.range 2, ∑ a : ZMod (d * d),
       ((∑ i ∈ Finset.range N,
             selectedClassWindow centers N k j d r a i t) +
          classBoundaryReturn centers N k j d r a t)) =
      completeWave j d t := by
  simp_rw [source_class_return]
  rfl

/-- Dataset observations remain the original fixed inputs, not predictions.
The time-center converter is explicit and requires a physical interpretation
of `tau0Ps`. The data need NOT originate from a CERN source to typecheck. -/
structure WaypointDataset where
  count : ℕ
  eventKey : ℕ → String
  properTimePs : ℕ → ℝ
  observedValue : ℕ → ℝ
  tau0Ps : ℝ
  tau0Ps_pos : 0 < tau0Ps
  sourceCitation : String

/-- Experimental proper-time centers are converted to arithmetic coordinates
ONLY through the explicitly supplied time-scale parameter. -/
def dataCenters (D : WaypointDataset) : ℕ → ℝ :=
  dimensionlessCenters D.properTimePs D.tau0Ps

/-- The exact data-centered fitted signal uses unchanged values. -/
def dataCenteredSignal (D : WaypointDataset) (k : ℕ) (t : ℝ) : ℝ :=
  dataAnchor (dataCenters D) D.observedValue k D.count t

/-- The physical-value contract is a separate scientific hypothesis: only
when detector values have been mapped into the source's units may this
scalar residual be interpreted as an experimental model discrepancy. -/
def dataCenteredPaidResidual (D : WaypointDataset) (k j d : ℕ)
    [NeZero d] (t : ℝ) : ℝ :=
  paidBoundaryResidual (dataCenters D) D.observedValue k D.count
    (regularizedCompleteWave k j d) t +
      regularizationError k j d t

/-- No numeric data, event IDs, or measurement likelihood is fabricated.
For ANY supplied finite waypoints, the raw signed complete source is
exactly fixed-data anchor + complete boundary + birth regularization error. -/
theorem source_equals_anchor_plus_full_residual (D : WaypointDataset)
    (k j d : ℕ) [NeZero d] (t : ℝ) :
    dataCenteredSignal D k t + dataCenteredPaidResidual D k j d t =
      completeWave j d t := by
  have h := dataAnchor_add_paidResidual (dataCenters D) D.observedValue
    k D.count (regularizedCompleteWave k j d) t
  unfold dataCenteredSignal dataCenteredPaidResidual
  calc
    _ = regularizedCompleteWave k j d t + regularizationError k j d t := by
      rw [← add_assoc, h]
    _ = completeWave j d t :=
      (original_wave_eq_regularized_add_error k j d t).symm

/-- The original signed energy is NOT replaced by a sum of positive
residue variances or detector measurements. The entire cross term survives. -/
theorem original_signed_square_data_return (D : WaypointDataset)
    (k j d : ℕ) [NeZero d] (t : ℝ) :
    (completeWave j d t) ^ 2 =
      (dataCenteredSignal D k t) ^ 2 +
      2 * dataCenteredSignal D k t * dataCenteredPaidResidual D k j d t +
      (dataCenteredPaidResidual D k j d t) ^ 2 := by
  rw [← source_equals_anchor_plus_full_residual D k j d t]
  ring

/-- The original physical-energy target retains precisely the OLD
`pickupEnergy`, with all window and smoothing corrections fully paid. -/
theorem original_pickup_energy_unchanged (D : WaypointDataset)
    (k j d : ℕ) [NeZero d] :
    pickupEnergy (dyadicTime j) =
      ∫ t in (0 : ℝ)..dyadicTime j,
        (dataCenteredSignal D k t + dataCenteredPaidResidual D k j d t) ^ 2 := by
  rw [← completeResidueEnergy_eq_pickupEnergy j d]
  unfold completeResidueEnergy
  apply intervalIntegral.integral_congr
  intro t ht
  rw [source_equals_anchor_plus_full_residual]

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMCenteredResidueWaypointDeployment
