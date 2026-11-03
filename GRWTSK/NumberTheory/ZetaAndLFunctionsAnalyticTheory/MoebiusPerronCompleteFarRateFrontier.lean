/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPerronRightLineExplicit
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFarCompleteUpperTransfer
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology

/-!
# Real zero-free boundary, genuine Perron bridge, and complete original FAR

The unconditional right-line original-Mobius Perron truncation
has a mathematical universal error <40 without ANY zero-free
hypothesis. This DOES NOT mean the contour may be shifted
through zeros of the genuine riemannZeta.

For a FIXED independent zero-free half-plane Re(s)>theta0,
the existing source bridge (under separately exposed
quantitative reciprocal growth and elementary original
causal calculus) gives genuine Mertens exponent theta
strictly larger than theta0, and original square energy
rate 2*theta-1. The entire ORIGINAL signed FAR packet
inherits this same rate after the previously source-paid
absolute collar/short-ratio/reduced-close packets.

The exact scalar rate condition is
     r>max(0,2*theta0-1).
No ONE fixed theta0>1/2 can satisfy these parameter
inequalities for EVERY r>0: choose r=2*theta0-1.
This is a rigorous limitation of THIS Perron/energy route,
not a refutation of RH or a general impossibility theorem.

All original Mobius coefficients, squareful zeros, physical
birth-gated pickupResponseGram, true endpoint T_J and both
ordered orientations are preserved. The STILL UNPROVED
quantitative reciprocal growth/segment and elementary
Perron real series inputs stay named; no RH-equivalent
zero-free half-plane is imported as an unconditional premise.
Compilation is user-DEFERRED; no native trust claim.
-/

namespace GRWTSK.NumberTheory.Moebius.PerronCompleteFarRateFrontier

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.StrongFixedPowerPR103
open GRWTSK.NumberTheory.Moebius.ReciprocalZetaPerronBridge
open GRWTSK.NumberTheory.Moebius.PerronRightLineExplicit
open GRWTSK.NumberTheory.Moebius.FarCompleteUpperTransfer
open GRWTSK.NumberTheory.Moebius.TerminalHighSmoothCollar
open GRWTSK.NumberTheory.Moebius.CollarResidualShortRatio
open GRWTSK.NumberTheory.Moebius.CollarResidualGcdReducedGap

/-- Exact arithmetic of the causal-energy rate:
any strict Mertens exponent theta>theta0 forces
the obtained rate r to exceed 2*theta0-1.
This is NOT an assumption on actual RH zero locations. -/
theorem strict_energy_rate_above_fixed_zeroFree_boundary
    (theta0 theta r : ℝ)
    (hzero : theta0 < theta)
    (hrate : 2 * theta - 1 ≤ r) :
    2 * theta0 - 1 < r := by
  linarith

/-- A fixed zero-free boundary strictly right of half cannot
service the all-positive-rates parameter requirement. The
forbidden r=2*theta0-1 is a POSITIVE rate, so the claim is
a precise scalar no-go for a fixed input, not an RH proof. -/
theorem fixed_boundary_cannot_cover_all_positive_rates
    (theta0 : ℝ) (hhalf : (1 / 2 : ℝ) < theta0) :
    ¬ (∀ r : ℝ, 0 < r → theta0 < (1 + r) / 2) := by
  intro h
  have hr : 0 < 2 * theta0 - 1 := by linarith
  have hh := h (2 * theta0 - 1) hr
  linarith

/-- Elementary exact parameter selection: from a genuinely
independent fixed zero-free boundary theta0<1 and an externally
requested r>max(0,2*theta0-1), choose ONE Mertens exponent
theta strictly between the original Perron margin and its
physical rate ceiling. This is only real algebra. -/
theorem exists_intermediate_mertens_exponent
    (theta0 r : ℝ)
    (hone : theta0 < 1)
    (hfloor : 2 * theta0 - 1 < r)
    (hrpos : 0 < r) :
    ∃ theta : ℝ,
      theta0 < theta ∧ (1 / 2 : ℝ) < theta ∧
      theta < 1 ∧ 2 * theta - 1 < r := by
  let a : ℝ := max theta0 (1 / 2)
  let b : ℝ := min 1 ((1 + r) / 2)
  have h0b : theta0 < b := by
    apply lt_min hone
    linarith
  have hhb : (1 / 2 : ℝ) < b := by
    apply lt_min
    · norm_num
    · linarith
  have hab : a < b := by
    dsimp [a]
    exact max_lt h0b hhb
  let theta : ℝ := (a + b) / 2
  have hat : a < theta := by dsimp [theta]; linarith
  have htb : theta < b := by dsimp [theta]; linarith
  refine ⟨theta, ?_, ?_, ?_, ?_⟩
  · exact (le_max_left _ _).trans_lt hat
  · exact (le_max_right _ _).trans_lt hat
  · exact htb.trans_le (min_le_left _ _)
  · have hlast := htb.trans_le (min_le_right _ _)
    linarith

