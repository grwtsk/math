/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongIncomparableEndpoint
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Exact original squarefree incomparable source: small gcd + large gcd

After paying the ORIGINAL Putnam gap and physical weak-overlap
packets, extracting all coprime odd negative dilations, and
retaining the positive comparable absolute source, the genuinely
remaining signed source is squarefree/squarefree and incomparable.

For an arbitrary positive integer D this exact source is now
partitioned into ORIGINAL ordered pairs with gcd(m,n)<=D
and gcd(m,n)>D. No original integer sign, birth or gram
kernel is replaced, and the two orientations remain present.

A genuine elementary divisor-gcd upper calculation gives
  |LargeGcd(T,H,M,D)| <=16*T*N/D, N=floor(exp T), D>=1,
without PNT or RH: m=g*a,n=g*b with g>D,
|k_T|<=4T/(g sqrt(a*b)), summing the two ordered source indices
gives 16*T*N/g^2, and ∑_(g>D)g^-2<=1/D.
This reindexing/tail comparison is an UNPROVED LEAN PROP target,
not an axiom or a certified theorem. Its ordinary mathematical
argument and root/normalization factors are in the companion review.

The conditional numeric endpoint consumer keeps the still
uncontrolled SMALL-GCD incomparable signed source exactly, and
does not claim every-positive-rate RH cancellation. The
half-rate comparable and large-gcd numerical transfers both
remain explicit unproved Lean hypotheses.
-/

namespace GRWTSK.NumberTheory.Moebius.StrongIncomparableGcdStrata

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.Moebius.StrongEarlyIndexCollar
open GRWTSK.NumberTheory.Moebius.StrongComparableIncomparable
open GRWTSK.NumberTheory.Moebius.StrongIncomparableEndpoint
open GRWTSK.NumberTheory.Moebius.StrongOddCoprimeDilation
open GRWTSK.NumberTheory.Moebius.EnergyMatchedWeakResidual

classical

/-- Shared exact source predicate, not a replacement Gram. -/
def incomparableSquarefreeSelector
    (H M : ℕ) (T : ℝ) (m n : ℕ) : Prop :=
  highHighSelector H M T m n ∧
    ¬(m ∣ n ∨ n ∣ m) ∧ Squarefree m ∧ Squarefree n

