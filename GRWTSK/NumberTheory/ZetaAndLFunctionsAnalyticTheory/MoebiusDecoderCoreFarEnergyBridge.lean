/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathematical source formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDecoderPositiveResponse
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFixedCoreFarCommonEnergy
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Actual decoder radius energy pays BOTH original signed RH-facing sources

The previous DecoderPositiveResponse proves on the UNCHANGED
integer inventory, true real birth-gated pickupResponse and
original signed Mobius coefficient:
  pickupEnergy(T) <= 2*observedEnergy(T)
                      +2*radiusEnergy(T).
The radius is a POSITIVE bound on the COMPLETE signed
error waveform and keeps all mixed orientations before
squaring. It is not an independent positive surrogate
for the original signed arithmetic source.

The unchanged exact original ledger gives, for each
true dyadic J:
  far(B,J) <= pickupEnergy(T_J)
           + |collarIncident(B,J)| + |shortRatio(B,J)|
           + |reducedClose(B,J)|.
The fixed compensated core has an INDEPENDENT source
comparison with energy:
  fixedCore(T) <= pickupEnergy(T)+fixedScalarBill(T)
for T>=4, if the four explicit ELEMENTARY fixed bill
suppliers are furnished in pinned Lean.

Consequently a SINGLE certified decoder radius energy
and observed energy pair bounds BOTH the complete FAR
source and the fixed compensated core, with their
DIFFERENT exact signed residual payments, no duplicated
credit and no RH or GRH hypothesis.

The original decoder radius energy and observed energy
must STILL be controlled quantitatively at all scales
before any RH conclusion. This module only proves
finite-energy consumer-facing transfers.
-/

namespace GRWTSK.NumberTheory.Moebius.DecoderCoreFarEnergyBridge

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping
open GRWTSK.NumberTheory.Moebius.FinitePhaseDecoderBudget
open GRWTSK.NumberTheory.Moebius.WeightedDecoderEnergyTransfer
open GRWTSK.NumberTheory.Moebius.DecoderPositiveResponse
open GRWTSK.NumberTheory.Moebius.TerminalHighSmoothCollar
open GRWTSK.NumberTheory.Moebius.CollarResidualShortRatio
open GRWTSK.NumberTheory.Moebius.CollarResidualGcdReducedGap
open GRWTSK.NumberTheory.Moebius.FarCompleteUpperTransfer
open GRWTSK.NumberTheory.Moebius.StrongIncomparableGcdStrata
open GRWTSK.NumberTheory.Moebius.FixedSublinearCompensatedEndpoint
open GRWTSK.NumberTheory.Moebius.FixedCoreEnergyComparison
open GRWTSK.NumberTheory.Moebius.FixedCoreFarCommonEnergy

universe u

/-- EXACT source-FAR transfer from the actual certified
positive decoder response wave; no mask, sign or original
ordered pair is dropped. THREE distinct earlier proper
packet costs remain ACTUAL magnitudes, not presumed
globally small. -/
theorem original_far_le_decoder_radius_and_actual_paid
    {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (B : PrimeBand) (J : ℕ)
    (hcert : ErrorCertificate phase decode eta (dyadicTime J)) :
    farReducedOrLongCross B ∅ J ≤
      2*observedEnergy phase decode (dyadicTime J) +
      2*radiusEnergy eta (dyadicTime J) +
      |collarIncidentCross B ∅ J| +
      |shortRatioCross B ∅ J| +
      |reducedCloseCross B ∅ J| := by
  let T : ℝ := dyadicTime J
  have hT : 0 ≤ T := dyadicTime_nonneg J
  have hRadius := pickupEnergy_le_two_observed_add_radius
    phase decode eta hT hcert
  have hEnergy := pickupEnergy_eq_diagonal_add_cross hT
  have hDiagonal := (pickupDiagonal_quadratic_bound hT).1
  have hAll := pickupCross_eq_paid_add_far B J
  have hi := (abs_le.mp
    (le_refl |collarIncidentCross B ∅ J|)).1
  have hs := (abs_le.mp
    (le_refl |shortRatioCross B ∅ J|)).1
  have hc := (abs_le.mp
    (le_refl |reducedCloseCross B ∅ J|)).1
  linarith

/-- INDEPENDENT compensated-core route through the SAME
original decoder radius, conditional only on four already
existing elementary true-source bills. This does NOT
assume an RH-strength fixed compensated rate estimate. -/
theorem original_fixed_core_le_decoder_radius_and_scalar
    {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ)
    (hGap : FixedGapCardTarget)
    (hWeak : FixedWeakPaymentTarget)
    (hRatio : FixedGcdRatioTarget)
    (hTail : LargeGcdAbsoluteRootTailTarget)
    (T : ℝ) (hT : 4 ≤ T)
    (hcert : ErrorCertificate phase decode eta T) :
    fixedCompensatedCore T ≤
      2*observedEnergy phase decode T +
      2*radiusEnergy eta T + fixedScalarBill T := by
  have hT0 : 0 ≤ T := by linarith
  have hRadius := pickupEnergy_le_two_observed_add_radius
    phase decode eta hT0 hcert
  have hCore := fixedCore_sub_energy_abs_le_scalar_of_elementary
    hGap hWeak hRatio hTail hT
  have hUpper := (abs_le.mp hCore).2
  linarith

/-- Combined downstream consumer: one single exact
original-index ErrorCertificate bounds BOTH competing
source-complete RH-facing representations at the same
original physical endpoint; their different paid sectors
are not artificially identified. -/
theorem both_original_far_and_fixed_core_le_decoder
    {Phase : Type u}
    (phase : SourceAtom → Phase) (decode : Phase → ℝ)
    (eta : ℕ → ℝ) (B : PrimeBand) (J : ℕ)
    (hT : 4 ≤ dyadicTime J)
    (hGap : FixedGapCardTarget)
    (hWeak : FixedWeakPaymentTarget)
    (hRatio : FixedGcdRatioTarget)
    (hTail : LargeGcdAbsoluteRootTailTarget)
    (hcert : ErrorCertificate phase decode eta (dyadicTime J)) :
    farReducedOrLongCross B ∅ J ≤
      2*observedEnergy phase decode (dyadicTime J) +
      2*radiusEnergy eta (dyadicTime J) +
      |collarIncidentCross B ∅ J| +
      |shortRatioCross B ∅ J| +
      |reducedCloseCross B ∅ J| ∧
    fixedCompensatedCore (dyadicTime J) ≤
      2*observedEnergy phase decode (dyadicTime J) +
      2*radiusEnergy eta (dyadicTime J) +
      fixedScalarBill (dyadicTime J) := by
  constructor
  · exact original_far_le_decoder_radius_and_actual_paid
      phase decode eta B J hcert
  · exact original_fixed_core_le_decoder_radius_and_scalar
      phase decode eta hGap hWeak hRatio hTail
      (dyadicTime J) hT hcert

end GRWTSK.NumberTheory.Moebius.DecoderCoreFarEnergyBridge
