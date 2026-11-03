/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPrimitiveGcdUniformTransfer
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongSqrtHeadEnergy
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# A NONCIRCULAR classical-PNT-rate bound on the actual low-gcd signed core

The actual original ordered Möbius response Gram has exact source
balance
    pickupEnergy(T)=pickupDiagonal(T)+pickupCross(T).
After the original energy-matched Putnam/weak/early decomposition,
the complete actual strong high-high packet is
    P_comparable + I_smallGcd + I_largeGcd - C_odd.

Therefore the original small-gcd signed source is, EXACTLY,
    I_smallGcd=pickupEnergy-pickupDiagonal-G-W-Early
                  -P_comparable+C_odd-I_largeGcd.

This gives a true absolute source estimate controlled by the
actual positive pickupEnergy and explicitly paid source sectors,
with NO hypothesis about the desired low-gcd signed sum.

Use M=1, the first source-positive high-index collar. The
three known elementary source-root-tail targets
  ComparableAbsoluteRootTailTarget,
  HighHighOddCreditRootTailTarget,
  LargeGcdAbsoluteRootTailTarget
each remain EXPLICIT unproved Lean propositions, NOT new axioms,
and give an O(T sqrt(N)) total comparable/odd/early charge and
O(T N/D) large-gcd charge. A genuine classical PNT/Mertens prefix
tail bounds the original pickupEnergy via the existing
MoebiusStrongSqrtHeadEnergy finite theorem.

For fixed original Putnam epsilon in (0,1), and growing
D>=exp(beta*T), beta in (0,1), the proven mathematical
PNT-Mertens little-o theorem therefore gives
  sup_D |I_smallGcd(H_epsilon,1,D,T)| = o(exp T)
with the supremum taken over the stated growing D range.
A stronger classical KV Mertens theorem gives a
stretched-exponential SAVING at exponent ONE, not a fixed
power epsilon<1. No RH theorem is inferred.

The finite quantitative Lean consumer explicitly keeps
the root-tail Props and the actual Mertens-tail input.
No theorem about a currently unresolved arithmetic supplier is
asserted as proved.
-/

namespace GRWTSK.NumberTheory.Moebius.PrimitiveGcdPNTProfile

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.Moebius.StrongPacketEnergyReturn
open GRWTSK.NumberTheory.Moebius.StrongEarlyIndexCollar
open GRWTSK.NumberTheory.Moebius.StrongOddCoprimeDilation
open GRWTSK.NumberTheory.Moebius.StrongComparableIncomparable
open GRWTSK.NumberTheory.Moebius.StrongIncomparableGcdStrata
open GRWTSK.NumberTheory.Moebius.EnergyMatchedWeakResidual
open GRWTSK.NumberTheory.Moebius.EnergyMatchedArithmeticTube
open GRWTSK.NumberTheory.Moebius.StrongSqrtHeadEnergy
open GRWTSK.NumberTheory.Moebius.StrongMertensAbel

classical

/-- The exact ORIGINAL signed small-gcd source is the
ACTUAL full energy-minus-diagonal packet minus precisely
its paid Putnam, weak, early, comparable, odd-credit and
large-gcd parts. This identity preserves all two ordered
orientations before taking any absolute values. -/
theorem smallGcd_eq_complete_energy_minus_paid
    {T : ℝ} (hT : 0 ≤ T) (H M D : ℕ) :
    smallGcdIncomparableCross H M D T =
      pickupEnergy T - pickupDiagonal T -
      endpointGapSetCross (shortGapSet H) T -
      weakOverlapCross (shortGapSet H) (originalEnergyFamily T)
        (sourceCollarSigma H T) (weakPhysicalThreshold T) -
      earlyStrongCross H M T -
      highHighComparableNonOddCross H M T +
      highHighOddCredit H M T -
      largeGcdIncomparableCross H M D T := by
  have hFull := pickupCross_eq_gap_weak_early_highHigh H M T
  have hStrong :=
    highHighStrong_eq_comparable_incomparable_sub_credit hT H M
  have hGcd := incomparable_eq_smallGcd_add_largeGcd H M D T
  have hEnergy := pickupEnergy_eq_diagonal_add_cross hT
  linarith

