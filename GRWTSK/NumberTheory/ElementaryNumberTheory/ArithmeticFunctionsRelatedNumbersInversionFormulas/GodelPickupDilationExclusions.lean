/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported Mathlib and GRWTSK results retain their original attribution and licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.GodelPickupDilationTransport
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupSparseRegularDyadic
import Mathlib.NumberTheory.Harmonic.Bounds
import Mathlib.Tactic

/-!
# Paid, source-identical Gödel/dyadic doubling exceptions

The actual doubled-index relation m <-> 2m has two or fewer neighbors
per row, irrespective of how many different additive offsets m it uses.
It is therefore a valid sparse SYMMETRIC relation for the source-accurate
weighted Gram argument. The previous *additive* excludedRow A by itself
cannot contain every doubled pair without |A| growing linearly in the
cutoff. We prove this obstacle, then enlarge the SOURCE mask by the genuine
multiplicative doubling edges and pay its complete contribution at cost
4*T*(1+T)*(2*|A|+7), with the original ordered signs preserved.

This establishes membership and finite allowance for the specific
arithmetic doubling class, not for all possible arithmetic bad pairs.
The signed complement remains an explicit unproved all-positive-rate
analytic obligation; the RH return is only conditional on that estimate.
No geometric isometry, PNT premise, or auxiliary positive phase energy is
used to assert arithmetic cancellation.
SOURCE_PROOF_CANDIDATE / LEAN_NOT_RUN / KERNEL_NOT_RUN / AXIOMS_NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.GodelPickupDilationExclusions

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.EndpointCovarianceDyadicAbel
open GRWTSK.NumberTheory.Moebius.PickupSparseExceptionalCovariance
open GRWTSK.NumberTheory.Moebius.GodelPickupDilationTransport
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- Both orientations of the genuine arithmetic m <-> 2m relation.
The inverse direction occurs only at an even index: the truncated
natural-number quotient never creates spurious half-integer edges. -/
def doublingNeighbors (m : ℕ) : Finset ℕ :=
  ({2 * m} : Finset ℕ) ∪
    (if m % 2 = 0 then ({m / 2} : Finset ℕ) else ∅)

/-- Exact positive-index characterization. -/
theorem mem_doublingNeighbors_iff {m n : ℕ}
    (_hm : 1 ≤ m) (_hn : 1 ≤ n) :
    n ∈ doublingNeighbors m ↔ n = 2 * m ∨ m = 2 * n := by
  classical
  constructor
  · intro h
    rcases Finset.mem_union.mp h with hfwd | hback
    · exact Or.inl (Finset.mem_singleton.mp hfwd)
    · by_cases heven : m % 2 = 0
      · have hn : n = m / 2 := by simpa [heven] using hback
        right
        omega
      · simp [heven] at hback
  · intro h
    rcases h with hfwd | hback
    · exact Finset.mem_union.mpr (Or.inl (Finset.mem_singleton.mpr hfwd))
    · have heven : m % 2 = 0 := by omega
      apply Finset.mem_union.mpr
      right
      have hhalf : n = m / 2 := by omega
      simpa [heven] using (Finset.mem_singleton.mpr hhalf)

/-- Exactly at most two partners per row for every positive endpoint. -/
theorem doublingNeighbors_card_le (m : ℕ) :
    (doublingNeighbors m).card ≤ 2 := by
  classical
  by_cases heven : m % 2 = 0
  · unfold doublingNeighbors
    rw [if_pos heven]
    calc
      (({2 * m} : Finset ℕ) ∪ {m / 2}).card ≤
          ({2 * m} : Finset ℕ).card + ({m / 2} : Finset ℕ).card :=
            Finset.card_union_le _ _
      _ = 2 := by simp
  · simp [doublingNeighbors, heven]

/-- Both orientations are symmetric within the original positive source. -/
theorem doublingNeighbors_symmetric {m n : ℕ}
    (hm : 1 ≤ m) (hn : 1 ≤ n) :
    n ∈ doublingNeighbors m ↔ m ∈ doublingNeighbors n := by
  rw [mem_doublingNeighbors_iff hm hn, mem_doublingNeighbors_iff hn hm]
  exact or_comm

