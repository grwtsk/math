/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.CriticalEndpointDefectRecurrence
import GRWTSK.Analysis.AsymptoticAnalysis.FinitePowerSum

/-!
# Mean-square control of the critical Mertens transform

A weighted finite Cauchy inequality converts the signed Hardy-type transform
into a mean-square Mertens-increment budget.  The complementary deterministic
weight is a fractional power sum with explicit growth `n^ε / ε`.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.CriticalMertensTransformMeanSquare

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefectRecurrence
open GRWTSK.Analysis.AsymptoticAnalysis.FinitePowerSum

/-- Weighted square budget for the first `n` Mertens-transform increments. -/
def criticalMertensIncrementSquare (ε : ℝ) (n : ℕ) : ℝ :=
  ∑ j ∈ Finset.range n,
    (pickupMertensPrefix j * criticalEndpointGap j) ^ 2 *
      ((j + 1 : ℕ) : ℝ) ^ (1 - ε)

/-- Weighted Cauchy--Schwarz for the signed Mertens transform. -/
theorem criticalMertensTransform_sq_le (ε : ℝ) (n : ℕ) :
    criticalMertensTransform n ^ 2 ≤
      criticalMertensIncrementSquare ε n *
        ∑ j ∈ Finset.range n,
          ((j + 1 : ℕ) : ℝ) ^ (ε - 1) := by
  let x : ℕ → ℝ := fun j =>
    (pickupMertensPrefix j * criticalEndpointGap j) *
      ((j + 1 : ℕ) : ℝ) ^ ((1 - ε) / 2)
  let y : ℕ → ℝ := fun j =>
    ((j + 1 : ℕ) : ℝ) ^ ((ε - 1) / 2)
  have hxy (j : ℕ) : x j * y j =
      pickupMertensPrefix j * criticalEndpointGap j := by
    have hj : (0 : ℝ) < ((j + 1 : ℕ) : ℝ) := by positivity
    dsimp [x, y]
    calc
      pickupMertensPrefix j * criticalEndpointGap j *
          ((j + 1 : ℕ) : ℝ) ^ ((1 - ε) / 2) *
          ((j + 1 : ℕ) : ℝ) ^ ((ε - 1) / 2) =
          (pickupMertensPrefix j * criticalEndpointGap j) *
            (((j + 1 : ℕ) : ℝ) ^ ((1 - ε) / 2) *
              ((j + 1 : ℕ) : ℝ) ^ ((ε - 1) / 2)) := by ring
      _ = (pickupMertensPrefix j * criticalEndpointGap j) *
          ((j + 1 : ℕ) : ℝ) ^
            (((1 - ε) / 2) + ((ε - 1) / 2)) := by
        rw [Real.rpow_add hj]
      _ = pickupMertensPrefix j * criticalEndpointGap j := by
        rw [show ((1 - ε) / 2) + ((ε - 1) / 2) = 0 by ring,
          Real.rpow_zero, mul_one]
  have hx (j : ℕ) : x j ^ 2 =
      (pickupMertensPrefix j * criticalEndpointGap j) ^ 2 *
        ((j + 1 : ℕ) : ℝ) ^ (1 - ε) := by
    have hj : (0 : ℝ) < ((j + 1 : ℕ) : ℝ) := by positivity
    dsimp [x]
    rw [mul_pow]
    congr 1
    calc
      (((j + 1 : ℕ) : ℝ) ^ ((1 - ε) / 2)) ^ 2 =
          (((j + 1 : ℕ) : ℝ) ^ ((1 - ε) / 2)) ^ (2 : ℝ) := by
        exact (Real.rpow_natCast _ 2).symm
      _ = ((j + 1 : ℕ) : ℝ) ^ (((1 - ε) / 2) * 2) := by
        rw [Real.rpow_mul hj.le]
      _ = ((j + 1 : ℕ) : ℝ) ^ (1 - ε) := by ring_nf
  have hy (j : ℕ) : y j ^ 2 =
      ((j + 1 : ℕ) : ℝ) ^ (ε - 1) := by
    have hj : (0 : ℝ) < ((j + 1 : ℕ) : ℝ) := by positivity
    dsimp [y]
    calc
      (((j + 1 : ℕ) : ℝ) ^ ((ε - 1) / 2)) ^ 2 =
          (((j + 1 : ℕ) : ℝ) ^ ((ε - 1) / 2)) ^ (2 : ℝ) := by
        exact (Real.rpow_natCast _ 2).symm
      _ = ((j + 1 : ℕ) : ℝ) ^ (((ε - 1) / 2) * 2) := by
        rw [Real.rpow_mul hj.le]
      _ = ((j + 1 : ℕ) : ℝ) ^ (ε - 1) := by ring_nf
  have hcs := Finset.sum_mul_sq_le_sq_mul_sq (R := ℝ) (Finset.range n) x y
  unfold criticalMertensTransform criticalMertensIncrementSquare
  simpa only [hxy, hx, hy] using hcs