/-- TWO-SIDED uniform finite source bound, with no RH or
small-gcd upper estimate premise. The positive P comparable
and positive C odd are paid as SEPARATE absolute source bills
so their true arithmetic signs cannot be hidden. -/
theorem smallGcd_abs_le_energy_and_original_bills
    {T : ℝ} (hT : 0 ≤ T) (H M D : ℕ) :
    |smallGcdIncomparableCross H M D T| ≤
      pickupEnergy T + pickupDiagonal T +
      |endpointGapSetCross (shortGapSet H) T| +
      |weakOverlapCross (shortGapSet H) (originalEnergyFamily T)
        (sourceCollarSigma H T) (weakPhysicalThreshold T)| +
      |earlyStrongCross H M T| +
      highHighComparableNonOddCross H M T +
      highHighOddCredit H M T +
      |largeGcdIncomparableCross H M D T| := by
  have he := smallGcd_eq_complete_energy_minus_paid hT H M D
  have hE : 0 ≤ pickupEnergy T := by
    unfold pickupEnergy
    exact intervalIntegral.integral_nonneg hT (fun u => sq_nonneg _)
  have hD := (pickupDiagonal_quadratic_bound hT).1
  have hp := highHighComparableNonOddCross_nonneg hT H M
  have ho := highHighOddCredit_nonneg H M T
  apply abs_le.mpr
  constructor
  · rw [he]
    linarith [
      le_abs_self (endpointGapSetCross (shortGapSet H) T),
      le_abs_self (weakOverlapCross (shortGapSet H)
        (originalEnergyFamily T)
        (sourceCollarSigma H T) (weakPhysicalThreshold T)),
      le_abs_self (earlyStrongCross H M T),
      le_abs_self (largeGcdIncomparableCross H M D T)]
  · rw [he]
    linarith [
      neg_le_abs (endpointGapSetCross (shortGapSet H) T),
      neg_le_abs (weakOverlapCross (shortGapSet H)
        (originalEnergyFamily T)
        (sourceCollarSigma H T) (weakPhysicalThreshold T)),
      neg_le_abs (earlyStrongCross H M T),
      neg_le_abs (largeGcdIncomparableCross H M D T)]

/-- The exact original M=1 high-high source admits a genuine
FINITE estimate at the classical-PNT rate, conditional only on:
* the three elementary original rank-one divisor/gcd counting
  targets that are named UNPROVED in prior Lean modules;
* the ACTUAL named Mertens-tail input |M(n)|<=delta*n;
and NOT on an RH-strength bound for the packet we estimate.

The coefficients 96=32+32+32 pay early, comparable and odd
sectors separately; both original ordered orientations survive. -/
theorem smallGcd_abs_le_Mertens_and_paid
    (hComp : ComparableAbsoluteRootTailTarget)
    (hOdd : HighHighOddCreditRootTailTarget)
    (hGcd : LargeGcdAbsoluteRootTailTarget)
    (K : ℕ) (δ : ℝ) (hδ : 0 ≤ δ)
    (hMertens : ActualMertensTailAt K δ)
    {T ε : ℝ} (hT : 0 ≤ T) (hε : 0 < ε)
    (D : ℕ) (hD : 1 ≤ D) :
    |smallGcdIncomparableCross (rateGapHeight ε T) 1 D T| ≤
      2 * (sqrtMertensHead K)^2 * T +
      32 * δ^2 * (Real.exp T - 1) +
      2*T^2 +
      (32/ε^2)*Real.exp (ε*T) +
      ((endpointIndex T).card : ℝ)^2 *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) +
      96*T*Real.sqrt (⌊Real.exp T⌋₊ : ℝ) +
      16*T*(⌊Real.exp T⌋₊ : ℝ)/(D : ℝ) := by
  let H : ℕ := rateGapHeight ε T
  have he := smallGcd_abs_le_energy_and_original_bills hT H 1 D
  have henergy := pickupEnergy_le_sqrtHead K δ hδ hMertens hT
  have hdiag := (pickupDiagonal_quadratic_bound hT).2
  have hgap := putnam_sparse_gap_all_rate ε hε hT
  rw [← shortGapSet_rate_eq_putnamRateGapSet ε T] at hgap
  have hweak := energyWeakCross_abs_le_card_sqrt hT H
  have hearly := earlyStrongCross_abs_le_32_sqrt hT H 1
  have hcomp := hComp H 1 T hT (by norm_num)
  have hcompEq := highHighComparable_eq_absoluteCost hT H 1
  have hodd := hOdd H 1 T hT (by norm_num)
  have hlarge := hGcd H 1 D T hT hD
  have hlarge_abs := largeGcd_abs_le_originalAbsoluteCost H 1 D T
  rw [hcompEq] at he
  dsimp [H] at *
  norm_num [Real.sqrt_one, div_one] at *
  linarith


