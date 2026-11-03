/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusOriginalSingleRateZeroFreeReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusOriginalObserverZeroTransport
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSoficDefectLanguage
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Faithful original Möbius readout -> single-rate zero-free certificate

The original true two-bit packet, an imperfect physical stream,
and a certified sofic chart-word readout are source RETURNS,
not independent arithmetic cancellation theorems.

If the complete observed signed original cross is bounded
at one positive rate r, AND its genuine source-minus-readout
SIGNED defect is bounded at the SAME rate, then the ORIGINAL
pickupCross has that rate. By the new common source consumer,
its nonnegative original energy and analytic Laplace return
exclude zeta zeros on Re(s)>(1+r)/2.

For an IDEAL encoded source and certified sofic chart shifts,
the exact readout defect is zero, but encoding was constructed
from the original μ(n) and provides no new bound by itself.
For an actual imperfect stream, the full defect includes both
mixed orientations and error-error. Neither can be dropped.

All standard complex Laplace and dyadic energy Props remain
explicit unproved imports. The required observation upper is
a hypothesis, NOT a newly proven RH-level arithmetic bound.
This is one fixed r, NOT the all-positive-rate RH criterion.
-/

namespace GRWTSK.NumberTheory.Moebius.OriginalCertifiedReadoutZeroFree

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.OriginalSingleRateZeroFreeReturn
open GRWTSK.NumberTheory.Moebius.OriginalObserverZeroTransport
open GRWTSK.NumberTheory.Moebius.OriginalLaplaceZeroBarrier
open GRWTSK.NumberTheory.Moebius.PhysicalBitGramReturn
open GRWTSK.NumberTheory.Moebius.MoebiusSoficDefectLanguage
open GRWTSK.NumberTheory.Moebius.StrongFixedPowerPR103
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DefectEnrichedSoficLanguage
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity

/-- An arbitrary actual indexed physical-bit stream has an
ORIGINAL source-index signed ledger. If the TRUE full
signedReadoutDefect and the observed packet both have a
single rate r, this conditional arithmetic observation
implies genuine zero-freeness to Re(s)>(1+r)/2.
No positive-only Gram or simulated independent bits. -/
theorem imperfect_physical_single_rate_implies_zero_free
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (hCeiling : DyadicOriginalEnergyCeilingTarget)
    (r : ℝ) (hr : 0 < r)
    (p : Parameters) (chart : ℝ)
    (stream : ℕ → PhysicalStream)
    (C : ℝ) (hC : 0 ≤ C)
    (hObserved : ∀ J : ℕ, 1 ≤ J →
      observedPacket p chart (dyadicTime J) (stream J) ≤
        C * Real.exp (r*dyadicTime J))
    (hError : OriginalSignedObserverErrorAt
      (fun J => signedReadoutDefect
        p chart (dyadicTime J) (stream J)) r) :
    ZetaZeroFreeRightOf ((1+r)/2) := by
  obtain ⟨D,hD,hDefect⟩ := hError
  have hCross : ∀ J : ℕ, 1 ≤ J →
      pickupCross (dyadicTime J) ≤
        (C+D)*Real.exp (r*dyadicTime J) := by
    intro J hJ
    have hEq := pickupCross_eq_observed_add_defect
      p chart (dyadicTime J) (stream J)
    have hObs := hObserved J hJ
    have hErr := (abs_le.mp (hDefect J hJ)).2
    linarith
  exact original_signed_cross_single_rate_implies_zero_free
    hRight hHolo hIdentity hCeiling r hr
    (C+D) (add_nonneg hC hD) hCross

/-- Finite *certified* sofic chart words transport an ideal
encoded bit stream without altering the ORIGINAL signed
pickupCross. An assumed rate upper on the actual certified
readout therefore gives one fixed zero-free half-plane.
Candidate/admissible (noncertified) words cannot be inserted
as traces; their semantic bridge is intentionally absent. -/
theorem certified_sofic_original_single_rate_implies_zero_free
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (hCeiling : DyadicOriginalEnergyCeilingTarget)
    (r : ℝ) (hr : 0 < r)
    (p : Parameters)
    (C : ℝ) (hC : 0 ≤ C)
    (hTraceReadout :
      ∀ J : ℕ, 1 ≤ J →
        ∃ (target : ChartedStream) (word : List ℝ)
          (defect allowance : ℝ),
          CertifiedTrace (mobiusShiftSystem p (dyadicTime J))
            (0, encodedStream p) word target defect allowance ∧
          observedPacket p target.1 (dyadicTime J) target.2 ≤
            C * Real.exp (r*dyadicTime J)) :
    ZetaZeroFreeRightOf ((1+r)/2) := by
  have hCross : ∀ J : ℕ, 1 ≤ J →
      pickupCross (dyadicTime J) ≤
        C * Real.exp (r*dyadicTime J) := by
    intro J hJ
    obtain ⟨target,word,defect,allowance,hTrace,hBound⟩ :=
      hTraceReadout J hJ
    have hExact := encoded_certified_word_returns_original
      p (dyadicTime J) hTrace
    rw [← hExact]
    exact hBound
  exact original_signed_cross_single_rate_implies_zero_free
    hRight hHolo hIdentity hCeiling r hr C hC hCross

end GRWTSK.NumberTheory.Moebius.OriginalCertifiedReadoutZeroFree