/-- A genuine arithmetic doubling edge is ALWAYS included in the new
paid relation; no hypothesis about its sign is used for this inclusion. -/
theorem doubled_index_mem_neighbors (m : ℕ) :
    2 * m ∈ doublingNeighbors m := by
  exact Finset.mem_union.mpr (Or.inl (Finset.mem_singleton.mpr rfl))

/-- A previously excluded additive pair at displacement m forces that
specific m to be listed in A, once it is beyond the five-neighbor core. -/
theorem original_additive_cover_of_doubling_implies_mem
    (A : Finset ℕ) (m : ℕ) (hm : 3 ≤ m)
    (h : 2 * m ∈ excludedRow A m) : m ∈ A := by
  classical
  simp only [excludedRow, Finset.mem_union, Finset.mem_Icc,
    Finset.mem_image] at h
  rcases h with (hlocal | hplus) | hminus
  · omega
  · rcases hplus with ⟨a, ha, heq⟩
    have heq' : a = m := by omega
    simpa [heq'] using ha
  · rcases hminus with ⟨a, ha, heq⟩
    omega

/-- Full doubling inclusion in the old additive mask forces linearly many
additive shifts, incompatible with the intended small-shift strategy. -/
theorem old_cover_all_doublings_requires_linear_card
    (A : Finset ℕ) (M : ℕ) (hM : 3 ≤ M)
    (h : ∀ m ∈ Finset.Icc 3 M, 2 * m ∈ excludedRow A m) :
    M - 2 ≤ A.card := by
  have hsub : Finset.Icc 3 M ⊆ A := by
    intro m hm
    exact original_additive_cover_of_doubling_implies_mem A m
      (Finset.mem_Icc.mp hm).1 (h m hm)
  have hc := Finset.card_le_card hsub
  rw [Nat.card_Icc] at hc
  omega

/-- Enlarge the actual additive mask by the sparse multiplicative neighbors. -/
def godelPaidRow (A : Finset ℕ) (m : ℕ) : Finset ℕ :=
  excludedRow A m ∪ doublingNeighbors m

theorem godelPaidRow_card_le (A : Finset ℕ) (m : ℕ) :
    (godelPaidRow A m).card ≤ 2 * A.card + 7 := by
  classical
  calc
    (godelPaidRow A m).card ≤
        (excludedRow A m).card + (doublingNeighbors m).card := by
          unfold godelPaidRow
          exact Finset.card_union_le _ _
    _ ≤ (2 * A.card + 5) + 2 := Nat.add_le_add
      (excludedRow_card_le A m) (doublingNeighbors_card_le m)
    _ = 2 * A.card + 7 := by omega

/-- All actual doubled-index relations belong to the enlarged paid mask. -/
theorem doubling_mem_godelPaidRow (A : Finset ℕ) (m : ℕ) :
    2 * m ∈ godelPaidRow A m := by
  exact Finset.mem_union.mpr (Or.inr (doubled_index_mem_neighbors m))

/-- Pay exactly the original off-diagonal pair, and never the diagonal. -/
def godelPaidPair (A : Finset ℕ) (m n : ℕ) : Prop :=
  m ≠ n ∧ n ∈ godelPaidRow A m

theorem godelPaidPair_symmetric (A : Finset ℕ) {m n : ℕ}
    (hm : 1 ≤ m) (hn : 1 ≤ n) :
    godelPaidPair A m n ↔ godelPaidPair A n m := by
  constructor
  · rintro ⟨hne, hmem⟩
    rcases Finset.mem_union.mp hmem with hOld | hDouble
    · exact ⟨hne.symm,
        Finset.mem_union.mpr (Or.inl (excludedRow_symmetric A hm hn hOld))⟩
    · exact ⟨hne.symm,
        Finset.mem_union.mpr (Or.inr ((doublingNeighbors_symmetric hm hn).mp hDouble))⟩
  · rintro ⟨hne, hmem⟩
    rcases Finset.mem_union.mp hmem with hOld | hDouble
    · exact ⟨hne.symm,
        Finset.mem_union.mpr (Or.inl (excludedRow_symmetric A hn hm hOld))⟩
    · exact ⟨hne.symm,
        Finset.mem_union.mpr (Or.inr ((doublingNeighbors_symmetric hn hm).mp hDouble))⟩

/-- Source-specific inclusion for the actual dyadic doubling exception. -/
theorem genuine_doubling_exception_included
    (A : Finset ℕ) (m : ℕ) (hm : 1 ≤ m) :
    godelPaidPair A m (2 * m) := by
  exact ⟨by omega, doubling_mem_godelPaidRow A m⟩

/-- Any arithmetic exception in the OLD mask or in the proven doubling
relation is paid. No claim is made for an arbitrary unrelated bad set. -/
theorem source_bad_pair_included
    (A : Finset ℕ) {m n : ℕ} (hne : m ≠ n)
    (h : n ∈ excludedRow A m ∨ n = 2 * m ∨ m = 2 * n)
    (hm : 1 ≤ m) (hn : 1 ≤ n) :
    godelPaidPair A m n := by
  refine ⟨hne, ?_⟩
  rcases h with hOld | hDouble
  · exact Finset.mem_union.mpr (Or.inl hOld)
  · exact Finset.mem_union.mpr
      (Or.inr ((mem_doublingNeighbors_iff hm hn).mpr hDouble))

/-- The real one-sided arithmetic packet from *all* source pairs
(m,2m), with both ordered orientations charged by the exact factor 2. -/
def doublingCredit (T : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 (⌊Real.exp T⌋₊ / 2),
    -(2 : ℝ) *
      (moebiusReal m * moebiusReal (2 * m) *
        pickupResponseGram T m (2 * m))

/-- Genuine negative credit, from actual Möbius parity and actual causal Gram.
It remains a selected subpacket, not the full signed source. -/
theorem doublingCredit_nonnegative {T : ℝ} (hT : 0 ≤ T) :
    0 ≤ doublingCredit T := by
  unfold doublingCredit
  apply Finset.sum_nonneg
  intro m hm
  have hmpos := (Finset.mem_Icc.mp hm).1
  have hneg := doubling_pair_gram_nonpositive m hmpos hT
  nlinarith

/-- The augmented actual relation has a uniform, source-constructed
2*|A|+7 row bound, without any arithmetic density premise. -/
theorem godelPaidPair_row_degree (A : Finset ℕ) (N m : ℕ) :
    ((Finset.Icc 1 N).filter (fun n => godelPaidPair A m n)).card ≤
      2 * A.card + 7 := by
  have hsub : ((Finset.Icc 1 N).filter (fun n => godelPaidPair A m n)) ⊆
      godelPaidRow A m := by
    intro n hn
    exact (Finset.mem_filter.mp hn).2.2
  exact (Finset.card_le_card hsub).trans (godelPaidRow_card_le A m)

/-- Full signed, ordered source, restricted only by the new REAL arithmetic mask. -/
def godelPaidCovariance (A : Finset ℕ) (T : ℝ) : ℝ :=
  let N := ⌊Real.exp T⌋₊
  ∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N,
    if godelPaidPair A m n then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n else 0

/-- The complete complement stays signed, including all other cross pairs. -/
def godelRegularCovariance (A : Finset ℕ) (T : ℝ) : ℝ :=
  let N := ⌊Real.exp T⌋₊
  ∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N,
    if m ≠ n ∧ n ∉ godelPaidRow A m then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n else 0

/-- All ordered terms are reassembled exactly once, with no sign substitution. -/
theorem pickupCross_eq_godelRegular_add_paid (A : Finset ℕ) (T : ℝ) :
    pickupCross T = godelRegularCovariance A T + godelPaidCovariance A T := by
  classical
  unfold pickupCross godelRegularCovariance godelPaidCovariance godelPaidPair
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases heq : m = n
  · simp [heq]
  · by_cases hbad : n ∈ godelPaidRow A m
    · simp [heq, hbad]
    · simp [heq, hbad]

/-- Source-bound weighted estimate for any actual symmetric, bounded-degree
relation R. We keep the original response Gram, not a substitute kernel. -/
theorem maskedCovariance_abs_le_harmonic
    (R : ℕ → ℕ → Prop) (K : ℕ) {T : ℝ} (hT : 0 ≤ T)
    (hSymm : ∀ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        ∀ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, R m n ↔ R n m)
    (hDegree : ∀ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        ((Finset.Icc 1 ⌊Real.exp T⌋₊).filter (fun n => R m n)).card ≤ K) :
    |(∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
          if R m n then
            moebiusReal m * moebiusReal n * pickupResponseGram T m n else 0)| ≤
    (4 * T) * (K : ℝ) *
      (∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, 1 / (m : ℝ)) := by
  classical
  let S := Finset.Icc 1 ⌊Real.exp T⌋₊
  let w : ℕ → ℝ := fun n => (Real.sqrt (n : ℝ))⁻¹
  have hquad := symmetric_degree_weighted_bound S R w K hSymm hDegree
  have hsquare : (∑ m ∈ S, (w m) ^ 2) =
        ∑ m ∈ S, 1 / (m : ℝ) := by
    apply Finset.sum_congr rfl
    intro m hm
    exact inverseSqrt_square (Finset.mem_Icc.mp hm).1
  have hweighted :
      (∑ m ∈ S, ∑ n ∈ S, if R m n then w m * w n else 0) ≤
        (K : ℝ) * (∑ m ∈ S, 1 / (m : ℝ)) := by
    simpa only [hsquare] using hquad
  have hmu (m : ℕ) : |moebiusReal m| ≤ 1 := by
    unfold moebiusReal
    exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := m))
  have hatom (m n : ℕ) (hm : m ∈ S) (hn : n ∈ S) :
      |moebiusReal m * moebiusReal n * pickupResponseGram T m n| ≤
        (4 * T) * w m * w n := by
    have hc : |moebiusReal m| * |moebiusReal n| ≤ 1 := by
      calc
        _ ≤ (1 : ℝ) * 1 := mul_le_mul (hmu m) (hmu n)
          (abs_nonneg _) (by norm_num)
        _ = 1 := by norm_num
    calc
      |moebiusReal m * moebiusReal n * pickupResponseGram T m n| =
          (|moebiusReal m| * |moebiusReal n|) *
            |pickupResponseGram T m n| := by simp [abs_mul, mul_assoc]
      _ ≤ 1 * |pickupResponseGram T m n| :=
        mul_le_mul_of_nonneg_right hc (abs_nonneg _)
      _ = |pickupResponseGram T m n| := one_mul _
      _ ≤ (4 * T) * w m * w n := by
        simpa only [w, mul_assoc] using
          pickupResponseGram_abs_le (Finset.mem_Icc.mp hm).1
            (Finset.mem_Icc.mp hn).1 hT
  have hterm :
      |(∑ m ∈ S, ∑ n ∈ S,
        if R m n then moebiusReal m * moebiusReal n * pickupResponseGram T m n else 0)| ≤
      (4 * T) * (∑ m ∈ S, ∑ n ∈ S, if R m n then w m * w n else 0) := by
    calc
      _ ≤ ∑ m ∈ S, ∑ n ∈ S,
          if R m n then
            |moebiusReal m * moebiusReal n * pickupResponseGram T m n|
          else 0 := by
            calc
              _ ≤ ∑ m ∈ S, |∑ n ∈ S,
                  if R m n then
                    moebiusReal m * moebiusReal n * pickupResponseGram T m n else 0| :=
                  Finset.abs_sum_le_sum_abs _ _
              _ ≤ ∑ m ∈ S, ∑ n ∈ S,
                    if R m n then
                      |moebiusReal m * moebiusReal n * pickupResponseGram T m n|
                    else 0 := by
                  apply Finset.sum_le_sum
                  intro m hm
                  calc
                    _ ≤ ∑ n ∈ S, |if R m n then
                        moebiusReal m * moebiusReal n * pickupResponseGram T m n else 0| :=
                          Finset.abs_sum_le_sum_abs _ _
                    _ = _ := by simp only [abs_ite, abs_zero]
      _ ≤ ∑ m ∈ S, ∑ n ∈ S,
          if R m n then (4 * T) * w m * w n else 0 := by
            apply Finset.sum_le_sum
            intro m hm
            apply Finset.sum_le_sum
            intro n hn
            by_cases hr : R m n
            · simpa [hr] using hatom m n hm hn
            · simp [hr]
      _ = (4 * T) * (∑ m ∈ S, ∑ n ∈ S,
          if R m n then w m * w n else 0) := by
            simp only [Finset.mul_sum, mul_ite, mul_zero]
  calc
    _ ≤ (4 * T) * (∑ m ∈ S, ∑ n ∈ S, if R m n then w m * w n else 0) :=
        hterm
    _ ≤ (4 * T) * ((K : ℝ) * (∑ m ∈ S, 1 / (m : ℝ))) :=
        mul_le_mul_of_nonneg_left hweighted (by positivity)
    _ = _ := by ring

