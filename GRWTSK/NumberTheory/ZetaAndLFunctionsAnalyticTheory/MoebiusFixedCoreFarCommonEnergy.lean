/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathematical source formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFixedCoreEnergyComparison
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFarCompleteUpperTransfer
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusOriginalObserverZeroTransport
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# TWO DIFFERENT original signed Möbius partitions, reconciled exactly

The existing fixed compensated core has rate-INDEPENDENT
  H_*(T)=floor(exp(sqrt T)), D_*(T)=max(1,floor(exp(T-sqrt T))).
It contains original comparable and low-gcd incomparable
pairs. The original FAR source instead removes high-smooth
collar, short ratios and reduced-close incomparable pairs
from the original low/low complement. The masks DIFFER.

Both were already exact decompositions of the SAME TRUE
  pickupEnergy(T)=pickupDiagonal(T)+pickupCross(T).
Thus on T_J=J log 2:
  far(B,J)-fixedCompensatedCore(T_J)
     =fixedSignedBills(T_J)-pickupDiagonal(T_J)
        -collarIncident(B,J)-shortRatio(B,J)
        -reducedClose(B,J).                     (EXACT)
Every source coefficient is real μ(m)μ(n), with both
physical response orientations and squareful zeroes.

The exact finite identity needs NO arithmetic estimate.
For T_J>=4, independently ELEMENTARY cost suppliers
bound the discrepancy by
  fixedScalarBill(T_J)+2*T_J^2
    +|collarIncident|+|shortRatio|+|reducedClose|.
The old full FAR and compensated core RH-facing
every-positive-rate conditions therefore have the SAME
status once those elementary costs are proved at all
rates, including finitely many small dyadic scales.

This module also uses the existing original
observer-plus-defect abstraction to state the exact
fixed core signed defect and conditional positive
excursions if an actual offcritical zeta zero existed.
All analytic original Laplace inputs remain visible.
None of these equivalences proves the STILL OPEN
all-positive-rate fixed core, FAR or RH.
-/

namespace GRWTSK.NumberTheory.Moebius.FixedCoreFarCommonEnergy

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.Moebius.EnergyMatchedWeakResidual
open GRWTSK.NumberTheory.Moebius.StrongIncomparableGcdStrata
open GRWTSK.NumberTheory.Moebius.FixedSublinearCompensatedEndpoint
open GRWTSK.NumberTheory.Moebius.FixedCoreEnergyComparison
open GRWTSK.NumberTheory.Moebius.TerminalHighSmoothCollar
open GRWTSK.NumberTheory.Moebius.CollarResidualShortRatio
open GRWTSK.NumberTheory.Moebius.CollarResidualGcdReducedGap
open GRWTSK.NumberTheory.Moebius.FarCompleteUpperTransfer
open GRWTSK.NumberTheory.Moebius.OriginalLaplaceZeroBarrier
open GRWTSK.NumberTheory.Moebius.OriginalFarZeroForcedSpikes
open GRWTSK.NumberTheory.Moebius.OriginalObserverZeroTransport

/-- Exact original signed cross minus ONE fixed compensated core.
This is NOT a newly estimated arithmetic cancellation. -/
def fixedCoreCrossDefect (J : ℕ) : ℝ :=
  fixedSignedBills (dyadicTime J) -
    pickupDiagonal (dyadicTime J)

/-- No numerical hypothesis: all original signed source terms
are retained, including the diagonal ONCE in the energy and
then removed ONCE to recover pickupCross. -/
theorem originalCross_eq_fixed_core_add_defect (J : ℕ) :
    pickupCross (dyadicTime J) =
      fixedCompensatedCore (dyadicTime J) +
        fixedCoreCrossDefect J := by
  have hT : 0 ≤ dyadicTime J := dyadicTime_nonneg J
  have hEnergy := pickupEnergy_eq_fixedCore_add_signedBills hT
  have hDiag := pickupEnergy_eq_diagonal_add_cross hT
  unfold fixedCoreCrossDefect
  linarith

/-- Exact mask-change bill: the two residuals are not identical,
but their signed difference is completely accounted for by
the common true energy and five visible REAL source terms. -/
def fixedToFarMaskBill (B : PrimeBand) (J : ℕ) : ℝ :=
  fixedSignedBills (dyadicTime J) -
    pickupDiagonal (dyadicTime J) -
    collarIncidentCross B ∅ J -
    shortRatioCross B ∅ J -
    reducedCloseCross B ∅ J

theorem originalFar_eq_fixed_core_add_mask_bill
    (B : PrimeBand) (J : ℕ) :
    farReducedOrLongCross B ∅ J =
      fixedCompensatedCore (dyadicTime J) +
        fixedToFarMaskBill B J := by
  have hT : 0 ≤ dyadicTime J := dyadicTime_nonneg J
  have hEnergy := pickupEnergy_eq_fixedCore_add_signedBills hT
  have hDiag := pickupEnergy_eq_diagonal_add_cross hT
  have hAll := pickupCross_eq_paid_add_far B J
  unfold fixedToFarMaskBill
  linarith


