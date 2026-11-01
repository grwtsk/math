/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointPutnamSmallRatioAllRate
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# All-positive-rate small rational-slope sector of the Möbius endpoint

The additive Putnam theorem pays selected additive distances.  The exact-ratio
theorem pays selected positive integer multiples.  The next source-preserving
sparse graph consists of ordered endpoint pairs whose ratio is one of a finite
family of positive rational slopes:

`a * m = b * n` or `a * n = b * m`.

For each fixed endpoint index and each parameter pair `(a,b)`, there is at most
one neighbour in either orientation.  Thus a parameter square `Q × Q` has
maximum degree at most `2 * |Q|^2`.  The unchanged response-Gram Young
inequality pays the complete signed packet by that degree times the original
Möbius diagonal energy.

Taking `a,b <= exp(epsilon*T/4)` gives an explicit
`32/epsilon^2` all-positive-rate bound.  We remove only slope edges not already
paid by the additive-gap and exact-integer-ratio sectors.  The remaining direct
packet contains additively far pairs with no selected exact quotient and no
selected low-height rational slope.

For positive `m,n`, writing `d=gcd(m,n)`, the reduced slope is
`(n/d)/(m/d)`.  Therefore the surviving packet has at least one reduced
coordinate larger than the selected slope cutoff.  Equivalently, its common
divisor is small relative to the larger endpoint index.  This is a genuine
source reduction, not a cancellation theorem for the remaining packet.

No theorem below replaces the Möbius signs, takes packetwise absolute values in
the final dense core, assumes RH, or concludes RH without the explicit core
supplier.
-/

namespace GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof

classical

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- The selected rational-slope relation before diagonal exclusion. -/
def hasSmallRationalSlope
    (Q : Finset ℕ) (m n : ℕ) : Prop :=
  ∃ a ∈ Q, ∃ b ∈ Q,
    a * m = b * n ∨ a * n = b * m

/-- A non-diagonal endpoint pair on a selected positive rational slope. -/
def smallRationalSlopeEdge
    (Q : Finset ℕ) (m n : ℕ) : Prop :=
  m ≠ n ∧ hasSmallRationalSlope Q m n

/-- Complete ordered packet on selected rational-slope edges. -/
def endpointRationalSlopeSetCross
    (Q : Finset ℕ) (T : ℝ) : ℝ :=
  endpointRelationCross (smallRationalSlopeEdge Q) T

/-- The selected slope relation is symmetric. -/
theorem smallRationalSlopeEdge_symm
    (Q : Finset ℕ) (m n : ℕ) :
    smallRationalSlopeEdge Q m n ↔
      smallRationalSlopeEdge Q n m := by
  constructor
  · rintro ⟨hmn, a, ha, b, hb, hleft | hright⟩
    · exact ⟨hmn.symm, a, ha, b, hb, Or.inr hleft⟩
    · exact ⟨hmn.symm, a, ha, b, hb, Or.inl hright⟩
  · rintro ⟨hnm, a, ha, b, hb, hleft | hright⟩
    · exact ⟨hnm.symm, a, ha, b, hb, Or.inr hleft⟩
    · exact ⟨hnm.symm, a, ha, b, hb, Or.inl hright⟩

/-- A common-factor presentation with selected reduced coordinates produces a
selected rational-slope edge. -/
theorem smallRationalSlopeEdge_of_common_factor
    (Q : Finset ℕ) {d a b m n : ℕ}
    (hmn : m ≠ n) (ha : a ∈ Q) (hb : b ∈ Q)
    (hm : m = d * b) (hn : n = d * a) :
    smallRationalSlopeEdge Q m n := by
  refine ⟨hmn, a, ha, b, hb, Or.inl ?_⟩
  rw [hm, hn]
  ring

