/- Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CompensatedCorrelationLocalization
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.AllDampingMertensMeanSquare
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Data.Nat.Log

/-!
# Geometric upper budgets for dyadic signed compensated increments

The checkpoints are literally t(j) = 2^j in the existing horizon variable.
The full signed increment, including both terminal squares, is unchanged.
Its upper bound follows from a finite cell-mass bound after discarding only
the nonnegative diagonal increment.

For 0 < epsilon <= 1 and epsilon < sigma, the existing Mertens increment
mean-square SUPPLIER yields the explicit upper budget
  (sigma * A_epsilon / epsilon) * (2^(epsilon-sigma))^j.
The geometric summation is deterministic. No Mertens mean-square premise,
new positive damping, RH, or direct signed cancellation estimate is proved.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

open scoped BigOperators
open GRWTSK.NumberTheory.Moebius.CriticalMertensTransformMeanSquare
open GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks

def sampleDyadicCheckpoint (j : ℕ) : ℕ := 2 ^ j

def sampleDyadicIncrement (σ : ℝ) (j : ℕ) : ℝ :=
  sampleCheckpointIncrement σ sampleDyadicCheckpoint j

theorem sampleDyadicCheckpoint_cofinal (N : ℕ) :
    ∃ j : ℕ, N ≤ sampleDyadicCheckpoint j := by
  refine ⟨Nat.log 2 N + 1, ?_⟩
  exact (Nat.lt_pow_succ_log_self (b := 2) (by norm_num) N).le

theorem sampleWeightedDiagonal_monotone (σ : ℝ) :
    Monotone (sampleWeightedDiagonal σ) := by
  intro a b hab
  unfold sampleWeightedDiagonal
  apply Finset.sum_le_sum_of_subset_of_nonneg (Finset.range_mono hab)
  intro k _ _
  exact mul_nonneg (sq_nonneg _) (Real.exp_pos _).le

/-- This upper estimate retains the entire signed increment on the left.
The only dropped term is minus the nonnegative diagonal increment. -/
theorem sampleCompensatedIncrement_le_cellBlock {σ : ℝ} (hσ : 0 < σ)
    {a b : ℕ} (hab : a ≤ b) :
    sampleCompensatedCorrelation σ b - sampleCompensatedCorrelation σ a ≤
      (σ / 4) * ∑ k ∈ Finset.Ico a b, sampleCellMass σ k := by
  have hd := sampleWeightedDiagonal_monotone σ hab
  calc
    _ ≤ (sampleCompensatedCorrelation σ b + sampleWeightedDiagonal σ b) -
        (sampleCompensatedCorrelation σ a + sampleWeightedDiagonal σ a) := by
      linarith
    _ = _ := by
      rw [sampleCorrectedCorrelation_eq_cellSum hσ b,
        sampleCorrectedCorrelation_eq_cellSum hσ a,
        Finset.sum_Ico_eq_sub _ hab]
      ring

/-- A finite power majorant costs exactly one block length. This is an
elementary sum estimate, not a supplier for the actual arithmetic cells. -/
theorem sum_dyadicBlock_le_power_majorant
    (f : ℕ → ℝ) {K p : ℝ} (hK : 0 ≤ K) (hp : p ≤ 0)
    (hf : ∀ k : ℕ, f k ≤ K * (((k + 1 : ℕ) : ℝ) ^ p)) (j : ℕ) :
    (∑ k ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)), f k) ≤
      K * (((2 ^ j : ℕ) : ℝ) ^ (p + 1)) := by
  have ha : (0 : ℝ) < (2 ^ j : ℕ) := by positivity
  have hcard : (Finset.Ico (2 ^ j) (2 ^ (j + 1))).card = 2 ^ j := by
    rw [Nat.card_Ico, pow_succ]
    omega
  calc
    _ ≤ ∑ _k ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
        K * (((2 ^ j : ℕ) : ℝ) ^ p) := by
      apply Finset.sum_le_sum
      intro k hk
      have hak : ((2 ^ j : ℕ) : ℝ) ≤ ((k + 1 : ℕ) : ℝ) := by
        exact_mod_cast (show 2 ^ j ≤ k + 1 from
          (Finset.mem_Ico.mp hk).1.trans (Nat.le_succ k))
      exact (hf k).trans (mul_le_mul_of_nonneg_left
        (Real.rpow_le_rpow_of_nonpos ha hak hp) hK)
    _ = _ := by
      simp only [Finset.sum_const, hcard, nsmul_eq_mul]
      rw [Real.rpow_add ha, Real.rpow_one]
      ring