/-- The complementary Cauchy weight has the sharp elementary allowance
`n^ε / ε` for `0 < ε ≤ 1`. -/
theorem sum_range_succ_rpow_sub_one_le {ε : ℝ}
    (hε0 : 0 < ε) (hε1 : ε ≤ 1) (n : ℕ) :
    (∑ j ∈ Finset.range n,
      ((j + 1 : ℕ) : ℝ) ^ (ε - 1)) ≤
        (n : ℝ) ^ ε / ε := by
  have hsum : (∑ j ∈ Finset.range n,
      ((j + 1 : ℕ) : ℝ) ^ (ε - 1)) =
      ∑ k ∈ Finset.Icc 1 n, (k : ℝ) ^ (ε - 1) := by
    induction n with
    | zero => simp
    | succ n ih =>
        rw [Finset.sum_range_succ, ih,
          Finset.sum_Icc_succ_top (by omega : 1 ≤ n + 1)]
  rw [hsum]
  exact sum_Icc_rpow_sub_one_le hε0 hε1 n

/-- Finite mean-square control of the critical signed transform. -/
theorem criticalMertensTransform_sq_le_meanSquare {ε : ℝ}
    (hε0 : 0 < ε) (hε1 : ε ≤ 1) (n : ℕ) :
    criticalMertensTransform n ^ 2 ≤
      criticalMertensIncrementSquare ε n * ((n : ℝ) ^ ε / ε) := by
  calc
    criticalMertensTransform n ^ 2 ≤
        criticalMertensIncrementSquare ε n *
          ∑ j ∈ Finset.range n,
            ((j + 1 : ℕ) : ℝ) ^ (ε - 1) :=
      criticalMertensTransform_sq_le ε n
    _ ≤ criticalMertensIncrementSquare ε n * ((n : ℝ) ^ ε / ε) := by
      apply mul_le_mul_of_nonneg_left
        (sum_range_succ_rpow_sub_one_le hε0 hε1 n)
      unfold criticalMertensIncrementSquare
      positivity

/-- Finite total weighted square mass of the Mertens-transform increments. -/
def CriticalMertensIncrementMeanSquare (ε : ℝ) : Prop :=
  Summable (fun j : ℕ =>
    (pickupMertensPrefix j * criticalEndpointGap j) ^ 2 *
      ((j + 1 : ℕ) : ℝ) ^ (1 - ε))

theorem criticalMertensIncrementSquare_le_tsum {ε : ℝ}
    (hs : CriticalMertensIncrementMeanSquare ε) (n : ℕ) :
    criticalMertensIncrementSquare ε n ≤
      ∑' j : ℕ,
        (pickupMertensPrefix j * criticalEndpointGap j) ^ 2 *
          ((j + 1 : ℕ) : ℝ) ^ (1 - ε) := by
  unfold CriticalMertensIncrementMeanSquare at hs
  unfold criticalMertensIncrementSquare
  exact hs.sum_le_tsum (Finset.range n) (fun j _ => by positivity)

