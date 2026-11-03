/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / SIGNED_ARITHMETIC_OPEN. -/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSignedAllPositiveRateConditional
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointPutnamSparseGapAllRate

/-!
# Source-faithful sparse-mask transfer and ordered signed transposition

The original dense consumer uses the single canonical
putnamRateGapSet, NOT every arbitrary finite distance mask.
The previous universal-mask signed-distance variation target
is sufficient but needlessly stronger for this consumer.

The literal shell Gram is bounded by 4*log(2)/X. For each m
and positive difference d there are at most two possible n.
The pinned gap_neighbor_card_le and the actual clipped shell
cardinality therefore give a genuinely UNCONDITIONAL estimate

  |selected-gap packet| <= 8*log(2)*card(A).

Consequently, for either signed original orientation,
  |masked(A)| <= |masked(empty)| + 8*log(2)*card(A).
In particular the canonical Putnam A_eta(T) costs only
8*log(2)*exp(eta*T/2).

The original physical Gram is symmetric, hence HL(a,b)=LH(b,a)
WITH THE TWO ORDERED TAGS EXCHANGED. No fixed-tag symmetry
and no cancellation input are assumed.

The remaining analytical target is cancellation of the UNMASKED
true signed high/low arithmetic packet uniformly over both tag
choices, together with the independent low/low source. This file
does not prove that target or RH.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.SignedPutnamSparseMaskTransfer

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
open GRWTSK.NumberTheory.Moebius.HighSmoothDensePairs
open GRWTSK.NumberTheory.Moebius.DyadicBirthHighLowLongGap
open GRWTSK.NumberTheory.Moebius.SignedAllPositiveRateConditional
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting

/-- Literal commutativity of the original physical Gram, with
NO symmetry assertion about the attached arithmetic tags. -/
private theorem original_gram_swap (T : ℝ) (m n : ℕ) :
    pickupResponseGram T m n = pickupResponseGram T n m := by
  unfold pickupResponseGram
  congr 1
  funext u
  ring

