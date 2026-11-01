/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointDenseLongGapSource
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# All-positive-rate multiplicative-ratio sector of the original Möbius endpoint

The additive Putnam theorem already pays every pair with one of a
subexponential number of selected additive distances.  Prime-delay and
multiplicative-orbit arguments single out a different sparse graph: pairs for
which one index is a selected positive integer multiple of the other.

For each selected ratio q and each source vertex m there is at most one
outgoing neighbour q*m and at most one incoming neighbour m/q.  The same
literal response-Gram Young inequality therefore pays the complete signed
ordered packet by twice the number of selected ratios times the original
Möbius diagonal energy.

At the rate-dependent set q <= exp(epsilon*T/2), this gives the same explicit
32/epsilon^2 all-positive-rate bound as the additive gap sector.  In
particular it pays, without any random model or replacement coefficient, every
actual prime-delay edge p*m in that growing range, as well as every composite
ratio edge.

We then remove only the ratio edges which were not already in the paid
additive-gap sector.  The resulting direct finite packet contains exactly the
ordered pairs which are both additively separated and not related by a selected
small integral quotient.  Its all-positive-rate upper bound on a fixed scale
set is equivalent to the original RH-facing pickupCross bound on that set.

This is a genuine unconditional source-sector estimate.  It does not estimate
the remaining dense packet and does not prove RH.
-/

namespace GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- Complete original signed packet selected by an arbitrary relation on the
endpoint inventory.  This is an auxiliary source interface; the coefficients,
response Gram and ordered orientations are unchanged. -/
def endpointRelationCross (edge : ℕ → ℕ → Prop) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if edge m n then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n
    else 0

/-- A symmetric relation of maximum degree D costs at most D times the actual
Möbius diagonal energy.  This abstracts the finite Putnam double count without
changing its source. -/
theorem original_symmetric_relation_abs_le
    (edge : ℕ → ℕ → Prop) (D : ℕ) {T : ℝ} (hT : 0 ≤ T)
    (hsymm : ∀ m n, edge m n ↔ edge n m)
    (hdeg : ∀ m ∈ endpointIndex T,
      ((endpointIndex T).filter (edge m)).card ≤ D) :
    |endpointRelationCross edge T| ≤ (D : ℝ) * pickupDiagonal T := by
  classical
  let S : Finset ℕ := endpointIndex T
  let d : ℕ → ℝ := fun m =>
    moebiusReal m ^ 2 * pickupResponseGram T m m
  let k : ℕ → ℕ → ℝ := fun m n =>
    moebiusReal m * moebiusReal n * pickupResponseGram T m n
  have hd (m : ℕ) (hm : m ∈ S) : 0 ≤ d m := by
    dsimp [d]
    exact mul_nonneg (sq_nonneg _)
      (pickupResponseGram_diag_nonneg hT m)
  have hyoung (m n : ℕ) (hm : m ∈ S) (hn : n ∈ S) :
      2 * |k m n| ≤ d m + d n := by
    exact source_gram_young hT hm hn
  have hsum_left :
      (∑ m ∈ S, ∑ n ∈ S, if edge m n then d m else 0) ≤
        (D : ℝ) * ∑ m ∈ S, d m := by
    rw [Finset.mul_sum]
    apply Finset.sum_le_sum
    intro m hm
    have hc : (((S.filter (edge m)).card : ℕ) : ℝ) ≤ D := by
      exact_mod_cast hdeg m hm
    calc
      (∑ n ∈ S, if edge m n then d m else 0) =
          ((S.filter (edge m)).card : ℝ) * d m := by
        rw [← Finset.sum_filter]
        simp [mul_comm]
      _ ≤ (D : ℝ) * d m :=
        mul_le_mul_of_nonneg_right hc (hd m hm)
  have hsum_right :
      (∑ m ∈ S, ∑ n ∈ S, if edge m n then d n else 0) ≤
        (D : ℝ) * ∑ m ∈ S, d m := by
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
      _ ≤ (D : ℝ) * ∑ n ∈ S, d n := hsum_left
  have habs :
      |∑ m ∈ S, ∑ n ∈ S, if edge m n then k m n else 0| ≤
        ∑ m ∈ S, ∑ n ∈ S,
          |if edge m n then k m n else 0| := by
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
        2 * (D : ℝ) * ∑ m ∈ S, d m := by
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
      _ ≤ (D : ℝ) * ∑ m ∈ S, d m +
           (D : ℝ) * ∑ m ∈ S, d m :=
        add_le_add hsum_left hsum_right
      _ = 2 * (D : ℝ) * ∑ m ∈ S, d m := by ring
  change |∑ m ∈ S, ∑ n ∈ S, if edge m n then k m n else 0| ≤
    (D : ℝ) * ∑ m ∈ S, d m
  linarith [hbound]

