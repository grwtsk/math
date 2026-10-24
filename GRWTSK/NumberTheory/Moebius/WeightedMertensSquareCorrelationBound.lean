/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelation

/-!
# The signed correlation criterion for the critical Mertens square

The squarefree diagonal in the weighted Mertens-square decomposition is
bounded unconditionally by a shifted `p`-series.  Consequently, a uniform
upper bound for the signed Möbius--Mertens correlation pays the complete
positive square energy and reaches the critical vertical line.

The signed correlation bound is isolated as an explicit arithmetic premise;
it is not proved here.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelationBound

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefix
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare
open GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelation

/-- The shifted `p`-series which pays the squarefree diagonal. -/
def weightedMertensDiagonalMajorant (ε : ℝ) (N : ℕ) : ℝ :=
  ∑ j ∈ Finset.range N, (((j + 2 : ℕ) : ℝ) ^ (-(1 + ε)))

theorem moebiusReal_sq_le_one (n : ℕ) : moebiusReal n ^ 2 ≤ 1 := by
  have habs : |moebiusReal n| ≤ 1 := by
    simpa [GRWTSK.RiemannHypothesis.CCC.moebiusReal,
      GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.moebiusReal] using
        GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.moebiusReal_abs_le_one n
  rw [← sq_abs]
  nlinarith [abs_nonneg (moebiusReal n)]

theorem sum_range_moebiusReal_sq_le (N : ℕ) :
    (∑ j ∈ Finset.range N, moebiusReal (j + 1) ^ 2) ≤ (N : ℝ) := by
  calc
    _ ≤ ∑ _j ∈ Finset.range N, (1 : ℝ) := by
      apply Finset.sum_le_sum
      intro j _hj
      exact moebiusReal_sq_le_one (j + 1)
    _ = (N : ℝ) := by simp

theorem weightedMertensSquareWeight_nonneg (ε : ℝ) (n : ℕ) :
    0 ≤ weightedMertensSquareWeight ε n := by
  unfold weightedMertensSquareWeight
  positivity

theorem weightedMertensTail_nonneg (ε : ℝ) (j N : ℕ) :
    0 ≤ weightedMertensTail ε j N := by
  unfold weightedMertensTail
  exact Finset.sum_nonneg (fun n _hn => weightedMertensSquareWeight_nonneg ε n)

theorem weightedMertensDiagonal_nonneg (ε : ℝ) (N : ℕ) :
    0 ≤ weightedMertensDiagonal ε N := by
  unfold weightedMertensDiagonal
  exact Finset.sum_nonneg (fun j _hj =>
    mul_nonneg (sq_nonneg _) (weightedMertensTail_nonneg ε j N))

theorem weightedMertensSquareWeight_scale (ε : ℝ) (N : ℕ) :
    ((N + 1 : ℕ) : ℝ) * weightedMertensSquareWeight ε (N + 1) =
      (((N + 2 : ℕ) : ℝ) ^ (-(1 + ε))) := by
  unfold weightedMertensSquareWeight
  have hpos : (0 : ℝ) < ((N + 1 : ℕ) : ℝ) := by positivity
  rw [Real.rpow_neg hpos.le, Real.rpow_one]
  field_simp

theorem weightedMertensDiagonal_succ (ε : ℝ) (N : ℕ) :
    weightedMertensDiagonal ε (N + 1) =
      weightedMertensDiagonal ε N +
        (∑ j ∈ Finset.range (N + 1), moebiusReal (j + 1) ^ 2) *
          weightedMertensSquareWeight ε (N + 1) := by
  unfold weightedMertensDiagonal
  rw [Finset.sum_range_succ, weightedMertensTail_self]
  have htails :
      (∑ j ∈ Finset.range N,
        moebiusReal (j + 1) ^ 2 * weightedMertensTail ε j (N + 1)) =
      (∑ j ∈ Finset.range N,
        moebiusReal (j + 1) ^ 2 * weightedMertensTail ε j N) +
        (∑ j ∈ Finset.range N, moebiusReal (j + 1) ^ 2) *
          weightedMertensSquareWeight ε (N + 1) := by
    calc
      _ = ∑ j ∈ Finset.range N,
          (moebiusReal (j + 1) ^ 2 * weightedMertensTail ε j N +
            moebiusReal (j + 1) ^ 2 *
              weightedMertensSquareWeight ε (N + 1)) := by
        apply Finset.sum_congr rfl
        intro j hj
        rw [weightedMertensTail_succ (Finset.mem_range.mp hj)]
        ring
      _ = _ := by rw [Finset.sum_add_distrib, Finset.sum_mul]
  rw [htails, Finset.sum_range_succ]
  ring

