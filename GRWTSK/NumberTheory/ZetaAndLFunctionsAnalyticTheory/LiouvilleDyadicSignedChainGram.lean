/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleWeightedPrefixTwoAdicChains
import Mathlib

/-!
# Complete signed two-adic Liouville chains and a terminal-weighted two-level packet

The coefficient is the ORIGINAL Mathlib Liouville function, not a periodic
surrogate. At a fixed positive base q, every prime power 2^j is retained:
  lambda(2^j*q) = (-1)^j*lambda(q).
The finite ordered Gram retains both orientations. Its exact value is 0 or 1,
while its positive diagonal has size K; hence the signed off-diagonal packet
cancels K minus the parity remainder. This is a concrete unconditional finite
cancellation, not a bound for correlations between DISTINCT two-adic cores.

The two-level theorem uses the ORIGINAL weighted-prefix terminal kernel
1/max(m,n)-1/(N+1), not the unweighted Gram. It proves a signed residual
of 1/(2q), including the terminal face and both off-diagonal orientations.
No all-positive-rate, numeric zero certificate, prismatic trace, or RH is proved.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.LiouvilleDyadicSignedChainGram

open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleWeightedPrefixDoubling
open GRWTSK.NumberTheory.LiouvilleWeightedPrefixTwoAdicChains

/-- Exact alternating mass: zero at even K, one at odd K. -/
def parityMass (K : ℕ) : ℝ := (1 - (-1 : ℝ) ^ K) / 2

/-- An actual complete-multiplicative Liouville chain, including all powers. -/
def dyadicPrefix (q K : ℕ) : ℝ :=
  ∑ j ∈ Finset.range K, coefficient (2 ^ j * q)

/-- Both orientations of every pair of actual prime-power indices. -/
def dyadicMixedGram (q r K L : ℕ) : ℝ :=
  ∑ i ∈ Finset.range K, ∑ j ∈ Finset.range L,
    coefficient (2 ^ i * q) * coefficient (2 ^ j * r)

def dyadicFullGram (q K : ℕ) : ℝ := dyadicMixedGram q q K K

def dyadicDiagonal (q K : ℕ) : ℝ :=
  ∑ j ∈ Finset.range K, coefficient (2 ^ j * q) ^ 2

def dyadicOffDiagonal (q K : ℕ) : ℝ :=
  dyadicFullGram q K - dyadicDiagonal q K

/-- Only the proved original doubling identity is used. -/
theorem coefficient_two_pow_mul (q j : ℕ) :
    coefficient (2 ^ j * q) = (-1 : ℝ) ^ j * coefficient q := by
  induction j with
  | zero => simp
  | succ j ih =>
      have hpow : 2 ^ (j + 1) * q = 2 * (2 ^ j * q) := by
        rw [pow_succ]
        ring
      rw [hpow, coefficient_doubling, ih, pow_succ]
      ring

/-- Alternating cancellation is an exact finite identity, not an estimate. -/
theorem alternating_sum (K : ℕ) :
    (∑ j ∈ Finset.range K, (-1 : ℝ) ^ j) = parityMass K := by
  induction K with
  | zero => simp [parityMass]
  | succ K ih =>
      rw [Finset.sum_range_succ, ih]
      unfold parityMass
      rw [pow_succ]
      ring

/-- The actual signed prefix of one two-adic orbit has norm at most one. -/
theorem dyadicPrefix_closed (q K : ℕ) :
    dyadicPrefix q K = parityMass K * coefficient q := by
  calc
    dyadicPrefix q K =
        ∑ j ∈ Finset.range K, (-1 : ℝ) ^ j * coefficient q := by
          unfold dyadicPrefix
          apply Finset.sum_congr rfl
          intro j hj
          exact coefficient_two_pow_mul q j
    _ = (∑ j ∈ Finset.range K, (-1 : ℝ) ^ j) * coefficient q := by
          rw [Finset.sum_mul]
    _ = parityMass K * coefficient q := by rw [alternating_sum]