/-- One endpoint index is a selected positive integer multiple of the other.
The diagonal is explicitly excluded; q=1 is therefore harmless. -/
def smallRatioEdge (Q : Finset ℕ) (m n : ℕ) : Prop :=
  m ≠ n ∧ ∃ q ∈ Q, n = q * m ∨ m = q * n

/-- Complete ordered packet on selected multiplicative-ratio edges. -/
def endpointRatioSetCross (Q : Finset ℕ) (T : ℝ) : ℝ :=
  endpointRelationCross (smallRatioEdge Q) T

/-- The selected ratio relation is symmetric. -/
theorem smallRatioEdge_symm (Q : Finset ℕ) (m n : ℕ) :
    smallRatioEdge Q m n ↔ smallRatioEdge Q n m := by
  constructor
  · rintro ⟨hmn, q, hq, hleft | hright⟩
    · exact ⟨hmn.symm, q, hq, Or.inr hleft⟩
    · exact ⟨hmn.symm, q, hq, Or.inl hright⟩
  · rintro ⟨hnm, q, hq, hleft | hright⟩
    · exact ⟨hnm.symm, q, hq, Or.inr hleft⟩
    · exact ⟨hnm.symm, q, hq, Or.inl hright⟩

/-- Each positive selected quotient gives at most one outgoing multiple and at
most one incoming divisor of a fixed endpoint index. -/
theorem ratio_neighbor_card_le
    (Q S : Finset ℕ)
    (hQ : ∀ q ∈ Q, 0 < q) (m : ℕ) :
    (S.filter fun n => smallRatioEdge Q m n).card ≤
      2 * Q.card := by
  classical
  let L : Finset ℕ := Q.image (fun q => q * m)
  let R : Finset ℕ := Q.image (fun q => m / q)
  have hsubset :
      (S.filter fun n => smallRatioEdge Q m n) ⊆ L ∪ R := by
    intro n hn
    rcases Finset.mem_filter.mp hn with ⟨_hnS, hne, q, hqQ, hrel⟩
    rcases hrel with hmul | hdiv
    · apply Finset.mem_union.mpr
      left
      exact Finset.mem_image.mpr ⟨q, hqQ, hmul.symm⟩
    · apply Finset.mem_union.mpr
      right
      apply Finset.mem_image.mpr
      refine ⟨q, hqQ, ?_⟩
      rw [hdiv, Nat.mul_div_left n (hQ q hqQ)]
  calc
    (S.filter fun n => smallRatioEdge Q m n).card ≤
        (L ∪ R).card := Finset.card_le_card hsubset
    _ ≤ L.card + R.card := Finset.card_union_le _ _
    _ ≤ Q.card + Q.card :=
      add_le_add Finset.card_image_le Finset.card_image_le
    _ = 2 * Q.card := by omega

/-- The complete selected multiplicative-ratio packet is paid by the original
Möbius diagonal. -/
theorem original_sparse_ratio_abs_le
    (Q : Finset ℕ) (hQ : ∀ q ∈ Q, 0 < q)
    {T : ℝ} (hT : 0 ≤ T) :
    |endpointRatioSetCross Q T| ≤
      2 * (Q.card : ℝ) * pickupDiagonal T := by
  have hdeg : ∀ m ∈ endpointIndex T,
      ((endpointIndex T).filter (smallRatioEdge Q m)).card ≤
        2 * Q.card := by
    intro m hm
    exact ratio_neighbor_card_le Q (endpointIndex T) hQ m
  simpa [endpointRatioSetCross] using
    original_symmetric_relation_abs_le
      (smallRatioEdge Q) (2 * Q.card) hT
      (smallRatioEdge_symm Q) hdeg

