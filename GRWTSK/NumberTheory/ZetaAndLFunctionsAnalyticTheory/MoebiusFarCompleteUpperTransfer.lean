/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFarReducedStructuralFrontier
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCausalMertensSquareBridge
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSevenEighthsSupercriticalRates
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Original complete far Möbius packet: strongest inherited NONCIRCULAR transfers

The true source is the PREEXISTING original
farReducedOrLongCross B empty J (both ordered orientations,
m != n, original mu signs, squareful zeroes, genuine birth-gated
pickupResponseGram and same terminal integer inventory).

A finite signed identity yields exactly:
  far = pickupCross - collarIncident - shortRatio - reducedClose.
This is not an unsigned model or a hypothesized arithmetic saving.

All following upper comparisons have explicit independent inputs:
1. An independently classical ORIGINAL Mertens/PNT quantitative
   bound, exposed locally as OriginalBalancedPNTLogPowerTarget,
   gives a COMPLETE far upper at rate one with arbitrarily many
   fixed log powers plus a separately paid exp(eta*T) term.
   No RH-level power saving is presumed.
2. The separately published external OAI 7/8 zero-free input, the
   still-unported classical Perron/contour bridge and the original
   causal calculus supply a COMPLETE far bound at every fixed
   r>3/4. These hypotheses remain named and DO NOT prove RH.
3. The arbitrary-positive-rate far statement is still an OPEN
   arithmetic target equivalent (given elementary paid packets)
   to the old canonical RH-facing energy source.

The collar, short and reduced-close absolute suppliers remain
existing explicit UNPROVED pinned-Lean Props. This module merely
writes source-exact transfer proof bodies. Lean compilation is
deferred at the user's instruction; no new axioms or sorry.
-/

namespace GRWTSK.NumberTheory.Moebius.FarCompleteUpperTransfer

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.TerminalHighSmoothCollar
open GRWTSK.NumberTheory.Moebius.CollarResidualShortRatio
open GRWTSK.NumberTheory.Moebius.CollarResidualGcdReducedGap
open GRWTSK.NumberTheory.Moebius.CollarResidualLowWave
open GRWTSK.NumberTheory.Moebius.FarReducedStructuralFrontier
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge
open GRWTSK.NumberTheory.Moebius.SevenEighthsSupercriticalRates
open GRWTSK.NumberTheory.Moebius.StrongFixedPowerPR103

/-- The ENTIRE original signed source, with no dropped pair:
pickupCross = collar incidence + bounded ratios
            + reduced-close incomparable + FAR. -/
theorem pickupCross_eq_paid_add_far
    (B : PrimeBand) (J : ℕ) :
    pickupCross (dyadicTime J) =
      collarIncidentCross B ∅ J +
        shortRatioCross B ∅ J +
        reducedCloseCross B ∅ J +
        farReducedOrLongCross B ∅ J := by
  have h₁ := pickupCross_eq_collar_incident_add_residual B J
  have h₂ := collarResidual_eq_short_add_long B ∅ J
  have h₃ := longOrIncomparable_eq_reducedClose_add_far B ∅ J
  rw [h₂, h₃] at h₁
  linarith

/-- Exact finite transfer of an independently proved GLOBAL
signed upper source and independently proved absolute estimates
on the THREE proper, already-selected source packets.
No assumption on the FAR sum is made. -/
theorem far_upper_of_global_cross_and_absolute_paid
    (B : PrimeBand) (J : ℕ)
    (E I S C : ℝ)
    (hGlobal : pickupCross (dyadicTime J) ≤ E)
    (hIncident : |collarIncidentCross B ∅ J| ≤ I)
    (hShort : |shortRatioCross B ∅ J| ≤ S)
    (hClose : |reducedCloseCross B ∅ J| ≤ C) :
    farReducedOrLongCross B ∅ J ≤ E + I + S + C := by
  have hfull := pickupCross_eq_paid_add_far B J
  have hi := neg_le_of_abs_le hIncident
  have hs := neg_le_of_abs_le hShort
  have hc := neg_le_of_abs_le hClose
  linarith

/-- Alternate source-facing version: the original endpoint chord
differs from the true pickupCross by the EXISTING one-quarter
allowance charged ONCE, never per pair or dyadic shell. -/
theorem far_upper_of_endpoint_and_absolute_paid
    (B : PrimeBand) (J : ℕ)
    (E I S C : ℝ)
    (hEndpoint : endpointSum (dyadicTime J) ≤ E)
    (hIncident : |collarIncidentCross B ∅ J| ≤ I)
    (hShort : |shortRatioCross B ∅ J| ≤ S)
    (hClose : |reducedCloseCross B ∅ J| ≤ C) :
    farReducedOrLongCross B ∅ J ≤ E + 1 / 4 + I + S + C := by
  have he := endpointSum_error (dyadicTime_nonneg J)
  have hcross : pickupCross (dyadicTime J) ≤ E + 1 / 4 := by
    linarith [(abs_le.mp he).1]
  have h := far_upper_of_global_cross_and_absolute_paid
    B J (E + 1 / 4) I S C hcross hIncident hShort hClose
  linarith

/-- A quantitative unconditional-ordinary-mathematics conclusion
from the genuine classical Mertens log-power input and the
independently elementary paid-packet estimates.

It is intentionally HYBRID:
 far <= C_beta*exp T/(1+T)^beta + D_eta*exp(eta*T).