/-- The original cross-minus-fixed-core difference does NOT
contain the original diagonal. It is exactly three SIGNED
original-source packets: Putnam gap, weak overlap, high gcd.
All three original absolute prices have already been
constructed independently of RH or cancellation. -/
def fixedCrossOriginalAbsoluteBill (T : ℝ) : ℝ :=
  4*((shortGapSet (fixedGapHeight T)).card : ℝ)*T^2 +
  ((endpointIndex T).card : ℝ)^2 *
    Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) +
  largeGcdIncomparableAbsoluteCost
    (fixedGapHeight T) 0 (fixedGcdCutoff T) T

/-- Direct genuine original signed defect bound: do NOT
charge the diagonal, which already canceled in
pickupCross=energy-diagonal. This is strictly sharper
than bounding energy-minus-core then paying the diagonal
once more. It needs NO unproved elementary numeric gate. -/
theorem fixed_core_cross_defect_abs_le_original_bill (J : ℕ) :
    |fixedCoreCrossDefect J| ≤
      fixedCrossOriginalAbsoluteBill (dyadicTime J) := by
  let T : ℝ := dyadicTime J
  have hT : 0 ≤ T := dyadicTime_nonneg J
  have hg := original_sparse_gap_quadratic
    (shortGapSet (fixedGapHeight T)) hT
  have hw := energyWeakCross_abs_le_card_sqrt hT (fixedGapHeight T)
  have hl := largeGcd_abs_le_originalAbsoluteCost
    (fixedGapHeight T) 0 (fixedGcdCutoff T) T
  change |fixedSignedBills T - pickupDiagonal T| ≤
    fixedCrossOriginalAbsoluteBill T
  unfold fixedSignedBills fixedCrossOriginalAbsoluteBill
  have hGapLo := (abs_le.mp hg).1
  have hGapHi := (abs_le.mp hg).2
  have hWeakLo := (abs_le.mp hw).1
  have hWeakHi := (abs_le.mp hw).2
  have hLargeLo := (abs_le.mp hl).1
  have hLargeHi := (abs_le.mp hl).2
  apply abs_le.mpr
  constructor <;> dsimp <;> linarith

/-- STRONGER exact common-source comparison, valid at
EVERY original dyadic scale, with no double diagonal cost.
Only the three distinct FAR-proper packet magnitudes
are added to the true three-packet fixed cross bill. -/
theorem originalFar_sub_fixedCore_abs_le_true_cross_bills
    (B : PrimeBand) (J : ℕ) :
    |farReducedOrLongCross B ∅ J -
       fixedCompensatedCore (dyadicTime J)| ≤
      fixedCrossOriginalAbsoluteBill (dyadicTime J) +
        |collarIncidentCross B ∅ J| +
        |shortRatioCross B ∅ J| +
        |reducedCloseCross B ∅ J| := by
  have heq := originalFar_eq_fixed_core_add_mask_bill B J
  have hFixed := fixed_core_cross_defect_abs_le_original_bill J
  have hI := (abs_le.mp (le_refl |collarIncidentCross B ∅ J|))
  have hS := (abs_le.mp (le_refl |shortRatioCross B ∅ J|))
  have hQ := (abs_le.mp (le_refl |reducedCloseCross B ∅ J|))
  have hDefect := abs_le.mp hFixed
  have hMask :
      farReducedOrLongCross B ∅ J -
        fixedCompensatedCore (dyadicTime J) =
      fixedCoreCrossDefect J -
        collarIncidentCross B ∅ J -
        shortRatioCross B ∅ J -
        reducedCloseCross B ∅ J := by
    unfold fixedToFarMaskBill fixedCoreCrossDefect at heq ⊢
    linarith
  rw [hMask]
  apply abs_le.mpr
  constructor
  · linarith [hDefect.1,hI.2,hS.2,hQ.2]
  · linarith [hDefect.2,hI.1,hS.1,hQ.1]

