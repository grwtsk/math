/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE. Compilation, expected types, fresh kernel and
transitive axiom audit: NOT_RUN. Preserve upstream licenses.
-/
import GRWTSK.Combinatorics.ShapePhysicalBitTransport
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusOriginalObserverZeroTransport
import Mathlib.Tactic

/-!
Original signed Möbius hypothetical-zero observation through exact
spectral shell lift and genuine Gödel observer-coordinate shift.
No analytic hypotheses are discharged by this representation.
The original integer indices, signs, both ordered Gram orientations,
dyadic source windows and signed observer defect remain unchanged.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Moebius.PhysicalLiftedZeroWitness

open Folder.Research.ShapeChangingBundle
open Folder.Research.ShapePhysicalBitTransport
open GRWTSK.NumberTheory.Moebius.OriginalObserverZeroTransport
open GRWTSK.NumberTheory.Moebius.OriginalLaplaceZeroBarrier
open GRWTSK.NumberTheory.Moebius.OriginalFarZeroForcedSpikes
open GRWTSK.NumberTheory.Moebius.TerminalHighSmoothCollar
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity
open GRWTSK.RiemannHypothesis.CCC

/-- Complete source-minus-record ledger at every original dyadic index. -/
theorem actualShapeObserverLedger
    (base : Carrier.GridShape) (k level width : ℕ)
    (p : Parameters) (chart : ℝ)
    (X : ℕ → ObservedShapeState base k level width) :
    OriginalSignedObserverLedger
      (fun J => packet p chart (dyadicTime J) (X J))
      (fun J => defect p chart (dyadicTime J) (X J)) := by
  intro J hJ
  exact pickupCross_eq_packet_add_defect
    p chart (dyadicTime J) (X J)

/-- A HYPOTHETICAL off-critical zero forces observed spikes only when
all three unproved analytic Laplace targets, the dyadic ceiling,
and the full source-specific signed readout defect bound are supplied. -/
theorem hypothetical_zero_forces_lifted_observer_spikes
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (hCeiling : DyadicOriginalEnergyCeilingTarget)
    (rho : ℂ) (hhalf : (1 / 2 : ℝ) < rho.re)
    (hone : rho.re < 1) (hzeta : _root_.riemannZeta rho = 0)
    (eta : ℝ) (heta : 0 < eta)
    (hsmall : eta < 2 * rho.re - 1)
    (base : Carrier.GridShape) (k level width : ℕ)
    (P : ℕ → ShapeStepPayload base k level)
    (X : ℕ → ObservedShapeState base k level width)
    (p : Parameters) (chart s : ℝ)
    (hError : OriginalSignedObserverErrorAt
      (fun J => defect p chart (dyadicTime J) (X J)) eta)
    (K : ℝ) :
    ∃ J : ℕ, 1 ≤ J ∧
      K * Real.exp (eta * dyadicTime J) <
        packet p (chart + s) (dyadicTime J)
          (shift s (lift base k (P J) (X J))) := by
  have hLedger :=
    actualShapeObserverLedger base k level width p chart X
  obtain ⟨J, hJ, hObserved⟩ :=
    hypothetical_zero_forces_observed_signed_cross_spikes
      hRight hHolo hIdentity hCeiling
      rho hhalf hone hzeta eta heta hsmall
      (fun j => packet p chart (dyadicTime j) (X j))
      (fun j => defect p chart (dyadicTime j) (X j))
      hLedger hError K
  refine ⟨J, hJ, ?_⟩
  have hPacket :
      packet p (chart + s) (dyadicTime J)
          (shift s (lift base k (P J) (X J))) =
        packet p chart (dyadicTime J) (X J) := by
    calc
      _ = packet p chart (dyadicTime J)
          (lift base k (P J) (X J)) :=
        packet_shift p chart s (dyadicTime J)
          (lift base k (P J) (X J))
      _ = packet p chart (dyadicTime J) (X J) :=
        packet_lift p chart (dyadicTime J) base k (P J) (X J)
  rw [hPacket]
  exact hObserved

end GRWTSK.NumberTheory.Moebius.PhysicalLiftedZeroWitness