For fixed beta and eta, D_eta is UNIFORM over all admissible
growing bank families. The first term has exponential rate ONE;
the theorem cannot be restated as an all-epsilon result. -/
theorem far_complete_PNT_logpower_plus_subpower_of_source_gates
    (hPNT : OriginalBalancedPNTLogPowerTarget)
    (hIncident : UniformCollarAllRateTarget)
    (hShort : ShortRatioUniformAllRateTarget)
    (hClose : ReducedCloseUniformAllRateTarget)
    (β : ℕ) (hβ : 1 ≤ β) (η : ℝ) (hη : 0 < η) :
    ∃ C D : ℝ, 0 ≤ C ∧ 0 ≤ D ∧
      ∀ (B : ℕ → PrimeBand),
        AdmissibleBankFamily B →
        ∀ J : ℕ, 1 ≤ J →
          farReducedOrLongCross (B J) ∅ J ≤
            C * Real.exp (dyadicTime J) /
                (1 + dyadicTime J) ^ β +
              D * Real.exp (η * dyadicTime J) := by
  obtain ⟨E, hE, hEbound⟩ := hPNT β hβ
  obtain ⟨I, hI, hIbound⟩ := hIncident η hη
  obtain ⟨S, hS, hSbound⟩ := hShort η hη
  obtain ⟨C, hC, hCbound⟩ := hClose η hη
  refine ⟨E, I + S + C, hE, by positivity, ?_⟩
  intro B hB J hJ
  let T : ℝ := dyadicTime J
  have hg := hEbound T (dyadicTime_nonneg J)
  have hi := hIbound B hB J hJ ∅
  have hs := hSbound (B J) ∅ J (fun _ _ => True) hJ
  have hc := hCbound (B J) ∅ J (fun _ _ => True) hJ
  change |shortRatioCross (B J) ∅ J| ≤ S * Real.exp (η * T) at hs
  change |reducedCloseCross (B J) ∅ J| ≤ C * Real.exp (η * T) at hc
  have hfar := far_upper_of_global_cross_and_absolute_paid
    (B J) J
    (E * Real.exp T / (1 + T) ^ β)
    (I * Real.exp (η*T))
    (S * Real.exp (η*T))
    (C * Real.exp (η*T))
    hg hi hs hc
  dsimp [T] at hfar ⊢
  calc
    farReducedOrLongCross (B J) ∅ J ≤
      E * Real.exp (dyadicTime J) / (1 + dyadicTime J) ^ β +
      I * Real.exp (η * dyadicTime J) +
      S * Real.exp (η * dyadicTime J) +
      C * Real.exp (η * dyadicTime J) := hfar
    _ = E * Real.exp (dyadicTime J) / (1 + dyadicTime J) ^ β +
        (I + S + C) * Real.exp (η * dyadicTime J) := by ring

/-- The strongest current named EXTERNAL zeta track, retaining
the concrete OAI zero-free assertion, the classical contour bridge
and original physical calculus as visible premises. It proves
SOURCE-CONDITIONALLY a fixed-power complete far upper for every
r>3/4, NOT every r>0. None of these inputs is silently promoted
to a theorem or a research axiom. -/
theorem far_complete_upper_all_fixed_rates_gt_three_quarters
    (hOAI : PublishedOAISevenEighths)
    (hPerron : ZeroFreeToMertensPowerBridge)
    (hCalc : PickupVelocityPowerEnergyTransfer)
    (hIncident : UniformCollarAllRateTarget)
    (hShort : ShortRatioUniformAllRateTarget)
    (hClose : ReducedCloseUniformAllRateTarget)
    (r : ℝ) (hr : (3 / 4 : ℝ) < r) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ (B : ℕ → PrimeBand),
        AdmissibleBankFamily B →
        ∀ J : ℕ, 1 ≤ J →
          farReducedOrLongCross (B J) ∅ J ≤
            C * Real.exp (r * dyadicTime J) := by
  obtain ⟨E, hE, hEbound⟩ :=
    endpoint_all_rates_gt_three_quarters hOAI hPerron hCalc hr
  have hrpos : 0 < r := by linarith
  obtain ⟨I, hI, hIbound⟩ := hIncident r hrpos
  obtain ⟨S, hS, hSbound⟩ := hShort r hrpos
  obtain ⟨C, hC, hCbound⟩ := hClose r hrpos
  refine ⟨E + 1 / 4 + I + S + C, by positivity, ?_⟩
  intro B hB J hJ
  let T : ℝ := dyadicTime J
  have hT : 0 ≤ T := dyadicTime_nonneg J
  have he := hEbound T hT
  have hi := hIbound B hB J hJ ∅
  have hs := hSbound (B J) ∅ J (fun _ _ => True) hJ
  have hc := hCbound (B J) ∅ J (fun _ _ => True) hJ
  change |shortRatioCross (B J) ∅ J| ≤ S * Real.exp (r*T) at hs
  change |reducedCloseCross (B J) ∅ J| ≤ C * Real.exp (r*T) at hc
  have hquarter : (1 / 4 : ℝ) ≤ (1 / 4) * Real.exp (r*T) := by
    have hx : 1 ≤ Real.exp (r*T) :=
      Real.one_le_exp_iff.mpr (mul_nonneg hrpos.le hT)
    nlinarith
  have hf := far_upper_of_endpoint_and_absolute_paid (B J) J
    (E * Real.exp (r*T))
    (I * Real.exp (r*T))
    (S * Real.exp (r*T))
    (C * Real.exp (r*T))
    he hi hs hc
  dsimp [T] at hf ⊢
  nlinarith [hf, hquarter]

/-- The exact missing sign-balance is STILL the canonical RH-strength
target and has NOT been inferred from any classical/PNT or external
fixed-power input. This Prop is NOT a theorem or axiom. -/
def CompleteFarEveryPositiveRateStillOpen : Prop :=
  FarOriginalEveryPositiveRateUpperTarget

end GRWTSK.NumberTheory.Moebius.FarCompleteUpperTransfer