/-- The complete two-index Gram factors without dropping either ordering. -/
theorem dyadicMixedGram_eq_prefix_mul (q r K L : ℕ) :
    dyadicMixedGram q r K L = dyadicPrefix q K * dyadicPrefix r L := by
  unfold dyadicMixedGram dyadicPrefix
  rw [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro i hi
  rw [Finset.mul_sum]

/-- A two-core Gram retains the original signs of both core indices. -/
theorem dyadicMixedGram_closed (q r K L : ℕ) :
    dyadicMixedGram q r K L =
      parityMass K * parityMass L * coefficient q * coefficient r := by
  rw [dyadicMixedGram_eq_prefix_mul, dyadicPrefix_closed, dyadicPrefix_closed]
  ring

/-- The full ordered Gram is the genuine square of the original chain. -/
theorem dyadicFullGram_eq_prefix_sq (q K : ℕ) :
    dyadicFullGram q K = dyadicPrefix q K ^ 2 := by
  simpa [dyadicFullGram, pow_two] using
    (dyadicMixedGram_eq_prefix_mul q q K K)

private theorem alternating_power_sq (K : ℕ) :
    ((-1 : ℝ) ^ K) ^ 2 = 1 := by
  induction K with
  | zero => norm_num
  | succ K ih =>
      rw [pow_succ]
      calc
        (((-1 : ℝ) ^ K) * -1) ^ 2 = ((-1 : ℝ) ^ K) ^ 2 := by ring
        _ = 1 := ih

theorem parityMass_sq (K : ℕ) : parityMass K ^ 2 = parityMass K := by
  have h := alternating_power_sq K
  dsimp [parityMass]
  nlinarith

theorem parityMass_nonneg (K : ℕ) : 0 ≤ parityMass K := by
  rw [← parityMass_sq]
  positivity

theorem parityMass_le_one (K : ℕ) : parityMass K ≤ 1 := by
  have h := parityMass_sq K
  nlinarith [sq_nonneg (parityMass K - 1)]

/-- An entire actual two-adic chain has exact 0/1 ordered square energy. -/
theorem dyadicFullGram_eq_parityMass (q K : ℕ) (hq : 1 ≤ q) :
    dyadicFullGram q K = parityMass K := by
  rw [dyadicFullGram_eq_prefix_sq, dyadicPrefix_closed,
    mul_pow, coefficient_square_one hq, mul_one, parityMass_sq]

/-- Each diagonal square remains exactly one, including squareful indices. -/
theorem dyadicDiagonal_eq_length (q K : ℕ) (hq : 1 ≤ q) :
    dyadicDiagonal q K = (K : ℝ) := by
  unfold dyadicDiagonal
  calc
    (∑ j ∈ Finset.range K, coefficient (2 ^ j * q) ^ 2) =
        ∑ _j ∈ Finset.range K, (1 : ℝ) := by
          apply Finset.sum_congr rfl
          intro j hj
          have hpow : 0 < 2 ^ j := pow_pos (by omega : 0 < (2 : ℕ)) j
          have hindex : 1 ≤ 2 ^ j * q := by
            have hqpos : 0 < q := by omega
            have := Nat.mul_pos hpow hqpos
            omega
          exact coefficient_square_one hindex
    _ = (K : ℝ) := by simp

/-- Precisely K-parityMass negative ordered correlations cancel the diagonal.
The entire source coefficient and both orientations are retained. -/
theorem dyadicOffDiagonal_exact (q K : ℕ) (hq : 1 ≤ q) :
    dyadicOffDiagonal q K = parityMass K - (K : ℝ) := by
  unfold dyadicOffDiagonal
  rw [dyadicFullGram_eq_parityMass q K hq,
      dyadicDiagonal_eq_length q K hq]

/-- A uniform component bound, with no unproved global arithmetic input. -/
theorem dyadicFullGram_le_one (q K : ℕ) (hq : 1 ≤ q) :
    dyadicFullGram q K ≤ 1 := by
  rw [dyadicFullGram_eq_parityMass q K hq]
  exact parityMass_le_one K

/-- The exact cancellation for the initial actual Liouville pair 1,2. -/
theorem actual_first_pair_offDiagonal : dyadicOffDiagonal 1 2 = -2 := by
  rw [dyadicOffDiagonal_exact 1 2 (by omega)]
  norm_num [parityMass]

/-- Actual positive-prefix terminal weights, not an unweighted surrogate. -/
def twoLevelTerminalPacket (N q : ℕ) : ℝ :=
  coefficient q ^ 2 * weightedPairKernel N q q +
    coefficient (2 * q) ^ 2 * weightedPairKernel N (2 * q) (2 * q) +
    2 * coefficient q * coefficient (2 * q) *
      weightedPairKernel N q (2 * q)

/-- A complete source-preserving, terminal-weighted two-level cancellation.
The original terminal correction cancels between diagonal and both orientations.
This is 1/(2q), not an assertion that all other two-adic cores cancel. -/
theorem twoLevelTerminalPacket_exact (N q : ℕ)
    (hq : 1 ≤ q) (hN : 2 * q ≤ N) :
    twoLevelTerminalPacket N q = 1 / ((2 * q : ℕ) : ℝ) := by
  have hq2 : q ≤ 2 * q := by omega
  have h1 : weightedPairKernel N q q =
      1 / (q : ℝ) - 1 / (((N + 1 : ℕ) : ℝ)) := by
    simp [weightedPairKernel]
  have h2 : weightedPairKernel N (2 * q) (2 * q) =
      1 / (((2 * q : ℕ) : ℝ)) - 1 / (((N + 1 : ℕ) : ℝ)) := by
    simp [weightedPairKernel]
  have h12 : weightedPairKernel N q (2 * q) =
      1 / (((2 * q : ℕ) : ℝ)) - 1 / (((N + 1 : ℕ) : ℝ)) := by
    simp [weightedPairKernel, max_eq_right hq2]
  have hcoeffq := coefficient_square_one hq
  have hcoeff2 := coefficient_square_one (by omega : 1 ≤ 2 * q)
  have hcross : 2 * coefficient q * coefficient (2 * q) = -2 := by
    nlinarith [coefficient_doubling_product hq]
  have hq0 : (q : ℝ) ≠ 0 := by exact_mod_cast (by omega : q ≠ 0)
  have h2q0 : (((2 * q : ℕ) : ℝ)) ≠ 0 := by
    exact_mod_cast (by omega : 2 * q ≠ 0)
  have hN0 : (((N + 1 : ℕ) : ℝ)) ≠ 0 := by positivity
  unfold twoLevelTerminalPacket
  rw [h1, h2, h12, hcoeffq, hcoeff2, hcross]
  push_cast
  field_simp [hq0, h2q0, hN0]
  ring

end GRWTSK.NumberTheory.LiouvilleDyadicSignedChainGram