/-- Numerical consequence using the existing diagonal estimate. -/
theorem original_sparse_ratio_quadratic
    (Q : Finset ℕ) (hQ : ∀ q ∈ Q, 0 < q)
    {T : ℝ} (hT : 0 ≤ T) :
    |endpointRatioSetCross Q T| ≤
      4 * (Q.card : ℝ) * T ^ 2 := by
  calc
    |endpointRatioSetCross Q T| ≤
        2 * (Q.card : ℝ) * pickupDiagonal T :=
      original_sparse_ratio_abs_le Q hQ hT
    _ ≤ 2 * (Q.card : ℝ) * (2 * T ^ 2) :=
      mul_le_mul_of_nonneg_left
        (pickupDiagonal_quadratic_bound hT).2 (by positivity)
    _ = _ := by ring

/-- The rate-gap set consists only of positive quotients. -/
theorem putnamRateGapSet_pos (ε T : ℝ) :
    ∀ q ∈ putnamRateGapSet ε T, 0 < q := by
  intro q hq
  simpa using (Finset.mem_Icc.mp hq).1

/-- Every actual integer-ratio edge q*m with q in the growing range
q <= exp(epsilon*T/2) is unconditionally all-positive-rate. -/
theorem putnam_sparse_ratio_all_rate
    (ε : ℝ) (hε : 0 < ε) {T : ℝ} (hT : 0 ≤ T) :
    |endpointRatioSetCross (putnamRateGapSet ε T) T| ≤
      (32 / ε ^ 2) * Real.exp (ε * T) := by
  have hh : 0 < ε / 2 := by linarith
  have hεne : ε ≠ 0 := ne_of_gt hε
  have hε2 : 0 < ε ^ 2 := sq_pos_of_pos hε
  have hpow :
      T ^ 2 ≤ (2 / (ε / 2) ^ 2) *
        Real.exp ((ε / 2) * T) := by
    have h := pow_le_factorial_mul_exp hh hT 2
    norm_num at h
    exact h
  calc
    |endpointRatioSetCross (putnamRateGapSet ε T) T| ≤
        4 * ((putnamRateGapSet ε T).card : ℝ) * T ^ 2 :=
      original_sparse_ratio_quadratic _
        (putnamRateGapSet_pos ε T) hT
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

/-- Selected ratio edges which were not already included in the selected
additive-gap sector.  The two sectors are therefore disjoint. -/
def ratioOutsideGapEdge (Q : Finset ℕ) (m n : ℕ) : Prop :=
  smallRatioEdge Q m n ∧ Nat.dist m n ∉ Q

/-- Complete ordered small-ratio packet outside the paid additive gap set. -/
def endpointRatioOutsideGapCross (Q : Finset ℕ) (T : ℝ) : ℝ :=
  endpointRelationCross (ratioOutsideGapEdge Q) T

/-- The disjoint ratio relation is symmetric. -/
theorem ratioOutsideGapEdge_symm (Q : Finset ℕ) (m n : ℕ) :
    ratioOutsideGapEdge Q m n ↔ ratioOutsideGapEdge Q n m := by
  unfold ratioOutsideGapEdge
  rw [smallRatioEdge_symm Q m n, Nat.dist_comm]

/-- Removing additive-gap edges cannot increase the ratio graph degree. -/
theorem ratioOutsideGap_neighbor_card_le
    (Q S : Finset ℕ)
    (hQ : ∀ q ∈ Q, 0 < q) (m : ℕ) :
    (S.filter fun n => ratioOutsideGapEdge Q m n).card ≤
      2 * Q.card := by
  calc
    (S.filter fun n => ratioOutsideGapEdge Q m n).card ≤
        (S.filter fun n => smallRatioEdge Q m n).card := by
      apply Finset.card_le_card
      intro n hn
      have h := Finset.mem_filter.mp hn
      exact Finset.mem_filter.mpr ⟨h.1, h.2.1⟩
    _ ≤ 2 * Q.card := ratio_neighbor_card_le Q S hQ m

