/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formal source drafting assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSparseHighGcdDenseCore
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PhysicalMoebiusUniversalLedger
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Original arithmetic return from the disjoint LOW-gcd dense core

The hard source at each positive requested rate eta uses the smaller
sparse cutoff eta/2 (so its actual selected additive distance and
integer ratios use exp(eta*T/4)). The common-divisor restriction
is ALWAYS the original fixedGcdCutoff T independent of eta.

The earlier three-sector positive budget gives, at every eta>0,
  |pickupCross T-lowGcdDenseCross (Q_(eta/2,T)) T|
     <= C_eta * exp(eta*T)
at sufficiently large T, for explicit C_eta and cutoff R_eta.

The main target is a source-preserving equivalence:
  LowGcdDenseEveryRateOn G <-> SubexponentialOn pickupCross G.
This does NOT prove either side. Both directions must lower their
source-payment error rate below the rate requested by the downstream
consumer, retaining a single FIXED set G for all rates.

The original endpoint quadrature differs from pickupCross by at most
1/4 for nonnegative T, so its good-scale criterion is equivalent as
well, provided the existing source-specific theorem is applied.

A last ledger retains the physical observedPacket, its complete
signedReadoutDefect, and the separate original endpoint curvature.
The tensor/geometric/Gibbs representation has no hidden arithmetic
growth assumption. All results are uncompiled proof candidates.
-/

namespace GRWTSK.NumberTheory.Moebius.SparseHighGcdDenseCoreReturn

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.SparseHighGcdDenseCore
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.PhysicalBitGramReturn
open GRWTSK.NumberTheory.Moebius.PhysicalUniversalLedger
open GRWTSK.NumberTheory.Moebius.PhysicalRowEndpointReturn
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity

/-- The core remains signed, on the original integer and original
birth-gated Gram, but must satisfy BOTH original restrictions:
no selected additive/multiplicative sparse edge, and gcd<=D_*(T).
The scale set G is chosen ONCE, before quantifying eta. -/
def LowGcdDenseEveryRateOn (G : Set ℝ) : Prop :=
  ∀ eta : ℝ, 0 < eta →
    ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
      ∀ T : ℝ, T ∈ G → R ≤ T →
        lowGcdDenseCross
          (putnamRateGapSet (eta / 2) T) T ≤
          C * Real.exp (eta * T)

/-- Every real positive rate can be divided by two without changing
the original scale set or the ORIGINAL fixed gcd cutoff. -/
private theorem rate_half_pos (eta : ℝ) (h : 0 < eta) :
    0 < eta / 2 := by linarith

private theorem rate_half_exp_le
    (eta T : ℝ) (heta : 0 < eta) (hT : 0 ≤ T) :
    Real.exp ((eta / 2) * T) ≤ Real.exp (eta * T) := by
  apply Real.exp_le_exp.mpr
  nlinarith [mul_nonneg heta.le hT]