/-- The original signed squarefree incomparable source with
gcd at most D, both ordered orientations and all original
physical/birth-source masks retained. -/
def smallGcdIncomparableCross
    (H M D : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if incomparableSquarefreeSelector H M T m n ∧ Nat.gcd m n ≤ D
    then sourceKernel T m n else 0

/-- The COMPLETE original ordered squarefree incomparable
source with gcd strictly larger than D. This is separate from
the earlier comparable odd-coprime negative pair credit. -/
def largeGcdIncomparableCross
    (H M D : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if incomparableSquarefreeSelector H M T m n ∧ D < Nat.gcd m n
    then sourceKernel T m n else 0

/-- Exact actual ORIGINAL absolute large-gcd source price. -/
def largeGcdIncomparableAbsoluteCost
    (H M D : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if incomparableSquarefreeSelector H M T m n ∧ D < Nat.gcd m n
    then |sourceKernel T m n| else 0

/-- This really partitions the previous source, not a new
selected positive kernel: every original squarefree incomparable
ordered pair goes to ONE gcd sector. -/
theorem incomparable_eq_smallGcd_add_largeGcd
    (H M D : ℕ) (T : ℝ) :
    highHighSquarefreeIncomparableCross H M T =
      smallGcdIncomparableCross H M D T +
      largeGcdIncomparableCross H M D T := by
  unfold highHighSquarefreeIncomparableCross
    smallGcdIncomparableCross largeGcdIncomparableCross
    incomparableSquarefreeSelector
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hsel : highHighSelector H M T m n ∧
      ¬(m ∣ n ∨ n ∣ m) ∧ Squarefree m ∧ Squarefree n
  · by_cases hg : Nat.gcd m n ≤ D
    · have hng : ¬ D < Nat.gcd m n := not_lt.mpr hg
      simp [hsel, hg, hng, incomparableSquarefreeSelector]
    · have hgt : D < Nat.gcd m n := lt_of_not_ge hg
      simp [hsel, hg, hgt, incomparableSquarefreeSelector]
  · simp [hsel, incomparableSquarefreeSelector]

/-- The original large-gcd signed packet is ALWAYS bounded in
absolute value by the source-real absolute bill. The bill itself
has not been assumed small. -/
theorem largeGcd_abs_le_originalAbsoluteCost
    (H M D : ℕ) (T : ℝ) :
    |largeGcdIncomparableCross H M D T| ≤
      largeGcdIncomparableAbsoluteCost H M D T := by
  let R : ℕ → ℕ → Prop :=
    fun m n => incomparableSquarefreeSelector H M T m n ∧
      D < Nat.gcd m n
  have htriangle :
      |∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
          if R m n then sourceKernel T m n else 0| ≤
        ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
          |if R m n then sourceKernel T m n else 0| := by
    calc
      _ ≤ ∑ m ∈ endpointIndex T,
            |∑ n ∈ endpointIndex T,
              if R m n then sourceKernel T m n else 0| :=
        Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
           |if R m n then sourceKernel T m n else 0| := by
        apply Finset.sum_le_sum
        intro m hm
        exact Finset.abs_sum_le_sum_abs _ _
  have hprice :
      (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
        |if R m n then sourceKernel T m n else 0|) =
      largeGcdIncomparableAbsoluteCost H M D T := by
    unfold largeGcdIncomparableAbsoluteCost R
    apply Finset.sum_congr rfl
    intro m hm
    apply Finset.sum_congr rfl
    intro n hn
    split_ifs <;> simp
  unfold largeGcdIncomparableCross
  exact htriangle.trans_eq hprice

theorem largeGcdAbsoluteCost_nonneg
    (H M D : ℕ) (T : ℝ) :
    0 ≤ largeGcdIncomparableAbsoluteCost H M D T := by
  unfold largeGcdIncomparableAbsoluteCost
  apply Finset.sum_nonneg
  intro m hm
  apply Finset.sum_nonneg
  intro n hn
  split_ifs <;> positivity

/-- UNPROVED PINNED LEAN TARGET only: the actual elementary
gcd-ratio reindexing, original two-dimensional reciprocal-root
envelope and convergent sum_(g>D) g^-2 <= 1/D produce this
NONCIRCULAR price. The complete written proof is in the review.
Do not treat the proposition as an accepted theorem. -/
def LargeGcdAbsoluteRootTailTarget : Prop :=
  ∀ (H M D : ℕ) (T : ℝ), 0 ≤ T → 1 ≤ D →
    largeGcdIncomparableAbsoluteCost H M D T ≤
      16 * T * (⌊Real.exp T⌋₊ : ℝ) / (D : ℝ)

/-- Exact full source endpoint return with the entire large-gcd
absolute bill explicit and the small-gcd signed incomparable
packet uncompensated. Nothing presumes the bill is small. -/
theorem endpointSum_le_smallGcd_incomparable_with_bills
    {T : ℝ} (hT : 0 ≤ T) (H D : ℕ) :
    endpointSum T ≤
      4 * ((shortGapSet H).card : ℝ) * T^2 +
      ((endpointIndex T).card : ℝ)^2 *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) +
      highHighComparableNonOddCross H 0 T +
      largeGcdIncomparableAbsoluteCost H 0 D T +
      smallGcdIncomparableCross H 0 D T -
      highHighOddCredit H 0 T + 1/4 := by
  have h := endpointSum_le_incomparable_comparable_odd_exact hT H
  rw [incomparable_eq_smallGcd_add_largeGcd H 0 D T] at h
  have hl := largeGcd_abs_le_originalAbsoluteCost H 0 D T
  linarith [le_abs_self (largeGcdIncomparableCross H 0 D T)]

/-- Fully numeric strict-rate-ONE source result, conditional only
on the two separately identified elementary LEAN targets for
positive arithmetic cost, NOT on an RH-strength signed estimate. -/
theorem endpointSum_le_primitive_smallGcd_of_paidTargets
    (hcomp : AllComparableAbsoluteHalfRateTarget)
    (hgcd : LargeGcdAbsoluteRootTailTarget)
    {T : ℝ} (hT : 0 ≤ T)
    (H D : ℕ) (hD : 1 ≤ D) :
    endpointSum T ≤
      4 * ((shortGapSet H).card : ℝ) * T^2 +
      ((endpointIndex T).card : ℝ)^2 *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) +
      48*T*Real.sqrt (⌊Real.exp T⌋₊ : ℝ) +
      (16*T*(⌊Real.exp T⌋₊ : ℝ))/(D : ℝ) +
      smallGcdIncomparableCross H 0 D T -
      highHighOddCredit H 0 T + 1/4 := by
  have h := endpointSum_le_smallGcd_incomparable_with_bills hT H D
  have hc := hcomp H T hT
  have hcEq := highHighComparable_eq_absoluteCost hT H 0
  have hg := hgcd H 0 D T hT hD
  rw [hcEq] at h
  linarith


/-- The actual original ALL-POSITIVE-RATE Putnam gap packet is
used in its sharp 32/epsilon² form, rather than claiming the
quadratic 4|A_H|T² envelope automatically has that rate.
Only the exact still-signed small-GCD squarefree incomparable
original source is unpaid, with the genuine odd credit kept. -/
theorem endpointSum_le_rate_primitive_smallGcd_of_paidTargets
    (hcomp : AllComparableAbsoluteHalfRateTarget)
    (hgcd : LargeGcdAbsoluteRootTailTarget)
    {T ε : ℝ} (hT : 0 ≤ T) (hε : 0 < ε)
    (D : ℕ) (hD : 1 ≤ D) :
    endpointSum T ≤
      (32/ε^2)*Real.exp (ε*T) +
      ((endpointIndex T).card : ℝ)^2 *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) +
      48*T*Real.sqrt (⌊Real.exp T⌋₊ : ℝ) +
      (16*T*(⌊Real.exp T⌋₊ : ℝ))/(D : ℝ) +
      smallGcdIncomparableCross (rateGapHeight ε T) 0 D T -
      highHighOddCredit (rateGapHeight ε T) 0 T + 1/4 := by
  let H : ℕ := rateGapHeight ε T
  have h := endpointSum_le_rateHighHigh_and_paid hT hε 0
  rw [highHighStrong_eq_comparable_incomparable_sub_credit hT H 0,
    incomparable_eq_smallGcd_add_largeGcd H 0 D T] at h
  have hc := hcomp H T hT
  have hcEq := highHighComparable_eq_absoluteCost hT H 0
  have hg := hgcd H 0 D T hT hD
  have hl := largeGcd_abs_le_originalAbsoluteCost H 0 D T
  have hodd := highHighOddCredit_nonneg H 0 T
  rw [hcEq] at h
  dsimp [H] at *
  simp only [Nat.cast_zero, Real.sqrt_zero, mul_zero,
    zero_mul, add_zero] at h
  linarith [le_abs_self
    (largeGcdIncomparableCross (rateGapHeight ε T) 0 D T)]

end GRWTSK.NumberTheory.Moebius.StrongIncomparableGcdStrata