/-- A generic actual-cell majorant with exponent p < -1 supplies the signed
dyadic increment. The strict exponent is needed later for summability. -/
theorem sampleDyadicIncrement_le_of_cell_majorant
    {σ K p : ℝ} (hσ : 0 < σ) (hK : 0 ≤ K) (hp : p < -1)
    (hf : ∀ k : ℕ, sampleCellMass σ k ≤ K * (((k + 1 : ℕ) : ℝ) ^ p))
    (j : ℕ) :
    sampleDyadicIncrement σ j ≤
      (σ / 4) * K * (((2 ^ j : ℕ) : ℝ) ^ (p + 1)) := by
  have hab : 2 ^ j ≤ 2 ^ (j + 1) :=
    Nat.pow_le_pow_right (by norm_num : 0 < 2) (Nat.le_succ j)
  calc
    _ ≤ (σ / 4) * ∑ k ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)), sampleCellMass σ k :=
      sampleCompensatedIncrement_le_cellBlock hσ hab
    _ ≤ (σ / 4) * (K * (((2 ^ j : ℕ) : ℝ) ^ (p + 1))) :=
      mul_le_mul_of_nonneg_left
        (sum_dyadicBlock_le_power_majorant (sampleCellMass σ) hK (by linarith) hf j)
        (by positivity)
    _ = _ := by ring

