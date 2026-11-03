/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib proofs retain their upstream attribution and licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.EndpointCovarianceDyadicAbel
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupDyadicEndpoint
import Mathlib.NumberTheory.Harmonic.Bounds
import Mathlib.Tactic

/-!
# Paying sparse symmetric exclusions in the exact signed pickup covariance

The original two-response Gram has an unconditional pointwise envelope
`|pickupResponseGram T m n| ≤ 4*T/(sqrt m * sqrt n)` for nonnegative T and
positive m,n.  For a symmetric finite exclusion relation with row degree at most
K, the inequality `2*w_m*w_n ≤ w_m²+w_n²` permits a *weighted* bound
`sum_(excluded ordered pairs) w_m*w_n ≤ K*sum_m w_m²`.

The actual existing `excludedRow A m` is symmetric on positive indices,
including the truncated natural subtraction branch. Its row count is at most
`2*A.card+5`.  Thus the ENTIRE excluded signed original-source covariance
costs at most `4*T*(1+T)*(2*A.card+5)`, with no cutoff-power loss.

The FULL original signed covariance equals regular plus exceptional,
so an all-positive-rate upper bound on the *regular* covariance for one
fixed A suffices for the existing canonical RH return. No such regular
bound is established here; no actual number-theoretic bad set is presumed
to lie in this mask.  The ordinary theta PNT is not a Mobius correlation
supplier, and neither it nor an RH-equivalent bound is imported.

SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOMS_NOT_RUN / EXPECTED_TYPES_NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupSparseExceptionalCovariance

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.EndpointCovarianceDyadicAbel
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- Symmetry of the exact five-neighborhood and the two translates of A on
positive indices.  Truncated subtraction can produce zero but zero is not in
the original positive endpoint inventory. -/
theorem excludedRow_symmetric (A : Finset ℕ) {m n : ℕ}
    (hm : 1 ≤ m) (hn : 1 ≤ n)
    (h : n ∈ excludedRow A m) : m ∈ excludedRow A n := by
  classical
  simp only [excludedRow, Finset.mem_union, Finset.mem_Icc,
    Finset.mem_image] at h ⊢
  rcases h with (hlocal | hplus) | hminus
  · exact Or.inl (Or.inl (by omega))
  · rcases hplus with ⟨a, ha, heq⟩
    exact Or.inr ⟨a, ha, by omega⟩
  · rcases hminus with ⟨a, ha, heq⟩
    exact Or.inl (Or.inr ⟨a, ha, by omega⟩)

/-- The actual mask of ordered off-diagonal pairs. -/
def exceptionalPair (A : Finset ℕ) (m n : ℕ) : Prop :=
  m ≠ n ∧ n ∈ excludedRow A m

theorem exceptionalPair_symmetric (A : Finset ℕ) {m n : ℕ}
    (hm : 1 ≤ m) (hn : 1 ≤ n) :
    exceptionalPair A m n ↔ exceptionalPair A n m := by
  constructor
  · rintro ⟨hne, hmem⟩
    exact ⟨hne.symm, excludedRow_symmetric A hm hn hmem⟩
  · rintro ⟨hne, hmem⟩
    exact ⟨hne.symm, excludedRow_symmetric A hn hm hmem⟩