/-- Transpose the exact masked rectangle, exchanging both the
source index sets AND the ordered coefficient tags. -/
theorem maskedTaggedBlock_transpose
    (P A I J : Finset ℕ) (a b : Bool) (T : ℝ) :
    maskedTaggedBlock P a b A I J T =
      maskedTaggedBlock P b a A J I T := by
  classical
  unfold maskedTaggedBlock
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro n hn
  apply Finset.sum_congr rfl
  intro m hm
  have hmask :
      (m ≠ n ∧ Nat.dist m n ∉ A) ↔
        (n ≠ m ∧ Nat.dist n m ∉ A) := by
    constructor
    · rintro ⟨hne, hgap⟩
      exact ⟨hne.symm, by simpa only [Nat.dist_comm] using hgap⟩
    · rintro ⟨hne, hgap⟩
      exact ⟨hne.symm, by simpa only [Nat.dist_comm] using hgap⟩
  by_cases h : m ≠ n ∧ Nat.dist m n ∉ A
  · have h' := hmask.mp h
    simp only [if_pos h, if_pos h']
    rw [original_gram_swap]
    ring
  · have h' : ¬(n ≠ m ∧ Nat.dist n m ∉ A) :=
      fun hh => h (hmask.mpr hh)
    simp [h, h']

/-- The two original signed mixed orientations are related
ONLY after interchanging their Boolean tags. -/
theorem originalSignedLH_eq_HL_swap_tags
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ) (X : ℕ) :
    originalSignedLH B a b A X =
      originalSignedHL B b a A X := by
  unfold originalSignedLH originalSignedHL
  exact (maskedTaggedBlock_transpose B.primes A
    (highSmoothBlock B X (shellTime X))
    (lowSmoothBlock B X (shellTime X))
    b a (shellTime X)).symm

/-- All-original signed pairs with distance in A, before taking
absolute values and retaining the same true physical time. -/
def originalSignedSelectedGap
    (B : PrimeBand) (a b : Bool) (A I J : Finset ℕ)
    (X : ℕ) : ℝ :=
  ∑ m ∈ I, ∑ n ∈ J,
    if m ≠ n ∧ Nat.dist m n ∈ A then
      taggedMoebius B.primes a m *
        taggedMoebius B.primes b n *
          pickupResponseGram (shellTime X) m n
    else 0

/-- Exact finite complement identity, preserving every actual
source sign, the off-diagonal mask, and its physical Gram. -/
theorem masked_eq_empty_sub_selectedGap
    (B : PrimeBand) (a b : Bool) (A I J : Finset ℕ)
    (X : ℕ) :
    maskedTaggedBlock B.primes a b A I J (shellTime X) =
      maskedTaggedBlock B.primes a b ∅ I J (shellTime X) -
        originalSignedSelectedGap B a b A I J X := by
  classical
  unfold maskedTaggedBlock originalSignedSelectedGap
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmn : m = n
  · simp [hmn]
  · by_cases hA : Nat.dist m n ∈ A
    · simp [hmn, hA]
    · simp [hmn, hA]

/-- Finite degree-times-birth bound for an arbitrary selected
gap set, in an arbitrary ordered pair of ORIGINAL shell
subpopulations. Both Boolean tags are retained and no signed
arithmetic cancellation is used. -/
theorem selectedGap_abs_le_eight_log_two_card
    (B : PrimeBand) (a b : Bool) (A I J : Finset ℕ)
    (X : ℕ) (hX : 1 ≤ X)
    (hI : I ⊆ balancedBlock X (shellTime X))
    (hJ : J ⊆ balancedBlock X (shellTime X)) :
    |originalSignedSelectedGap B a b A I J X| ≤
      8 * Real.log 2 * (A.card : ℝ) := by
  classical
  let C : ℝ := 4 * Real.log 2 / (X : ℝ)
  let edge (m n : ℕ) : Prop :=
    m ≠ n ∧ Nat.dist m n ∈ A
  have hx : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast (show 0 < X by omega)
  have hx0 : (X : ℝ) ≠ 0 := ne_of_gt hx
  have hC : 0 ≤ C := by
    dsimp [C]
    have hlog2 : 0 ≤ Real.log (2 : ℝ) :=
      Real.log_nonneg (by norm_num)
    positivity
  have hIshell : I ⊆ Finset.Ioc X (2 * X) := by
    intro m hm
    exact Finset.mem_Ioc.mpr
      (balancedBlock_mem_shell X m (shellTime X) (hI hm))
  have hIcard : I.card ≤ X := by
    have hc := Finset.card_le_card hIshell
    simp only [Finset.card_Ioc] at hc
    omega
  have hIreal : (I.card : ℝ) ≤ (X : ℝ) := by
    exact_mod_cast hIcard
  have hterm (m n : ℕ) (hm : m ∈ I) (hn : n ∈ J) :
      |taggedMoebius B.primes a m *
          taggedMoebius B.primes b n *
            pickupResponseGram (shellTime X) m n| ≤ C := by
    simpa only [C, shellTime] using
      (shell_original_tagged_pair_abs_le B a b X m n hX
        (hI hm) (hJ hn))
  have hdegree (m : ℕ) :
      (((J.filter (edge m)).card : ℝ) ≤
        2 * (A.card : ℝ)) := by
    exact_mod_cast gap_neighbor_card_le A J m
  have hrow (m : ℕ) (hm : m ∈ I) :
      (∑ n ∈ J,
        |if edge m n then
           taggedMoebius B.primes a m *
             taggedMoebius B.primes b n *
               pickupResponseGram (shellTime X) m n
         else 0|) ≤
        2 * (A.card : ℝ) * C := by
    calc
      _ ≤ ∑ n ∈ J, if edge m n then C else 0 := by
        apply Finset.sum_le_sum
        intro n hn
        by_cases he : edge m n
        · simp only [if_pos he]
          exact hterm m n hm hn
        · simp [he]
      _ = (((J.filter (edge m)).card : ℝ) * C) := by
        rw [← Finset.sum_filter]
        simp [mul_comm]
      _ ≤ 2 * (A.card : ℝ) * C :=
        mul_le_mul_of_nonneg_right (hdegree m) hC
  have htriangle :
      |originalSignedSelectedGap B a b A I J X| ≤
        ∑ m ∈ I, ∑ n ∈ J,
          |if edge m n then
            taggedMoebius B.primes a m *
              taggedMoebius B.primes b n *
                pickupResponseGram (shellTime X) m n
           else 0| := by
    change
      |∑ m ∈ I, ∑ n ∈ J,
        if edge m n then
          taggedMoebius B.primes a m *
            taggedMoebius B.primes b n *
              pickupResponseGram (shellTime X) m n
        else 0| ≤ _
    calc
      _ ≤ ∑ m ∈ I, |∑ n ∈ J,
          if edge m n then
            taggedMoebius B.primes a m *
              taggedMoebius B.primes b n *
                pickupResponseGram (shellTime X) m n
          else 0| := Finset.abs_sum_le_sum_abs _ _
      _ ≤ _ := by
        apply Finset.sum_le_sum
        intro m hm
        exact Finset.abs_sum_le_sum_abs _ _
  calc
    |originalSignedSelectedGap B a b A I J X| ≤
      ∑ m ∈ I, ∑ n ∈ J,
        |if edge m n then
          taggedMoebius B.primes a m *
            taggedMoebius B.primes b n *
              pickupResponseGram (shellTime X) m n
         else 0| := htriangle
    _ ≤ ∑ m ∈ I, (2 * (A.card : ℝ) * C) :=
      Finset.sum_le_sum hrow
    _ = (I.card : ℝ) * (2 * (A.card : ℝ) * C) := by
      simp [Finset.sum_const, nsmul_eq_mul]
    _ ≤ (X : ℝ) * (2 * (A.card : ℝ) * C) :=
      mul_le_mul_of_nonneg_right hIreal (by positivity)
    _ = 8 * Real.log 2 * (A.card : ℝ) := by
      dsimp [C]
      field_simp [hx0]
      ring

/-- Finite, unconditional transfer: an arbitrary set A of
excluded distances costs at most 8*log(2)*card(A) beyond the
ORIGINAL unmasked signed source. This is a mask cost, not
an arithmetic cancellation theorem. -/
theorem masked_abs_le_empty_add_sparse_cost
    (B : PrimeBand) (a b : Bool) (A I J : Finset ℕ)
    (X : ℕ) (hX : 1 ≤ X)
    (hI : I ⊆ balancedBlock X (shellTime X))
    (hJ : J ⊆ balancedBlock X (shellTime X)) :
    |maskedTaggedBlock B.primes a b A I J (shellTime X)| ≤
      |maskedTaggedBlock B.primes a b ∅ I J (shellTime X)| +
        8 * Real.log 2 * (A.card : ℝ) := by
  rw [masked_eq_empty_sub_selectedGap]
  calc
    |maskedTaggedBlock B.primes a b ∅ I J (shellTime X) -
        originalSignedSelectedGap B a b A I J X| =
        |maskedTaggedBlock B.primes a b ∅ I J (shellTime X) +
          -originalSignedSelectedGap B a b A I J X| := by
            rw [sub_eq_add_neg]
    _ ≤ |maskedTaggedBlock B.primes a b ∅ I J (shellTime X)| +
          |-originalSignedSelectedGap B a b A I J X| :=
      abs_add_le _ _
    _ = |maskedTaggedBlock B.primes a b ∅ I J (shellTime X)| +
          |originalSignedSelectedGap B a b A I J X| := by
      rw [abs_neg]
    _ ≤ _ := add_le_add_left
      (selectedGap_abs_le_eight_log_two_card B a b A I J X
        hX hI hJ) _

/-- Both genuine shell subpopulations are subsets of the
same source inventory; no artificial enlarged index set. -/
private theorem original_high_subset
    (B : PrimeBand) (X : ℕ) :
    highSmoothBlock B X (shellTime X) ⊆
      balancedBlock X (shellTime X) :=
  Finset.filter_subset _ _

private theorem original_low_subset
    (B : PrimeBand) (X : ℕ) :
    lowSmoothBlock B X (shellTime X) ⊆
      balancedBlock X (shellTime X) :=
  Finset.filter_subset _ _

/-- Exact canonical mask, with only the TRUE original HL packet
on the right and an unconditional sparse error. -/
theorem originalSignedHL_putnam_le_unmasked
    (B : PrimeBand) (a b : Bool) (X : ℕ) (hX : 1 ≤ X)
    (η : ℝ) :
    |originalSignedHL B a b
      (putnamRateGapSet η (shellTime X)) X| ≤
      |originalSignedHL B a b ∅ X| +
        8 * Real.log 2 * Real.exp ((η / 2) * shellTime X) := by
  have hbound :=
    masked_abs_le_empty_add_sparse_cost
      B a b (putnamRateGapSet η (shellTime X))
      (highSmoothBlock B X (shellTime X))
      (lowSmoothBlock B X (shellTime X))
      X hX (original_high_subset B X) (original_low_subset B X)
  have hsize :=
    putnam_gap_card_le η (shellTime X)
  have hcoeff : 0 ≤ (8 : ℝ) * Real.log 2 := by
    exact mul_nonneg (by norm_num)
      (Real.log_nonneg (by norm_num))
  have hcost :=
    mul_le_mul_of_nonneg_left hsize hcoeff
  change |originalSignedHL B a b
    (putnamRateGapSet η (shellTime X)) X| ≤ _ at hbound
  calc
    _ ≤ |originalSignedHL B a b ∅ X| +
          8 * Real.log 2 *
            ((putnamRateGapSet η (shellTime X)).card : ℝ) := hbound
    _ ≤ |originalSignedHL B a b ∅ X| +
          8 * Real.log 2 *
            Real.exp ((η / 2) * shellTime X) :=
      add_le_add_left hcost _

/-- Separate original LH packet, obtained with the tags exchanged
rather than postulating symmetry at fixed ordered tags. -/
theorem originalSignedLH_putnam_le_unmasked
    (B : PrimeBand) (a b : Bool) (X : ℕ) (hX : 1 ≤ X)
    (η : ℝ) :
    |originalSignedLH B a b
      (putnamRateGapSet η (shellTime X)) X| ≤
      |originalSignedLH B a b ∅ X| +
        8 * Real.log 2 * Real.exp ((η / 2) * shellTime X) := by
  simp only [originalSignedLH_eq_HL_swap_tags]
  exact originalSignedHL_putnam_le_unmasked B b a X hX η

/-- This is a narrower OPEN arithmetic hypothesis than the old
all-finite-masks signed-variation target: ONLY the ORIGINAL
UNMASKED high/low signed packet, but uniformly over all ordered
Boolean tag choices and eligible moving genuine prime banks. -/
def NearcriticalUnmaskedSignedHLTarget : Prop :=
  ∀ (α δ : ℝ), α < 2 → 0 < δ →
    ∃ X₀ : ℕ, ∀ X ≥ X₀,
      ∀ (B : PrimeBand) (a b : Bool),
        (∀ p ∈ B.primes,
          (p : ℝ) ≤ (shellTime X) ^ (2 : ℕ) *
            (Real.log (shellTime X)) ^ α) →
          |originalSignedHL B a b ∅ X| ≤
            Real.exp (δ * shellTime X) *
              bankSquareRootWeight B.primes

/-- Completely explicit finite transfer if the single ordered,
unmasked signed packet already has a source-dependent bound H.
This is the exact consumer return for the Putnam mask: no all-mask
variation hypothesis and no hidden signed arithmetic input. -/
theorem both_ordered_putnam_of_unmasked_HL
    (B : PrimeBand) (X : ℕ) (hX : 1 ≤ X)
    (η H : ℝ)
    (hHL : ∀ a b : Bool,
      |originalSignedHL B a b ∅ X| ≤ H) :
    ∀ a b : Bool,
      |originalSignedHL B a b
         (putnamRateGapSet η (shellTime X)) X| ≤
           H + 8 * Real.log 2 *
             Real.exp ((η / 2) * shellTime X) ∧
      |originalSignedLH B a b
         (putnamRateGapSet η (shellTime X)) X| ≤
           H + 8 * Real.log 2 *
             Real.exp ((η / 2) * shellTime X) := by
  intro a b
  constructor
  · exact (originalSignedHL_putnam_le_unmasked
      B a b X hX η).trans (add_le_add_right (hHL a b) _)
  · rw [originalSignedLH_eq_HL_swap_tags]
    exact (originalSignedHL_putnam_le_unmasked
      B b a X hX η).trans (add_le_add_right (hHL b a) _)


/-- Earlier all-finite-masks signed variation target implies this
narrower unmasked one. Its converse is NOT assumed. -/
theorem distanceVariation_implies_unmaskedHL
    (hVariation :
      GRWTSK.NumberTheory.Moebius.SignedAllPositiveRateConditional.NearcriticalSignedDistanceVariationTarget) :
    NearcriticalUnmaskedSignedHLTarget := by
  intro α δ hα hδ
  obtain ⟨X₀, hvar⟩ := hVariation α δ hα hδ
  refine ⟨X₀, ?_⟩
  intro X hX B a b hsupport
  have hv := hvar X hX B a b hsupport
  have hmask :=
    GRWTSK.NumberTheory.Moebius.SignedDistanceFibers.maskedTaggedBlock_abs_le_signedDistanceVariation
      B a b (∅ : Finset ℕ)
      (highSmoothBlock B X (shellTime X))
      (lowSmoothBlock B X (shellTime X))
      (shellTime X)
  change |originalSignedHL B a b ∅ X| ≤ _ at hmask
  exact hmask.trans hv.1

/-- A single uniform UNMASKED signed HL supplier, plus the
published nearcritical positive Euler budget and the ORIGINAL
Putnam sparse-gap count, implies BOTH canonical ordered signed
mixed packet estimates at every positive exponential rate.

The uniform constant 1+8*log(2) is independent of the bank,
the two tags, X, and α; it is NOT a certificate for the still
unproved unmasked arithmetic supplier, and says nothing about LL.
This is a genuine weaker consumer than an all-finite-masks target. -/
theorem both_ordered_putnam_all_positive_rate_of_unmasked
    (hUnmasked : NearcriticalUnmaskedSignedHLTarget)
    (α ε : ℝ) (hα : α < 2) (hε : 0 < ε) :
    ∃ X₀ : ℕ, ∀ X ≥ X₀, ∀ (B : PrimeBand) (a b : Bool),
      (∀ p ∈ B.primes,
        (p : ℝ) ≤ (shellTime X) ^ (2 : ℕ) *
          (Real.log (shellTime X)) ^ α) →
      (|originalSignedHL B a b
          (putnamRateGapSet ε (shellTime X)) X| ≤
         (1 + 8 * Real.log 2) *
           Real.exp (ε * shellTime X)) ∧
      (|originalSignedLH B a b
          (putnamRateGapSet ε (shellTime X)) X| ≤
         (1 + 8 * Real.log 2) *
           Real.exp (ε * shellTime X)) := by
  have hhalf : 0 < ε / 2 := by linarith
  obtain ⟨Xv, hsource⟩ := hUnmasked α (ε / 2) hα hhalf
  obtain ⟨T₀, hT₀, hbank⟩ :=
    GRWTSK.NumberTheory.Moebius.NearcriticalMovingBank.movingBank_euler_eventual
      α (ε / 2) hα hhalf
  refine ⟨max Xv (max 1 ⌈Real.exp T₀⌉₊), ?_⟩
  intro X hX B a b hsupport
  have hXv : Xv ≤ X := by omega
  have hXone : 1 ≤ X := by omega
  have hceil : Real.exp T₀ ≤ (X : ℝ) := by
    have hc : Real.exp T₀ ≤ (⌈Real.exp T₀⌉₊ : ℝ) :=
      Nat.le_ceil _
    have hn : ⌈Real.exp T₀⌉₊ ≤ X := by omega
    exact hc.trans (by exact_mod_cast hn)
  have hTlarge : T₀ ≤ shellTime X := by
    have hcomp : Real.exp T₀ ≤ 2 * (X : ℝ) := by
      have hx : (0 : ℝ) ≤ (X : ℝ) := Nat.cast_nonneg _
      linarith
    calc
      T₀ = Real.log (Real.exp T₀) := (Real.log_exp _).symm
      _ ≤ Real.log (2 * (X : ℝ)) :=
        Real.log_le_log (Real.exp_pos _) hcomp
      _ = shellTime X := rfl
  have hTnonneg : 0 ≤ shellTime X := by
    have hXreal : (1 : ℝ) ≤ (X : ℝ) := by
      exact_mod_cast hXone
    change 0 ≤ Real.log (2 * (X : ℝ))
    apply Real.log_nonneg
    linarith
  have hEuler :
      bankSquareRootWeight B.primes ≤
        Real.exp ((ε / 2) * shellTime X) :=
    hbank (shellTime X) hTlarge B
      (by simpa only [shellTime] using hsupport)
  have hSourceBound (c d : Bool) :
      |originalSignedHL B c d ∅ X| ≤
        Real.exp (ε * shellTime X) := by
    have hs := hsource X hXv B c d hsupport
    calc
      _ ≤ Real.exp ((ε / 2) * shellTime X) *
            bankSquareRootWeight B.primes := hs
      _ ≤ Real.exp ((ε / 2) * shellTime X) *
            Real.exp ((ε / 2) * shellTime X) :=
        mul_le_mul_of_nonneg_left hEuler (Real.exp_nonneg _)
      _ = Real.exp (ε * shellTime X) := by
        rw [← Real.exp_add]
        congr 1
        ring
  have hBoth :=
    both_ordered_putnam_of_unmasked_HL B X hXone ε
      (Real.exp (ε * shellTime X)) hSourceBound a b
  have hexp :
      Real.exp ((ε / 2) * shellTime X) ≤
        Real.exp (ε * shellTime X) := by
    apply Real.exp_le_exp.mpr
    nlinarith [mul_nonneg hε.le hTnonneg]
  have hlog : 0 ≤ (8 : ℝ) * Real.log 2 := by
    have h2 : 0 ≤ Real.log (2 : ℝ) :=
      Real.log_nonneg (by norm_num)
    positivity
  have herr :=
    mul_le_mul_of_nonneg_left hexp hlog
  constructor
  · exact hBoth.1.trans (by nlinarith [herr])
  · exact hBoth.2.trans (by nlinarith [herr])

end GRWTSK.NumberTheory.Moebius.SignedPutnamSparseMaskTransfer
