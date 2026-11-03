/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFixedSublinearCompensatedEndpoint
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.GoodScaleEnergyCriterion
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# The fixed signed compensated core is subexponentially close to POSITIVE energy

Keep the exact source from MoebiusFixedSublinearCompensatedEndpoint:
  C_*(T) = originalSignedComparableStrong(H_*(T),0,T) +
           smallGcdIncomparableCross(H_*(T),0,D_*(T),T).

The complete original source identity is:
  pickupEnergy(T) = C_*(T) + pickupDiagonal(T) +
    original signed Putnam gap + original signed weak physical +
    original signed large-gcd incomparable packet.

This gives a genuine source-exact lower bound for C_* from the
NONNEGATIVE original cumulative square energy. In particular, its
negative excursions are already limited by the separately paid sectors.

When the named elementary gap-card, weak scalar, gcd floor and
gcd ratio-tail targets from the prior source are supplied, then
  |C_*(T)-pickupEnergy(T)| <= B_*(T), T>=4,
  B_*(T)=2*T^2+(4*T^2+32*T)*exp(sqrt T)+sqrt(2)*T.
The B_* payment has every positive exponential rate, but the
elementary source-specific Lean targets remain UNPROVED.

A new useful consequence is approximate MONOTONICITY of C_*:
for 4<=T<=S, C_*(T)<=C_*(S)+B_*(T)+B_*(S),
despite all original dynamic integer/fiber source-mask jumps.

These are source/energy comparisons, not a proof that the positive
excursions of C_* are small. That remains the RH-strength problem.
Compilation, exact interfaces, fresh replay and dependency audit NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Moebius.FixedCoreEnergyComparison

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.Moebius.EnergyMatchedWeakResidual
open GRWTSK.NumberTheory.Moebius.StrongIncomparableGcdStrata
open GRWTSK.NumberTheory.Moebius.FixedSublinearCompensatedEndpoint
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion

classical

/-- The exact signed, original-source paid packet. The diagonal
is paid ONCE, separately from both ordered off-diagonal orientations. -/
def fixedSignedBills (T : ℝ) : ℝ :=
  pickupDiagonal T +
    endpointGapSetCross (shortGapSet (fixedGapHeight T)) T +
    weakOverlapCross (shortGapSet (fixedGapHeight T))
      (originalEnergyFamily T)
      (sourceCollarSigma (fixedGapHeight T) T)
      (weakPhysicalThreshold T) +
    largeGcdIncomparableCross
      (fixedGapHeight T) 0 (fixedGcdCutoff T) T

/-- The exact original cumulative square-energy identity:
no absolute payments, no sign assumption, no relabelled source. -/
theorem pickupEnergy_eq_fixedCore_add_signedBills
    {T : ℝ} (hT : 0 ≤ T) :
    pickupEnergy T = fixedCompensatedCore T + fixedSignedBills T := by
  rw [pickupEnergy_eq_diagonal_add_cross hT,
    pickupCross_eq_fixed_compensated_ledger hT]
  unfold fixedSignedBills
  ring

/-- Original physical-time energy is nonnegative; the integral is
over an actual ordered nonnegative-time window. -/
theorem pickupEnergy_nonneg_of_nonneg_time
    {T : ℝ} (hT : 0 ≤ T) : 0 ≤ pickupEnergy T := by
  unfold pickupEnergy
  exact intervalIntegral.integral_nonneg hT (fun u _ => sq_nonneg (wholePickup u))

