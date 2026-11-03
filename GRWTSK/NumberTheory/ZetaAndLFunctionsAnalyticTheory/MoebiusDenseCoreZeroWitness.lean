/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Source formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDenseCoreRowControlVariate
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusOriginalObserverZeroTransport
import Mathlib.Tactic

/-!
# Offcritical zeta-zero witnesses must survive in the paid direct dense core

The earlier ORIGINAL source analytic-observer theorem says: IF a
genuine offcritical zeta zero rho existed, and IF the three independent
Laplace targets and the dyadic-energy ceiling were established, then
the ORIGINAL actual ordered signed pickupCross has arbitrarily large
positive normalized spikes at every rate eta<2*Re(rho)-1.

This module removes the true Putnam additive-gap and multiplicative-
ratio sectors at the SAME original dyadic J, paying each by the
existing unconditional 32/eta²*exp(eta*T_J) signed-source estimate.
Their sum costs at most 64/eta²*exp(eta*T_J).

Consequently, the smaller STILL-SIGNED dense arithmetic core must
also exhibit arbitrarily large positive spikes. This is not a proof
that any offcritical zero exists, and it is not a new RH estimate.
All original indices, coefficients, diagonal exclusion and the
two ordered Gram orientations are retained.

The positivity of source spikes is conditional on unported standard
analytic Laplace Props and the dyadic source-energy ceiling. A
geometric or finite-bit encoding does not supply those hypotheses.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.DenseCoreZeroWitness

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.Moebius.DenseCoreRowControlVariate
open GRWTSK.NumberTheory.Moebius.OriginalObserverZeroTransport
open GRWTSK.NumberTheory.Moebius.OriginalLaplaceZeroBarrier
open GRWTSK.NumberTheory.Moebius.OriginalFarZeroForcedSpikes
open GRWTSK.NumberTheory.Moebius.TerminalHighSmoothCollar
open GRWTSK.NumberTheory.Moebius.PhysicalBitGramReturn
open GRWTSK.NumberTheory.Moebius.PhysicalMoebiusBitCodec
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity

/-- CONDITIONAL converse: a genuinely offcritical zeta zero, together
with every independently named original-source analytic hypothesis,
forces positive spikes even AFTER BOTH sparse source sectors are
paid and removed. The original fixed J*log(2) grid is unchanged. -/
theorem hypothetical_zero_forces_direct_denseCore_spikes
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (hCeiling : DyadicOriginalEnergyCeilingTarget)
    (rho : ℂ) (hhalf : (1 / 2 : ℝ) < rho.re)
    (hone : rho.re < 1) (hzeta : _root_.riemannZeta rho = 0)
    (eta : ℝ) (heta : 0 < eta)
    (hsmall : eta < 2 * rho.re - 1)
    (p : Parameters) (chart : ℝ) (K : ℝ) :
    ∃ J : ℕ, 1 ≤ J ∧
      K * Real.exp (eta * dyadicTime J) <
        endpointDenseAddMulCoreCross
          (putnamRateGapSet eta (dyadicTime J)) (dyadicTime J) := by
  obtain ⟨J, hJ, hsource⟩ :=
    hypothetical_zero_forces_ideal_physical_bit_spikes
      hRight hHolo hIdentity hCeiling
      rho hhalf hone hzeta eta heta hsmall
      p chart (K + 64 / eta ^ 2)
  have hencoded :=
    observedPacket_encoded_eq_pickupCross p chart (dyadicTime J)
  rw [hencoded] at hsource
  have hT : 0 ≤ dyadicTime J := dyadicTime_nonneg J
  have hpaid :=
    paidSparseSectors_abs_le eta heta hT
  have hpaidUp :
      paidSparseSectors (putnamRateGapSet eta (dyadicTime J))
        (dyadicTime J) ≤
      (64 / eta ^ 2) * Real.exp (eta * dyadicTime J) :=
    (le_abs_self _).trans hpaid
  have hsplit :
      pickupCross (dyadicTime J) =
      paidSparseSectors (putnamRateGapSet eta (dyadicTime J))
        (dyadicTime J) +
      endpointDenseAddMulCoreCross
        (putnamRateGapSet eta (dyadicTime J)) (dyadicTime J) := by
    unfold paidSparseSectors
    exact pickupCross_eq_gap_ratio_core _ _
  refine ⟨J, hJ, ?_⟩
  nlinarith

end GRWTSK.NumberTheory.Moebius.DenseCoreZeroWitness