/-- Pure finite weighted Schur/AM--GM estimate.  It needs BOTH source-bound
row-degree control and symmetry; no cancellation or analytic hypothesis is
hidden in the statement.  The full ordered relation, not a half-triangle,
is used. -/
theorem symmetric_degree_weighted_bound
    (S : Finset ℕ) (R : ℕ → ℕ → Prop) (w : ℕ → ℝ) (K : ℕ)
    (hSymm : ∀ m ∈ S, ∀ n ∈ S, R m n ↔ R n m)
    (hDegree : ∀ m ∈ S, (S.filter (fun n => R m n)).card ≤ K) :
    (∑ m ∈ S, ∑ n ∈ S, if R m n then w m * w n else 0) ≤
      (K : ℝ) * ∑ m ∈ S, (w m) ^ 2 := by
  classical
  let Q : ℝ := ∑ m ∈ S, ∑ n ∈ S, if R m n then w m * w n else 0
  let D : ℝ := ∑ m ∈ S, ∑ n ∈ S, if R m n then (w m) ^ 2 else 0
  let D' : ℝ := ∑ m ∈ S, ∑ n ∈ S, if R m n then (w n) ^ 2 else 0
  have hquad : 2 * Q ≤ D + D' := by
    dsimp [Q, D, D']
    calc
      2 * (∑ m ∈ S, ∑ n ∈ S, if R m n then w m * w n else 0) =
        ∑ m ∈ S, ∑ n ∈ S,
          2 * (if R m n then w m * w n else 0) := by
            simp only [Finset.mul_sum]
      _ ≤ ∑ m ∈ S, ∑ n ∈ S,
            ((if R m n then (w m) ^ 2 else 0) +
              (if R m n then (w n) ^ 2 else 0)) := by
            apply Finset.sum_le_sum
            intro m hm
            apply Finset.sum_le_sum
            intro n hn
            by_cases hr : R m n
            · simp only [if_pos hr]
              nlinarith [sq_nonneg (w m - w n)]
            · simp [hr]
      _ = (∑ m ∈ S, ∑ n ∈ S, if R m n then (w m) ^ 2 else 0) +
          (∑ m ∈ S, ∑ n ∈ S, if R m n then (w n) ^ 2 else 0) := by
            simp only [Finset.sum_add_distrib]
  have htranspose : D' = D := by
    dsimp [D', D]
    calc
      (∑ m ∈ S, ∑ n ∈ S, if R m n then (w n) ^ 2 else 0) =
        ∑ n ∈ S, ∑ m ∈ S, if R m n then (w n) ^ 2 else 0 :=
          Finset.sum_comm
      _ = ∑ n ∈ S, ∑ m ∈ S, if R n m then (w n) ^ 2 else 0 := by
        apply Finset.sum_congr rfl
        intro n hn
        apply Finset.sum_congr rfl
        intro m hm
        by_cases hr : R m n
        · have hrev : R n m := (hSymm n hn m hm).mpr hr
          simp [hr, hrev]
        · have hrev : ¬ R n m := by
            intro h
            exact hr ((hSymm n hn m hm).mp h)
          simp [hr, hrev]
      _ = _ := rfl
  have hdegreeSum : D ≤ (K : ℝ) * ∑ m ∈ S, (w m) ^ 2 := by
    dsimp [D]
    calc
      (∑ m ∈ S, ∑ n ∈ S, if R m n then (w m) ^ 2 else 0) =
        ∑ m ∈ S, (((S.filter (fun n => R m n)).card : ℝ) * (w m) ^ 2) := by
          apply Finset.sum_congr rfl
          intro m hm
          rw [← Finset.sum_filter]
          simp only [Finset.sum_const, nsmul_eq_mul]
      _ ≤ ∑ m ∈ S, (K : ℝ) * (w m) ^ 2 := by
        apply Finset.sum_le_sum
        intro m hm
        exact mul_le_mul_of_nonneg_right
          (by exact_mod_cast hDegree m hm) (sq_nonneg (w m))
      _ = (K : ℝ) * ∑ m ∈ S, (w m) ^ 2 := by rw [Finset.mul_sum]
  change Q ≤ (K : ℝ) * ∑ m ∈ S, (w m) ^ 2
  rw [htranspose] at hquad
  linarith

/-- The nonnegative actual response is bounded by twice the inverse square
root after its source birth, and vanishes before that birth. -/
theorem pickupResponse_nonneg_and_le (n : ℕ) (hn : 1 ≤ n) (u : ℝ) :
    0 ≤ pickupResponse n u ∧
      pickupResponse n u ≤ 2 * (Real.sqrt (n : ℝ))⁻¹ := by
  by_cases hu : Real.log (n : ℝ) ≤ u
  · simp only [pickupResponse, if_pos hu]
    have hdrop : Real.exp (-u / 2) ≤ (Real.sqrt (n : ℝ))⁻¹ := by
      rw [← pickup_exp_negative_log_half hn]
      exact Real.exp_le_exp.mpr (by linarith)
    have hexp := Real.exp_pos (-u / 2)
    constructor <;> nlinarith
  · simp only [pickupResponse, if_neg hu]
    constructor <;> positivity

/-- The TRUE response Gram is uniformly bounded by its original positive
kernel envelope; no surrogate or source-independent Gram is introduced. -/
theorem pickupResponseGram_abs_le {m n : ℕ}
    (hm : 1 ≤ m) (hn : 1 ≤ n) {T : ℝ} (hT : 0 ≤ T) :
    |pickupResponseGram T m n| ≤
      4 * T * (Real.sqrt (m : ℝ))⁻¹ * (Real.sqrt (n : ℝ))⁻¹ := by
  let W : ℝ := 4 * (Real.sqrt (m : ℝ))⁻¹ * (Real.sqrt (n : ℝ))⁻¹
  have hb (u : ℝ) :
      0 ≤ pickupResponse m u * pickupResponse n u ∧
        pickupResponse m u * pickupResponse n u ≤ W := by
    obtain ⟨hm0, hm2⟩ := pickupResponse_nonneg_and_le m hm u
    obtain ⟨hn0, hn2⟩ := pickupResponse_nonneg_and_le n hn u
    constructor
    · positivity
    · dsimp [W]
      calc
        pickupResponse m u * pickupResponse n u ≤
            (2 * (Real.sqrt (m : ℝ))⁻¹) * (2 * (Real.sqrt (n : ℝ))⁻¹) :=
          mul_le_mul hm2 hn2 hn0 (by positivity)
        _ = _ := by ring
  have hi := pickupResponse_product_intervalIntegrable hm hn 0 T
  have hz : IntervalIntegrable (fun _u : ℝ => (0 : ℝ)) MeasureTheory.volume 0 T :=
    continuous_const.intervalIntegrable 0 T
  have hw : IntervalIntegrable (fun _u : ℝ => W) MeasureTheory.volume 0 T :=
    continuous_const.intervalIntegrable 0 T
  have hlow : 0 ≤ pickupResponseGram T m n := by
    have h := intervalIntegral.integral_mono_on hT hz hi (fun u _ => (hb u).1)
    simpa [pickupResponseGram] using h
  have hupp : pickupResponseGram T m n ≤ T * W := by
    have h := intervalIntegral.integral_mono_on hT hi hw (fun u _ => (hb u).2)
    simpa [pickupResponseGram] using h
  rw [abs_of_nonneg hlow]
  calc
    pickupResponseGram T m n ≤ T * W := hupp
    _ = _ := by dsimp [W]; ring

/-- Masked signed ordered covariance of the original source; no cancellation
from the excluded pairs is used. -/
def excludedCovariance (A : Finset ℕ) (T : ℝ) : ℝ :=
  let N := ⌊Real.exp T⌋₊
  ∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N,
    if exceptionalPair A m n then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n else 0

/-- All other actual off-diagonal pairs, with their original signed Gram. -/
def regularCovariance (A : Finset ℕ) (T : ℝ) : ℝ :=
  let N := ⌊Real.exp T⌋₊
  ∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N,
    if m ≠ n ∧ n ∉ excludedRow A m then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n else 0

/-- EXACT decomposition: every ordered pair belongs to one and only one
sector, and diagonal pairs remain zero in both. -/
theorem pickupCross_eq_regular_add_excluded (A : Finset ℕ) (T : ℝ) :
    pickupCross T = regularCovariance A T + excludedCovariance A T := by
  classical
  unfold pickupCross regularCovariance excludedCovariance exceptionalPair
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases heq : m = n
  · simp [heq]
  · by_cases hbad : n ∈ excludedRow A m
    · simp [heq, hbad]
    · simp [heq, hbad]

/-- The actual pair mask has at most the established row degree, including
both positive translated branches and the full five-local neighborhood. -/
theorem exceptionalPair_row_degree (A : Finset ℕ) (N m : ℕ) :
    ((Finset.Icc 1 N).filter (fun n => exceptionalPair A m n)).card ≤
      2 * A.card + 5 := by
  have hsub : ((Finset.Icc 1 N).filter (fun n => exceptionalPair A m n)) ⊆
      excludedRow A m := by
    intro n hn
    exact (Finset.mem_filter.mp hn).2.2
  exact (Finset.card_le_card hsub).trans (excludedRow_card_le A m)

/-- The inverse square root has exactly reciprocal-integer square on every
positive index. -/
theorem inverseSqrt_square {n : ℕ} (hn : 1 ≤ n) :
    ((Real.sqrt (n : ℝ))⁻¹) ^ 2 = 1 / (n : ℝ) := by
  rw [inv_pow, Real.sq_sqrt (Nat.cast_nonneg n)]
  ring

/-- The precise weighted exception theorem: no growth with N other than the
harmonic sum.  Symmetry is essential to replace sqrt(N) by log(N). -/
theorem excludedCovariance_abs_le_harmonic
    (A : Finset ℕ) {T : ℝ} (hT : 0 ≤ T) :
    |excludedCovariance A T| ≤
      (4 * T) * ((2 * A.card + 5 : ℕ) : ℝ) *
        (∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, 1 / (m : ℝ)) := by
  classical
  let N := ⌊Real.exp T⌋₊
  let S := Finset.Icc 1 N
  let R := exceptionalPair A
  let w : ℕ → ℝ := fun n => (Real.sqrt (n : ℝ))⁻¹
  let K : ℕ := 2 * A.card + 5
  have hSymm : ∀ m ∈ S, ∀ n ∈ S, R m n ↔ R n m := by
    intro m hm n hn
    exact exceptionalPair_symmetric A (Finset.mem_Icc.mp hm).1 (Finset.mem_Icc.mp hn).1
  have hDegree : ∀ m ∈ S, (S.filter (fun n => R m n)).card ≤ K := by
    intro m hm
    exact exceptionalPair_row_degree A N m
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
  have hterm : |excludedCovariance A T| ≤
      (4 * T) * (∑ m ∈ S, ∑ n ∈ S, if R m n then w m * w n else 0) := by
    calc
      |excludedCovariance A T| ≤
          ∑ m ∈ S, ∑ n ∈ S,
            if R m n then
              |moebiusReal m * moebiusReal n * pickupResponseGram T m n|
            else 0 := by
              unfold excludedCovariance
              calc
                _ ≤ ∑ m ∈ S, |
                    ∑ n ∈ S, if R m n then
                      moebiusReal m * moebiusReal n * pickupResponseGram T m n else 0| :=
                    Finset.abs_sum_le_sum_abs _ _
                _ ≤ ∑ m ∈ S, ∑ n ∈ S, if R m n then
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
    |excludedCovariance A T| ≤
        (4 * T) * (∑ m ∈ S, ∑ n ∈ S, if R m n then w m * w n else 0) := hterm
    _ ≤ (4 * T) * ((K : ℝ) * (∑ m ∈ S, 1 / (m : ℝ))) :=
      mul_le_mul_of_nonneg_left hweighted (by positivity)
    _ = (4 * T) * ((2 * A.card + 5 : ℕ) : ℝ) *
        (∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, 1 / (m : ℝ)) := by
          simp only [K, S, N]
          ring

/-- Original endpoint harmonic inventory; PNT is NOT needed for this bound. -/
theorem original_harmonic_le_one_add_time {T : ℝ} (hT : 0 ≤ T) :
    (∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, 1 / (m : ℝ)) ≤ 1 + T := by
  have hx : 1 ≤ Real.exp T := by simpa using Real.exp_le_exp.mpr hT
  have hh := harmonic_floor_le_one_add_log (Real.exp T) hx
  have he :
      (∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, 1 / (m : ℝ)) =
      (harmonic ⌊Real.exp T⌋₊ : ℝ) := by
    simp only [harmonic_eq_sum_Icc, Rat.cast_sum, Rat.cast_inv,
      Rat.cast_natCast, one_div]
  calc
    _ = (harmonic ⌊Real.exp T⌋₊ : ℝ) := he
    _ ≤ 1 + Real.log (Real.exp T) := hh
    _ = 1 + T := by rw [Real.log_exp]

/-- Full exceptional signed contribution is O(T(1+T)*|A|) without a
cutoff-power loss; the ordered m,n inventory is unchanged. -/
theorem excludedCovariance_abs_le_polynomial
    (A : Finset ℕ) {T : ℝ} (hT : 0 ≤ T) :
    |excludedCovariance A T| ≤
      4 * T * (1 + T) * ((2 * A.card + 5 : ℕ) : ℝ) := by
  have hH := original_harmonic_le_one_add_time hT
  have hS := excludedCovariance_abs_le_harmonic A hT
  calc
    _ ≤ (4 * T) * ((2 * A.card + 5 : ℕ) : ℝ) *
         (∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, 1 / (m : ℝ)) := hS
    _ ≤ (4 * T) * ((2 * A.card + 5 : ℕ) : ℝ) * (1 + T) :=
      mul_le_mul_of_nonneg_left hH (by positivity)
    _ = _ := by ring

/-- This error is subexponential at every positive rate for any FIXED A.
The restriction `fixed A` is essential: its cardinality cannot secretly grow
with the dyadic horizon without an independent growth bound. -/
theorem excludedCovariance_subexponential (A : Finset ℕ) :
    SubexponentialUpper (fun T : ℝ => excludedCovariance A T) := by
  have hAbs : SubexponentialUpper (fun T : ℝ => |excludedCovariance A T|) := by
    apply subexponentialUpper_of_polynomial
      (C := 4 * ((2 * A.card + 5 : ℕ) : ℝ)) (q := 2) (by positivity)
    intro T hT
    rw [Real.rpow_two]
    have hbase := excludedCovariance_abs_le_polynomial A hT
    have hpoly : T * (1 + T) ≤ (1 + T) * (1 + T) := by nlinarith
    calc
      _ ≤ 4 * T * (1 + T) * ((2 * A.card + 5 : ℕ) : ℝ) := hbase
      _ = (4 * ((2 * A.card + 5 : ℕ) : ℝ)) * (T * (1 + T)) := by ring
      _ ≤ (4 * ((2 * A.card + 5 : ℕ) : ℝ)) * ((1 + T) * (1 + T)) :=
        mul_le_mul_of_nonneg_left hpoly (by positivity)
  exact hAbs.mono (fun T hT => le_abs_self _)

/-- Source exact RH transfer: the exceptional sector costs only a polynomial,
so the ONLY additional analytic premise is subexponential upper control of the
complete signed REGULAR sector on the already proved dyadic covering grid.
This does not assume the original global endpoint estimate or RH. -/
theorem riemannHypothesis_of_regular_good_scales
    (A : Finset ℕ)
    (hRegular : SubexponentialOn (regularCovariance A) dyadicScales) :
    _root_.RiemannHypothesis := by
  have hUpper : SubexponentialOn pickupCross dyadicScales := by
    apply subexponentialOn_mono
      (add_global hRegular (excludedCovariance_subexponential A))
    intro T hG hT
    rw [pickupCross_eq_regular_add_excluded A T]
  exact riemannHypothesis_of_cross_good_scales dyadic_coverage hUpper

end GRWTSK.NumberTheory.Moebius.PickupSparseExceptionalCovariance
