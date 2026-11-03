/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSmoothBirthDenseSingleBudget
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusOddPrimeDoublingNegativePacket
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory

/-!
# A genuine negative prime-star packet in the ORIGINAL dense Mobius Gram

For every prime p, mu(1)*mu(p)=-1. Both genuine ordered source
pairs (1,p) and (p,1) therefore have nonpositive real causal Gram
terms, whenever the original additive gap p-1 is outside the selected
Putnam gap set. Unlike the earlier fixed-ratio doubled and tripled
packets, p ranges over ALL eligible prime endpoints.

The complete original dense source is partitioned into precisely
these original ordered edges plus their literal original signed
complement. No source coefficient, index, prime power, diagonal
convention, or mixed/rough sector is replaced or silently omitted.

A separate COMPLETE PAPER argument uses the classical unconditional
prime number theorem and direct lower bounds on the original response
to show, for each 0<epsilon<2 and all sufficiently large T,

  primeStarPacket (putnamRateGapSet epsilon T) T
    <= -c * exp(T/2)/T,
  c=(2-log 4)*(exp 1-1)*exp(-2)>0.

That exponential magnitude is NOT proved in Lean here: it needs a
prime-counting port and an interval-integral lower lemma. The Lean
source below concerns exact finite identities and the UNCONDITIONAL
sign of the original source packet. The full signed dense remainder
is STILL UNCONTROLLED at every positive exponential rate.
-/

namespace GRWTSK.NumberTheory.Moebius.DensePrimeStarCancellation

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.Moebius.SmoothBirthDenseSingleBudget
open GRWTSK.NumberTheory.MoebiusOddPrimeDoublingNegativePacket

/-- An ORIGINAL ordered dense source edge touching 1 and a prime.
The gap condition remains the source's NATURAL additive distance. -/
def primeStarEdge (A : Finset ℕ) (m n : ℕ) : Prop :=
  ((m = 1 ∧ Nat.Prime n) ∨ (n = 1 ∧ Nat.Prime m)) ∧
    Nat.dist m n ∉ A

/-- Every star edge is genuinely off diagonal and belongs to the
unchanged additive-distance complement. -/
theorem primeStarEdge_is_dense
    (A : Finset ℕ) (m n : ℕ)
    (hs : primeStarEdge A m n) :
    m ≠ n ∧ Nat.dist m n ∉ A := by
  rcases hs with ⟨hp, hgap⟩
  constructor
  · rcases hp with ⟨hm, hprime⟩ | ⟨hn, hprime⟩
    · subst m
      have htwo := hprime.two_le
      omega
    · subst n
      have htwo := hprime.two_le
      omega
  · exact hgap

/-- The exact ORIGINAL integer coefficient product on a prime-star
edge is -1. Neither Liouville nor an observed coefficient is used. -/
theorem primeStar_coefficient_eq_neg_one
    (A : Finset ℕ) (m n : ℕ)
    (hs : primeStarEdge A m n) :
    moebiusReal m * moebiusReal n = -1 := by
  rcases hs with ⟨hp, _⟩
  rcases hp with ⟨rfl, hprime⟩ | ⟨rfl, hprime⟩
  · simp [moebiusReal, ArithmeticFunction.moebius_apply_one,
      ArithmeticFunction.moebius_apply_prime hprime]
  · simp [moebiusReal, ArithmeticFunction.moebius_apply_one,
      ArithmeticFunction.moebius_apply_prime hprime]

