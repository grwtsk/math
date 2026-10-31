/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleGrowingBandUniformObstruction
import Mathlib

/-!
# Squareful-aware signed Buchstab partition and Type II Gram accounting

The actual Liouville coefficient and original causal pickup response are used.
No random-sign approximation or cancellation supplier is introduced.

The first selected divisor gives a disjoint rough / single-power /
repeated-power partition. The repeated-power sector includes all p^k, k >= 2.
The complete Gram square is split by equality of ORIGINAL integer indices,
not by equality of prime labels. This is essential for distinct-prime overlap.

All scripts remain source proof candidates until compilation and kernel audit.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleCausalEnergy

namespace GRWTSK.NumberTheory.LiouvilleSignedBuchstabTypeII

/-- Least selected divisor, with zero as the unsifted marker.
For a finite set of primes, nonzero values are its least prime divisor. -/
def firstSelectedDivisor (P : Finset ℕ) (n : ℕ) : ℕ :=
  if h : ∃ p : ℕ, p ∈ P ∧ p ∣ n then Nat.find h else 0

/-- Actual arithmetic summand; n=1 and zero-at-birth terms are retained. -/
def signedResponse (n : ℕ) (u : ℝ) : ℝ :=
  coefficient n * pickupResponse n u

/-- Integers containing no selected prime factor. -/
def roughWaveform (P : Finset ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊,
    if firstSelectedDivisor P n = 0 then signedResponse n u else 0

/-- First selected prime divides n exactly once. No squareful term is erased. -/
def singlePowerWaveform (P : Finset ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊,
    if firstSelectedDivisor P n ≠ 0 ∧
         ¬ (firstSelectedDivisor P n * firstSelectedDivisor P n ∣ n)
    then signedResponse n u else 0

/-- First selected prime divides n at least twice, including higher powers. -/
def repeatedPowerWaveform (P : Finset ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊,
    if firstSelectedDivisor P n ≠ 0 ∧
         (firstSelectedDivisor P n * firstSelectedDivisor P n ∣ n)
    then signedResponse n u else 0

/-- Exact finite original-waveform partition, including the unsifted source,
every repeated prime, every selected first-prime sector, and zero births. -/
theorem waveform_eq_rough_add_single_add_repeated
    (P : Finset ℕ) (u : ℝ) :
    waveform u =
      (roughWaveform P u + singlePowerWaveform P u) +
        repeatedPowerWaveform P u := by
  unfold waveform roughWaveform singlePowerWaveform repeatedPowerWaveform
  unfold signedResponse
  rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases h0 : firstSelectedDivisor P n = 0
  · simp [h0]
  · by_cases hs :
        firstSelectedDivisor P n * firstSelectedDivisor P n ∣ n
    · simp [h0, hs]
    · simp [h0, hs]

/-- Two selected copies of a prime preserve the actual Liouville sign,
conditional only on the explicit prime-sign identity. -/
theorem coefficient_square_mul_of_negative_prime
    (p k : ℕ) (hp : coefficient p = -1) :
    coefficient (p * p * k) = coefficient k := by
  calc
    coefficient (p * p * k) =
        coefficient (p * p) * coefficient k := coefficient_mul (p * p) k
    _ = (coefficient p * coefficient p) * coefficient k := by
      rw [coefficient_mul]
    _ = coefficient k := by rw [hp]; ring

/-- For distinct selected prime labels p and q, the shared ORIGINAL
integer n=p*q*k contributes +1 to the coefficient product, even though
the two shifted source indices are q*k and p*k. -/
theorem coefficient_cross_prime_overlap
    (p q k : ℕ) (hp : coefficient p = -1)
    (hq : coefficient q = -1)
    (hk : coefficient k ^ 2 = 1) :
    coefficient (q * k) * coefficient (p * k) = 1 := by
  rw [coefficient_mul, coefficient_mul, hp, hq]
  nlinarith [hk]

/-- Complete original-index finite weighted Gram, with no kernel positivity
or correlation estimate assumed. -/
def signedGram (S : Finset ℕ) (a : ℕ → ℝ)
    (K : ℕ → ℕ → ℝ) : ℝ :=
  ∑ n ∈ S, ∑ m ∈ S, a n * a m * K n m

/-- Diagonal at equality of the original source integer, not of prime tags. -/
def exactDiagonal (S : Finset ℕ) (a : ℕ → ℝ)
    (K : ℕ → ℕ → ℝ) : ℝ :=
  ∑ n ∈ S, ∑ m ∈ S,
    if n = m then a n * a m * K n m else 0

/-- Complete ordered off-diagonal. Both (n,m) and (m,n) remain. -/
def signedOffDiagonal (S : Finset ℕ) (a : ℕ → ℝ)
    (K : ℕ → ℕ → ℝ) : ℝ :=
  ∑ n ∈ S, ∑ m ∈ S,
    if n ≠ m then a n * a m * K n m else 0

/-- Exact signed Type II bookkeeping; no termwise absolute values. -/
theorem signedGram_eq_diagonal_add_offDiagonal
    (S : Finset ℕ) (a : ℕ → ℝ) (K : ℕ → ℕ → ℝ) :
    signedGram S a K =
      exactDiagonal S a K + signedOffDiagonal S a K := by
  classical
  unfold signedGram exactDiagonal signedOffDiagonal
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  by_cases h : n = m
  · simp [h]
  · simp [h]

end GRWTSK.NumberTheory.LiouvilleSignedBuchstabTypeII