/-- Each selected positive parameter pair `(a,b)` gives at most one neighbour
of either orientation for a fixed endpoint index. -/
theorem rationalSlope_neighbor_card_le
    (Q S : Finset ℕ)
    (hQ : ∀ q ∈ Q, 0 < q) (m : ℕ) :
    (S.filter fun n => smallRationalSlopeEdge Q m n).card ≤
      2 * (Q.card * Q.card) := by
  classical
  let P : Finset (ℕ × ℕ) := Q.product Q
  let L : Finset ℕ := P.image (fun ab => (ab.1 * m) / ab.2)
  let R : Finset ℕ := P.image (fun ab => (ab.2 * m) / ab.1)
  have hsubset :
      (S.filter fun n => smallRationalSlopeEdge Q m n) ⊆
        L ∪ R := by
    intro n hn
    rcases Finset.mem_filter.mp hn with ⟨_hnS, hedge⟩
    rcases hedge with ⟨_hne, a, ha, b, hb, hrel⟩
    rcases hrel with hforward | hbackward
    · apply Finset.mem_union.mpr
      left
      apply Finset.mem_image.mpr
      refine ⟨(a, b), ?_, ?_⟩
      · simp [P, ha, hb]
      · rw [hforward, Nat.mul_div_right n (hQ b hb)]
    · apply Finset.mem_union.mpr
      right
      apply Finset.mem_image.mpr
      refine ⟨(a, b), ?_, ?_⟩
      · simp [P, ha, hb]
      · rw [← hbackward, Nat.mul_div_right n (hQ a ha)]
  calc
    (S.filter fun n => smallRationalSlopeEdge Q m n).card ≤
        (L ∪ R).card := Finset.card_le_card hsubset
    _ ≤ L.card + R.card := Finset.card_union_le _ _
    _ ≤ P.card + P.card :=
      add_le_add Finset.card_image_le Finset.card_image_le
    _ = 2 * (Q.card * Q.card) := by
      simp [P]
      omega

/-- The complete selected rational-slope packet is paid by the original
Möbius diagonal. -/
theorem original_sparse_rationalSlope_abs_le
    (Q : Finset ℕ)
    (hQ : ∀ q ∈ Q, 0 < q)
    {T : ℝ} (hT : 0 ≤ T) :
    |endpointRationalSlopeSetCross Q T| ≤
      2 * ((Q.card * Q.card : ℕ) : ℝ) *
        pickupDiagonal T := by
  have hdeg : ∀ m ∈ endpointIndex T,
      ((endpointIndex T).filter
        (smallRationalSlopeEdge Q m)).card ≤
          2 * (Q.card * Q.card) := by
    intro m hm
    exact rationalSlope_neighbor_card_le
      Q (endpointIndex T) hQ m
  simpa [endpointRationalSlopeSetCross] using
    original_symmetric_relation_abs_le
      (smallRationalSlopeEdge Q)
      (2 * (Q.card * Q.card)) hT
      (smallRationalSlopeEdge_symm Q) hdeg

/-- Numerical consequence using the existing diagonal estimate. -/
theorem original_sparse_rationalSlope_quadratic
    (Q : Finset ℕ)
    (hQ : ∀ q ∈ Q, 0 < q)
    {T : ℝ} (hT : 0 ≤ T) :
    |endpointRationalSlopeSetCross Q T| ≤
      4 * ((Q.card * Q.card : ℕ) : ℝ) * T ^ 2 := by
  calc
    |endpointRationalSlopeSetCross Q T| ≤
        2 * ((Q.card * Q.card : ℕ) : ℝ) *
          pickupDiagonal T :=
      original_sparse_rationalSlope_abs_le Q hQ hT
    _ ≤ 2 * ((Q.card * Q.card : ℕ) : ℝ) *
          (2 * T ^ 2) :=
      mul_le_mul_of_nonneg_left
        (pickupDiagonal_quadratic_bound hT).2 (by positivity)
    _ = _ := by ring

/-- Positive numerator and denominator parameters through
`exp(epsilon*T/4)`. -/
def putnamSlopeParameterSet (ε T : ℝ) : Finset ℕ :=
  putnamRateGapSet (ε / 2) T

theorem putnamSlopeParameterSet_pos (ε T : ℝ) :
    ∀ q ∈ putnamSlopeParameterSet ε T, 0 < q := by
  intro q hq
  exact putnamRateGapSet_pos (ε / 2) T q hq

