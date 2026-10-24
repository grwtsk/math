/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported project and Mathlib results retain their original credits/licenses.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. Owners: #350 / #347 / #343 / #335 / #334 RH-E02.
-/
import GRWTSK.NumberTheory.Moebius.AllDampingMertensMeanSquare
import Mathlib.Topology.Algebra.InfiniteSum.Real

/-!
# Cumulative weighted Mertens-square criterion

The every-positive weighted Mertens-square family is replaced by one finite
horizon budget.  Let

`b n = M(n)^2 * n^(-1) * (n+1)^(-1)`

with the repository's actual real Möbius prefix and its literal value at zero.
Then summability of `b n * (n+1)^(-ε)` for every `ε > 0` is equivalent to
subpolynomial growth of the cumulative sums of `b`.

The reverse implication uses a finite Abel identity.  Its endpoint term is
retained.  The strict choice `δ = ε / 2` makes the remaining power exponent
`δ - ε - 1 < -1`; choosing `δ = ε` would leave the harmonic boundary.

This module proves only a criterion and a conditional endpoint.  It does not
establish the cumulative arithmetic bound or prove RH unconditionally.  All
proof scripts await exact-head elaboration and transitive trust review.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

open scoped BigOperators

open GRWTSK.Analysis.SpecialFunctions.PowerIntervalDrop
open GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare

/-- The undamped positive density underlying the existing weighted
Mertens-square family.  Its zero value is inherited from the actual prefix. -/
def weightedMertensBaseTerm (n : ℕ) : ℝ :=
  pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(1 : ℝ)) *
    ((n + 1 : ℕ) : ℝ) ^ (-(1 : ℝ))

/-- Finite cumulative weighted Mertens-square mass. -/
def weightedMertensCumulative (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range N, weightedMertensBaseTerm n

/-- The finite arithmetic target: every positive power dominates the complete
cumulative mass with a constant allowed to depend on that power. -/
def SubpolynomialCumulativeWeightedMertensSquare : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ N : ℕ, 1 ≤ N →
      weightedMertensCumulative N ≤ C * (N : ℝ) ^ δ

theorem weightedMertensBaseTerm_nonneg (n : ℕ) :
    0 ≤ weightedMertensBaseTerm n := by
  unfold weightedMertensBaseTerm
  positivity

theorem weightedMertensCumulative_nonneg (N : ℕ) :
    0 ≤ weightedMertensCumulative N := by
  unfold weightedMertensCumulative
  exact Finset.sum_nonneg fun n _ => weightedMertensBaseTerm_nonneg n

@[simp] theorem weightedMertensCumulative_zero :
    weightedMertensCumulative 0 = 0 := by
  simp [weightedMertensCumulative]

theorem weightedMertensCumulative_succ (N : ℕ) :
    weightedMertensCumulative (N + 1) =
      weightedMertensCumulative N + weightedMertensBaseTerm N := by
  simp [weightedMertensCumulative, Finset.sum_range_succ]

/-- The inherited weighted source is exactly the base density times one
additional damping power. -/
theorem weightedMertensSquareTerm_eq_base (ε : ℝ) (n : ℕ) :
    pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(1 : ℝ)) *
        ((n + 1 : ℕ) : ℝ) ^ (-(1 + ε)) =
      weightedMertensBaseTerm n *
        ((n + 1 : ℕ) : ℝ) ^ (-ε) := by
  have hn : (0 : ℝ) < ((n + 1 : ℕ) : ℝ) := by positivity
  unfold weightedMertensBaseTerm
  rw [show -(1 + ε) = (-(1 : ℝ)) + (-ε) by ring,
    Real.rpow_add hn]
  ring

theorem criticalWeightedMertensSquareSummable_iff_base (ε : ℝ) :
    CriticalWeightedMertensSquareSummable ε ↔
      Summable (fun n : ℕ =>
        weightedMertensBaseTerm n *
          ((n + 1 : ℕ) : ℝ) ^ (-ε)) := by
  unfold CriticalWeightedMertensSquareSummable
  constructor
  · intro hs
    exact hs.congr fun n => weightedMertensSquareTerm_eq_base ε n
  · intro hs
    exact hs.congr fun n => (weightedMertensSquareTerm_eq_base ε n).symm

