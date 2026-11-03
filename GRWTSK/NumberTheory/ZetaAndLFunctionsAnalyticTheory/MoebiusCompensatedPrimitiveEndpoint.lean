/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusComparableSignedMertens
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPrimitiveTerminalGcdCollar
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongIncomparableGcdStrata
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongIncomparableEndpoint
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Source-complete compensated Möbius endpoint without positive fixed-rate loss

The full original signed comparable (positive-even MINUS negative-odd)
packet and the squarefree low-gcd signed incomparable packet remain
TOGETHER. Their exact sum is the only uncompensated arithmetic
source. Neither component is paid by an artificial positive
absolute half-rate upper; any real compensation survives.

The source-complete exact identity is
  pickupCross = PutnamGap + weakPhysical
                 + compensatedPrimitiveCore + largeGcdIncomparable.
The endpoint quadrature correction remains 1/4. Both original
ordered orientations, all birth supports and every Möbius sign
are preserved.

Use the same rate-INDEPENDENT cutoff at EVERY T>=0:
  D(T)=max(1,floor(exp(T)/(1+T))).
The existing elementary large-gcd absolute root-tail proof gives
  |largeGcd|<=16*T*N/D(T)<=32*T*(1+T), T>=3.
It therefore has ALL positive exponential rates, with no
choice of D after epsilon or a source sign is observed.
The finite root-tail lemma and the floor/exp inequality are
UNPROVED pinned Lean target Props, not silently accepted lemmas.

The remaining sufficient RH-facing signed target is the
compensatedPrimitiveCore ONE-SIDED all-positive-rate upper bound
on ONE fixed adequately covering grid. It is an explicit
UNPROVED Prop here; its proof would require new arithmetic
cancellation. Merely changing this ledger does not prove it.
-/

namespace GRWTSK.NumberTheory.Moebius.CompensatedPrimitiveEndpoint

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.StrongPacketEnergyReturn
open GRWTSK.NumberTheory.Moebius.StrongEarlyIndexCollar
open GRWTSK.NumberTheory.Moebius.StrongComparableIncomparable
open GRWTSK.NumberTheory.Moebius.StrongIncomparableGcdStrata
open GRWTSK.NumberTheory.Moebius.StrongIncomparableEndpoint
open GRWTSK.NumberTheory.Moebius.ComparableSignedMertens
open GRWTSK.NumberTheory.Moebius.EnergyMatchedWeakResidual
open GRWTSK.NumberTheory.Moebius.EnergyMatchedArithmeticTube
open GRWTSK.NumberTheory.Moebius.StereographicTubeResidual

classical

/-- The SAME positive integer gcd cutoff for all rates, independent
of epsilon and the original observed Möbius signs. -/
def allRateHighGcdCutoff (T : ℝ) : ℕ :=
  max 1 ⌊Real.exp T / (1+T)⌋₊

theorem allRateHighGcdCutoff_pos (T : ℝ) :
    1 ≤ allRateHighGcdCutoff T :=
  le_max_left _ _

/-- The original complete signed NET comparable plus low-gcd
incomparable source. This is NOT an all-rate estimate. -/
def compensatedPrimitiveCore (H D : ℕ) (T : ℝ) : ℝ :=
  originalSignedComparableStrong H 0 T +
    smallGcdIncomparableCross H 0 D T

/-- Exact FULL ORIGINAL source identity before any norm,
including both ordered orientations and the zero early packet. -/
theorem pickupCross_eq_gap_weak_compensated_largeGcd
    {T : ℝ} (hT : 0 ≤ T) (H D : ℕ) :
    pickupCross T =
      endpointGapSetCross (shortGapSet H) T +
      weakOverlapCross (shortGapSet H) (originalEnergyFamily T)
        (sourceCollarSigma H T) (weakPhysicalThreshold T) +
      compensatedPrimitiveCore H D T +
      largeGcdIncomparableCross H 0 D T := by
  have hfour := pickupCross_eq_gap_weak_early_highHigh H 0 T
  rw [earlyStrongCross_zero_at_zero,
    highHighStrong_eq_signedComparable_add_incomparable hT H 0,
    incomparable_eq_smallGcd_add_largeGcd H 0 D T] at hfour
  unfold compensatedPrimitiveCore
  linarith

/-- Source-exact endpoint return, without any forced positive
comparable half-rate bill. The original large-gcd packet's
actual absolute mass is still visibly paid. -/
theorem endpointSum_le_compensated_with_real_gcd_bill
    {T : ℝ} (hT : 0 ≤ T) (H D : ℕ) :
    endpointSum T ≤
      4 * ((shortGapSet H).card : ℝ) * T^2 +
      ((endpointIndex T).card : ℝ)^2 *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) +
      compensatedPrimitiveCore H D T +
      largeGcdIncomparableAbsoluteCost H 0 D T + 1/4 := by
  have he := (abs_le.mp (endpointSum_error hT)).2
  rw [pickupCross_eq_gap_weak_compensated_largeGcd hT H D] at he
  have hg := original_sparse_gap_quadratic (shortGapSet H) hT
  have hw := energyWeakCross_abs_le_card_sqrt hT H
  have hl := largeGcd_abs_le_originalAbsoluteCost H 0 D T
  linarith [le_abs_self (endpointGapSetCross (shortGapSet H) T),
    le_abs_self (weakOverlapCross (shortGapSet H)
      (originalEnergyFamily T)
      (sourceCollarSigma H T) (weakPhysicalThreshold T)),
    le_abs_self (largeGcdIncomparableCross H 0 D T)]