/-- Actual complete paid covariance, no artificial coefficient replacement. -/
theorem godelPaidCovariance_abs_le_polynomial
    (A : Finset ℕ) {T : ℝ} (hT : 0 ≤ T) :
    |godelPaidCovariance A T| ≤
      4 * T * (1 + T) * ((2 * A.card + 7 : ℕ) : ℝ) := by
  have hSymm : ∀ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      ∀ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        godelPaidPair A m n ↔ godelPaidPair A n m := by
    intro m hm n hn
    exact godelPaidPair_symmetric A (Finset.mem_Icc.mp hm).1
      (Finset.mem_Icc.mp hn).1
  have hDegree : ∀ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      ((Finset.Icc 1 ⌊Real.exp T⌋₊).filter (fun n => godelPaidPair A m n)).card ≤
        2 * A.card + 7 := by
    intro m hm
    exact godelPaidPair_row_degree A _ m
  have hS := maskedCovariance_abs_le_harmonic
    (godelPaidPair A) (2 * A.card + 7) hT hSymm hDegree
  have hH := original_harmonic_le_one_add_time hT
  calc
    |godelPaidCovariance A T| ≤
      (4 * T) * ((2 * A.card + 7 : ℕ) : ℝ) *
        (∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, 1 / (m : ℝ)) := hS
    _ ≤ (4 * T) * ((2 * A.card + 7 : ℕ) : ℝ) * (1 + T) :=
      mul_le_mul_of_nonneg_left hH (by positivity)
    _ = _ := by ring