theorem weightedMertensDiagonalMajorant_succ (ε : ℝ) (N : ℕ) :
    weightedMertensDiagonalMajorant ε (N + 1) =
      weightedMertensDiagonalMajorant ε N +
        (((N + 2 : ℕ) : ℝ) ^ (-(1 + ε))) := by
  unfold weightedMertensDiagonalMajorant
  rw [Finset.sum_range_succ]

/-- The squarefree diagonal is pointwise dominated by the shifted
`(1+ε)`-series. -/
theorem weightedMertensDiagonal_le_majorant (ε : ℝ) (N : ℕ) :
    weightedMertensDiagonal ε N ≤ weightedMertensDiagonalMajorant ε N := by
  induction N with
  | zero => simp [weightedMertensDiagonal, weightedMertensDiagonalMajorant]
  | succ N ih =>
      rw [weightedMertensDiagonal_succ,
        weightedMertensDiagonalMajorant_succ]
      apply add_le_add ih
      calc
        (∑ j ∈ Finset.range (N + 1), moebiusReal (j + 1) ^ 2) *
              weightedMertensSquareWeight ε (N + 1) ≤
            ((N + 1 : ℕ) : ℝ) *
              weightedMertensSquareWeight ε (N + 1) :=
          mul_le_mul_of_nonneg_right (sum_range_moebiusReal_sq_le (N + 1))
            (weightedMertensSquareWeight_nonneg ε (N + 1))
        _ = (((N + 2 : ℕ) : ℝ) ^ (-(1 + ε))) :=
          weightedMertensSquareWeight_scale ε N

/-- A uniform upper bound for the signed part of the exact decomposition. -/
def WeightedMertensCorrelationUniform (ε : ℝ) : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∀ N : ℕ, weightedMertensCorrelation ε N ≤ C

theorem summable_shifted_diagonalMajorant {ε : ℝ} (hε : 0 < ε) :
    Summable (fun j : ℕ => (((j + 2 : ℕ) : ℝ) ^ (-(1 + ε)))) := by
  have hs : Summable (fun n : ℕ => (n : ℝ) ^ (-(1 + ε))) :=
    Real.summable_nat_rpow.mpr (by linarith)
  simpa only [Nat.cast_add, Nat.cast_ofNat] using
    (summable_nat_add_iff (f := fun n : ℕ => (n : ℝ) ^ (-(1 + ε))) 2).mpr hs

theorem weightedMertensDiagonal_le_tsum {ε : ℝ} (hε : 0 < ε) (N : ℕ) :
    weightedMertensDiagonal ε N ≤
      ∑' j : ℕ, (((j + 2 : ℕ) : ℝ) ^ (-(1 + ε))) := by
  exact (weightedMertensDiagonal_le_majorant ε N).trans
    ((summable_shifted_diagonalMajorant hε).sum_le_tsum _
      (fun j _hj => Real.rpow_nonneg (by positivity) _))

theorem weightedMertensSquarePartial_uniform_of_correlation {ε : ℝ}
    (hε : 0 < ε) (hC : WeightedMertensCorrelationUniform ε) :
    ∃ B : ℝ, 0 ≤ B ∧ ∀ N : ℕ, weightedMertensSquarePartial ε N ≤ B := by
  obtain ⟨C, hC0, hcorr⟩ := hC
  let D : ℝ := ∑' j : ℕ, (((j + 2 : ℕ) : ℝ) ^ (-(1 + ε)))
  have hD0 : 0 ≤ D := by
    dsimp [D]
    exact tsum_nonneg (fun _ => Real.rpow_nonneg (by positivity) _)
  refine ⟨C + D, add_nonneg hC0 hD0, ?_⟩
  intro N
  rw [weightedMertensSquarePartial_eq_correlation_add_diagonal]
  exact add_le_add (hcorr N) (weightedMertensDiagonal_le_tsum hε N)

theorem weightedMertensSquareTerm_nonneg (ε : ℝ) (n : ℕ) :
    0 ≤ pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(1 : ℝ)) *
      ((n + 1 : ℕ) : ℝ) ^ (-(1 + ε)) := by
  positivity

theorem weightedMertensSquarePartial_succ (ε : ℝ) (N : ℕ) :
    weightedMertensSquarePartial ε (N + 1) =
      weightedMertensSquarePartial ε N +
        pickupMertensPrefix (N + 1) ^ 2 *
          weightedMertensSquareWeight ε (N + 1) := by
  unfold weightedMertensSquarePartial
  rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1)]