theorem putnam_slope_parameter_card_le (ε T : ℝ) :
    ((putnamSlopeParameterSet ε T).card : ℝ) ≤
      Real.exp ((ε / 4) * T) := by
  unfold putnamSlopeParameterSet
  convert putnam_gap_card_le (ε / 2) T using 1 <;> ring

theorem putnam_slope_parameter_square_card_le
    (ε T : ℝ) :
    (((putnamSlopeParameterSet ε T).card *
        (putnamSlopeParameterSet ε T).card : ℕ) : ℝ) ≤
      Real.exp ((ε / 2) * T) := by
  have hcard := putnam_slope_parameter_card_le ε T
  calc
    (((putnamSlopeParameterSet ε T).card *
        (putnamSlopeParameterSet ε T).card : ℕ) : ℝ) =
        ((putnamSlopeParameterSet ε T).card : ℝ) *
          ((putnamSlopeParameterSet ε T).card : ℝ) := by
      norm_num
    _ ≤ Real.exp ((ε / 4) * T) *
          Real.exp ((ε / 4) * T) := by
      exact mul_le_mul hcard hcard
        (by positivity) (by positivity)
    _ = Real.exp ((ε / 2) * T) := by
      rw [← Real.exp_add]
      congr 1
      ring

/-- Every actual rational-slope edge with selected numerator and denominator
through `exp(epsilon*T/4)` is unconditionally all-positive-rate. -/
theorem putnam_sparse_rationalSlope_all_rate
    (ε : ℝ) (hε : 0 < ε)
    {T : ℝ} (hT : 0 ≤ T) :
    |endpointRationalSlopeSetCross
        (putnamSlopeParameterSet ε T) T| ≤
      (32 / ε ^ 2) * Real.exp (ε * T) := by
  have hh : 0 < ε / 2 := by linarith
  have hεne : ε ≠ 0 := ne_of_gt hε
  have hpow :
      T ^ 2 ≤ (2 / (ε / 2) ^ 2) *
        Real.exp ((ε / 2) * T) := by
    have h := pow_le_factorial_mul_exp hh hT 2
    norm_num at h
    exact h
  calc
    |endpointRationalSlopeSetCross
        (putnamSlopeParameterSet ε T) T| ≤
      4 * (((putnamSlopeParameterSet ε T).card *
        (putnamSlopeParameterSet ε T).card : ℕ) : ℝ) * T ^ 2 :=
      original_sparse_rationalSlope_quadratic _
        (putnamSlopeParameterSet_pos ε T) hT
    _ ≤ 4 * Real.exp ((ε / 2) * T) * T ^ 2 := by
      gcongr
      exact putnam_slope_parameter_square_card_le ε T
    _ ≤ 4 * Real.exp ((ε / 2) * T) *
          ((2 / (ε / 2) ^ 2) *
            Real.exp ((ε / 2) * T)) := by
      gcongr
    _ = (32 / ε ^ 2) * Real.exp (ε * T) := by
      rw [show ε * T =
          (ε / 2) * T + (ε / 2) * T by ring,
        Real.exp_add]
      field_simp [hεne]
      ring

/-- Selected rational-slope edges not already paid by the additive gap or
exact-integer-ratio sectors. -/
def rationalSlopeOutsideGapRatioEdge
    (A Q : Finset ℕ) (m n : ℕ) : Prop :=
  smallRationalSlopeEdge Q m n ∧
    Nat.dist m n ∉ A ∧
      ¬ (∃ q ∈ A, n = q * m ∨ m = q * n)

/-- Complete ordered low-height rational-slope packet outside the two
previously paid sectors. -/
def endpointRationalSlopeOutsideGapRatioCross
    (A Q : Finset ℕ) (T : ℝ) : ℝ :=
  endpointRelationCross
    (rationalSlopeOutsideGapRatioEdge A Q) T

