/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointPutnamSparseGapYoung
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# All-positive-rate original Möbius gap sector from true Putnam counting

This file proves the DOUBLE FINITE SUM count and the rate bound,
consuming source_gram_young and gap_neighbor_card_le from the
companion source. There is NO premise requiring a rate bound or an
elliptic phase comparison: only actual interval integrals and
the existing original positive diagonal estimate are used.

The bound applies to all original off-diagonal pairs in the
selected additive-distance band, including all original squarefree
rough/rough, BOTH rough/matched orientations and matched/matched.
It DOES NOT control the complementary large-distance source.
-/

namespace GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII

/-- Core finite Putnam theorem: a symmetric sparse relation of
maximum degree 2|A| and the genuine source Gram-Young inequality
bounds the ABSOLUTE value of the COMPLETE signed ordered packet.
All original diagonals and orientations are retained. -/
theorem original_sparse_gap_abs_le
    (A : Finset ℕ) {T : ℝ} (hT : 0 ≤ T) :
    |endpointGapSetCross A T| ≤
      2 * (A.card : ℝ) * pickupDiagonal T := by
  classical
  let S : Finset ℕ := endpointIndex T
  let d : ℕ → ℝ := fun m =>
    moebiusReal m ^ 2 * pickupResponseGram T m m
  let k : ℕ → ℕ → ℝ := fun m n =>
    moebiusReal m * moebiusReal n * pickupResponseGram T m n
  let edge : ℕ → ℕ → Prop := fun m n =>
    m ≠ n ∧ Nat.dist m n ∈ A
  have hd (m : ℕ) (hm : m ∈ S) : 0 ≤ d m := by
    dsimp [d]
    exact mul_nonneg (sq_nonneg _)
      (pickupResponseGram_diag_nonneg hT m)
  have hyoung (m n : ℕ) (hm : m ∈ S) (hn : n ∈ S) :
      2 * |k m n| ≤ d m + d n := by
    exact source_gram_young hT hm hn
  have hsymm (m n : ℕ) : edge m n ↔ edge n m := by
    dsimp [edge]
    rw [Nat.dist_comm]
    exact ⟨fun h => ⟨Ne.symm h.1, h.2⟩,
      fun h => ⟨Ne.symm h.1, h.2⟩⟩
  have hdeg (m : ℕ) (hm : m ∈ S) :
      (∑ n ∈ S, if edge m n then d m else 0) ≤
        (2 * (A.card : ℝ)) * d m := by
    have hc : ((S.filter (edge m)).card : ℝ) ≤
        2 * (A.card : ℝ) := by
      exact_mod_cast gap_neighbor_card_le A S m
    calc
      (∑ n ∈ S, if edge m n then d m else 0) =
          ((S.filter (edge m)).card : ℝ) * d m := by
        rw [← Finset.sum_filter]
        simp [mul_comm]
      _ ≤ (2 * (A.card : ℝ)) * d m :=
        mul_le_mul_of_nonneg_right hc (hd m hm)
  have hsum_left :
      (∑ m ∈ S, ∑ n ∈ S, if edge m n then d m else 0) ≤
        2 * (A.card : ℝ) * ∑ m ∈ S, d m := by
    rw [Finset.mul_sum]
    apply Finset.sum_le_sum
    intro m hm
    exact hdeg m hm
  have hsum_right :
      (∑ m ∈ S, ∑ n ∈ S, if edge m n then d n else 0) ≤
        2 * (A.card : ℝ) * ∑ m ∈ S, d m := by
    calc
      (∑ m ∈ S, ∑ n ∈ S, if edge m n then d n else 0) =
          ∑ n ∈ S, ∑ m ∈ S, if edge m n then d n else 0 :=
        Finset.sum_comm
      _ = ∑ n ∈ S, ∑ m ∈ S, if edge n m then d n else 0 := by
        apply Finset.sum_congr rfl
        intro n hn
        apply Finset.sum_congr rfl
        intro m hm
        rw [propext (hsymm m n)]
      _ ≤ 2 * (A.card : ℝ) * ∑ n ∈ S, d n := hsum_left
  have habs :
      |∑ m ∈ S, ∑ n ∈ S, if edge m n then k m n else 0| ≤
        ∑ m ∈ S, ∑ n ∈ S, |if edge m n then k m n else 0| := by
    calc
      _ ≤ ∑ m ∈ S, |∑ n ∈ S, if edge m n then k m n else 0| :=
        Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ m ∈ S, ∑ n ∈ S,
            |if edge m n then k m n else 0| := by
        apply Finset.sum_le_sum
        intro m hm
        exact Finset.abs_sum_le_sum_abs _ _
  have hterm :
      (∑ m ∈ S, ∑ n ∈ S,
        2 * |if edge m n then k m n else 0|) ≤
      (∑ m ∈ S, ∑ n ∈ S,
        (if edge m n then d m else 0) +
        (if edge m n then d n else 0)) := by
    apply Finset.sum_le_sum
    intro m hm
    apply Finset.sum_le_sum
    intro n hn
    by_cases h : edge m n
    · simp only [if_pos h]
      exact hyoung m n hm hn
    · simp [h]
  have hbound :
      2 * |∑ m ∈ S, ∑ n ∈ S, if edge m n then k m n else 0| ≤
        4 * (A.card : ℝ) * ∑ m ∈ S, d m := by
    calc
      _ ≤ 2 * ∑ m ∈ S, ∑ n ∈ S,
            |if edge m n then k m n else 0| :=
        mul_le_mul_of_nonneg_left habs (by norm_num)
      _ = ∑ m ∈ S, ∑ n ∈ S,
            2 * |if edge m n then k m n else 0| := by
        simp only [Finset.mul_sum]
      _ ≤ ∑ m ∈ S, ∑ n ∈ S,
            (if edge m n then d m else 0) +
            (if edge m n then d n else 0) := hterm
      _ = (∑ m ∈ S, ∑ n ∈ S, if edge m n then d m else 0) +
            (∑ m ∈ S, ∑ n ∈ S, if edge m n then d n else 0) := by
        simp only [Finset.sum_add_distrib]
      _ ≤ (2 * (A.card : ℝ)) * ∑ m ∈ S, d m +
           (2 * (A.card : ℝ)) * ∑ m ∈ S, d m :=
        add_le_add hsum_left hsum_right
      _ = 4 * (A.card : ℝ) * ∑ m ∈ S, d m := by ring
  change |∑ m ∈ S, ∑ n ∈ S, if edge m n then k m n else 0| ≤
    2 * (A.card : ℝ) * ∑ m ∈ S, d m
  linarith [hbound]