/-- Every selected ORIGINAL ordered edge, including BOTH orientations.
Finite source inventory is exactly endpointIndex T. -/
def primeStarPacket (A : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if primeStarEdge A m n then
      moebiusReal m * moebiusReal n *
        pickupResponseGram T m n
    else 0

/-- Literal remainder after extracting exactly the prime-star edges:
every other original dense ordered pair is still present with its
genuine sign and original birth/Gram. -/
def denseOutsidePrimeStar (A : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ Nat.dist m n ∉ A ∧ ¬primeStarEdge A m n then
      moebiusReal m * moebiusReal n *
        pickupResponseGram T m n
    else 0

/-- Actual μ(1)μ(p)=-1 and the nonnegative ORIGINAL physical-time
Gram force every selected ordered term to be nonpositive. -/
theorem primeStarPacket_nonpos
    (A : Finset ℕ) (T : ℝ) (hT : 0 ≤ T) :
    primeStarPacket A T ≤ 0 := by
  unfold primeStarPacket
  apply Finset.sum_nonpos
  intro m hm
  apply Finset.sum_nonpos
  intro n hn
  by_cases hs : primeStarEdge A m n
  · simp only [if_pos hs]
    have hsign := primeStar_coefficient_eq_neg_one A m n hs
    have hmpos : 0 < m := by
      have hh : 1 ≤ m := (Finset.mem_Icc.mp hm).1
      omega
    have hnpos : 0 < n := by
      have hh : 1 ≤ n := (Finset.mem_Icc.mp hn).1
      omega
    have hgram := pickupResponseGram_nonneg T hT m n hmpos hnpos
    rw [hsign]
    simpa only [neg_one_mul] using (neg_nonpos.mpr hgram)
  · simp [hs]

/-- EXACT finite partition of the unchanged original signed dense
source, not a free residual or a changed kernel. Both ordered pair
orientations occur on the same finite inventory. -/
theorem denseLongGapSource_eq_star_add_remaining
    (ε T : ℝ) :
    denseLongGapSource ε T =
      primeStarPacket (putnamRateGapSet ε T) T +
        denseOutsidePrimeStar (putnamRateGapSet ε T) T := by
  classical
  rw [original_dense_eq_complement]
  unfold signedComplementDefect primeStarPacket denseOutsidePrimeStar
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hs : primeStarEdge (putnamRateGapSet ε T) m n
  · have hd := primeStarEdge_is_dense (putnamRateGapSet ε T) m n hs
    simp [hs, hd]
  · by_cases hd :
        m ≠ n ∧ Nat.dist m n ∉ putnamRateGapSet ε T
    · simp [hs, hd]
    · simp [hs, hd]

/-- The prime-star negative packet can be discarded for an UPPER
estimate, while every remaining signed interaction is retained. -/
theorem denseLongGapSource_le_remaining
    (ε T : ℝ) (hT : 0 ≤ T) :
    denseLongGapSource ε T ≤
      denseOutsidePrimeStar (putnamRateGapSet ε T) T := by
  rw [denseLongGapSource_eq_star_add_remaining]
  have hneg := primeStarPacket_nonpos (putnamRateGapSet ε T) T hT
  linarith

/-- Independently selected genuine primes in the terminal logarithmic
band used by the PAPER prime-counting lower estimate. -/
def terminalPrimeBand (T : ℝ) : Finset ℕ :=
  (endpointIndex T).filter (fun p =>
    Nat.Prime p ∧ Real.exp (T - 3) < (p : ℝ) ∧
      (p : ℝ) ≤ Real.exp (T - 2))

/-- This is a positive original Gram credit; the quantitative
PNT lower bound is deliberately NOT assumed or claimed in Lean. -/
def terminalPrimeCredit (T : ℝ) : ℝ :=
  2 * ∑ p ∈ terminalPrimeBand T, pickupResponseGram T 1 p

theorem terminalPrimeCredit_nonneg (T : ℝ) (hT : 0 ≤ T) :
    0 ≤ terminalPrimeCredit T := by
  unfold terminalPrimeCredit
  apply mul_nonneg (by norm_num)
  apply Finset.sum_nonneg
  intro p hp
  have hprime : Nat.Prime p := (Finset.mem_filter.mp hp).2.1
  exact pickupResponseGram_nonneg T hT 1 p (by omega) hprime.pos

end GRWTSK.NumberTheory.Moebius.DensePrimeStarCancellation
