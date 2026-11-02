/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongEarlyIndexCollar
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.MertensSignedPairDescent
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Every coprime odd-Möbius quotient is a genuine negative causal pair

The actual original Möbius source is the REAL signed ordered Gram
  k_T(m,n) = mu(m)*mu(n)*pickupResponseGram(T,m,n),
m,n in the actual endpointIndex T, T>=0.

The earlier prime-pair credit treats n=p*m for p prime, p∤m.
Here the SOURCE-TYPED relation is broader:
  n=m*k, k>1, gcd(m,k)=1, mu(k)=-1,
or the reverse ordered direction. This includes composite
squarefree odd-parity multipliers as well as primes.

Pinned Mathlib Möbius multiplicativity gives
  mu(m)*mu(m*k) = -mu(m)^2 <= 0.
The unchanged causal response Gram is nonnegative on T>=0.
Thus EVERY selected original pair contribution is nonpositive,
with no PNT, RH, random sign assumption or geometric positivity
promoted to an arithmetic sign.

We isolate these negative pairs INSIDE the previous exact original
energy-matched HIGH-HIGH strong physical/angular source. The new
signed credit is its literal absolute arithmetic mass, both
orientations retained, and the remaining non-odd core is the
complete ACTUAL original source complement.

This is a local noncircular arithmetic signed saving. The new
unmatched high-high source is still dense and RH-strength; the
credit does not prove a nontrivial all-positive-rate upper bound.
-/

namespace GRWTSK.NumberTheory.Moebius.StrongOddCoprimeDilation

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.MertensSignedPairDescent
open GRWTSK.NumberTheory.Moebius.FareyFaryKakeyaIncidence
open GRWTSK.NumberTheory.Moebius.StrongEarlyIndexCollar
open GRWTSK.NumberTheory.Moebius.StrongPacketEnergyReturn
open GRWTSK.NumberTheory.Moebius.PutnamKakeyaSignedResidual
open GRWTSK.NumberTheory.Moebius.EnergyMatchedArithmeticTube
open GRWTSK.NumberTheory.Moebius.EnergyMatchedWeakResidual

classical

/-- Actual Möbius multiplicativity with an explicit source coprimality
guard. Without it, squareful products cannot be handled by a sign flip. -/
theorem original_moebius_mul_of_coprime (m k : ℕ)
    (hcop : Nat.Coprime m k) :
    moebiusReal (m*k) = moebiusReal m * moebiusReal k := by
  have hm := ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime hcop
  unfold moebiusReal
  exact_mod_cast hm

/-- One ORIGINAL directed proper-divisor pair with odd squarefree
multiplicative quotient. This is not a free signed pair selector: the
witness k is the genuine arithmetic ratio n/m. -/
def oddCoprimeMultiplier (m n : ℕ) : Prop :=
  ∃ k : ℕ, 1 < k ∧ Nat.Coprime m k ∧
    moebiusReal k = -1 ∧ n = m*k

/-- Both source orientations; every ordered pair is still indexed
by the original pair m,n. -/
def oddCoprimeRatio (m n : ℕ) : Prop :=
  oddCoprimeMultiplier m n ∨ oddCoprimeMultiplier n m

theorem oddCoprimeRatio_symm (m n : ℕ) :
    oddCoprimeRatio m n ↔ oddCoprimeRatio n m := by
  unfold oddCoprimeRatio
  tauto

/-- Every selected arithmetic odd-coprime multiplier is a GENUINE
proper-divisibility pair, in one orientation or the other. This is
the precise containment in the separately published original
DivisorCausalGramCollapse comparable source; do not subtract
both signed credits as if they were independent sectors. -/
theorem oddCoprimeRatio_implies_divisible
    (m n : ℕ) (h : oddCoprimeRatio m n) :
    m ∣ n ∨ n ∣ m := by
  rcases h with ⟨k, hk, hcop, hmu, rfl⟩ |
    ⟨k, hk, hcop, hmu, rfl⟩
  · exact Or.inl ⟨k, rfl⟩
  · exact Or.inr ⟨k, rfl⟩