/-- The disjoint small-ratio sector has the same unconditional all-rate bound. -/
theorem putnam_ratio_outside_gap_all_rate
    (ε : ℝ) (hε : 0 < ε) {T : ℝ} (hT : 0 ≤ T) :
    |endpointRatioOutsideGapCross (putnamRateGapSet ε T) T| ≤
      (32 / ε ^ 2) * Real.exp (ε * T) := by
  have hdeg : ∀ m ∈ endpointIndex T,
      ((endpointIndex T).filter
        (ratioOutsideGapEdge (putnamRateGapSet ε T) m)).card ≤
          2 * (putnamRateGapSet ε T).card := by
    intro m hm
    exact ratioOutsideGap_neighbor_card_le
      (putnamRateGapSet ε T) (endpointIndex T)
      (putnamRateGapSet_pos ε T) m
  have hdiag :
      |endpointRatioOutsideGapCross (putnamRateGapSet ε T) T| ≤
        2 * ((putnamRateGapSet ε T).card : ℝ) * pickupDiagonal T := by
    simpa [endpointRatioOutsideGapCross] using
      original_symmetric_relation_abs_le
        (ratioOutsideGapEdge (putnamRateGapSet ε T))
        (2 * (putnamRateGapSet ε T).card) hT
        (ratioOutsideGapEdge_symm (putnamRateGapSet ε T)) hdeg
  have hquad :
      |endpointRatioOutsideGapCross (putnamRateGapSet ε T) T| ≤
        4 * ((putnamRateGapSet ε T).card : ℝ) * T ^ 2 := by
    calc
      _ ≤ 2 * ((putnamRateGapSet ε T).card : ℝ) * pickupDiagonal T := hdiag
      _ ≤ 2 * ((putnamRateGapSet ε T).card : ℝ) * (2 * T ^ 2) :=
        mul_le_mul_of_nonneg_left
          (pickupDiagonal_quadratic_bound hT).2 (by positivity)
      _ = _ := by ring
  have hh : 0 < ε / 2 := by linarith
  have hεne : ε ≠ 0 := ne_of_gt hε
  have hε2 : 0 < ε ^ 2 := sq_pos_of_pos hε
  have hpow :
      T ^ 2 ≤ (2 / (ε / 2) ^ 2) *
        Real.exp ((ε / 2) * T) := by
    have h := pow_le_factorial_mul_exp hh hT 2
    norm_num at h
    exact h
  calc
    |endpointRatioOutsideGapCross (putnamRateGapSet ε T) T| ≤
        4 * ((putnamRateGapSet ε T).card : ℝ) * T ^ 2 := hquad
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