/-- Existing source proposition PutnamGapEnergyBound has an actual
candidate proof without supplying it as an extra hypothesis. -/
theorem putnam_gap_energy_bound : PutnamGapEnergyBound := by
  intro _hGram _hNeighbour A T hT
  exact original_sparse_gap_abs_le A hT

/-- Original absolute signed endpoint gap packet, with only the
already established diagonal bound pickupDiagonal<=2*T^2. -/
theorem original_sparse_gap_quadratic
    (A : Finset ℕ) {T : ℝ} (hT : 0 ≤ T) :
    |endpointGapSetCross A T| ≤
      4 * (A.card : ℝ) * T ^ 2 := by
  calc
    |endpointGapSetCross A T| ≤
        2 * (A.card : ℝ) * pickupDiagonal T :=
      original_sparse_gap_abs_le A hT
    _ ≤ 2 * (A.card : ℝ) * (2 * T ^ 2) :=
      mul_le_mul_of_nonneg_left
        (pickupDiagonal_quadratic_bound hT).2 (by positivity)
    _ = _ := by ring

theorem putnam_gap_quadratic_bound : PutnamGapQuadraticBound := by
  intro _
  intro A T hT
  exact original_sparse_gap_quadratic A hT

/-- True area of the original selected gap band: the cardinality does
not exceed its defining exponential radius, even when that radius
is small or the source inventory is empty. -/
theorem putnam_gap_card_le (ε T : ℝ) :
    ((putnamRateGapSet ε T).card : ℝ) ≤
      Real.exp ((ε / 2) * T) := by
  have hc :
      (putnamRateGapSet ε T).card ≤
        ⌊Real.exp ((ε / 2) * T)⌋₊ := by
    simp [putnamRateGapSet, Finset.card_Icc]
  calc
    ((putnamRateGapSet ε T).card : ℝ) ≤
        (⌊Real.exp ((ε / 2) * T)⌋₊ : ℝ) := by exact_mod_cast hc
    _ ≤ Real.exp ((ε / 2) * T) :=
      Nat.floor_le (Real.exp_pos _).le