theorem sum_range_succ_weightedMertensSquareTerm (ε : ℝ) (N : ℕ) :
    (∑ n ∈ Finset.range (N + 1),
      pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(1 : ℝ)) *
        ((n + 1 : ℕ) : ℝ) ^ (-(1 + ε))) =
      weightedMertensSquarePartial ε N := by
  induction N with
  | zero =>
      simp [weightedMertensSquarePartial, pickupMertensPrefix]
  | succ N ih =>
      rw [Finset.sum_range_succ, ih, weightedMertensSquarePartial_succ]
      unfold weightedMertensSquareWeight
      ring

/-- Uniform control of the signed correlation implies summability of the
explicit positive weighted Mertens square. -/
theorem weightedMertensSquareSummable_of_correlationUniform {ε : ℝ}
    (hε : 0 < ε) (hC : WeightedMertensCorrelationUniform ε) :
    CriticalWeightedMertensSquareSummable ε := by
  obtain ⟨B, hB0, hpartial⟩ :=
    weightedMertensSquarePartial_uniform_of_correlation hε hC
  unfold CriticalWeightedMertensSquareSummable
  apply summable_of_sum_range_le (weightedMertensSquareTerm_nonneg ε)
  intro N
  cases N with
  | zero => simpa using hB0
  | succ N =>
      rw [sum_range_succ_weightedMertensSquareTerm]
      exact hpartial N

/-- Conversely, summability of the positive square target uniformly bounds
the signed correlation. -/
theorem correlationUniform_of_weightedMertensSquareSummable {ε : ℝ}
    (hs : CriticalWeightedMertensSquareSummable ε) :
    WeightedMertensCorrelationUniform ε := by
  unfold CriticalWeightedMertensSquareSummable at hs
  let S : ℝ := ∑' n : ℕ,
    pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(1 : ℝ)) *
      ((n + 1 : ℕ) : ℝ) ^ (-(1 + ε))
  have hS0 : 0 ≤ S := by
    dsimp [S]
    exact tsum_nonneg (weightedMertensSquareTerm_nonneg ε)
  refine ⟨S, hS0, ?_⟩
  intro N
  have hcorr : weightedMertensCorrelation ε N ≤
      weightedMertensSquarePartial ε N := by
    rw [weightedMertensSquarePartial_eq_correlation_add_diagonal]
    linarith [weightedMertensDiagonal_nonneg ε N]
  calc
    weightedMertensCorrelation ε N ≤ weightedMertensSquarePartial ε N := hcorr
    _ = ∑ n ∈ Finset.range (N + 1),
        pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(1 : ℝ)) *
          ((n + 1 : ℕ) : ℝ) ^ (-(1 + ε)) :=
      (sum_range_succ_weightedMertensSquareTerm ε N).symm
    _ ≤ S := hs.sum_le_tsum _ (fun n _hn => weightedMertensSquareTerm_nonneg ε n)

/-- For positive `ε`, the signed-correlation criterion is exactly equivalent
to the improved weighted Mertens-square target: the squarefree diagonal is
nonnegative and has finite total cost. -/
theorem correlationUniform_iff_weightedMertensSquareSummable {ε : ℝ}
    (hε : 0 < ε) :
    WeightedMertensCorrelationUniform ε ↔
      CriticalWeightedMertensSquareSummable ε :=
  ⟨weightedMertensSquareSummable_of_correlationUniform hε,
    correlationUniform_of_weightedMertensSquareSummable⟩

/-- The remaining signed correlation estimate, at any `0 < ε < 1`, reaches
the critical boundary. -/
theorem criticalBoundary_of_weightedMertensCorrelationUniform {ε : ℝ}
    (hε0 : 0 < ε) (hε1 : ε < 1)
    (hC : WeightedMertensCorrelationUniform ε) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_weightedMertensSquare hε0 hε1
    (weightedMertensSquareSummable_of_correlationUniform hε0 hC)

end GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelationBound

#print axioms GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelationBound.weightedMertensDiagonal_le_majorant
#print axioms GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelationBound.weightedMertensSquareSummable_of_correlationUniform
#print axioms GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelationBound.correlationUniform_iff_weightedMertensSquareSummable
#print axioms GRWTSK.NumberTheory.Moebius.WeightedMertensSquareCorrelationBound.criticalBoundary_of_weightedMertensCorrelationUniform