/-- The existing all-rate Putnam sparse-gap price is preserved
with its exact source constant, and the remaining signed
compensated source is NEVER replaced by its absolute sum. -/
theorem endpointSum_le_rate_compensated_with_real_gcd_bill
    {T ε : ℝ} (hT : 0 ≤ T) (hε : 0 < ε) (D : ℕ) :
    endpointSum T ≤
      (32/ε^2)*Real.exp (ε*T) +
      ((endpointIndex T).card : ℝ)^2 *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) +
      compensatedPrimitiveCore (rateGapHeight ε T) D T +
      largeGcdIncomparableAbsoluteCost
        (rateGapHeight ε T) 0 D T + 1/4 := by
  have he := (abs_le.mp (endpointSum_error hT)).2
  rw [pickupCross_eq_gap_weak_compensated_largeGcd
    hT (rateGapHeight ε T) D] at he
  have hg := putnam_sparse_gap_all_rate ε hε hT
  rw [← shortGapSet_rate_eq_putnamRateGapSet ε T] at hg
  have hw := energyWeakCross_abs_le_card_sqrt
    hT (rateGapHeight ε T)
  have hl := largeGcd_abs_le_originalAbsoluteCost
    (rateGapHeight ε T) 0 D T
  linarith [le_abs_self
    (endpointGapSetCross (shortGapSet (rateGapHeight ε T)) T),
    le_abs_self
      (weakOverlapCross (shortGapSet (rateGapHeight ε T))
        (originalEnergyFamily T)
        (sourceCollarSigma (rateGapHeight ε T) T)
        (weakPhysicalThreshold T)),
    le_abs_self
      (largeGcdIncomparableCross (rateGapHeight ε T) 0 D T)]

/-- Elementary moving-cutoff floor/exp statement, independently
true for T>=3 but NOT yet proved in pinned Lean source.
This is an explicitly UNPROVED Prop, not an axiom. -/
def AllRateHighGcdCutoffFloorTarget : Prop :=
  ∀ T : ℝ, 3 ≤ T →
    (⌊Real.exp T⌋₊ : ℝ) /
      (allRateHighGcdCutoff T : ℝ) ≤ 2*(1+T)

/-- The original positive large-gcd cost is POLYNOMIAL in T
for a SINGLE signed-independent moving cutoff. Its analytic
proof is elementary, but the previous root-tail and floor
facts remain explicit unproved Lean assumptions here. -/
theorem largeGcd_abs_le_polynomial_of_elementary
    (hTail : LargeGcdAbsoluteRootTailTarget)
    (hFloor : AllRateHighGcdCutoffFloorTarget)
    {T : ℝ} (hT : 3 ≤ T) (H : ℕ) :
    |largeGcdIncomparableCross H 0
      (allRateHighGcdCutoff T) T| ≤
      32*T*(1+T) := by
  have hD := allRateHighGcdCutoff_pos T
  have hsource := largeGcd_abs_le_originalAbsoluteCost
    H 0 (allRateHighGcdCutoff T) T
  have hprice := hTail H 0 (allRateHighGcdCutoff T) T
    (by linarith) hD
  have hratio := hFloor T hT
  have hpositive : 0 ≤ 16*T := by positivity
  have hbound :
      16*T*(⌊Real.exp T⌋₊ : ℝ) /
        (allRateHighGcdCutoff T : ℝ) ≤
      32*T*(1+T) := by
    have hm := mul_le_mul_of_nonneg_left hratio hpositive
    nlinarith [hm]
  linarith

/-- The ONE genuinely OPEN arithmetic supplier remaining
after the old short-gap, weak and moving high-gcd bills
are already handled at every positive rate. Its source
is the COMPLETE original signed compensated sum, and
the dyadic scale set is fixed independently of epsilon.
This is NOT a theorem or an assumption hidden in a consumer. -/
def CompensatedPrimitiveEveryRateOnFixedGrid : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ j : ℕ,
        compensatedPrimitiveCore
          (rateGapHeight ε ((j : ℝ)*Real.log 2))
          (allRateHighGcdCutoff ((j : ℝ)*Real.log 2))
          ((j : ℝ)*Real.log 2) ≤
          C * Real.exp (ε*((j : ℝ)*Real.log 2))

end GRWTSK.NumberTheory.Moebius.CompensatedPrimitiveEndpoint