/-- Generic finite Abel summation in the indexing used below.  The terminal
cumulative term is not discarded. -/
theorem finite_abel_sum (b w : ℕ → ℝ) (N : ℕ) :
    (∑ n ∈ Finset.range (N + 1), b n * w n) =
      (∑ n ∈ Finset.range (N + 1), b n) * w N +
        ∑ n ∈ Finset.range N,
          (∑ k ∈ Finset.range (n + 1), b k) *
            (w n - w (n + 1)) := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [Finset.sum_range_succ (fun n => b n * w n) (N + 1), ih,
        Finset.sum_range_succ b (N + 1),
        Finset.sum_range_succ
          (fun n => (∑ k ∈ Finset.range (n + 1), b k) * (w n - w (n + 1))) N]
      ring

/-- Abel summation for the actual cumulative Mertens-square density. -/
theorem weightedMertens_partial_sum_abel (ε : ℝ) (N : ℕ) :
    (∑ n ∈ Finset.range (N + 1),
      weightedMertensBaseTerm n *
        ((n + 1 : ℕ) : ℝ) ^ (-ε)) =
      weightedMertensCumulative (N + 1) *
        ((N + 1 : ℕ) : ℝ) ^ (-ε) +
      ∑ n ∈ Finset.range N,
        weightedMertensCumulative (n + 1) *
          (((n + 1 : ℕ) : ℝ) ^ (-ε) -
            ((n + 2 : ℕ) : ℝ) ^ (-ε)) := by
  simpa only [weightedMertensCumulative, Nat.cast_add, Nat.cast_one,
    Nat.cast_ofNat, add_assoc, one_add_one_eq_two] using finite_abel_sum weightedMertensBaseTerm
      (fun n : ℕ => ((n + 1 : ℕ) : ℝ) ^ (-ε)) N

/-- A genuinely summable positive damping bounds every undamped finite prefix
at the corresponding power scale. -/
theorem cumulative_bound_of_weightedSummable
    {δ : ℝ} (hδ : 0 < δ)
    (hs : Summable (fun n : ℕ =>
      weightedMertensBaseTerm n *
        ((n + 1 : ℕ) : ℝ) ^ (-δ))) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ N : ℕ, 1 ≤ N →
      weightedMertensCumulative N ≤ C * (N : ℝ) ^ δ := by
  let C : ℝ := ∑' n : ℕ,
    weightedMertensBaseTerm n *
      ((n + 1 : ℕ) : ℝ) ^ (-δ)
  have hC : 0 ≤ C := by
    dsimp [C]
    exact tsum_nonneg fun n =>
      mul_nonneg (weightedMertensBaseTerm_nonneg n)
        (Real.rpow_nonneg (by positivity) _)
  refine ⟨C, hC, ?_⟩
  intro N hN
  have hNpos : (0 : ℝ) < (N : ℝ) := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hN)
  unfold weightedMertensCumulative
  calc
    (∑ n ∈ Finset.range N, weightedMertensBaseTerm n) =
        ∑ n ∈ Finset.range N,
          (weightedMertensBaseTerm n *
            ((n + 1 : ℕ) : ℝ) ^ (-δ)) *
              ((n + 1 : ℕ) : ℝ) ^ δ := by
      apply Finset.sum_congr rfl
      intro n hn
      have hnp : (0 : ℝ) < ((n + 1 : ℕ) : ℝ) := by positivity
      rw [mul_assoc, ← Real.rpow_add hnp]
      norm_num
    _ ≤ ∑ n ∈ Finset.range N,
          (weightedMertensBaseTerm n *
            ((n + 1 : ℕ) : ℝ) ^ (-δ)) *
              (N : ℝ) ^ δ := by
      apply Finset.sum_le_sum
      intro n hn
      have hnN : ((n + 1 : ℕ) : ℝ) ≤ (N : ℝ) := by
        exact_mod_cast Nat.succ_le_of_lt (Finset.mem_range.mp hn)
      have hp := Real.rpow_le_rpow (Nat.cast_nonneg _) hnN hδ.le
      exact mul_le_mul_of_nonneg_left hp
        (mul_nonneg (weightedMertensBaseTerm_nonneg n)
          (Real.rpow_nonneg (by positivity) _))
    _ = (∑ n ∈ Finset.range N,
          weightedMertensBaseTerm n *
            ((n + 1 : ℕ) : ℝ) ^ (-δ)) *
          (N : ℝ) ^ δ := by rw [Finset.sum_mul]
    _ ≤ C * (N : ℝ) ^ δ := by
      apply mul_le_mul_of_nonneg_right
        (hs.sum_le_tsum (Finset.range N) fun n _ =>
          mul_nonneg (weightedMertensBaseTerm_nonneg n)
            (Real.rpow_nonneg (by positivity) _))
      positivity

