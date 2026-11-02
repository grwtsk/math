/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongIncomparableGcdReduced
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Exact incomparable-only signed endpoint, with the comparable
# square-root mass payment kept as a named UNPROVED Lean lemma

For H>=0 and M=0, every source pair has both original integers
positive and the previously paid 'early' packet is exactly EMPTY.
The complete original high-high strong packet consequently consists
of the squarefree incomparable signed core, the nonnegative even/
zero-quotient comparable source, and minus the old genuine negative
odd-coprime credit.

An elementary FULL original comparable pair counting argument gives
  abs comparable cost <=48*T*sqrt(floor(exp T))
for T>=0, uniformly in the arithmetic H and the strong geometric
mask. It uses the original bound |k_T(m,m*k)|<=4T/(m sqrt(k)),
the two ORIGINAL ordered orientations, reciprocal-root sums up to
N/m, and the full m^-3/2 tail <=3. This proof is written in the
companion mathematical review, but the finite divisor reindexing
has not been compiled in Lean; the proposition is an EXPLICIT
UNPROVED LOCAL TARGET and is an assumption ONLY in a conditional
Lean consumer. It is NOT accepted as a theorem or research axiom.

This conditional return has a true exponent-ONE-HALF allowance,
strictly better than the previously retained exponential rate one.
It still cannot by itself yield the RH every-positive-rate target:
even an all-rate bound for the incomparable core leaves the
e^(T/2) comparable allowance unless the remaining signed
comparable arithmetic also receives a sharper cancellation theorem.
-/

namespace GRWTSK.NumberTheory.Moebius.StrongIncomparableEndpoint

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.Moebius.StrongEarlyIndexCollar
open GRWTSK.NumberTheory.Moebius.StrongComparableIncomparable
open GRWTSK.NumberTheory.Moebius.StrongOddCoprimeDilation
open GRWTSK.NumberTheory.Moebius.StrongPacketEnergyReturn
open GRWTSK.NumberTheory.Moebius.EnergyMatchedWeakResidual

classical

/-- Every selected early original pair is empty when its early
cutoff is 0, because endpointIndex T contains ONLY positive
integers. Both ordered orientations vanish simultaneously. -/
theorem earlyStrongCross_zero_at_zero (H : ℕ) (T : ℝ) :
    earlyStrongCross H 0 T = 0 := by
  unfold earlyStrongCross
    GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteSignedRectangularCollar.selectedEarlyCross
  apply Finset.sum_eq_zero
  intro m hm
  have hm0 : 0 < m := (Finset.mem_Icc.mp hm).1
  apply Finset.sum_eq_zero
  intro n hn
  have hn0 : 0 < n := (Finset.mem_Icc.mp hn).1
  have hmNot : ¬m ≤ 0 := not_le_of_gt hm0
  have hnNot : ¬n ≤ 0 := not_le_of_gt hn0
  simp [hmNot, hnNot]

/-- The high-high label with M=0 literally covers ALL original
strong source pairs: there is no otherwise-untracked early cost. -/
theorem originalStrong_eq_highHigh_at_zero
    (H : ℕ) (T : ℝ) :
    originalEnergyStrongCross H T =
      highHighStrongCross H 0 T := by
  rw [strong_eq_early_add_highHigh H 0 T,
    earlyStrongCross_zero_at_zero]
  ring

/-- A single LOCAL scalar mass target for ALL original positive
proper-divisor pairs. The square-root rate has an elementary
noncircular paper proof, but the FULL LEAN divisor reindexing
is UNPROVED and is not imported as an axiom. -/
def AllComparableAbsoluteHalfRateTarget : Prop :=
  ∀ (H : ℕ) (T : ℝ), 0 ≤ T →
    highHighComparableAbsoluteCost H 0 T ≤
      48 * T * Real.sqrt (⌊Real.exp T⌋₊ : ℝ)

