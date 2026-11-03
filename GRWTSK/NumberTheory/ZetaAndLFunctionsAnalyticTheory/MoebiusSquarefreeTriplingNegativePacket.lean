/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSquarefreeOrientedEdgePartition
import Mathlib

/-!
# A second disjoint actual-Mobius negative edge family: (n,3n)

Take odd squarefree n>1 with 3 not dividing n. Since gcd(n,3)=1,
mu(3n)=-mu(n), so the two ordered causal Gram contributions
equal -2 K_T(n,3n) <= 0. Their ratio 3 makes these edges disjoint
from every (k,2k) edge. Their gap 2n is not a dyadic power.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusOddSquarefreeDoublingPacket
open GRWTSK.NumberTheory.MoebiusOddPrimeDoublingNegativePacket
open GRWTSK.NumberTheory.MoebiusDenseSignedGapComplementFrontier
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

namespace GRWTSK.NumberTheory.MoebiusSquarefreeTriplingNegativePacket

def triplingIndices (A : Finset ℕ) (T : ℝ) : Finset ℕ :=
  (endpointIndex T).filter (fun n =>
    1 < n ∧ Squarefree n ∧ ¬ 2 ∣ n ∧ ¬ 3 ∣ n ∧
      3 * n ∈ endpointIndex T ∧ 2 * n ∉ A)

def triplingPacket (A : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ n ∈ triplingIndices A T,
    (moebiusReal n * moebiusReal (3 * n) *
      pickupResponseGram T n (3 * n) +
     moebiusReal (3 * n) * moebiusReal n *
      pickupResponseGram T (3 * n) n)

/-- Actual Mobius, not a Liouville or squarefree replacement. -/
theorem moebius_three_mul_of_coprime
    (n : ℕ) (h3 : ¬3 ∣ n) :
    moebiusReal (3 * n) = -moebiusReal n :=
  moebiusReal_prime_mul_of_not_dvd 3 n Nat.prime_three h3

theorem triplingPacket_nonpos
    (A : Finset ℕ) (T : ℝ) (hT : 0 ≤ T) :
    triplingPacket A T ≤ 0 := by
  unfold triplingPacket
  apply Finset.sum_nonpos
  intro n hn
  have h := (Finset.mem_filter.mp hn).2
  have hnpos : 0 < n := by omega
  have h3pos : 0 < 3 * n := by omega
  have hk := pickupResponseGram_nonneg T hT n (3 * n) hnpos h3pos
  have hsym := pickupResponseGram_symmetric T (3 * n) n
  rw [moebius_three_mul_of_coprime n h.2.2.2.1, hsym]
  nlinarith [mul_nonneg (sq_nonneg (moebiusReal n)) hk]

/-- A ratio-three edge cannot be a ratio-two edge, in either ordered
orientation, when the smaller endpoints are positive. -/
theorem tripling_edge_disjoint_doubling
    (n k : ℕ) (hn : 0 < n) (hk : 0 < k) :
    ¬ ((n = k ∧ 3 * n = 2 * k) ∨
        (n = 2 * k ∧ 3 * n = k) ∨
        (3 * n = k ∧ n = 2 * k) ∨
        (3 * n = 2 * k ∧ n = k)) := by
  omega

/-- Exact signed leftover after the two disjoint negative families,
without claiming its all-positive-rate upper bound. -/
def remainderAfterDoubleAndTriple (A : Finset ℕ) (T : ℝ) : ℝ :=
  signedGapComplement A T -
    oddSquarefreeDoublingPacket A T - triplingPacket A T

theorem signedComplement_eq_twoNegative_add_remainder
    (A : Finset ℕ) (T : ℝ) :
    signedGapComplement A T =
      oddSquarefreeDoublingPacket A T +
        triplingPacket A T + remainderAfterDoubleAndTriple A T := by
  unfold remainderAfterDoubleAndTriple
  ring

theorem endpointSum_le_doubleTriple_remainder
    (A : Finset ℕ) (T : ℝ) (hT : 0 ≤ T) :
    endpointSum T ≤
      |endpointGapSetCross A T| +
        remainderAfterDoubleAndTriple A T + 1 / 4 := by
  have hh := endpointSum_le_sparse_and_signedComplement A T hT
  rw [signedComplement_eq_twoNegative_add_remainder] at hh
  have htwo := oddSquarefreeDoublingPacket_nonpos A T hT
  have hthree := triplingPacket_nonpos A T hT
  linarith

end GRWTSK.NumberTheory.MoebiusSquarefreeTriplingNegativePacket