theorem rationalSlopeOutsideGapRatioEdge_symm
    (A Q : Finset ℕ) (m n : ℕ) :
    rationalSlopeOutsideGapRatioEdge A Q m n ↔
      rationalSlopeOutsideGapRatioEdge A Q n m := by
  constructor
  · rintro ⟨hslope, hgap, hratio⟩
    refine ⟨(smallRationalSlopeEdge_symm Q m n).mp hslope,
      ?_, ?_⟩
    · simpa [Nat.dist_comm] using hgap
    · intro h
      rcases h with ⟨q, hq, hleft | hright⟩
      · exact hratio ⟨q, hq, Or.inr hleft⟩
      · exact hratio ⟨q, hq, Or.inl hright⟩
  · rintro ⟨hslope, hgap, hratio⟩
    refine ⟨(smallRationalSlopeEdge_symm Q m n).mpr hslope,
      ?_, ?_⟩
    · simpa [Nat.dist_comm] using hgap
    · intro h
      rcases h with ⟨q, hq, hleft | hright⟩
      · exact hratio ⟨q, hq, Or.inr hleft⟩
      · exact hratio ⟨q, hq, Or.inl hright⟩

theorem rationalSlopeOutsideGapRatio_neighbor_card_le
    (A Q S : Finset ℕ)
    (hQ : ∀ q ∈ Q, 0 < q) (m : ℕ) :
    (S.filter fun n =>
      rationalSlopeOutsideGapRatioEdge A Q m n).card ≤
        2 * (Q.card * Q.card) := by
  calc
    (S.filter fun n =>
      rationalSlopeOutsideGapRatioEdge A Q m n).card ≤
        (S.filter fun n =>
          smallRationalSlopeEdge Q m n).card := by
      apply Finset.card_le_card
      intro n hn
      rcases Finset.mem_filter.mp hn with ⟨hnS, hedge⟩
      exact Finset.mem_filter.mpr ⟨hnS, hedge.1⟩
    _ ≤ 2 * (Q.card * Q.card) :=
      rationalSlope_neighbor_card_le Q S hQ m

/-- The disjoint rational-slope sector has the same unconditional all-rate
bound. -/
theorem putnam_rationalSlope_outside_gap_ratio_all_rate
    (ε : ℝ) (hε : 0 < ε)
    {T : ℝ} (hT : 0 ≤ T) :
    |endpointRationalSlopeOutsideGapRatioCross
        (putnamRateGapSet ε T)
        (putnamSlopeParameterSet ε T) T| ≤
      (32 / ε ^ 2) * Real.exp (ε * T) := by
  let A := putnamRateGapSet ε T
  let Q := putnamSlopeParameterSet ε T
  have hdeg : ∀ m ∈ endpointIndex T,
      ((endpointIndex T).filter
        (rationalSlopeOutsideGapRatioEdge A Q m)).card ≤
          2 * (Q.card * Q.card) := by
    intro m hm
    exact rationalSlopeOutsideGapRatio_neighbor_card_le
      A Q (endpointIndex T)
      (putnamSlopeParameterSet_pos ε T) m
  have hdiag :
      |endpointRationalSlopeOutsideGapRatioCross A Q T| ≤
        2 * ((Q.card * Q.card : ℕ) : ℝ) *
          pickupDiagonal T := by
    simpa [endpointRationalSlopeOutsideGapRatioCross] using
      original_symmetric_relation_abs_le
        (rationalSlopeOutsideGapRatioEdge A Q)
        (2 * (Q.card * Q.card)) hT
        (rationalSlopeOutsideGapRatioEdge_symm A Q) hdeg
  have hquad :
      |endpointRationalSlopeOutsideGapRatioCross A Q T| ≤
        4 * ((Q.card * Q.card : ℕ) : ℝ) * T ^ 2 := by
    calc
      _ ≤ 2 * ((Q.card * Q.card : ℕ) : ℝ) *
          pickupDiagonal T := hdiag
      _ ≤ 2 * ((Q.card * Q.card : ℕ) : ℝ) *
          (2 * T ^ 2) :=
        mul_le_mul_of_nonneg_left
          (pickupDiagonal_quadratic_bound hT).2
          (by positivity)
      _ = _ := by ring
  have hh : 0 < ε / 2 := by linarith
  have hεne : ε ≠ 0 := ne_of_gt hε
  have hpow :
      T ^ 2 ≤ (2 / (ε / 2) ^ 2) *
        Real.exp ((ε / 2) * T) := by
    have h := pow_le_factorial_mul_exp hh hT 2
    norm_num at h
    exact h
  change
    |endpointRationalSlopeOutsideGapRatioCross A Q T| ≤
      (32 / ε ^ 2) * Real.exp (ε * T)
  calc
    |endpointRationalSlopeOutsideGapRatioCross A Q T| ≤
        4 * ((Q.card * Q.card : ℕ) : ℝ) * T ^ 2 :=
      hquad
    _ ≤ 4 * Real.exp ((ε / 2) * T) * T ^ 2 := by
      gcongr
      simpa [Q] using
        putnam_slope_parameter_square_card_le ε T
    _ ≤ 4 * Real.exp ((ε / 2) * T) *
          ((2 / (ε / 2) ^ 2) *
            Real.exp ((ε / 2) * T)) := by
      gcongr
    _ = (32 / ε ^ 2) * Real.exp (ε * T) := by
      rw [show ε * T =
          (ε / 2) * T + (ε / 2) * T by ring,
        Real.exp_add]
      field_simp [hεne]
      ring