/-- The ORIGINAL signed strong packet has an exact complete
incomparable/comparable/odd-credit ledger, at NO early cost. -/
theorem originalStrong_eq_incomparable_plus_comparable_minus_credit
    {T : ℝ} (hT : 0 ≤ T) (H : ℕ) :
    originalEnergyStrongCross H T =
      highHighSquarefreeIncomparableCross H 0 T +
      highHighComparableNonOddCross H 0 T -
      highHighOddCredit H 0 T := by
  rw [originalStrong_eq_highHigh_at_zero H T,
    highHighStrong_eq_comparable_incomparable_sub_credit hT H 0]
  ring

/-- The full original endpoint readout BEFORE the comparable
number-theoretic root-tail estimate is inserted: no arithmetic
supplier or proof target appears in the hypotheses. The exact
full comparable packet and genuine negative odd credit remain. -/
theorem endpointSum_le_incomparable_comparable_odd_exact
    {T : ℝ} (hT : 0 ≤ T) (H : ℕ) :
    endpointSum T ≤
      4 * ((shortGapSet H).card : ℝ) * T^2 +
      ((endpointIndex T).card : ℝ)^2 *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) +
      highHighSquarefreeIncomparableCross H 0 T +
      highHighComparableNonOddCross H 0 T -
      highHighOddCredit H 0 T + 1/4 := by
  have h := endpointSum_le_squarefree_incomparable_with_comparable_credit
    hT H 0
  simpa using h

/-- Conditional finite consumer of the EXPLICIT, mathematically
elementary comparable-absolute root-tail target. This theorem
does not assert that the Lean proof of its assumption exists.
The real signed incomparable source stays UNCHANGED and no
Mertens or RH premise is used. -/
theorem endpointSum_le_incomparable_of_comparableHalfRate
    (hcomp : AllComparableAbsoluteHalfRateTarget)
    {T : ℝ} (hT : 0 ≤ T) (H : ℕ) :
    endpointSum T ≤
      4 * ((shortGapSet H).card : ℝ) * T^2 +
      ((endpointIndex T).card : ℝ)^2 *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) +
      48*T*Real.sqrt (⌊Real.exp T⌋₊ : ℝ) +
      highHighSquarefreeIncomparableCross H 0 T + 1/4 := by
  have he := endpointSum_le_incomparable_comparable_odd_exact hT H
  have hc := hcomp H T hT
  have heq := highHighComparable_eq_absoluteCost hT H 0
  have hodd := highHighOddCredit_nonneg H 0 T
  rw [heq] at he
  linarith

/-- The actual Putnam all-positive-rate gap is paid with precisely
its old coefficient; the uncompensated source is the genuine
squarefree/squarefree INCOMPARABLE signed response Gram.
This is conditional ONLY on the uncompiled elementary comparable
root-tail formula, not on the high-core cancellation conclusion. -/
theorem endpointSum_le_rate_incomparable_of_comparableHalfRate
    (hcomp : AllComparableAbsoluteHalfRateTarget)
    {T ε : ℝ} (hT : 0 ≤ T) (hε : 0 < ε) :
    endpointSum T ≤
      (32/ε^2)*Real.exp (ε*T) +
      ((endpointIndex T).card : ℝ)^2 *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) +
      48*T*Real.sqrt (⌊Real.exp T⌋₊ : ℝ) +
      highHighSquarefreeIncomparableCross (rateGapHeight ε T) 0 T +
      1/4 := by
  have he := endpointSum_le_incomparable_comparable_odd_exact
    hT (rateGapHeight ε T)
  have hc := hcomp (rateGapHeight ε T) T hT
  have heq := highHighComparable_eq_absoluteCost
    hT (rateGapHeight ε T) 0
  have hodd := highHighOddCredit_nonneg
    (rateGapHeight ε T) 0 T
  have hg := putnam_sparse_gap_all_rate ε hε hT
  rw [← shortGapSet_rate_eq_putnamRateGapSet ε T] at hg
  rw [heq] at he
  linarith [le_abs_self
    (endpointGapSetCross (shortGapSet (rateGapHeight ε T)) T)]

end GRWTSK.NumberTheory.Moebius.StrongIncomparableEndpoint