/-- A weighted mean-square increment budget, for any `0 < ε < 1`, is a
sufficient condition for the critical signed transform. -/
theorem mertensTransformSummable_of_incrementMeanSquare {ε : ℝ}
    (hε0 : 0 < ε) (hε1 : ε < 1)
    (hs : CriticalMertensIncrementMeanSquare ε) :
    CriticalMertensTransformSummable := by
  let S : ℝ := ∑' j : ℕ,
    (pickupMertensPrefix j * criticalEndpointGap j) ^ 2 *
      ((j + 1 : ℕ) : ℝ) ^ (1 - ε)
  have hS : 0 ≤ S := by
    dsimp [S]
    exact tsum_nonneg (fun _ => by positivity)
  have hmajor : Summable (fun n : ℕ =>
      (S / ε) * (n : ℝ) ^ (ε - 2)) :=
    (Real.summable_nat_rpow.mpr (by linarith)).mul_left (S / ε)
  unfold CriticalMertensTransformSummable
  apply hmajor.of_nonneg_of_le
  · intro n
    exact mul_nonneg (sq_nonneg _)
      (exponentialLogDrop_nonneg (by norm_num) n)
  · intro n
    cases n with
    | zero =>
        have hright : 0 ≤ (S / ε) * (0 : ℝ) ^ (ε - 2) :=
          mul_nonneg (div_nonneg hS hε0.le) (Real.rpow_nonneg (by norm_num) _)
        simpa [criticalMertensTransform, exponentialLogDrop] using hright
    | succ n =>
        have hn : 1 ≤ n + 1 := by omega
        have hnpos : (0 : ℝ) < ((n + 1 : ℕ) : ℝ) := by positivity
        have hA : criticalMertensIncrementSquare ε (n + 1) ≤ S := by
          dsimp [S]
          exact criticalMertensIncrementSquare_le_tsum hs (n + 1)
        have hq0 := criticalMertensTransform_sq_le_meanSquare
          hε0 hε1.le (n + 1)
        have hfactor : 0 ≤ (((n + 1 : ℕ) : ℝ) ^ ε / ε) := by positivity
        have hq : criticalMertensTransform (n + 1) ^ 2 ≤
            S * (((n + 1 : ℕ) : ℝ) ^ ε / ε) :=
          hq0.trans (mul_le_mul_of_nonneg_right hA hfactor)
        have hdrop := exponentialLogDrop_one_le_inv_sq hn
        calc
          criticalMertensTransform (n + 1) ^ 2 *
              exponentialLogDrop 1 (n + 1) ≤
              (S * (((n + 1 : ℕ) : ℝ) ^ ε / ε)) *
                (1 / ((n + 1 : ℕ) : ℝ) ^ 2) := by
            exact mul_le_mul hq hdrop
              (exponentialLogDrop_nonneg (by norm_num) (n + 1))
              (by positivity)
          _ = (S / ε) * ((n + 1 : ℕ) : ℝ) ^ (ε - 2) := by
            rw [show (1 / ((n + 1 : ℕ) : ℝ) ^ 2) =
                ((n + 1 : ℕ) : ℝ) ^ (-(2 : ℝ)) by
              rw [Real.rpow_neg hnpos.le]
              norm_num [Real.rpow_natCast, div_eq_mul_inv]]
            calc
              S * (((n + 1 : ℕ) : ℝ) ^ ε / ε) *
                  ((n + 1 : ℕ) : ℝ) ^ (-(2 : ℝ)) =
                  (S / ε) * (((n + 1 : ℕ) : ℝ) ^ ε *
                    ((n + 1 : ℕ) : ℝ) ^ (-(2 : ℝ))) := by
                field_simp [hε0.ne']
              _ = (S / ε) * ((n + 1 : ℕ) : ℝ) ^
                  (ε + (-(2 : ℝ))) := by
                rw [Real.rpow_add hnpos]
              _ = (S / ε) * ((n + 1 : ℕ) : ℝ) ^ (ε - 2) := by ring_nf

/-- The mean-square increment route reaches the completed critical boundary. -/
theorem criticalBoundary_of_incrementMeanSquare {ε : ℝ}
    (hε0 : 0 < ε) (hε1 : ε < 1)
    (hs : CriticalMertensIncrementMeanSquare ε) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_iff_mertensTransformSummable.mpr
    (mertensTransformSummable_of_incrementMeanSquare hε0 hε1 hs)

end GRWTSK.NumberTheory.Moebius.CriticalMertensTransformMeanSquare

#print axioms GRWTSK.NumberTheory.Moebius.CriticalMertensTransformMeanSquare.criticalMertensTransform_sq_le
#print axioms GRWTSK.NumberTheory.Moebius.CriticalMertensTransformMeanSquare.sum_range_succ_rpow_sub_one_le
#print axioms GRWTSK.NumberTheory.Moebius.CriticalMertensTransformMeanSquare.criticalMertensTransform_sq_le_meanSquare
#print axioms GRWTSK.NumberTheory.Moebius.CriticalMertensTransformMeanSquare.mertensTransformSummable_of_incrementMeanSquare
#print axioms GRWTSK.NumberTheory.Moebius.CriticalMertensTransformMeanSquare.criticalBoundary_of_incrementMeanSquare