/-- The direct remaining edge after removing additive gaps, exact small integer
ratios, and selected low-height rational slopes. -/
def denseReducedRatioCoreEdge
    (A Q : Finset ℕ) (m n : ℕ) : Prop :=
  m ≠ n ∧ Nat.dist m n ∉ A ∧
    ¬ (∃ q ∈ A, n = q * m ∨ m = q * n) ∧
      ¬ hasSmallRationalSlope Q m n

/-- Complete ordered signed packet on the sharpened reduced-ratio core. -/
def endpointDenseReducedRatioCoreCross
    (A Q : Finset ℕ) (T : ℝ) : ℝ :=
  endpointRelationCross
    (denseReducedRatioCoreEdge A Q) T

/-- The previous dense add/mul core splits exactly into the newly paid rational
slope packet and the direct reduced-ratio core. -/
theorem endpointDenseAddMulCore_eq_slope_add_reduced
    (A Q : Finset ℕ) (T : ℝ) :
    endpointDenseAddMulCoreCross A T =
      endpointRationalSlopeOutsideGapRatioCross A Q T +
        endpointDenseReducedRatioCoreCross A Q T := by
  classical
  unfold endpointDenseAddMulCoreCross
    endpointRationalSlopeOutsideGapRatioCross
    endpointDenseReducedRatioCoreCross
    endpointRelationCross rationalSlopeOutsideGapRatioEdge
    denseReducedRatioCoreEdge smallRationalSlopeEdge
    hasSmallRationalSlope
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmn : m = n
  · simp [hmn]
  · by_cases hgap : Nat.dist m n ∈ A
    · simp [hmn, hgap]
    · by_cases hratio :
        ∃ q ∈ A, n = q * m ∨ m = q * n
      · simp [hmn, hgap, hratio]
      · by_cases hslope :
          ∃ a ∈ Q, ∃ b ∈ Q,
            a * m = b * n ∨ a * n = b * m
        · simp [hmn, hgap, hratio, hslope]
        · simp [hmn, hgap, hratio, hslope]

/-- Exact four-sector partition of the unchanged original cross. -/
theorem pickupCross_eq_gap_ratio_slope_reduced
    (A Q : Finset ℕ) (T : ℝ) :
    pickupCross T =
      endpointGapSetCross A T +
        endpointRatioOutsideGapCross A T +
          endpointRationalSlopeOutsideGapRatioCross A Q T +
            endpointDenseReducedRatioCoreCross A Q T := by
  rw [pickupCross_eq_gap_ratio_core A T,
    endpointDenseAddMulCore_eq_slope_add_reduced A Q T]
  ring

/-- All-positive-rate upper control of the sharpened reduced-ratio core on one
fixed scale set. -/
def DenseReducedRatioCoreAllRateOn (G : Set ℝ) : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
      ∀ T : ℝ, T ∈ G → R ≤ T →
        endpointDenseReducedRatioCoreCross
          (putnamRateGapSet ε T)
          (putnamSlopeParameterSet ε T) T ≤
            C * Real.exp (ε * T)