/-- The all-positive family therefore supplies the finite subpolynomial
criterion. -/
theorem subpolynomialCumulative_of_allPositive
    (hs : AllPositiveWeightedMertensSquare) :
    SubpolynomialCumulativeWeightedMertensSquare := by
  intro δ hδ
  exact cumulative_bound_of_weightedSummable hδ
    ((criticalWeightedMertensSquareSummable_iff_base δ).mp (hs δ hδ))

/-- The cumulative hypothesis at a strictly smaller exponent uniformly bounds
all positive-damping partial sums. -/
theorem weighted_partial_sum_bound_of_subpolynomial
    (hsub : SubpolynomialCumulativeWeightedMertensSquare)
    {ε : ℝ} (hε : 0 < ε) :
    ∃ K : ℝ, 0 ≤ K ∧ ∀ N : ℕ,
      (∑ n ∈ Finset.range N,
        weightedMertensBaseTerm n *
          ((n + 1 : ℕ) : ℝ) ^ (-ε)) ≤ K := by
  let δ : ℝ := ε / 2
  have hδ : 0 < δ := by dsimp [δ]; linarith
  obtain ⟨C, hC, hA⟩ := hsub δ hδ
  let p : ℕ → ℝ := fun n =>
    ((n + 1 : ℕ) : ℝ) ^ (δ - ε - 1)
  have hp : Summable p := by
    have hbase : Summable (fun n : ℕ =>
        (n : ℝ) ^ (δ - ε - 1)) :=
      Real.summable_nat_rpow.mpr (by dsimp [δ]; linarith)
    have hshift := (summable_nat_add_iff 1).2 hbase
    simpa only [p, Nat.cast_add, Nat.cast_one] using hshift
  let P : ℝ := ∑' n : ℕ, p n
  have hP : 0 ≤ P := by
    dsimp [P, p]
    exact tsum_nonneg fun n => Real.rpow_nonneg (by positivity) _
  let K : ℝ := C + (C * ε) * P
  have hK : 0 ≤ K := by
    dsimp [K]
    exact add_nonneg hC (mul_nonneg (mul_nonneg hC hε.le) hP)
  refine ⟨K, hK, ?_⟩
  intro M
  cases M with
  | zero => simpa only [Finset.range_zero, Finset.sum_empty] using hK
  | succ N =>
      rw [weightedMertens_partial_sum_abel ε N]
      have hterminal :
          weightedMertensCumulative (N + 1) *
              ((N + 1 : ℕ) : ℝ) ^ (-ε) ≤ C := by
        have hA' := hA (N + 1) (by omega)
        have hbase : (1 : ℝ) ≤ ((N + 1 : ℕ) : ℝ) := by
          exact_mod_cast (by omega : 1 ≤ N + 1)
        calc
          weightedMertensCumulative (N + 1) *
              ((N + 1 : ℕ) : ℝ) ^ (-ε) ≤
              (C * ((N + 1 : ℕ) : ℝ) ^ δ) *
                ((N + 1 : ℕ) : ℝ) ^ (-ε) :=
            mul_le_mul_of_nonneg_right hA'
              (Real.rpow_nonneg (by positivity) _)
          _ = C * ((N + 1 : ℕ) : ℝ) ^ (δ - ε) := by
            rw [mul_assoc, ← Real.rpow_add (by positivity)]
            congr 2
          _ ≤ C * 1 := by
            apply mul_le_mul_of_nonneg_left _ hC
            simpa only [Real.rpow_zero] using
              Real.rpow_le_rpow_of_exponent_le hbase
                (show δ - ε ≤ 0 by dsimp [δ]; linarith)
          _ = C := mul_one C
      have hsum :
          (∑ n ∈ Finset.range N,
            weightedMertensCumulative (n + 1) *
              (((n + 1 : ℕ) : ℝ) ^ (-ε) -
                ((n + 2 : ℕ) : ℝ) ^ (-ε))) ≤
            (C * ε) * P := by
        calc
          (∑ n ∈ Finset.range N,
            weightedMertensCumulative (n + 1) *
              (((n + 1 : ℕ) : ℝ) ^ (-ε) -
                ((n + 2 : ℕ) : ℝ) ^ (-ε))) ≤
              ∑ n ∈ Finset.range N, (C * ε) * p n := by
            apply Finset.sum_le_sum
            intro n hn
            let x : ℝ := (n + 1 : ℕ)
            have hx : 0 < x := by dsimp [x]; positivity
            have hA' := hA (n + 1) (by omega)
            have hdrop0 : 0 ≤
                x ^ (-ε) - (x + 1) ^ (-ε) := by
              apply sub_nonneg.mpr
              exact Real.rpow_le_rpow_of_nonpos hx
                (by linarith : x ≤ x + 1) (by linarith : -ε ≤ 0)
            have hdrop :
                x ^ (-ε) - (x + 1) ^ (-ε) ≤
                  ε * x ^ (-ε - 1) :=
              rpow_sub_rpow_add_one_le hx hε.le
            calc
              weightedMertensCumulative (n + 1) *
                  (((n + 1 : ℕ) : ℝ) ^ (-ε) -
                    ((n + 2 : ℕ) : ℝ) ^ (-ε)) =
                  weightedMertensCumulative (n + 1) *
                    (x ^ (-ε) - (x + 1) ^ (-ε)) := by
                dsimp [x]
                push_cast
                ring
              _ ≤ (C * x ^ δ) *
                    (x ^ (-ε) - (x + 1) ^ (-ε)) :=
                mul_le_mul_of_nonneg_right hA' hdrop0
              _ ≤ (C * x ^ δ) *
                    (ε * x ^ (-ε - 1)) :=
                mul_le_mul_of_nonneg_left hdrop
                  (mul_nonneg hC (Real.rpow_nonneg hx.le _))
              _ = (C * ε) * x ^ (δ - ε - 1) := by
                rw [show δ - ε - 1 = δ + (-ε - 1) by ring, Real.rpow_add hx]
                ring
              _ = (C * ε) * p n := by
                dsimp [p, x]
          _ ≤ ∑' n : ℕ, (C * ε) * p n := by
            exact (hp.mul_left (C * ε)).sum_le_tsum
              (Finset.range N) fun n _ =>
                mul_nonneg (mul_nonneg hC hε.le)
                  (Real.rpow_nonneg (by positivity) _)
          _ = (C * ε) * P := by
            simp [P, tsum_mul_left]
      calc
        weightedMertensCumulative (N + 1) *
              ((N + 1 : ℕ) : ℝ) ^ (-ε) +
            ∑ n ∈ Finset.range N,
              weightedMertensCumulative (n + 1) *
                (((n + 1 : ℕ) : ℝ) ^ (-ε) -
                  ((n + 2 : ℕ) : ℝ) ^ (-ε)) ≤
            C + (C * ε) * P := add_le_add hterminal hsum
        _ = K := rfl