/-- The exact original signed defect bill is entirely
SUBEXPONENTIAL after the existing four elementary source
targets are supplied; the diagonal has canceled already.
The remaining signed fixed compensated source is not
estimated here. -/
theorem fixed_cross_bill_le_sublinear_of_elementary
    (hGap : FixedGapCardTarget)
    (hWeak : FixedWeakPaymentTarget)
    (hRatio : FixedGcdRatioTarget)
    (hTail : LargeGcdAbsoluteRootTailTarget)
    {T : ℝ} (hT : 4 ≤ T) :
    fixedCrossOriginalAbsoluteBill T ≤
      (4*T^2+32*T)*Real.exp (Real.sqrt T) +
        Real.sqrt 2*T := by
  have hT0 : 0 ≤ T := by linarith
  have hg := hGap T hT0
  have hw := hWeak T hT0
  have hr := hRatio T hT
  have ht := hTail (fixedGapHeight T) 0 (fixedGcdCutoff T)
    T hT0 (fixedGcdCutoff_pos T)
  have hGapBill :
      4*((shortGapSet (fixedGapHeight T)).card : ℝ)*T^2 ≤
        4*T^2*Real.exp (Real.sqrt T) := by
    calc
      _ = (4*T^2)*((shortGapSet (fixedGapHeight T)).card : ℝ) := by ring
      _ ≤ (4*T^2)*Real.exp (Real.sqrt T) :=
        mul_le_mul_of_nonneg_left hg (by positivity)
  have hLargeBill :
      largeGcdIncomparableAbsoluteCost
        (fixedGapHeight T) 0 (fixedGcdCutoff T) T ≤
        32*T*Real.exp (Real.sqrt T) := by
    calc
      _ ≤ 16*T*(⌊Real.exp T⌋₊ : ℝ)/(fixedGcdCutoff T : ℝ) := ht
      _ = (16*T)*((⌊Real.exp T⌋₊ : ℝ)/(fixedGcdCutoff T : ℝ)) := by ring
      _ ≤ (16*T)*(2*Real.exp (Real.sqrt T)) :=
        mul_le_mul_of_nonneg_left hr (by positivity)
      _ = _ := by ring
  unfold fixedCrossOriginalAbsoluteBill
  linarith

/-- Source-exact quantitative DIFFERENCE at every dyadic time
T_J>=4. The still uncompiled four elementary fixed-bill
suppliers are named; the old proper-packet magnitudes are
retained as their ACTUAL signed values, not assumed small. -/
theorem originalFar_sub_fixedCore_abs_le_independent_bills
    (hGap : FixedGapCardTarget)
    (hWeak : FixedWeakPaymentTarget)
    (hRatio : FixedGcdRatioTarget)
    (hTail : LargeGcdAbsoluteRootTailTarget)
    (B : PrimeBand) (J : ℕ)
    (hT : 4 ≤ dyadicTime J) :
    |farReducedOrLongCross B ∅ J -
       fixedCompensatedCore (dyadicTime J)| ≤
      fixedScalarBill (dyadicTime J) +
        2*(dyadicTime J)^2 +
        |collarIncidentCross B ∅ J| +
        |shortRatioCross B ∅ J| +
        |reducedCloseCross B ∅ J| := by
  let T : ℝ := dyadicTime J
  have hT0 : 0 ≤ T := by dsimp [T]; linarith
  have hCompare := fixedCore_sub_energy_abs_le_scalar_of_elementary
    hGap hWeak hRatio hTail hT
  have hCompare' :
      |pickupEnergy T-fixedCompensatedCore T| ≤
        fixedScalarBill T := by
    simpa [abs_sub_comm] using hCompare
  have hDiag := pickupDiagonal_quadratic_bound hT0
  have hEnergy := pickupEnergy_eq_diagonal_add_cross hT0
  have hAll := pickupCross_eq_paid_add_far B J
  have hDiff :
      farReducedOrLongCross B ∅ J - fixedCompensatedCore T =
        (pickupEnergy T-fixedCompensatedCore T) -
         pickupDiagonal T -
         collarIncidentCross B ∅ J -
         shortRatioCross B ∅ J -
         reducedCloseCross B ∅ J := by
    linarith
  rw [hDiff]
  apply abs_le.mpr
  obtain ⟨hclo,hchi⟩ := abs_le.mp hCompare'
  have hlo : -fixedScalarBill T ≤
      pickupEnergy T-fixedCompensatedCore T := hclo
  have hhi : pickupEnergy T-fixedCompensatedCore T ≤
      fixedScalarBill T := hchi
  have hb0 := abs_le.mp (le_refl |collarIncidentCross B ∅ J|)
  have hb1 := abs_le.mp (le_refl |shortRatioCross B ∅ J|)
  have hb2 := abs_le.mp (le_refl |reducedCloseCross B ∅ J|)
  constructor
  · dsimp [T]
    linarith [hlo,hDiag.1,hb0.2,hb1.2,hb2.2]
  · dsimp [T]
    linarith [hhi,hDiag.2,hb0.1,hb1.1,hb2.1]

/-- The exact signed defect is independently payable by
elementary fixed-gap, weak physical, large-gcd, and finite
initial-index costs; no sign-correlation arithmetic is
hidden in the statement. The complete pinned Lean proof
is an explicit UNPROVED Prop. -/
def FixedCoreSignedDefectAllRateTarget : Prop :=
  ∀ eta : ℝ, 0 < eta →
    OriginalSignedObserverErrorAt fixedCoreCrossDefect eta

