/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDenseSquarefulZeroPacket
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleDoubleAbelAnalyticGates
import Mathlib

/-!
# An independently sign-controlled, growing prime-pair packet

For each odd prime p with 2p inside the literal endpoint inventory and
the distance p excluded from the dyadic sparse-gap set, the two ordered
source terms (p,2p) and (2p,p) are nonpositive. This follows from
mu(2p)=-mu(p) and the nonnegative original causal response Gram.

The packet has zero *upper* cost, for EVERY T and hence at all positive
rates. It is not a bound on its remaining dense signed complement.
There are no squarefree-surrogate coefficients or independent-sign models.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusDenseSignedGapComplementFrontier
open GRWTSK.NumberTheory.MoebiusDenseSquarefulZeroPacket
open GRWTSK.NumberTheory.MoebiusEndpointSparseGapAllRate
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

namespace GRWTSK.NumberTheory.MoebiusOddPrimeDoublingNegativePacket

/-- Precisely the odd primes whose (p,2p) pair exists in the original
inventory and is not among the selected sparse additive distances. -/
def oddPrimeDoublingIndices (A : Finset ℕ) (T : ℝ) : Finset ℕ :=
  (endpointIndex T).filter (fun p =>
    Nat.Prime p ∧ ¬ 2 ∣ p ∧ 2 * p ∈ endpointIndex T ∧ p ∉ A)

/-- Both original ordered orientations; neither is treated as a diagonal
term, and the kernel retains physical-time causal birth support. -/
def oddPrimeDoublingPacket (A : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ p ∈ oddPrimeDoublingIndices A T,
    moebiusReal p * moebiusReal (2 * p) *
       pickupResponseGram T p (2 * p) +
    moebiusReal (2 * p) * moebiusReal p *
       pickupResponseGram T (2 * p) p

/-- Distinct primes p and 2p have the exact opposite actual Möbius
sign, with no squarefree approximation and no hypothesis on T. -/
theorem moebius_two_mul_odd_prime
    (p : ℕ) (hp : Nat.Prime p) (hodd : ¬ 2 ∣ p) :
    moebiusReal (2 * p) = -moebiusReal p := by
  exact moebiusReal_prime_mul_of_not_dvd 2 p Nat.prime_two hodd

/-- The physical-time Gram is nonnegative for every pair of positive
source indices at every nonnegative horizon. -/
theorem pickupResponseGram_nonneg
    (T : ℝ) (hT : 0 ≤ T) (m n : ℕ) (hm : 0 < m) (hn : 0 < n) :
    0 ≤ pickupResponseGram T m n := by
  unfold pickupResponseGram
  apply intervalIntegral.integral_nonneg_of_forall hT
  intro u
  have hmu : 0 ≤ pickupResponse m u :=
    GRWTSK.NumberTheory.LiouvilleDoubleAbelAnalyticGates.pickupResponse_nonneg_positive
      m (by omega) u
  have hnu : 0 ≤ pickupResponse n u :=
    GRWTSK.NumberTheory.LiouvilleDoubleAbelAnalyticGates.pickupResponse_nonneg_positive
      n (by omega) u
  exact mul_nonneg hmu hnu

/-- Exact causal kernel symmetry is a pointwise commutation in the
original interval integral; no stationarity or kernel approximation. -/
theorem pickupResponseGram_symmetric (T : ℝ) (m n : ℕ) :
    pickupResponseGram T m n = pickupResponseGram T n m := by
  unfold pickupResponseGram
  apply intervalIntegral.integral_congr
  intro u hu
  ring

/-- Every chosen nonzero-coefficient ordered prime-pair packet is
nonpositive, uniformly for all T>=0, hence its upper allowance is 0. -/
theorem oddPrimeDoublingPacket_nonpos (A : Finset ℕ)
    (T : ℝ) (hT : 0 ≤ T) :
    oddPrimeDoublingPacket A T ≤ 0 := by
  unfold oddPrimeDoublingPacket
  apply Finset.sum_nonpos
  intro p hp
  have hmem := (Finset.mem_filter.mp hp).2
  have hprime : Nat.Prime p := hmem.1
  have hodd : ¬ 2 ∣ p := hmem.2.1
  have hp0 : 0 < p := hprime.pos
  have hp2 : 0 < 2 * p := by omega
  have hK := pickupResponseGram_nonneg T hT p (2 * p) hp0 hp2
  have hsym := pickupResponseGram_symmetric T (2 * p) p
  rw [moebius_two_mul_odd_prime p hprime hodd, hsym]
  nlinarith [mul_nonneg (sq_nonneg (moebiusReal p)) hK]

/-- A genuine source-specific signed all-positive-rate saving on this
prime-indexed nonzero packet, with rate-independent zero upper allowance. -/
theorem oddPrimeDoublingPacket_allRate (A : ℝ → Finset ℕ) :
    GRWTSK.NumberTheory.LiouvilleRoughSignedConsumerTransfer.EventualAllRateUpper
      (fun T => oddPrimeDoublingPacket (A T) T) := by
  intro ε hε
  refine ⟨0, 0, le_rfl, le_rfl, ?_⟩
  intro T hT
  have hneg := oddPrimeDoublingPacket_nonpos (A T) T hT
  simpa using hneg

/-- The signed dense complement after paying the negative prime packet.
Every other original ordered pair is retained in this difference, rather
than assumed small or silently discarded. -/
def remainingDenseSignedPacket (A : Finset ℕ) (T : ℝ) : ℝ :=
  signedGapComplement A T - oddPrimeDoublingPacket A T

theorem denseComplement_eq_negativePacket_add_remainder
    (A : Finset ℕ) (T : ℝ) :
    signedGapComplement A T =
      oddPrimeDoublingPacket A T + remainingDenseSignedPacket A T := by
  unfold remainingDenseSignedPacket
  ring

/-- Source-exact comparison with the inherited quarter-unit endpoint
error; the nonpositive prime packet is genuinely dropped from an
UPPER bound, while every remaining signed pair stays explicit. -/
theorem endpointSum_le_sparse_and_remaining
    (A : Finset ℕ) (T : ℝ) (hT : 0 ≤ T) :
    endpointSum T ≤
      |endpointGapSetCross A T| +
        remainingDenseSignedPacket A T + 1 / 4 := by
  have hbase := endpointSum_le_sparse_and_signedComplement A T hT
  rw [denseComplement_eq_negativePacket_add_remainder] at hbase
  have hp := oddPrimeDoublingPacket_nonpos A T hT
  linarith

/-- Specialized to the fixed dyadic family, with no rate-dependent
selection, cutoff loss, or omitted quarter-unit error. -/
theorem endpointSum_le_dyadic_remaining (T : ℝ) (hT : 0 ≤ T) :
    endpointSum T ≤
      |endpointGapSetCross (dyadicSparseGapSchedule T) T| +
        remainingDenseSignedPacket (dyadicSparseGapSchedule T) T +
          1 / 4 :=
  endpointSum_le_sparse_and_remaining (dyadicSparseGapSchedule T) T hT

end GRWTSK.NumberTheory.MoebiusOddPrimeDoublingNegativePacket
