/- Copyright (c) 2026 grwtsk contributors. MIT.
Source proof candidate: compilation NOT_RUN, fresh kernel NOT_RUN,
expected types NOT_RUN, transitive axiom audit NOT_RUN.
Mathlib and imported GRWTSK authorship/licensing retained.
-/
import GRWTSK.Combinatorics.ShapePhysicalBitOptimizedRowLaw
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PhysicalMoebiusUniversalLedger
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupEndpointQuadrature
import Mathlib.Tactic

/-!
# Original signed physical/row source returned to endpoint quadrature

This bridge DOES NOT invent an alternative cutoff or change the signed
off-diagonal arithmetic source. It composes:
 - the actual original endpointIndex T,
 - the actual physical observer packet PLUS the entire signed readout defect,
 - the literal signed first-index rows,
 - the proved source endpoint curvature allowance |endpointSum-pickupCross|<=1/4,
 - and the existing conditional affine-good-scale analytic return.

The only newly introduced scalar is the endpoint-minus-original-cross
difference, whose quarter-unit allowance is imported from the original
quadrature theorem. Row absolute mass is a STRICTLY STRONGER
arithmetic supplier than a small signed total, not a proved estimate.
Any conditional RH theorem below requires that unproved mass supplier
and the actual affine coverage evidence.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PhysicalRowEndpointReturn

open GRWTSK.NumberTheory.Moebius.PhysicalBitGramReturn
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity
open GRWTSK.RiemannHypothesis.CCC
open Folder.Research.ShapePhysicalBitTransport
open Folder.Research.ShapePhysicalBitPairSampling
open Folder.Research.ShapePhysicalBitRowConditioning
open Folder.Research.ShapePhysicalBitOptimizedRowLaw
open Folder.Research.ShapeChangingBundle
open Folder.Research.ShapePhysicalBitFiniteSampling
open Folder.Research.ShapePhysicalBitFiniteTVCoupling
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteAdmissibleSampler

/-- Exactly the existing signed ordered off-diagonal source,
first summed inside each original integer-indexed row. -/
theorem pickupCross_eq_originalSignedRows (T : ℝ) :
    pickupCross T =
      ∑ m ∈ endpointIndex T, originalRowSum T m := by
  rfl

/-- The signed sum cannot exceed the absolute total of COMPLETE
signed rows. The rows are never replaced by absolute pair entries. -/
theorem pickupCross_le_originalRowAbsMass (T : ℝ) :
    pickupCross T ≤ originalRowAbsMass T := by
  rw [pickupCross_eq_originalSignedRows]
  unfold originalRowAbsMass
  apply Finset.sum_le_sum
  intro m hm
  exact le_abs_self (originalRowSum T m)

/-- EXACT previously known endpoint quadrature error; the actual
signed arithmetic source is not bounded by the quarter allowance. -/
def endpointCurvatureDefect (T : ℝ) : ℝ :=
  endpointSum T - pickupCross T

theorem endpointCurvatureDefect_abs_le_quarter {T : ℝ} (hT : 0 ≤ T) :
    |endpointCurvatureDefect T| ≤ (1 / 4 : ℝ) := by
  exact endpointSum_error hT

/-- Complete ordered signed rows, together with the exact and
SEPARATE previously proved endpoint curvature defect. -/
theorem endpointSum_eq_signedRows_plus_curvature (T : ℝ) :
    endpointSum T =
      (∑ m ∈ endpointIndex T, originalRowSum T m) +
        endpointCurvatureDefect T := by
  rw [← pickupCross_eq_originalSignedRows]
  unfold endpointCurvatureDefect
  ring

/-- An actual, unconditional one-sided endpoint comparison with the
complete source-row absolute total, paid by the correct 1/4 error. -/
theorem endpointSum_le_originalRowAbsMass_plus_quarter
    {T : ℝ} (hT : 0 ≤ T) :
    endpointSum T ≤ originalRowAbsMass T + (1 / 4 : ℝ) := by
  have he := (abs_le.mp (endpointCurvatureDefect_abs_le_quarter hT)).2
  have hc := pickupCross_le_originalRowAbsMass T
  unfold endpointCurvatureDefect at he
  linarith

/-- Every physical source error remains visible after endpoint sampling.
The endpoint curvature allowance does not pay any missing bit record. -/
theorem endpointSum_eq_physicalPacket_add_twoDefects
    (p : Parameters) (chart T : ℝ) (stream : PhysicalStream) :
    endpointSum T =
      (observedPacket p chart T stream +
        signedReadoutDefect p chart T stream) +
        endpointCurvatureDefect T := by
  have hsource := pickupCross_eq_observed_add_defect p chart T stream
  unfold endpointCurvatureDefect
  rw [← hsource]
  ring

/-- This complete source return also commutes with the EXISTING shape
shell lift and actual Gödel observer shift. No other gauge is invoked. -/
theorem endpointSum_eq_liftShiftPhysicalReturn
    (base : Carrier.GridShape) (k : ℕ)
    {n width : ℕ} (P : ShapeStepPayload base k n)
    (X : ObservedShapeState base k n width)
    (p : Parameters) (chart s T : ℝ) :
    endpointSum T =
      (packet p (chart + s) T (shift s (lift base k P X)) +
        defect p (chart + s) T (shift s (lift base k P X))) +
        endpointCurvatureDefect T := by
  calc
    endpointSum T =
      (packet p chart T X + defect p chart T X) +
        endpointCurvatureDefect T :=
      endpointSum_eq_physicalPacket_add_twoDefects p chart T X.stream
    _ = _ := by rw [signed_return_lift_shift]

/-- Keep the FINITE bounded-bit sampling law comparison separate from
the original signed endpoint source and BOTH source-specific defects. -/
theorem finiteTV_comparator_and_original_endpoint
    (N : ℕ) (hN : 0 < N)
    {base : Carrier.GridShape} {k level width : ℕ}
    (S : Sampler (Fin N)) (origin : Fin N)
    (p : Parameters) (chart T : ℝ)
    (X Y : ObservedShapeState base k level width)
    (sourceIndex : Fin N → ℕ) :
    (|randomMaskedLoss S origin p X Y sourceIndex -
        uniformMaskedLoss p X Y sourceIndex| ≤
          rowTotalVariation S origin) ∧
    (endpointSum T =
      (packet p chart T X + defect p chart T X) +
        endpointCurvatureDefect T) := by
  exact ⟨random_uniform_maskedLoss_abs_le_TV N hN S origin p X Y sourceIndex,
    endpointSum_eq_physicalPacket_add_twoDefects p chart T X.stream⟩

/-- CONDITIONALLY: source-row absolute mass on a single affinely
frequent scale set would supply the already existing endpoint RH
criterion. This is NOT a proof of the independent arithmetic premise. -/
theorem riemannHypothesis_of_rowAbsMass_good_scales {G : Set ℝ}
    (hcover : AffineFrequent G)
    (hrows : SubexponentialOn originalRowAbsMass G) :
    _root_.RiemannHypothesis := by
  have hcross : SubexponentialOn pickupCross G := by
    apply subexponentialOn_mono hrows
    intro T hG hT
    exact pickupCross_le_originalRowAbsMass T
  exact riemannHypothesis_of_endpoint_good_scales
    hcover (endpoint_subexponential_iff.mpr hcross)

end GRWTSK.NumberTheory.Moebius.PhysicalRowEndpointReturn