/-- Fixed sparse actual exception cost is subexponential without PNT or RH. -/
theorem godelPaidCovariance_subexponential (A : Finset ℕ) :
    SubexponentialUpper (godelPaidCovariance A) := by
  have hAbs : SubexponentialUpper (fun T : ℝ => |godelPaidCovariance A T|) := by
    apply subexponentialUpper_of_polynomial
      (C := 4 * ((2 * A.card + 7 : ℕ) : ℝ)) (q := 2) (by positivity)
    intro T hT
    rw [Real.rpow_two]
    have hbase := godelPaidCovariance_abs_le_polynomial A hT
    have hpoly : T * (1 + T) ≤ (1 + T) * (1 + T) := by nlinarith
    calc
      _ ≤ 4 * T * (1 + T) * ((2 * A.card + 7 : ℕ) : ℝ) := hbase
      _ = (4 * ((2 * A.card + 7 : ℕ) : ℝ)) * (T * (1 + T)) := by ring
      _ ≤ (4 * ((2 * A.card + 7 : ℕ) : ℝ)) * ((1 + T) * (1 + T)) :=
        mul_le_mul_of_nonneg_left hpoly (by positivity)
  exact hAbs.mono (fun T hT => le_abs_self _)

/-- Conditional RH-facing return: all-positive-rate source estimates of the
complete new regular sector are still required and NOT supplied by Gödel. -/
theorem riemannHypothesis_of_godelRegular_good_scales
    (A : Finset ℕ)
    (hRegular : SubexponentialOn (godelRegularCovariance A) dyadicScales) :
    _root_.RiemannHypothesis := by
  have hUpper : SubexponentialOn pickupCross dyadicScales := by
    apply subexponentialOn_mono
      (add_global hRegular (godelPaidCovariance_subexponential A))
    intro T hG hT
    rw [pickupCross_eq_godelRegular_add_paid A T]
  exact riemannHypothesis_of_cross_good_scales dyadic_coverage hUpper

end GRWTSK.NumberTheory.Moebius.GodelPickupDilationExclusions