/-- The signed bills are bounded by the ACTUAL diagonal,
original Putnam gap, original weak Gram payment and original
high-gcd absolute packet. No elementary arithmetic target enters. -/
theorem fixedSignedBills_abs_le_originalCost
    {T : ℝ} (hT : 0 ≤ T) :
    |fixedSignedBills T| ≤
      pickupDiagonal T +
      4*((shortGapSet (fixedGapHeight T)).card : ℝ)*T^2 +
      ((endpointIndex T).card : ℝ)^2 *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) +
      largeGcdIncomparableAbsoluteCost
        (fixedGapHeight T) 0 (fixedGcdCutoff T) T := by
  have hd := (pickupDiagonal_quadratic_bound hT).1
  have hg := original_sparse_gap_quadratic
    (shortGapSet (fixedGapHeight T)) hT
  have hw := energyWeakCross_abs_le_card_sqrt hT (fixedGapHeight T)
  have hl := largeGcd_abs_le_originalAbsoluteCost
    (fixedGapHeight T) 0 (fixedGcdCutoff T) T
  unfold fixedSignedBills
  apply abs_le.mpr
  constructor
  · have hglo := (abs_le.mp hg).1
    have hwlo := (abs_le.mp hw).1
    have hllo := (abs_le.mp hl).1
    linarith
  · have hghi := (abs_le.mp hg).2
    have hwhi := (abs_le.mp hw).2
    have hlhi := (abs_le.mp hl).2
    linarith

/-- Unconditional (source-comparison-wise) lower bound for C_*:
the big NEGATIVE part cannot grow independently of the paid bills.
The still-unproved root-tail is not used in this exact theorem. -/
theorem fixedCore_lower_of_originalCost
    {T : ℝ} (hT : 0 ≤ T) :
    -(pickupDiagonal T +
      4*((shortGapSet (fixedGapHeight T)).card : ℝ)*T^2 +
      ((endpointIndex T).card : ℝ)^2 *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) +
      largeGcdIncomparableAbsoluteCost
        (fixedGapHeight T) 0 (fixedGcdCutoff T) T) ≤
      fixedCompensatedCore T := by
  have he := pickupEnergy_eq_fixedCore_add_signedBills hT
  have hnonneg := pickupEnergy_nonneg_of_nonneg_time hT
  have hb := (abs_le.mp (fixedSignedBills_abs_le_originalCost hT)).2
  linarith

/-- Exact two-sided comparison to cumulative energy, with the
UNESTIMATED actual source costs still plainly visible. -/
theorem fixedCore_sub_energy_abs_le_originalCost
    {T : ℝ} (hT : 0 ≤ T) :
    |fixedCompensatedCore T - pickupEnergy T| ≤
      pickupDiagonal T +
      4*((shortGapSet (fixedGapHeight T)).card : ℝ)*T^2 +
      ((endpointIndex T).card : ℝ)^2 *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) +
      largeGcdIncomparableAbsoluteCost
        (fixedGapHeight T) 0 (fixedGcdCutoff T) T := by
  have he := pickupEnergy_eq_fixedCore_add_signedBills hT
  have hdiff :
      fixedCompensatedCore T - pickupEnergy T = -fixedSignedBills T := by
    linarith
  rw [hdiff, abs_neg]
  exact fixedSignedBills_abs_le_originalCost hT

/-- Only an elementary positive budget; it is NOT the arithmetic
claim that the signed compensated source is subexponential. -/
def fixedScalarBill (T : ℝ) : ℝ :=
  2*T^2 + (4*T^2+32*T)*Real.exp (Real.sqrt T) + Real.sqrt 2*T