/-- UNIVERSAL fixed-power ORIGINAL-ENERGY consumer. Any genuine
source-bound energy rate theta (possibly from a properly imported
external zero-free theorem) transfers to the TRUE small-gcd
incomparable signed sector, preserving the explicit positive
comparable/negative odd/large-gcd costs.

Only the three elementary previously named finite divisor and
gcd absolute-bill targets are required; no signed primitive
correlation estimate is assumed. The quantitative mathematical
consequence for D>=exp(beta*T), beta>0, is any rate strictly
above max(theta, epsilon, 1/2, 1-beta), after ordinary polynomial
absorption. That asymptotic simplification is documented but not
asserted here as an additional compiled Lean result. -/
theorem smallGcd_abs_le_energyPower_and_paid
    (hComp : ComparableAbsoluteRootTailTarget)
    (hOdd : HighHighOddCreditRootTailTarget)
    (hGcd : LargeGcdAbsoluteRootTailTarget)
    (C θ : ℝ)
    (hEnergy : ∀ t : ℝ, 0 ≤ t →
      pickupEnergy t ≤ C * Real.exp (θ*t))
    {T ε : ℝ} (hT : 0 ≤ T) (hε : 0 < ε)
    (D : ℕ) (hD : 1 ≤ D) :
    |smallGcdIncomparableCross (rateGapHeight ε T) 1 D T| ≤
      C * Real.exp (θ*T) +
      2*T^2 +
      (32/ε^2)*Real.exp (ε*T) +
      ((endpointIndex T).card : ℝ)^2 *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) +
      96*T*Real.sqrt (⌊Real.exp T⌋₊ : ℝ) +
      16*T*(⌊Real.exp T⌋₊ : ℝ)/(D : ℝ) := by
  let H : ℕ := rateGapHeight ε T
  have he := smallGcd_abs_le_energy_and_original_bills hT H 1 D
  have henergy := hEnergy T hT
  have hdiag := (pickupDiagonal_quadratic_bound hT).2
  have hgap := putnam_sparse_gap_all_rate ε hε hT
  rw [← shortGapSet_rate_eq_putnamRateGapSet ε T] at hgap
  have hweak := energyWeakCross_abs_le_card_sqrt hT H
  have hearly := earlyStrongCross_abs_le_32_sqrt hT H 1
  have hcomp := hComp H 1 T hT (by norm_num)
  have hcompEq := highHighComparable_eq_absoluteCost hT H 1
  have hodd := hOdd H 1 T hT (by norm_num)
  have hlarge := hGcd H 1 D T hT hD
  have hlarge_abs := largeGcd_abs_le_originalAbsoluteCost H 1 D T
  rw [hcompEq] at he
  dsimp [H] at *
  norm_num [Real.sqrt_one, div_one] at *
  linarith

end GRWTSK.NumberTheory.Moebius.PrimitiveGcdPNTProfile