/-- The actual Putnam rate-gap sector is unconditionally bounded at
EVERY positive rate. The desired constant is explicit 32/epsilon².
The gap set depends on epsilon and therefore this does NOT constrain
the complementary long-distance packet. -/
theorem putnam_sparse_gap_all_rate (ε : ℝ) (hε : 0 < ε)
    {T : ℝ} (hT : 0 ≤ T) :
    |endpointGapSetCross (putnamRateGapSet ε T) T| ≤
      (32 / ε ^ 2) * Real.exp (ε * T) := by
  have hh : 0 < ε / 2 := by linarith
  have hpow :
      T ^ 2 ≤ (2 / (ε / 2) ^ 2) *
        Real.exp ((ε / 2) * T) := by
    have h := pow_le_factorial_mul_exp hh hT 2
    norm_num at h
    exact h
  have hεne : ε ≠ 0 := ne_of_gt hε
  have hε2 : 0 < ε ^ 2 := sq_pos_of_pos hε
  calc
    |endpointGapSetCross (putnamRateGapSet ε T) T| ≤
        4 * ((putnamRateGapSet ε T).card : ℝ) * T ^ 2 :=
      original_sparse_gap_quadratic _ hT
    _ ≤ 4 * Real.exp ((ε / 2) * T) * T ^ 2 := by
      gcongr
      exact putnam_gap_card_le ε T
    _ ≤ 4 * Real.exp ((ε / 2) * T) *
          ((2 / (ε / 2) ^ 2) * Real.exp ((ε / 2) * T)) := by
      gcongr
    _ = (32 / ε ^ 2) * Real.exp (ε * T) := by
      rw [show ε * T = (ε / 2) * T + (ε / 2) * T by ring,
        Real.exp_add]
      field_simp
      ring

/-- The EXACT original source packet restricted to surviving squarefree
indices at each endpoint of an ordered sparse additive gap. No prime
tag, rough classification or mixed orientation is replaced. -/
def squarefreeSparseGapPacket (A : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ Nat.dist m n ∈ A ∧ Squarefree m ∧ Squarefree n then
      GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison.sourceKernel T m n
    else 0

/-- Non-squarefree original indices vanish in the Möbius coefficient.
Thus the entire original signed gap packet is already exactly the
surviving squarefree pair packet, retaining BOTH ordered orientations. -/
theorem endpointGapSetCross_eq_squarefree_sparse
    (A : Finset ℕ) (T : ℝ) :
    endpointGapSetCross A T = squarefreeSparseGapPacket A T := by
  classical
  unfold endpointGapSetCross squarefreeSparseGapPacket
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hpair : m ≠ n ∧ Nat.dist m n ∈ A
  · by_cases hsq : Squarefree m ∧ Squarefree n
    · have hfull :
          m ≠ n ∧ Nat.dist m n ∈ A ∧ Squarefree m ∧ Squarefree n :=
        ⟨hpair.1, hpair.2, hsq.1, hsq.2⟩
      simp only [if_pos hpair, if_pos hfull]
      rfl
    · have hfull :
          ¬ (m ≠ n ∧ Nat.dist m n ∈ A ∧
              Squarefree m ∧ Squarefree n) := by
        intro h
        exact hsq ⟨h.2.2.1, h.2.2.2⟩
      have hzero :=
        GRWTSK.NumberTheory.Moebius.EllipticSquarefulCancellation.sourceKernel_eq_zero_of_not_both_squarefree
          T m n hsq
      simp only [if_pos hpair, if_neg hfull]
      simpa only [GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison.sourceKernel] using hzero
  · have hfull :
        ¬ (m ≠ n ∧ Nat.dist m n ∈ A ∧
            Squarefree m ∧ Squarefree n) := by
      intro h
      exact hpair ⟨h.1, h.2.1⟩
    simp [hpair, hfull]

/-- The all-positive-rate result applies to the TRUE surviving
squarefree original Möbius pairs in this expanding gap band.
This does not cover the complementary large-gap dense original source. -/
theorem squarefree_sparse_gap_all_positive_rates
    (ε : ℝ) (hε : 0 < ε) {T : ℝ} (hT : 0 ≤ T) :
    |squarefreeSparseGapPacket (putnamRateGapSet ε T) T| ≤
      (32 / ε ^ 2) * Real.exp (ε * T) := by
  rw [← endpointGapSetCross_eq_squarefree_sparse]
  exact putnam_sparse_gap_all_rate ε hε hT

/-- Discharge the existing research proposition with no arithmetical
cancellation assumption and no selection of a favorable scale set. -/
theorem putnam_rate_gap_all_rate : PutnamRateGapSectorAllRate := by
  intro ε hε
  refine ⟨32 / ε ^ 2, 0, by positivity, le_refl _, ?_⟩
  intro T hT
  exact putnam_sparse_gap_all_rate ε hε hT

end GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