/-- Direct remaining packet after removing both the additive gap sector and the
small-ratio sector outside it.  Every surviving ordered pair is additively far
and is not a selected positive-integer multiple in either orientation. -/
def endpointDenseAddMulCoreCross (Q : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ Nat.dist m n ∉ Q ∧
        ¬ (∃ q ∈ Q, n = q * m ∨ m = q * n) then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n
    else 0

/-- Exact finite partition of the original pickupCross into the additive gap
sector, the disjoint multiplicative-ratio sector, and the direct dense core. -/
theorem pickupCross_eq_gap_ratio_core
    (Q : Finset ℕ) (T : ℝ) :
    pickupCross T =
      endpointGapSetCross Q T +
        endpointRatioOutsideGapCross Q T +
          endpointDenseAddMulCoreCross Q T := by
  classical
  unfold pickupCross endpointGapSetCross endpointRatioOutsideGapCross
    endpointRelationCross ratioOutsideGapEdge smallRatioEdge
    endpointDenseAddMulCoreCross endpointIndex
  rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmn : m = n
  · simp [hmn]
  · by_cases hgap : Nat.dist m n ∈ Q
    · simp [hmn, hgap]
    · by_cases hratio : ∃ q ∈ Q, n = q * m ∨ m = q * n
      · simp [hmn, hgap, hratio]
      · simp [hmn, hgap, hratio]

/-- The old dense long-gap source splits into a newly paid small-ratio packet
and the sharper direct dense core. -/
theorem denseLongGapSource_eq_ratio_add_core
    (ε T : ℝ) :
    denseLongGapSource ε T =
      endpointRatioOutsideGapCross (putnamRateGapSet ε T) T +
        endpointDenseAddMulCoreCross (putnamRateGapSet ε T) T := by
  have h := pickupCross_eq_gap_ratio_core (putnamRateGapSet ε T) T
  unfold denseLongGapSource
  linarith

/-- All-positive-rate upper control of the sharpened direct core on one fixed
scale set. -/
def DenseAddMulCoreAllRateOn (G : Set ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
      ∀ T : ℝ, T ∈ G → R ≤ T →
        endpointDenseAddMulCoreCross
          (putnamRateGapSet ε T) T ≤
            C * Real.exp (ε * T)

/-- Both newly paid source sectors have explicit all-rate constants, so the
sharpened core condition is exactly equivalent to the original RH-facing cross
condition on the same fixed set of scales. -/
theorem denseAddMulCoreAllRateOn_iff_crossOn (G : Set ℝ) :
    DenseAddMulCoreAllRateOn G ↔ SubexponentialOn pickupCross G := by
  constructor
  · intro hcore ε hε
    obtain ⟨C, R, hC, hR, hbound⟩ := hcore ε hε
    have hsectorC : 0 ≤ 64 / ε ^ 2 :=
      div_nonneg (by norm_num) (sq_nonneg ε)
    refine ⟨C + 64 / ε ^ 2, R, add_nonneg hC hsectorC, hR, ?_⟩
    intro T hG hT
    have hT0 : 0 ≤ T := hR.trans hT
    have hgap := putnam_sparse_gap_all_rate ε hε hT0
    have hratio := putnam_ratio_outside_gap_all_rate ε hε hT0
    have hpart := hbound T hG hT
    have hgapUp :
        endpointGapSetCross (putnamRateGapSet ε T) T ≤
          (32 / ε ^ 2) * Real.exp (ε * T) :=
      (le_abs_self _).trans hgap
    have hratioUp :
        endpointRatioOutsideGapCross (putnamRateGapSet ε T) T ≤
          (32 / ε ^ 2) * Real.exp (ε * T) :=
      (le_abs_self _).trans hratio
    have hsplit := pickupCross_eq_gap_ratio_core
      (putnamRateGapSet ε T) T
    nlinarith
  · intro hcross ε hε
    obtain ⟨C, R, hC, hR, hbound⟩ := hcross ε hε
    have hsectorC : 0 ≤ 64 / ε ^ 2 :=
      div_nonneg (by norm_num) (sq_nonneg ε)
    refine ⟨C + 64 / ε ^ 2, R, add_nonneg hC hsectorC, hR, ?_⟩
    intro T hG hT
    have hT0 : 0 ≤ T := hR.trans hT
    have hgap := putnam_sparse_gap_all_rate ε hε hT0
    have hratio := putnam_ratio_outside_gap_all_rate ε hε hT0
    have hgapNeg :
        -endpointGapSetCross (putnamRateGapSet ε T) T ≤
          (32 / ε ^ 2) * Real.exp (ε * T) :=
      (neg_le_abs _).trans hgap
    have hratioNeg :
        -endpointRatioOutsideGapCross (putnamRateGapSet ε T) T ≤
          (32 / ε ^ 2) * Real.exp (ε * T) :=
      (neg_le_abs _).trans hratio
    have hsource := hbound T hG hT
    have hsplit := pickupCross_eq_gap_ratio_core
      (putnamRateGapSet ε T) T
    nlinarith

/-- Canonical RH return localized to the new direct dense core.  The core
premise remains unproved. -/
theorem riemannHypothesis_of_dense_add_mul_core_good_scales
    {G : Set ℝ}
    (hcover : AffineFrequent G)
    (hcore : DenseAddMulCoreAllRateOn G) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_cross_good_scales hcover
    ((denseAddMulCoreAllRateOn_iff_crossOn G).mp hcore)

end GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