/-- The three paid source sectors have explicit all-rate constants, so the
reduced-ratio-core condition is exactly equivalent to the original RH-facing
cross condition on the same fixed set of scales. -/
theorem denseReducedRatioCoreAllRateOn_iff_crossOn
    (G : Set ℝ) :
    DenseReducedRatioCoreAllRateOn G ↔
      SubexponentialOn pickupCross G := by
  constructor
  · intro hcore ε hε
    obtain ⟨C, R, hC, hR, hbound⟩ := hcore ε hε
    have hsectorC : 0 ≤ 96 / ε ^ 2 :=
      div_nonneg (by norm_num) (sq_nonneg ε)
    refine ⟨C + 96 / ε ^ 2, R,
      add_nonneg hC hsectorC, hR, ?_⟩
    intro T hG hT
    have hT0 : 0 ≤ T := hR.trans hT
    have hgap := putnam_sparse_gap_all_rate ε hε hT0
    have hratio := putnam_ratio_outside_gap_all_rate ε hε hT0
    have hslope :=
      putnam_rationalSlope_outside_gap_ratio_all_rate
        ε hε hT0
    have hpart := hbound T hG hT
    have hgapUp :
        endpointGapSetCross (putnamRateGapSet ε T) T ≤
          (32 / ε ^ 2) * Real.exp (ε * T) :=
      (le_abs_self _).trans hgap
    have hratioUp :
        endpointRatioOutsideGapCross
          (putnamRateGapSet ε T) T ≤
          (32 / ε ^ 2) * Real.exp (ε * T) :=
      (le_abs_self _).trans hratio
    have hslopeUp :
        endpointRationalSlopeOutsideGapRatioCross
          (putnamRateGapSet ε T)
          (putnamSlopeParameterSet ε T) T ≤
            (32 / ε ^ 2) * Real.exp (ε * T) :=
      (le_abs_self _).trans hslope
    have hsplit :=
      pickupCross_eq_gap_ratio_slope_reduced
        (putnamRateGapSet ε T)
        (putnamSlopeParameterSet ε T) T
    nlinarith
  · intro hcross ε hε
    obtain ⟨C, R, hC, hR, hbound⟩ := hcross ε hε
    have hsectorC : 0 ≤ 96 / ε ^ 2 :=
      div_nonneg (by norm_num) (sq_nonneg ε)
    refine ⟨C + 96 / ε ^ 2, R,
      add_nonneg hC hsectorC, hR, ?_⟩
    intro T hG hT
    have hT0 : 0 ≤ T := hR.trans hT
    have hgap := putnam_sparse_gap_all_rate ε hε hT0
    have hratio := putnam_ratio_outside_gap_all_rate ε hε hT0
    have hslope :=
      putnam_rationalSlope_outside_gap_ratio_all_rate
        ε hε hT0
    have hgapNeg :
        -endpointGapSetCross (putnamRateGapSet ε T) T ≤
          (32 / ε ^ 2) * Real.exp (ε * T) :=
      (neg_le_abs _).trans hgap
    have hratioNeg :
        -endpointRatioOutsideGapCross
          (putnamRateGapSet ε T) T ≤
          (32 / ε ^ 2) * Real.exp (ε * T) :=
      (neg_le_abs _).trans hratio
    have hslopeNeg :
        -endpointRationalSlopeOutsideGapRatioCross
          (putnamRateGapSet ε T)
          (putnamSlopeParameterSet ε T) T ≤
            (32 / ε ^ 2) * Real.exp (ε * T) :=
      (neg_le_abs _).trans hslope
    have hsource := hbound T hG hT
    have hsplit :=
      pickupCross_eq_gap_ratio_slope_reduced
        (putnamRateGapSet ε T)
        (putnamSlopeParameterSet ε T) T
    nlinarith

/-- Canonical RH return localized to the direct reduced-ratio core.  The core
premise remains unproved. -/
theorem riemannHypothesis_of_dense_reduced_ratio_core_good_scales
    {G : Set ℝ}
    (hcover : AffineFrequent G)
    (hcore : DenseReducedRatioCoreAllRateOn G) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_cross_good_scales hcover
    ((denseReducedRatioCoreAllRateOn_iff_crossOn G).mp hcore)

end GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