/-- Complete ORIGINAL signed far source with its exact
previous true prime bank family B(J), not a new filtered
or model arithmetic observable.

The only region-specific premise is genuine independent
ZetaZeroFreeRightOf theta0 for theta0>1/2.
Perron right-line scalar inversion, reciprocal vertical
segment control, original causal velocity-to-energy calculus,
and elementary ABSOLUTE proper packet costs are all visible,
separate proof obligations.

This proves a FIXED r>2*theta0-1, NEVER arbitrary r>0
from one strictly super-half-plane theta0. -/
theorem whole_original_far_fixed_rate_of_zeroFree_perron
    (hRightLine : OriginalRightLineTermwisePerronBoundTarget)
    (hLogBudget : HalfIntegerReciprocalLogBudgetTarget)
    (hSegments : ZeroFreeReciprocalPerronBounds)
    (hCalc : PickupVelocityPowerEnergyTransfer)
    (hIncident : UniformCollarAllRateTarget)
    (hShort : ShortRatioUniformAllRateTarget)
    (hClose : ReducedCloseUniformAllRateTarget)
    (theta0 r : ℝ)
    (hhalf0 : (1 / 2 : ℝ) < theta0)
    (hone0 : theta0 < 1)
    (hr : 2 * theta0 - 1 < r)
    (hzeta : ZetaZeroFreeRightOf theta0) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ (B : ℕ → PrimeBand), AdmissibleBankFamily B →
        ∀ J : ℕ, 1 ≤ J →
          farReducedOrLongCross (B J) ∅ J ≤
            C * Real.exp (r * dyadicTime J) := by
  have hrpos : 0 < r := by linarith
  obtain ⟨theta, htheta0, hthetaHalf, hthetaOne, hrate⟩ :=
    exists_intermediate_mertens_exponent theta0 r
      hone0 hr hrpos
  have hperron : HalfIntegerMertensTruncatedPerron :=
    halfIntegerMertensTruncatedPerron_of_explicit_facts
      hRightLine hLogBudget
  have hBridge : ZeroFreeToMertensPowerBridge :=
    zeroFreeToMertensPowerBridge_of_reciprocalPerron
      hSegments hperron
  obtain ⟨M, hM⟩ :=
    hBridge theta0 theta htheta0 hthetaHalf hthetaOne hzeta
  have henergy : FixedRateUpper pickupEnergy (2 * theta - 1) :=
    pickupEnergy_fixedRate_of_mertens_envelope
      hCalc hthetaHalf hM
  have henergyRatePos : 0 < 2 * theta - 1 := by linarith
  have hendpoint : FixedRateUpper endpointSum r :=
    (endpointSum_fixedRate_of_pickupEnergy
      henergyRatePos henergy).mono_rate (le_of_lt hrate)
  obtain ⟨E, hE, hEndpoint⟩ := hendpoint
  obtain ⟨I, hI, hIncidentBound⟩ := hIncident r hrpos
  obtain ⟨S, hS, hShortBound⟩ := hShort r hrpos
  obtain ⟨D, hD, hCloseBound⟩ := hClose r hrpos
  refine ⟨E + 1 / 4 + I + S + D, by positivity, ?_⟩
  intro B hB J hJ
  let T : ℝ := dyadicTime J
  have hT : 0 ≤ T := by
    dsimp [T]
    exact dyadicTime_nonneg J
  have he := hEndpoint T hT
  have hi := hIncidentBound B hB J hJ ∅
  have hs := hShortBound (B J) ∅ J (fun _ _ => True) hJ
  have hd := hCloseBound (B J) ∅ J (fun _ _ => True) hJ
  change |shortRatioCross (B J) ∅ J| ≤ S * Real.exp (r*T) at hs
  change |reducedCloseCross (B J) ∅ J| ≤ D * Real.exp (r*T) at hd
  have hquarter : (1 / 4 : ℝ) ≤ (1 / 4) * Real.exp (r*T) := by
    have hOne : 1 ≤ Real.exp (r*T) :=
      Real.one_le_exp_iff.mpr (mul_nonneg hrpos.le hT)
    nlinarith
  have hf := far_upper_of_endpoint_and_absolute_paid
    (B J) J
    (E * Real.exp (r*T))
    (I * Real.exp (r*T))
    (S * Real.exp (r*T))
    (D * Real.exp (r*T))
    he hi hs hd
  dsimp [T] at hf ⊢
  nlinarith [hf, hquarter]

end GRWTSK.NumberTheory.Moebius.PerronCompleteFarRateFrontier