/-- Genuine all-positive-rate dyadic growth property retained
from TerminalHighSmoothCollar rather than inventing a new
criterion. The selector is always rate-INDEPENDENT. -/
theorem fixed_core_all_rates_iff_original_cross
    (hFixed : FixedCoreSignedDefectAllRateTarget) :
    AllRatesOnFixedDyadicGrid
        (fun J => fixedCompensatedCore (dyadicTime J)) ↔
      AllRatesOnFixedDyadicGrid
        (fun J => pickupCross (dyadicTime J)) := by
  constructor
  · intro hCore eta hEta
    obtain ⟨C,hC,hCoreBound⟩ := hCore eta hEta
    obtain ⟨D,hD,hDefectBound⟩ := hFixed eta hEta
    refine ⟨C+D, add_nonneg hC hD, ?_⟩
    intro J hJ
    have hEq := originalCross_eq_fixed_core_add_defect J
    have hDUpper := le_of_abs_le (hDefectBound J hJ)
    have hCUpper := hCoreBound J hJ
    linarith
  · intro hCross eta hEta
    obtain ⟨C,hC,hCrossBound⟩ := hCross eta hEta
    obtain ⟨D,hD,hDefectBound⟩ := hFixed eta hEta
    refine ⟨C+D, add_nonneg hC hD, ?_⟩
    intro J hJ
    have hEq := originalCross_eq_fixed_core_add_defect J
    have hDLower := neg_le_of_abs_le (hDefectBound J hJ)
    have hCUpper := hCrossBound J hJ
    linarith

/-- FIRST DIRECT RH-frontier CONNECTION OF BOTH DIFFERENT
source partitions. This is an EXACT conditional equivalence
of ONE-SIDED every-positive-rate obligations on the SAME
dyadic grid and for ANY admissible growing genuine prime
bank family. It requires ONLY the separately identified
elementary absolute bills; it assumes neither criterion.

No unproved FAR upper is used in either direction. -/
theorem original_fixed_core_all_rates_iff_far
    (hFixed : FixedCoreSignedDefectAllRateTarget)
    (hIncident : UniformCollarAllRateTarget)
    (hShort : ShortRatioUniformAllRateTarget)
    (hClose : ReducedCloseUniformAllRateTarget)
    (B : ℕ → PrimeBand) (hBank : AdmissibleBankFamily B) :
    AllRatesOnFixedDyadicGrid
      (fun J => fixedCompensatedCore (dyadicTime J)) ↔
    AllRatesOnFixedDyadicGrid
      (fun J => farReducedOrLongCross (B J) ∅ J) := by
  have hCrossCore := fixed_core_all_rates_iff_original_cross hFixed
  have hCrossCollar :=
    pickupCross_allRates_iff_collarResidual_allRates hIncident B hBank
  have hCollarLong := collarResidual_allRates_iff_long hShort B
  have hLongFar := long_allRates_iff_farReducedOrLong hClose B
  exact hCrossCore.trans (hCrossCollar.trans
    (hCollarLong.trans hLongFar))

/-- A hypothetical off-critical zeta zero would force arbitrarily
large POSITIVE excursions in the SAME fixed compensated
source, assuming only the previous independently ordinary
analytic Laplace interfaces and the elementary fixed-bill
source proof. This does not assert such a zero exists. -/
theorem hypothetical_zero_forces_fixed_compensated_core_spikes
    (hRight : OriginalLaplaceRightLineIdentityTarget)
    (hHolo : WeightedWholePickupLaplaceHolomorphyTarget)
    (hIdentity : LaplaceProductIdentityTheoremTarget)
    (hCeiling : DyadicOriginalEnergyCeilingTarget)
    (hFixed : FixedCoreSignedDefectAllRateTarget)
    (rho : ℂ)
    (hHalf : (1/2 : ℝ) < rho.re)
    (hOne : rho.re < 1)
    (hZero : _root_.riemannZeta rho = 0)
    (eta : ℝ) (hEta : 0 < eta)
    (hRate : eta < 2*rho.re-1) (K : ℝ) :
    ∃ J : ℕ, 1 ≤ J ∧
      K*Real.exp (eta*dyadicTime J) <
         fixedCompensatedCore (dyadicTime J) := by
  apply hypothetical_zero_forces_observed_signed_cross_spikes
    hRight hHolo hIdentity hCeiling
    rho hHalf hOne hZero eta hEta hRate
    (fun J => fixedCompensatedCore (dyadicTime J))
    fixedCoreCrossDefect
  · intro J hJ
    exact originalCross_eq_fixed_core_add_defect J
  · exact hFixed eta hEta
  · exact K

end GRWTSK.NumberTheory.Moebius.FixedCoreFarCommonEnergy
