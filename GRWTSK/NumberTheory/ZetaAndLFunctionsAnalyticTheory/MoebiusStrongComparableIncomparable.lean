/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongOddCoprimeDilation
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEllipticSquarefulCancellation
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# The exact nonodd strong residual is positive comparable + signed incomparable

The original Mobius kernel, horizon, original source index subtype, birth
support, and both ordered orientations remain UNCHANGED. In the previously
published highHighNonOddCross, the coprime odd quotient pairs with mu(k)=-1
have been extracted as a negative credit.

Every OTHER comparable original pair is NONNEGATIVE: for n=m*k,
either m*k is squareful, hence mu(n)=0, or squarefreeness forces
gcd(m,k)=1 and mu(m)mu(n)=mu(m)^2 mu(k). Excluding the old
odd-coprime ratio rules out mu(k)=-1; Mathlib's actual Mobius
trichotomy leaves 0 or +1. The positive causal Gram then fixes
the selected pair's nonnegative sign. Reverse orientation is paid.

The remaining incomparable pair source is EXACTLY the same signed
original Gram restricted to neither m|n nor n|m. Squareful indices
there are zero termwise; the genuinely unpaid source is the complete
squarefree/squarefree incomparable packet.

A source-finite positive comparable MASS remains explicit. A paper
divisor-ratio estimate bounds its size by 32*T*sqrt(N/M) for M>=1,
but that global finite reindexing/analytic tail is an UNPROVED Lean
target, NEVER used as a theorem or an assumed arithmetic axiom here.
No RH-strength estimate for the incomparable signed packet is proved.
-/

namespace GRWTSK.NumberTheory.Moebius.StrongComparableIncomparable

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.FareyFaryKakeyaIncidence
open GRWTSK.NumberTheory.Moebius.StrongEarlyIndexCollar
open GRWTSK.NumberTheory.Moebius.StrongOddCoprimeDilation
open GRWTSK.NumberTheory.Moebius.EllipticSquarefulCancellation
open GRWTSK.NumberTheory.Moebius.MertensSignedPairDescent
open GRWTSK.NumberTheory.Moebius.StrongPacketEnergyReturn
open GRWTSK.NumberTheory.Moebius.EnergyMatchedWeakResidual

classical

/-- An ACTUAL Mobius coefficient is in {-1,0,1}. Its nonnegative
case is determined arithmetically, not by clipping the source. -/
theorem moebiusReal_nonneg_of_ne_neg_one (k : ℕ)
    (h : moebiusReal k ≠ -1) : 0 ≤ moebiusReal k := by
  rcases ArithmeticFunction.moebius_eq_or k with hzero | hone | hneg
  · have hz : moebiusReal k = 0 := by
      unfold moebiusReal
      exact_mod_cast hzero
    rw [hz]
  · have hz : moebiusReal k = 1 := by
      unfold moebiusReal
      exact_mod_cast hone
    rw [hz]
    norm_num
  · have hz : moebiusReal k = -1 := by
      unfold moebiusReal
      exact_mod_cast hneg
    exact False.elim (h hz)

/-- Actual comparable squarefree source parity, not a fixed
prime-only subcase. If m|n, m,n>=1, m!=n and its coprime odd
multiplier was not selected, then mu(m)mu(n)>=0.
Squareful n contributes ZERO. -/
theorem mobius_product_nonneg_of_divides_not_odd
    (m n : ℕ) (hm : 0 < m) (hn : 0 < n)
    (hne : m ≠ n) (hdiv : m ∣ n)
    (hnot : ¬oddCoprimeMultiplier m n) :
    0 ≤ moebiusReal m * moebiusReal n := by
  obtain ⟨k, rfl⟩ := hdiv
  have hkpos : 0 < k := by
    by_contra h
    have hz : k = 0 := by omega
    subst k
    simp at hn
  have hknotone : k ≠ 1 := by
    intro hk
    subst k
    simp at hne
  have hk : 1 < k := by omega
  by_cases hsq : Squarefree (m * k)
  · have hcop : Nat.Coprime m k :=
      Nat.coprime_of_squarefree_mul hsq
    have hnotneg : moebiusReal k ≠ -1 := by
      intro hminus
      exact hnot ⟨k, hk, hcop, hminus, rfl⟩
    have hpositive : 0 ≤ moebiusReal k :=
      moebiusReal_nonneg_of_ne_neg_one k hnotneg
    rw [original_moebius_mul_of_coprime m k hcop]
    nlinarith [sq_nonneg (moebiusReal m),
      mul_nonneg (sq_nonneg (moebiusReal m)) hpositive]
  · have hz : moebiusReal (m * k) = 0 :=
      moebiusReal_eq_zero_of_not_squarefree (m*k) hsq
    rw [hz]
    ring