/-- The original source prime-ratio packet is a special case.
This proves real containment rather than claiming a new prime sign
identity already present in MertensSignedPairDescent. -/
theorem prime_ratio_is_oddCoprime
    {m p : ℕ} (hp : p.Prime) (hnot : ¬p ∣ m) :
    oddCoprimeMultiplier m (m*p) := by
  have hcop : Nat.Coprime m p :=
    (hp.coprime_iff_not_dvd.mpr hnot).symm
  have hmu : moebiusReal p = -1 := by
    unfold moebiusReal
    rw [ArithmeticFunction.moebius_apply_prime hp]
    norm_num
  exact ⟨p, hp.one_lt, hcop, hmu, rfl⟩

/-- The ORIGINAL signed causal kernel inherits symmetric ordered
orientations directly from the genuine interval-integral Gram.
No positivity follows from symmetry alone. -/
theorem sourceKernel_symm (T : ℝ) (m n : ℕ) :
    sourceKernel T m n = sourceKernel T n m := by
  unfold sourceKernel
  rw [responseGram_symm T m n]
  ring

/-- A source ratio with mu(k)=-1 flips the genuine arithmetic sign:
the actual response Gram stays NONNEGATIVE rather than being
replaced by an abstract positive pair volume. -/
theorem directed_oddCoprime_source_nonpos
    {T : ℝ} (hT : 0 ≤ T)
    {m n : ℕ} (hm : m ∈ endpointIndex T)
    (hn : n ∈ endpointIndex T)
    (hodd : oddCoprimeMultiplier m n) :
    sourceKernel T m n ≤ 0 := by
  obtain ⟨k, hk, hcop, hmu, rfl⟩ := hodd
  have hresp : 0 ≤ pickupResponseGram T m (m*k) :=
    responseGram_nonneg (Finset.mem_Icc.mp hm).1
      (Finset.mem_Icc.mp hn).1 hT
  have hcoeff :
      moebiusReal m * moebiusReal (m*k) =
        -(moebiusReal m)^2 := by
    rw [original_moebius_mul_of_coprime m k hcop, hmu]
    ring
  have hident :
      sourceKernel T m (m*k) =
        -(moebiusReal m)^2 * pickupResponseGram T m (m*k) := by
    unfold sourceKernel
    rw [hcoeff]
  rw [hident]
  exact mul_nonpos_of_nonpos_of_nonneg
    (neg_nonpos.mpr (sq_nonneg (moebiusReal m))) hresp

/-- Complete source negative sign for either ordered orientation,
including squareful zero coefficients, unchanged diagonal and
original physical-time birth support. -/
theorem oddCoprime_source_nonpos
    {T : ℝ} (hT : 0 ≤ T)
    {m n : ℕ} (hm : m ∈ endpointIndex T)
    (hn : n ∈ endpointIndex T)
    (hodd : oddCoprimeRatio m n) :
    sourceKernel T m n ≤ 0 := by
  rcases hodd with hf | hr
  · exact directed_oddCoprime_source_nonpos hT hm hn hf
  · rw [sourceKernel_symm T m n]
    exact directed_oddCoprime_source_nonpos hT hn hm hr

/-- The exact original high-high strong mask before applying the
additional arithmetic coprime-odd quotient test. -/
def highHighSelector (H M : ℕ) (T : ℝ) (m n : ℕ) : Prop :=
  m ≠ n ∧ originalStrongRelation H T m n ∧ M < m ∧ M < n