/-- Conditional numeric energy sandwich, consuming precisely the
four named ELEMENTARY source-calculus targets, and no signed
RH-strength or Mertens-growth premise. -/
theorem fixedCore_sub_energy_abs_le_scalar_of_elementary
    (hGap : FixedGapCardTarget)
    (hWeak : FixedWeakPaymentTarget)
    (hRatio : FixedGcdRatioTarget)
    (hTail : LargeGcdAbsoluteRootTailTarget)
    {T : ℝ} (hT : 4 ≤ T) :
    |fixedCompensatedCore T - pickupEnergy T| ≤
      fixedScalarBill T := by
  have hT0 : 0 ≤ T := by linarith
  have hreal := fixedCore_sub_energy_abs_le_originalCost hT0
  have hdiag := (pickupDiagonal_quadratic_bound hT0).2
  have hgap := hGap T hT0
  have hweak := hWeak T hT0
  have hratio := hRatio T hT
  have htail := hTail (fixedGapHeight T) 0 (fixedGcdCutoff T)
    T hT0 (fixedGcdCutoff_pos T)
  have hgapBill :
      4*((shortGapSet (fixedGapHeight T)).card : ℝ)*T^2 ≤
        4*T^2*Real.exp (Real.sqrt T) := by
    calc
      _ = (4*T^2)*((shortGapSet (fixedGapHeight T)).card : ℝ) := by ring
      _ ≤ (4*T^2)*Real.exp (Real.sqrt T) :=
        mul_le_mul_of_nonneg_left hgap (by positivity)
  have htailBill :
      largeGcdIncomparableAbsoluteCost
        (fixedGapHeight T) 0 (fixedGcdCutoff T) T ≤
        32*T*Real.exp (Real.sqrt T) := by
    calc
      _ ≤ 16*T*(⌊Real.exp T⌋₊ : ℝ)/(fixedGcdCutoff T : ℝ) := htail
      _ = (16*T)*((⌊Real.exp T⌋₊ : ℝ)/(fixedGcdCutoff T : ℝ)) := by ring
      _ ≤ (16*T)*(2*Real.exp (Real.sqrt T)) :=
        mul_le_mul_of_nonneg_left hratio (by positivity)
      _ = _ := by ring
  unfold fixedScalarBill
  linarith

/-- The NEGATIVE excursions of the fixed compensated signed
core have already been paid at every exponential rate, once
the separately named elementary bounds are verified. -/
theorem fixedCore_lower_scalar_of_elementary
    (hGap : FixedGapCardTarget)
    (hWeak : FixedWeakPaymentTarget)
    (hRatio : FixedGcdRatioTarget)
    (hTail : LargeGcdAbsoluteRootTailTarget)
    {T : ℝ} (hT : 4 ≤ T) :
    -fixedScalarBill T ≤ fixedCompensatedCore T := by
  have he0 := pickupEnergy_nonneg_of_nonneg_time
    (by linarith : 0 ≤ T)
  have habs := fixedCore_sub_energy_abs_le_scalar_of_elementary
    hGap hWeak hRatio hTail hT
  have hlo := (abs_le.mp habs).1
  linarith

/-- The original fixed compensated source is approximately
nondecreasing (not necessarily actually monotone), even though
the floor cutoffs and physical masks can jump with time.
The only losses are previously paid subexponential errors. -/
theorem fixedCore_approx_monotone_of_elementary
    (hGap : FixedGapCardTarget)
    (hWeak : FixedWeakPaymentTarget)
    (hRatio : FixedGcdRatioTarget)
    (hTail : LargeGcdAbsoluteRootTailTarget)
    {T S : ℝ} (hT : 4 ≤ T) (hTS : T ≤ S) :
    fixedCompensatedCore T ≤
      fixedCompensatedCore S +
        fixedScalarBill T + fixedScalarBill S := by
  have hS : 4 ≤ S := le_trans hT hTS
  have ht := (abs_le.mp (fixedCore_sub_energy_abs_le_scalar_of_elementary
    hGap hWeak hRatio hTail hT)).2
  have hs := (abs_le.mp (fixedCore_sub_energy_abs_le_scalar_of_elementary
    hGap hWeak hRatio hTail hS)).1
  have hTmem : T ∈ Ici (0 : ℝ) := by
    simp only [mem_Ici]
    linarith
  have hSmem : S ∈ Ici (0 : ℝ) := by
    simp only [mem_Ici]
    linarith
  have henergy : pickupEnergy T ≤ pickupEnergy S :=
    pickupEnergy_monotoneOn_nonnegative hTmem hSmem hTS
  linarith

end GRWTSK.NumberTheory.Moebius.FixedCoreEnergyComparison