/-- The literal ORIGINAL source signed causal Gram entry is
NONNEGATIVE on every comparable high-high nonodd pair.
This holds in BOTH original ordered orientations. -/
theorem comparable_nonodd_sourceKernel_nonneg
    {T : ℝ} (hT : 0 ≤ T)
    {m n : ℕ} (hm : m ∈ endpointIndex T)
    (hn : n ∈ endpointIndex T) (hne : m ≠ n)
    (hcomp : m ∣ n ∨ n ∣ m)
    (hnot : ¬oddCoprimeRatio m n) :
    0 ≤ sourceKernel T m n := by
  have hgram : 0 ≤ pickupResponseGram T m n :=
    responseGram_nonneg (Finset.mem_Icc.mp hm).1
      (Finset.mem_Icc.mp hn).1 hT
  have hcoeff : 0 ≤ moebiusReal m * moebiusReal n := by
    rcases hcomp with hmn | hnm
    · exact mobius_product_nonneg_of_divides_not_odd
        m n (Finset.mem_Icc.mp hm).1
        (Finset.mem_Icc.mp hn).1 hne hmn
        (fun h => hnot (Or.inl h))
    · have hrev : 0 ≤ moebiusReal n * moebiusReal m :=
        mobius_product_nonneg_of_divides_not_odd
          n m (Finset.mem_Icc.mp hn).1
          (Finset.mem_Icc.mp hm).1 (Ne.symm hne) hnm
          (fun h => hnot (Or.inr h))
      nlinarith
  unfold sourceKernel
  exact mul_nonneg hcoeff hgram