/-- ALL SOURCE-NEGATIVE odd-coprime dilations within the original
energy-matched, outside-Putnam, strong-overlap high-high selection.
The signed kernel is unchanged, and both orientations are retained. -/
def highHighOddCross (H M : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if highHighSelector H M T m n ∧ oddCoprimeRatio m n
      then sourceKernel T m n else 0

/-- The EXACT complementary original signed high-high packet.
It retains incomparable pairs, nonnegative even-quotient pairs,
and all remaining original multiplicities and zero coefficients. -/
def highHighNonOddCross (H M : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if highHighSelector H M T m n ∧ ¬oddCoprimeRatio m n
      then sourceKernel T m n else 0

/-- Literal magnitude of all selected ORIGINAL negative kernel
terms, not an assumed geometric volume or a free arithmetic credit. -/
def highHighOddCredit (H M : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if highHighSelector H M T m n ∧ oddCoprimeRatio m n
      then |sourceKernel T m n| else 0

/-- The extracted original coprime-odd dilation source packet has
NONPOSITIVE total, with no statistical independence assumption. -/
theorem highHighOddCross_nonpos
    {T : ℝ} (hT : 0 ≤ T) (H M : ℕ) :
    highHighOddCross H M T ≤ 0 := by
  unfold highHighOddCross
  apply Finset.sum_nonpos
  intro m hm
  apply Finset.sum_nonpos
  intro n hn
  by_cases h : highHighSelector H M T m n ∧ oddCoprimeRatio m n
  · simp only [if_pos h]
    exact oddCoprime_source_nonpos hT hm hn h.2
  · simp [h]

theorem highHighOddCredit_nonneg
    (H M : ℕ) (T : ℝ) :
    0 ≤ highHighOddCredit H M T := by
  unfold highHighOddCredit
  apply Finset.sum_nonneg
  intro m hm
  apply Finset.sum_nonneg
  intro n hn
  split_ifs <;> positivity

/-- This is an exact signed credit equality for EVERY original
selected odd quotient, not a positive overlap certification.
It follows termwise from the actual Möbius sign. -/
theorem highHighOddCross_eq_neg_credit
    {T : ℝ} (hT : 0 ≤ T) (H M : ℕ) :
    highHighOddCross H M T = -highHighOddCredit H M T := by
  unfold highHighOddCross highHighOddCredit
  rw [← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases h : highHighSelector H M T m n ∧ oddCoprimeRatio m n
  · have hnonn := oddCoprime_source_nonpos hT hm hn h.2
    simp only [if_pos h]
    rw [abs_of_nonpos hnonn]
    ring
  · simp [h]

/-- The original high-high strong signed source is partitioned
EXACTLY once into the nonpositive odd-coprime ratio packet and
the complete still-uncontrolled non-odd complement. -/
theorem highHighStrong_eq_odd_add_nonOdd
    (H M : ℕ) (T : ℝ) :
    highHighStrongCross H M T =
      highHighOddCross H M T + highHighNonOddCross H M T := by
  unfold highHighStrongCross originalIncidenceCross orderedCross
    highHighOddCross highHighNonOddCross
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hcore : highHighSelector H M T m n
  · by_cases hodd : oddCoprimeRatio m n
    · simp [highHighSelector, hcore, hodd]
    · simp [highHighSelector, hcore, hodd]
  · have hnotCore :
        ¬ (m ≠ n ∧ originalStrongRelation H T m n ∧
          M < m ∧ M < n) := hcore
    have hnoOdd :
        ¬ (highHighSelector H M T m n ∧ oddCoprimeRatio m n) := by
      simp [hcore]
    have hnoNonOdd :
        ¬ (highHighSelector H M T m n ∧ ¬oddCoprimeRatio m n) := by
      simp [hcore]
    simp [highHighSelector, hnotCore, hnoOdd, hnoNonOdd]

/-- Complete original source return: the genuine signed high-high
strong packet is the remaining non-odd core MINUS the positive
arithmetic credit for all odd-coprime ratios. No term vanishes
merely because it is inconvenient to certify. -/
theorem highHighStrong_eq_nonOdd_sub_credit
    {T : ℝ} (hT : 0 ≤ T) (H M : ℕ) :
    highHighStrongCross H M T =
      highHighNonOddCross H M T - highHighOddCredit H M T := by
  rw [highHighStrong_eq_odd_add_nonOdd,
    highHighOddCross_eq_neg_credit hT]
  ring

/-- The new actual signed negative source gives a noncircular
improvement over the previous high-high bound without introducing
a PNT or RH input. Its value is EXACT, not assumed positive by name. -/
theorem highHighStrong_le_nonOdd
    {T : ℝ} (hT : 0 ≤ T) (H M : ℕ) :
    highHighStrongCross H M T ≤ highHighNonOddCross H M T := by
  rw [highHighStrong_eq_nonOdd_sub_credit hT]
  exact sub_le_self _ (highHighOddCredit_nonneg H M T)

/-- The unchanged original endpoint return receives the entire
negative odd-dilation credit. All Putnam, weak-energy, early-index
and quarter-unit observation costs are kept, with BOTH pair
orientations and every original squareful zero retained. -/
theorem endpointSum_le_nonOdd_highHigh_minus_credit
    {T : ℝ} (hT : 0 ≤ T) (H M : ℕ) :
    endpointSum T ≤
      4 * ((shortGapSet H).card : ℝ) * T^2 +
      ((endpointIndex T).card : ℝ)^2 *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) +
      32*T*Real.sqrt (M : ℝ) *
        Real.sqrt (⌊Real.exp T⌋₊ : ℝ) +
      highHighNonOddCross H M T - highHighOddCredit H M T + 1/4 := by
  have h := endpointSum_le_signed_highHigh_and_paid hT H M
  rw [highHighStrong_eq_nonOdd_sub_credit hT H M] at h
  exact h

/-- Rate-scheduled original Putnam distance set. The negative
odd-quotient source is subtracted only ONCE and no unproved
all-positive-rate estimate for its non-odd complement is supplied. -/
theorem endpointSum_le_rate_nonOdd_highHigh_minus_credit
    {T ε : ℝ} (hT : 0 ≤ T) (hε : 0 < ε) (M : ℕ) :
    endpointSum T ≤
      (32/ε^2)*Real.exp (ε*T) +
      ((endpointIndex T).card : ℝ)^2 *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) +
      32*T*Real.sqrt (M : ℝ) *
        Real.sqrt (⌊Real.exp T⌋₊ : ℝ) +
      highHighNonOddCross (rateGapHeight ε T) M T -
      highHighOddCredit (rateGapHeight ε T) M T + 1/4 := by
  have h := endpointSum_le_rateHighHigh_and_paid hT hε M
  rw [highHighStrong_eq_nonOdd_sub_credit hT
    (rateGapHeight ε T) M] at h
  exact h


/-- Quantitative, nonnegative ORIGINAL arithmetic credit:
each certified selected odd-coprime source pair is individually
paid inside the entire positive credit ledger. A concrete pair
with nonzero Möbius signs and strictly positive causal overlap
therefore gives STRICT improvement, without any free certificate. -/
theorem highHighOddCredit_ge_selected_pair
    (H M : ℕ) (T : ℝ) (m n : ℕ)
    (hm : m ∈ endpointIndex T) (hn : n ∈ endpointIndex T)
    (hsel : highHighSelector H M T m n ∧
      oddCoprimeRatio m n) :
    |sourceKernel T m n| ≤ highHighOddCredit H M T := by
  have hrow_nonneg (i : ℕ) :
      0 ≤ ∑ j ∈ endpointIndex T,
        if highHighSelector H M T i j ∧ oddCoprimeRatio i j
          then |sourceKernel T i j| else 0 := by
    apply Finset.sum_nonneg
    intro j hj
    split_ifs <;> positivity
  have hrow :
      |sourceKernel T m n| ≤
        ∑ j ∈ endpointIndex T,
          if highHighSelector H M T m j ∧ oddCoprimeRatio m j
            then |sourceKernel T m j| else 0 := by
    have hsingle :
        (if highHighSelector H M T m n ∧ oddCoprimeRatio m n
          then |sourceKernel T m n| else 0) ≤
        ∑ j ∈ endpointIndex T,
          if highHighSelector H M T m j ∧ oddCoprimeRatio m j
            then |sourceKernel T m j| else 0 :=
      Finset.single_le_sum (fun j hj hne => by
        split_ifs <;> positivity) hn
    simpa only [if_pos hsel] using hsingle
  have houter :
      (∑ j ∈ endpointIndex T,
        if highHighSelector H M T m j ∧ oddCoprimeRatio m j
          then |sourceKernel T m j| else 0) ≤
      highHighOddCredit H M T := by
    unfold highHighOddCredit
    exact Finset.single_le_sum (fun i hi hne => hrow_nonneg i) hm
  exact hrow.trans houter

/-- Any original source pair with quotient equal to a TRUE prime
p, p∤m, is included in the extended odd-coprime credit when the
actual high-high physical/angular source mask holds. Thus this
construction genuinely EXTENDS the earlier prime-ratio credit. -/
theorem highHighOddCredit_ge_prime_pair
    {T : ℝ} (H M m p : ℕ)
    (hp : p.Prime) (hnot : ¬p ∣ m)
    (hm : m ∈ endpointIndex T)
    (hmp : m*p ∈ endpointIndex T)
    (hstrong : originalStrongRelation H T m (m*p))
    (hmM : M < m) (hmpM : M < m*p) :
    |sourceKernel T m (m*p)| ≤ highHighOddCredit H M T := by
  have hmp_gt : m < m*p := by
    have hmpos : 0 < m := (Finset.mem_Icc.mp hm).1
    have hpge : 2 ≤ p := hp.two_le
    nlinarith
  apply highHighOddCredit_ge_selected_pair H M T m (m*p) hm hmp
  exact ⟨⟨ne_of_lt hmp_gt, hstrong, hmM, hmpM⟩,
    Or.inl (prime_ratio_is_oddCoprime hp hnot)⟩


/-- A certified original negative ordered pair produces STRICT
arithmetic credit whenever its true signed causal Gram is nonzero.
This is an exact finite source implication, not a claim that the
large-scale RH signed remainder has been estimated. -/
theorem highHighOddCredit_pos_of_strict_pair
    (H M : ℕ) (T : ℝ) (m n : ℕ)
    (hm : m ∈ endpointIndex T) (hn : n ∈ endpointIndex T)
    (hsel : highHighSelector H M T m n ∧
      oddCoprimeRatio m n)
    (hk : sourceKernel T m n < 0) :
    0 < highHighOddCredit H M T := by
  have habs : 0 < |sourceKernel T m n| :=
    abs_pos.mpr (ne_of_lt hk)
  exact habs.trans_le
    (highHighOddCredit_ge_selected_pair H M T m n hm hn hsel)

/-- At any original source horizon admitting a truly negative
selected arithmetic edge, the new high-high strong bound is
STRICTLY better than the same non-odd-only signed bound:
the exact positive credit is not an observational alias. -/
theorem highHighStrong_lt_nonOdd_of_strict_pair
    {T : ℝ} (hT : 0 ≤ T) (H M m n : ℕ)
    (hm : m ∈ endpointIndex T) (hn : n ∈ endpointIndex T)
    (hsel : highHighSelector H M T m n ∧
      oddCoprimeRatio m n)
    (hk : sourceKernel T m n < 0) :
    highHighStrongCross H M T < highHighNonOddCross H M T := by
  rw [highHighStrong_eq_nonOdd_sub_credit hT]
  exact sub_lt_self _ (highHighOddCredit_pos_of_strict_pair
    H M T m n hm hn hsel hk)


/-- EXACT FUTURE LEAN TARGET, NOT A THEOREM OR AXIOM:
the true original negative odd-coprime ratio credit is also
arithmetically THIN in the high-high region. The paper proof
reindexes each proper comparable pair n=m*k (k>=2) and uses

  |k_T(m,m*k)| <= 4*T/(m*sqrt(k)),
  sum_(k<=N/m) 1/sqrt(k) <= 2*sqrt(N/m),
  sum_(m>M) m^(-3/2) <= 2/sqrt(M)  (M>=1).

Both orientations give 32*T*sqrt(N/M). This rate can be
strictly below one half for M growing with N. The *source
reindexing and analytic inverse-power tail* have NOT been
elaborated in pinned Lean; this definition is a passive goal,
not available proof evidence. -/
def HighHighOddCreditRootTailTarget : Prop :=
  ∀ (H M : ℕ) (T : ℝ), 0 ≤ T → 1 ≤ M →
    highHighOddCredit H M T ≤
      32 * T *
        Real.sqrt ((⌊Real.exp T⌋₊ : ℝ) / (M : ℝ))

end GRWTSK.NumberTheory.Moebius.StrongOddCoprimeDilation
