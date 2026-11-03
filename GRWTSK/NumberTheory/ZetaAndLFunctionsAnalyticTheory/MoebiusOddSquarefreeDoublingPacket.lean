/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusOddPrimeDoublingNegativePacket
import Mathlib

/-!
# Odd squarefree-to-double signed dense packet and explicit remainder

Every selected odd squarefree n has coprime 2 and n, hence the original
Mobius factor changes sign on doubling. Each unordered edge {n,2n} is
selected at most once: its odd member is unique. Both ordered orientations
are retained. The rest is an actual finite pair sum, not an unspecified
correlation. Original diagonal and quarter-unit endpoint allowance unchanged.
Lean elaboration and kernel replay intentionally NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.MoebiusEndpointSparseGapAllRate
open GRWTSK.NumberTheory.MoebiusDenseSignedGapComplementFrontier
open GRWTSK.NumberTheory.MoebiusDenseSquarefulZeroPacket
open GRWTSK.NumberTheory.MoebiusOddPrimeDoublingNegativePacket
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

namespace GRWTSK.NumberTheory.MoebiusOddSquarefreeDoublingPacket

def oddSquarefreeDoublingIndices (A : Finset ℕ) (T : ℝ) : Finset ℕ :=
  (endpointIndex T).filter (fun n =>
    Squarefree n ∧ ¬ 2 ∣ n ∧ 2 * n ∈ endpointIndex T ∧ n ∉ A)

def selectedDoublingPair (A : Finset ℕ) (T : ℝ) (m n : ℕ) : Prop :=
  ∃ k ∈ oddSquarefreeDoublingIndices A T,
    (m = k ∧ n = 2 * k) ∨ (m = 2 * k ∧ n = k)

def oddSquarefreeDoublingPacket (A : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ n ∈ oddSquarefreeDoublingIndices A T,
    (moebiusReal n * moebiusReal (2 * n) *
      pickupResponseGram T n (2 * n) +
     moebiusReal (2 * n) * moebiusReal n *
      pickupResponseGram T (2 * n) n)

/-- There is no squarefree proxy: the actual Möbius source changes
sign when an odd integer is doubled, even for composite squarefree n. -/
theorem mobius_double_odd (n : ℕ) (hodd : ¬ 2 ∣ n) :
    moebiusReal (2 * n) = -moebiusReal n :=
  moebiusReal_prime_mul_of_not_dvd 2 n Nat.prime_two hodd

theorem oddSquarefreeDoublingPacket_nonpos (A : Finset ℕ) (T : ℝ)
    (hT : 0 ≤ T) :
    oddSquarefreeDoublingPacket A T ≤ 0 := by
  unfold oddSquarefreeDoublingPacket
  apply Finset.sum_nonpos
  intro n hn
  have hh := (Finset.mem_filter.mp hn).2
  have hodd : ¬ 2 ∣ n := hh.2.1
  have hn0 : 0 < n := (Finset.mem_Icc.mp (Finset.mem_filter.mp hn).1).1
  have h2n : 0 < 2 * n := by omega
  have hK := pickupResponseGram_nonneg T hT n (2 * n) hn0 h2n
  have hsym := pickupResponseGram_symmetric T (2 * n) n
  rw [mobius_double_odd n hodd, hsym]
  nlinarith [mul_nonneg (sq_nonneg (moebiusReal n)) hK]

/-- The exact original ordered remainder is a finite sum over all dense
squarefree pairs except the explicitly chosen doubled edges. -/
def remainingSquarefreePairSum (A : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ squarefreeEndpointIndex T,
    ∑ n ∈ squarefreeEndpointIndex T,
      if denseGapPair A m n ∧ ¬ selectedDoublingPair A T m n then
        moebiusReal m * moebiusReal n * pickupResponseGram T m n
      else 0

/-- The odd member uniquely determines a doubling edge, so the
selected oriented edge cannot be counted twice. -/
theorem doubling_selected_injective
    (a b : ℕ) (ha : ¬2 ∣ a) (hb : ¬2 ∣ b)
    (h : (a = b ∧ 2 * a = 2 * b) ∨
         (a = 2 * b ∧ 2 * a = b)) : a = b := by
  rcases h with h | h
  · exact h.1
  · have heven : 2 ∣ a := by
      rw [h.1]
      exact dvd_mul_right 2 b
    exact False.elim (ha heven)

/-- The finite oriented-pair bijection to the explicitly filtered
squarefree remainder. This is a named *open* proposition until its
Finset reindexing proof has been elaborated. -/
def ExactSquarefreePairPartition : Prop :=
  ∀ (A : Finset ℕ) (T : ℝ),
    denseSquarefreeCross A T =
      oddSquarefreeDoublingPacket A T +
        remainingSquarefreePairSum A T

/-- Unconditional exact signed difference, preserving every term of the
original dense complement even before the filtered-pair bijection. -/
def completeSignedRemainder (A : Finset ℕ) (T : ℝ) : ℝ :=
  signedGapComplement A T - oddSquarefreeDoublingPacket A T

theorem signedComplement_eq_packet_add_completeRemainder
    (A : Finset ℕ) (T : ℝ) :
    signedGapComplement A T =
      oddSquarefreeDoublingPacket A T + completeSignedRemainder A T := by
  unfold completeSignedRemainder
  ring

/-- Under the exact and explicitly open finite-pair reindexing, the
complete remainder agrees with the enumerated squarefree pairs. -/
theorem completeRemainder_eq_squarefreePairSum
    (hpartition : ExactSquarefreePairPartition)
    (A : Finset ℕ) (T : ℝ) :
    completeSignedRemainder A T = remainingSquarefreePairSum A T := by
  have hh := hpartition A T
  rw [← signedGapComplement_eq_squarefreeCross A T] at hh
  unfold completeSignedRemainder
  linarith

/-- Unconditional sign saving with the exact, unestimated complete
signed remainder and the original one-quarter endpoint error. -/
theorem endpointSum_le_doubling_completeRemainder
    (A : Finset ℕ) (T : ℝ) (hT : 0 ≤ T) :
    endpointSum T ≤
      |endpointGapSetCross A T| +
        completeSignedRemainder A T + 1 / 4 := by
  have h := endpointSum_le_sparse_and_signedComplement A T hT
  rw [signedComplement_eq_packet_add_completeRemainder] at h
  have hn := oddSquarefreeDoublingPacket_nonpos A T hT
  linarith

/-- After the finite-pair bijection is discharged, this gives the
intended source-exact filtered squarefree remainder consumer. -/
theorem endpointSum_le_filteredSquarefreeRemainder
    (hpartition : ExactSquarefreePairPartition)
    (A : Finset ℕ) (T : ℝ) (hT : 0 ≤ T) :
    endpointSum T ≤
      |endpointGapSetCross A T| +
        remainingSquarefreePairSum A T + 1 / 4 := by
  simpa only [completeRemainder_eq_squarefreePairSum hpartition A T] using
    endpointSum_le_doubling_completeRemainder A T hT

end GRWTSK.NumberTheory.MoebiusOddSquarefreeDoublingPacket