/-- Elementary comparison which telescopes the existing absolute increment
allowance. It uses no cancellation theorem about the Mertens function. -/
theorem sampleResidue_increment_abs_le_sqrt_step {n : ℕ} (hn : 1 ≤ n) :
    |sampleResidue (n + 1) - sampleResidue n| ≤
      Real.sqrt (n + 1 : ℕ) - Real.sqrt n := by
  let a : ℝ := Real.sqrt n
  let b : ℝ := Real.sqrt (n + 1 : ℕ)
  have hb : 0 < b := by dsimp [b]; positivity
  have hdiff : b ^ 2 - a ^ 2 = 1 := by
    dsimp [a, b]
    rw [Real.sq_sqrt (Nat.cast_nonneg _), Real.sq_sqrt (Nat.cast_nonneg _)]
    push_cast <;> ring
  have hfrac : b⁻¹ / 2 = 1 / (2 * b) := by
    field_simp [hb.ne'] <;> ring
  have hgap : b⁻¹ / 2 ≤ b - a := by
    rw [hfrac]
    apply (div_le_iff₀ (show (0 : ℝ) < 2 * b by positivity)).2
    nlinarith [sq_nonneg (b - a)]
  exact (sampleResidue_increment_abs_le hn).trans hgap

/-- An unconditional square-root allowance for the SAMPLE, not for M(n).
In logarithmic time this is still exponential and does not pay small damping. -/
theorem sampleResidue_abs_le_sqrt :
    ∀ n : ℕ, 1 ≤ n → |sampleResidue n| ≤ Real.sqrt n := by
  intro n
  induction n with
  | zero => intro hn; omega
  | succ n ih =>
      intro _hn
      by_cases hn0 : n = 0
      · subst n
        simp [sampleResidue_one]
      have hn : 1 ≤ n := Nat.one_le_iff_ne_zero.mpr hn0
      calc
        |sampleResidue (n + 1)| =
            |sampleResidue n + (sampleResidue (n + 1) - sampleResidue n)| := by
              congr 1 <;> ring
        _ ≤ |sampleResidue n| + |sampleResidue (n + 1) - sampleResidue n| := abs_add _ _
        _ ≤ Real.sqrt n + (Real.sqrt (n + 1 : ℕ) - Real.sqrt n) :=
          add_le_add (ih hn) (sampleResidue_increment_abs_le_sqrt_step hn)
        _ = _ := by ring

theorem sampleResidue_sq_le_nat {n : ℕ} (hn : 1 ≤ n) :
    sampleResidue n ^ 2 ≤ (n : ℝ) := by
  have h := (sq_le_sq₀ (abs_nonneg (sampleResidue n)) (Real.sqrt_nonneg n)).2
    (sampleResidue_abs_le_sqrt n hn)
  simpa only [sq_abs, Real.sq_sqrt (Nat.cast_nonneg n)] using h

/-- The elementary sample allowance gives a genuine cell bound, but only
the regime sigma > 1 will make its dyadic majorant summable. -/
theorem sampleCellMass_le_unsigned_power {σ : ℝ} (hσ : 0 < σ) (k : ℕ) :
    sampleCellMass σ k ≤ 4 * (((k + 1 : ℕ) : ℝ) ^ (-σ)) := by
  let n : ℕ := k + 1
  have hn : 1 ≤ n := by dsimp [n]; omega
  have hnpos : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
  have hdrop := exponentialLogDrop_le_rpow hσ.le hn
  rw [sampleCellMass_eq_exponentialLogDrop]
  change (4 / σ) * sampleResidue n ^ 2 * exponentialLogDrop σ n ≤ _
  calc
    _ ≤ (4 / σ) * sampleResidue n ^ 2 * (σ * (n : ℝ) ^ (-σ - 1)) :=
      mul_le_mul_of_nonneg_left hdrop (mul_nonneg (by positivity) (sq_nonneg _))
    _ ≤ (4 / σ) * (n : ℝ) * (σ * (n : ℝ) ^ (-σ - 1)) :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left (sampleResidue_sq_le_nat hn) (by positivity))
        (by positivity)
    _ = 4 * ((n : ℝ) ^ (1 : ℝ) * (n : ℝ) ^ (-σ - 1)) := by
      rw [Real.rpow_one]
      field_simp [hσ.ne'] <;> ring
    _ = 4 * (n : ℝ) ^ (-σ) := by
      rw [← Real.rpow_add hnpos]
      congr 2
      ring

/-- No arithmetic supplier: a summable explicit signed-block upper budget
at every sigma > 1. This reproduces the known damping range, not a descent. -/
theorem sampleDyadicIncrement_le_unsigned_geometric {σ : ℝ} (hσ : 1 < σ) (j : ℕ) :
    sampleDyadicIncrement σ j ≤ σ * ((2 : ℝ) ^ (1 - σ)) ^ j := by
  have hpos : 0 < σ := by linarith
  have hb := sampleDyadicIncrement_le_of_cell_majorant hpos
    (show (0 : ℝ) ≤ 4 by norm_num) (show -σ < -1 by linarith)
    (sampleCellMass_le_unsigned_power hpos) j
  have hpow : (((2 ^ j : ℕ) : ℝ) ^ (-σ + 1)) = ((2 : ℝ) ^ (1 - σ)) ^ j := by
    rw [show -σ + 1 = 1 - σ by ring, Nat.cast_pow, Nat.cast_ofNat,
      ← Real.rpow_natCast_mul (by norm_num : (0 : ℝ) ≤ 2),
      mul_comm (j : ℝ) (1 - σ), Real.rpow_mul_natCast (by norm_num : (0 : ℝ) ≤ 2)]
  rw [hpow] at hb
  nlinarith

theorem summable_unsigned_dyadic_budget {σ : ℝ} (hσ : 1 < σ) :
    Summable (fun j : ℕ => σ * ((2 : ℝ) ^ (1 - σ)) ^ j) := by
  exact (summable_geometric_of_lt_one (Real.rpow_nonneg (by norm_num) _)
    (Real.rpow_lt_one_of_one_lt_of_neg (by norm_num) (by linarith))).mul_left σ

def sampleDyadicGeometricBudget (σ ε : ℝ) (j : ℕ) : ℝ :=
  (σ * sampleIncrementMeanSquareTotal ε / ε) * ((2 : ℝ) ^ (ε - σ)) ^ j

/-- Exact geometric signed-block bound under the existing OPEN arithmetic
increment mean-square premise. No totalized sum certifies its own finiteness. -/
theorem sampleDyadicIncrement_le_incrementMeanSquare
    {σ ε : ℝ} (hσ : 0 < σ) (hε0 : 0 < ε) (hε1 : ε ≤ 1) (hεσ : ε < σ)
    (hs : CriticalMertensIncrementMeanSquare ε) (j : ℕ) :
    sampleDyadicIncrement σ j ≤ sampleDyadicGeometricBudget σ ε j := by
  have hK : 0 ≤ 4 * sampleIncrementMeanSquareTotal ε / ε :=
    div_nonneg (mul_nonneg (by norm_num) (sampleIncrementMeanSquareTotal_nonneg ε)) hε0.le
  have hb := sampleDyadicIncrement_le_of_cell_majorant hσ hK
    (show ε - σ - 1 < -1 by linarith)
    (sampleCellMass_le_incrementMeanSquareMajorant hσ hε0 hε1 hεσ hs) j
  have hpow : (((2 ^ j : ℕ) : ℝ) ^ (ε - σ)) = ((2 : ℝ) ^ (ε - σ)) ^ j := by
    rw [Nat.cast_pow, Nat.cast_ofNat,
      ← Real.rpow_natCast_mul (by norm_num : (0 : ℝ) ≤ 2),
      mul_comm (j : ℝ) (ε - σ), Real.rpow_mul_natCast (by norm_num : (0 : ℝ) ≤ 2)]
  have heq : (σ / 4) * (4 * sampleIncrementMeanSquareTotal ε / ε) *
      (((2 ^ j : ℕ) : ℝ) ^ (ε - σ - 1 + 1)) = sampleDyadicGeometricBudget σ ε j := by
    rw [show ε - σ - 1 + 1 = ε - σ by ring, hpow]
    unfold sampleDyadicGeometricBudget
    ring
  exact hb.trans_eq heq

theorem sampleDyadicGeometricBudget_nonneg {σ ε : ℝ}
    (hσ : 0 < σ) (hε : 0 < ε) (j : ℕ) :
    0 ≤ sampleDyadicGeometricBudget σ ε j := by
  unfold sampleDyadicGeometricBudget
  exact mul_nonneg
    (div_nonneg (mul_nonneg hσ.le (sampleIncrementMeanSquareTotal_nonneg ε)) hε.le)
    (pow_nonneg (Real.rpow_nonneg (by norm_num) _) _)

/-- Only ε < σ, not an unproved arithmetic estimate, pays the geometric sum. -/
theorem summable_sampleDyadicGeometricBudget {σ ε : ℝ} (hεσ : ε < σ) :
    Summable (sampleDyadicGeometricBudget σ ε) := by
  have hr : (2 : ℝ) ^ (ε - σ) < 1 :=
    Real.rpow_lt_one_of_one_lt_of_neg (by norm_num) (by linarith)
  exact (summable_geometric_of_lt_one
    (Real.rpow_nonneg (by norm_num : (0 : ℝ) ≤ 2) _) hr).mul_left _

/-- The fixed-rate constant retains the denominator lost at ε = σ. -/
theorem tsum_sampleDyadicGeometricBudget {σ ε : ℝ} (hεσ : ε < σ) :
    (∑' j : ℕ, sampleDyadicGeometricBudget σ ε j) =
      (σ * sampleIncrementMeanSquareTotal ε / ε) /
        (1 - (2 : ℝ) ^ (ε - σ)) := by
  have hr : (2 : ℝ) ^ (ε - σ) < 1 :=
    Real.rpow_lt_one_of_one_lt_of_neg (by norm_num) (by linarith)
  simp only [sampleDyadicGeometricBudget]
  rw [tsum_mul_left, tsum_geometric_of_lt_one (Real.rpow_nonneg (by norm_num) _) hr]
  simp only [div_eq_mul_inv]

theorem compensatedCorrelationBound_of_dyadic_incrementMeanSquare
    {σ ε : ℝ} (hσ : 0 < σ) (hε0 : 0 < ε) (hε1 : ε ≤ 1) (hεσ : ε < σ)
    (hs : CriticalMertensIncrementMeanSquare ε) : CompensatedCorrelationBound σ := by
  exact compensatedCorrelationBound_of_summable_checkpoint_budget hσ
    sampleDyadicCheckpoint sampleDyadicCheckpoint_cofinal
    (sampleDyadicGeometricBudget σ ε) (sampleDyadicGeometricBudget_nonneg hσ hε0)
    (summable_sampleDyadicGeometricBudget hεσ)
    (sampleDyadicIncrement_le_incrementMeanSquare hσ hε0 hε1 hεσ hs)

/-- The more explicit weighted Mertens-square supplier feeds the SAME dyadic
bound through the existing increment comparison. Its summability stays open. -/
theorem sampleDyadicIncrement_le_weightedMertensSquare
    {σ ε : ℝ} (hσ : 0 < σ) (hε0 : 0 < ε) (hε1 : ε ≤ 1) (hεσ : ε < σ)
    (hs : CriticalWeightedMertensSquareSummable ε) (j : ℕ) :
    sampleDyadicIncrement σ j ≤ sampleDyadicGeometricBudget σ ε j :=
  sampleDyadicIncrement_le_incrementMeanSquare hσ hε0 hε1 hεσ
    (incrementMeanSquare_of_weightedMertensSquare hs) j

/-- Explicit dyadic budgets at every reciprocal damping. The full family of
increment mean-square hypotheses is still required; one exponent is insufficient. -/
theorem riemannHypothesis_of_reciprocal_dyadic_incrementMeanSquare
    (hs : ReciprocalIncrementMeanSquare) : _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_reciprocal_compensatedCorrelation
  intro d
  exact compensatedCorrelationBound_of_dyadic_incrementMeanSquare
    (CofinalDamping.reciprocalDamping_pos d)
    (reciprocalHalfDamping_pos d) (reciprocalHalfDamping_le_one d)
    (reciprocalHalfDamping_lt_damping d) (hs d)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