/-- Sufficient and necessary all-rate signed arithmetic condition
for the SAME original pickupCross, with an already-paid positive
three-sector source error. No independent growth bound is inserted. -/
theorem lowGcdDenseEveryRateOn_iff_originalCrossOn (G : Set ℝ) :
    LowGcdDenseEveryRateOn G ↔ SubexponentialOn pickupCross G := by
  constructor
  · intro hCore eta heta
    let r : ℝ := eta / 2
    have hr : 0 < r := rate_half_pos eta heta
    obtain ⟨Ccore, Rcore, hCcore, hRcore, hbCore⟩ := hCore r hr
    obtain ⟨Cerr, Rerr, hCerr, hRerr, hbErr⟩ :=
      originalCross_lowGcdDense_allRateError r hr
    let R := max Rcore Rerr
    let C := Ccore + Cerr
    have hC : 0 ≤ C := add_nonneg hCcore hCerr
    have hR : 0 ≤ R := hRcore.trans (le_max_left _ _)
    refine ⟨C, R, hC, hR, ?_⟩
    intro T hG hRT
    have hTcore : Rcore ≤ T := (le_max_left _ _).trans hRT
    have hTerr : Rerr ≤ T := (le_max_right _ _).trans hRT
    have hT0 : 0 ≤ T := hR.trans hRT
    have hcor := hbCore T hG hTcore
    have herr := hbErr T hTerr
    have hupper : pickupCross T ≤ C * Real.exp (r * T) := by
      have hdiff := le_abs_self
        (pickupCross T -
          lowGcdDenseCross (putnamRateGapSet (r / 2) T) T)
      dsimp [C]
      linarith
    exact hupper.trans
      (mul_le_mul_of_nonneg_left
        (by simpa [r] using rate_half_exp_le eta T heta hT0) hC)
  · intro hCross eta heta
    let r : ℝ := eta / 2
    have hr : 0 < r := rate_half_pos eta heta
    obtain ⟨Ccross, Rcross, hCcross, hRcross, hbCross⟩ :=
      hCross r hr
    obtain ⟨Cerr, Rerr, hCerr, hRerr, hbErr⟩ :=
      originalCross_lowGcdDense_allRateError r hr
    let R := max Rcross Rerr
    let C := Ccross + Cerr
    have hC : 0 ≤ C := add_nonneg hCcross hCerr
    have hR : 0 ≤ R := hRcross.trans (le_max_left _ _)
    refine ⟨C, R, hC, hR, ?_⟩
    intro T hG hRT
    have hTcross : Rcross ≤ T := (le_max_left _ _).trans hRT
    have hTerr : Rerr ≤ T := (le_max_right _ _).trans hRT
    have hT0 : 0 ≤ T := hR.trans hRT
    have hcross := hbCross T hG hTcross
    have herr := hbErr T hTerr
    have hupper :
        lowGcdDenseCross (putnamRateGapSet (r / 2) T) T ≤
          C * Real.exp (r * T) := by
      have hdiff := neg_le_abs
        (pickupCross T -
          lowGcdDenseCross (putnamRateGapSet (r / 2) T) T)
      dsimp [C]
      linarith
    exact hupper.trans
      (mul_le_mul_of_nonneg_left
        (by simpa [r] using rate_half_exp_le eta T heta hT0) hC)

/-- The same ORIGINAL endpoint source criterion, with the unmodified
quarter-unit quadrature error and the exact fixed good-scale set. -/
theorem lowGcdDenseEveryRateOn_iff_endpointOn (G : Set ℝ) :
    LowGcdDenseEveryRateOn G ↔
      SubexponentialOn endpointSum G := by
  rw [lowGcdDenseEveryRateOn_iff_originalCrossOn]
  exact endpoint_subexponential_iff.symm

/-- A strictly conditional RH return. The new numerical source
payments have reduced the required arithmetic SUPPORT, not proved
the remaining growth premise. Its original scale coverage is a
separate unchanged hypothesis. -/
theorem riemannHypothesis_of_lowGcdDense_goodScales
    {G : Set ℝ} (hCover : AffineFrequent G)
    (hHard : LowGcdDenseEveryRateOn G) :
    _root_.RiemannHypothesis := by
  exact riemannHypothesis_of_endpoint_good_scales hCover
    ((lowGcdDenseEveryRateOn_iff_endpointOn G).mp hHard)

/-- The TRUE original signed cross remains equal to the full physical
observed packet PLUS the entire source-specific signed record defect,
and ALSO to the three disjoint paid packets plus the low-gcd hard core.
The two return paths coexist without any new source. -/
theorem originalCross_eq_threePaid_plus_core_and_observer
    (Q : Finset ℕ) (T : ℝ)
    (p : Parameters) (chart : ℝ) (stream : PhysicalStream) :
    (pickupCross T =
      threePaidSectors Q T + lowGcdDenseCross Q T) ∧
    (pickupCross T =
      observedPacket p chart T stream +
        signedReadoutDefect p chart T stream) := by
  refine ⟨?_, pickupCross_eq_observed_add_defect p chart T stream⟩
  simpa only [threePaidSectors] using
    pickupCross_eq_threePaid_add_lowGcdDense Q T

/-- The original physical signed readout defect and the distinct
endpoint curvature defect BOTH survive the complete arithmetic
decomposition. No missing physical bit is given true μ=0 status. -/
theorem endpointSum_eq_threePaid_core_and_two_defects
    (Q : Finset ℕ) (T : ℝ)
    (p : Parameters) (chart : ℝ) (stream : PhysicalStream) :
    endpointSum T =
      threePaidSectors Q T + lowGcdDenseCross Q T +
        endpointCurvatureDefect T ∧
    pickupCross T =
      observedPacket p chart T stream +
        signedReadoutDefect p chart T stream := by
  constructor
  · have hsum := pickupCross_eq_threePaid_add_lowGcdDense Q T
    unfold threePaidSectors at hsum
    unfold endpointCurvatureDefect
    linarith
  · exact pickupCross_eq_observed_add_defect p chart T stream

end GRWTSK.NumberTheory.Moebius.SparseHighGcdDenseCoreReturn