/-- Subpolynomial cumulative growth pays every positive weighted series. -/
theorem allPositive_of_subpolynomialCumulative
    (hsub : SubpolynomialCumulativeWeightedMertensSquare) :
    AllPositiveWeightedMertensSquare := by
  intro ε hε
  apply (criticalWeightedMertensSquareSummable_iff_base ε).mpr
  obtain ⟨K, hK, hbound⟩ :=
    weighted_partial_sum_bound_of_subpolynomial hsub hε
  exact summable_of_sum_range_le
    (fun n => mul_nonneg (weightedMertensBaseTerm_nonneg n)
      (Real.rpow_nonneg (by positivity) _)) hbound

/-- The infinite all-positive family and the finite subpolynomial budget are
exactly equivalent. -/
theorem allPositiveWeightedMertensSquare_iff_subpolynomialCumulative :
    AllPositiveWeightedMertensSquare ↔
      SubpolynomialCumulativeWeightedMertensSquare :=
  ⟨subpolynomialCumulative_of_allPositive,
    allPositive_of_subpolynomialCumulative⟩

/-- Conditional terminal return through the already isolated RH-E02 route. -/
theorem riemannHypothesis_of_subpolynomialCumulativeWeightedMertensSquare
    (hsub : SubpolynomialCumulativeWeightedMertensSquare) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_allPositiveWeightedMertensSquare
    (allPositiveWeightedMertensSquare_iff_subpolynomialCumulative.mpr hsub)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