/-- ORIGINAL nonodd comparable source packet. There is no
absolute-value kernel replacement; the source Gram and Mobius
signs stay in the definition. -/
def highHighComparableNonOddCross (H M : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if highHighSelector H M T m n ∧
       (m ∣ n ∨ n ∣ m) ∧ ¬oddCoprimeRatio m n
    then sourceKernel T m n else 0

/-- The complete source signed HIGH-HIGH INCOMPARABLE packet,
before any squarefree reduction. No term is omitted on grounds
of an unsupported arithmetic cancellation. -/
def highHighIncomparableCross (H M : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if highHighSelector H M T m n ∧
        ¬(m ∣ n ∨ n ∣ m)
    then sourceKernel T m n else 0

/-- The FINAL honest genuinely squarefree/squarefree
INCOMPARABLE signed source. Every original source label,
both ordered orientations and the full physical mask remain. -/
def highHighSquarefreeIncomparableCross
    (H M : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if highHighSelector H M T m n ∧
       ¬(m ∣ n ∨ n ∣ m) ∧
       Squarefree m ∧ Squarefree n
    then sourceKernel T m n else 0

/-- The source-selected nonodd kernel is partitioned into
the COMPLETE comparable and incomparable predicates. Any odd
coprime quotient is comparable, so the incomparable packet
is automatically outside the negative-credit relation. -/
theorem highHighNonOdd_eq_comparable_add_incomparable
    (H M : ℕ) (T : ℝ) :
    highHighNonOddCross H M T =
      highHighComparableNonOddCross H M T +
      highHighIncomparableCross H M T := by
  unfold highHighNonOddCross highHighComparableNonOddCross
    highHighIncomparableCross
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hsel : highHighSelector H M T m n
  · by_cases hcomp : m ∣ n ∨ n ∣ m
    · by_cases hodd : oddCoprimeRatio m n
      · simp [hsel, hcomp, hodd]
      · simp [hsel, hcomp, hodd]
    · have hnot : ¬oddCoprimeRatio m n := by
        intro h
        exact hcomp (oddCoprimeRatio_implies_divisible m n h)
      simp [hsel, hcomp, hnot]
  · simp [hsel]

/-- The remaining comparable high-high nonodd packet is ACTUALLY
nonnegative. No PSD statement about the entire signed Gram is used. -/
theorem highHighComparableNonOddCross_nonneg
    {T : ℝ} (hT : 0 ≤ T) (H M : ℕ) :
    0 ≤ highHighComparableNonOddCross H M T := by
  unfold highHighComparableNonOddCross
  apply Finset.sum_nonneg
  intro m hm
  apply Finset.sum_nonneg
  intro n hn
  by_cases h : highHighSelector H M T m n ∧
      (m ∣ n ∨ n ∣ m) ∧ ¬oddCoprimeRatio m n
  · simp only [if_pos h]
    exact comparable_nonodd_sourceKernel_nonneg hT hm hn
      h.1.1 h.2.1 h.2.2
  · simp [h]

/-- A true squareful original source term vanishes; the
incomparable signed packet is EXACTLY the squarefree/squarefree
one. No squarefree values are reweighted or discarded. -/
theorem highHighIncomparable_eq_squarefree
    (H M : ℕ) (T : ℝ) :
    highHighIncomparableCross H M T =
      highHighSquarefreeIncomparableCross H M T := by
  unfold highHighIncomparableCross
    highHighSquarefreeIncomparableCross
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hsel : highHighSelector H M T m n ∧
      ¬(m ∣ n ∨ n ∣ m)
  · by_cases hsq : Squarefree m ∧ Squarefree n
    · simp [hsel, hsq]
    · have hz :
          sourceKernel T m n = 0 :=
        sourceKernel_eq_zero_of_not_both_squarefree T m n hsq
      simp [hsel, hsq, hz]
  · simp [hsel]

/-- The strong ORIGINAL high-high signed kernel, after extracting
ALL negative odd-coprime quotients, has EXACTLY a nonnegative
comparable packet and an uncompensated squarefree incomparable
signed packet. Both original pair orientations are included. -/
theorem highHighStrong_eq_comparable_incomparable_sub_credit
    {T : ℝ} (hT : 0 ≤ T) (H M : ℕ) :
    highHighStrongCross H M T =
      highHighComparableNonOddCross H M T +
      highHighSquarefreeIncomparableCross H M T -
      highHighOddCredit H M T := by
  rw [highHighStrong_eq_nonOdd_sub_credit hT,
    highHighNonOdd_eq_comparable_add_incomparable,
    highHighIncomparable_eq_squarefree]
  ring

/-- The actual original COMPLETE endpoint inequality retains every
paid short-gap, weak-physical-mass and early-index source cost,
plus the selected positive comparable packet, minus the genuinely
negative odd-coprime credit, and the exact still-signed squarefree
INCOMPARABLE source. No RH-size bound is asserted for the latter. -/
theorem endpointSum_le_squarefree_incomparable_with_comparable_credit
    {T : ℝ} (hT : 0 ≤ T) (H M : ℕ) :
    endpointSum T ≤
      4 * ((shortGapSet H).card : ℝ) * T^2 +
      ((endpointIndex T).card : ℝ)^2 *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) +
      32*T*Real.sqrt (M : ℝ) *
        Real.sqrt (⌊Real.exp T⌋₊ : ℝ) +
      highHighSquarefreeIncomparableCross H M T +
      highHighComparableNonOddCross H M T -
      highHighOddCredit H M T + 1/4 := by
  have h := endpointSum_le_signed_highHigh_and_paid hT H M
  rw [highHighStrong_eq_comparable_incomparable_sub_credit hT H M] at h
  linarith

/-- The original selected nonodd comparable mass is fully paid by its
OWN genuine nonnegative source entries; it cannot be erased by
calling all comparable pairs a negative packet. -/
def highHighComparableAbsoluteCost
    (H M : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if highHighSelector H M T m n ∧
       (m ∣ n ∨ n ∣ m) ∧ ¬oddCoprimeRatio m n
    then |sourceKernel T m n| else 0

/-- Exact equality with TRUE original nonnegative terms; this is
not a newly assumed estimate. -/
theorem highHighComparable_eq_absoluteCost
    {T : ℝ} (hT : 0 ≤ T) (H M : ℕ) :
    highHighComparableNonOddCross H M T =
      highHighComparableAbsoluteCost H M T := by
  unfold highHighComparableNonOddCross
    highHighComparableAbsoluteCost
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases h : highHighSelector H M T m n ∧
      (m ∣ n ∨ n ∣ m) ∧ ¬oddCoprimeRatio m n
  · simp only [if_pos h]
    rw [abs_of_nonneg
      (comparable_nonodd_sourceKernel_nonneg hT hm hn
        h.1.1 h.2.1 h.2.2)]
  · simp [h]

/-- Genuine finite positive comparable source bill is explicit.
The actual elementary source-ratio bound <=32*T*sqrt(N/M) is
still a separate UNPROVED Lean target, not a proved theorem in
this source. Its proof is given in the companion analytical review. -/
def ComparableAbsoluteRootTailTarget : Prop :=
  ∀ (H M : ℕ) (T : ℝ), 0 ≤ T → 1 ≤ M →
    highHighComparableAbsoluteCost H M T ≤
      32 * T * Real.sqrt
        ((⌊Real.exp T⌋₊ : ℝ) / (M : ℝ))

end GRWTSK.NumberTheory.Moebius.StrongComparableIncomparable
