/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.IntegerPoissonZeroFrame.Base
import Mathlib

/-! # Floor-assignment integer Poisson lower frame -/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.IntegerPoissonZeroFrame

open CanonicalZeroDivisor
open PositiveHeightCountDeficit
open CofinalTwoUnitEffectiveRateBridge
open GRWTSK.CombinatoricsAndDiscreteMathematics.WeightedPairBudget
open GRWTSK.NumberTheory.PadicMobiusPrimeWindowSeam
open PadicMobiusCofinalTwoUnitBridge

theorem poissonKernelAtTwo_floor_ge_two_fifths {Z : ℕ} {z : ZeroPoint}
    (hz : z ∈ positiveHeightHead (Z : ℝ)) :
    (2 / 5 : ℝ) ≤ poissonKernelAtTwo z (floorFrequency z) := by
  have hs := point_mem_strip z
  have hd2 := floorFrequency_distance_sq_lt_one hz
  let a : ℝ := 2 - z.1.re
  let d : ℝ := (floorFrequency z : ℝ) - z.1.im
  have ha1 : 1 < a := by dsimp [a]; linarith
  have ha2 : a < 2 := by dsimp [a]; linarith
  have hprod : (2 * a - 1) * (a - 2) ≤ 0 :=
    mul_nonpos_of_nonneg_of_nonpos (by linarith) (by linarith)
  have hpoly : 2 * (a ^ 2 + d ^ 2) ≤ 5 * a := by
    dsimp [d] at hd2
    nlinarith
  have ha0 : 0 < a := lt_trans (by norm_num) ha1
  have hden : 0 < a ^ 2 + d ^ 2 := by
    have haSq : 0 < a ^ 2 := sq_pos_of_pos ha0
    nlinarith [sq_nonneg d]
  unfold poissonKernelAtTwo
  change (2 / 5 : ℝ) ≤ a / (a ^ 2 + d ^ 2)
  rw [le_div_iff₀ hden]
  nlinarith

/-- Every unknown multiplicity is assigned to exactly one available bin. -/
theorem sum_frequencyBinMass_eq_unknownMultiplicityDeficit
    (Z : ℕ) (known : Finset ZeroPoint) :
    ∑ k ∈ Finset.range (Z + 1), frequencyBinMass Z known k =
      unknownMultiplicityDeficit Z known := by
  classical
  unfold frequencyBinMass unknownMultiplicityDeficit
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro z hz
  have hhead : z ∈ positiveHeightHead (Z : ℝ) :=
    (Finset.mem_sdiff.mp hz).1
  have hmem := floorFrequency_mem_range hhead
  simp [hmem]

theorem frequencyBinMass_cast (Z : ℕ) (known : Finset ZeroPoint) (k : ℕ) :
    (frequencyBinMass Z known k : ℝ) =
      ∑ z ∈ unknownPositiveHead Z known,
        if k = floorFrequency z then (multiplicity z : ℝ) else 0 := by
  simp [frequencyBinMass]

/-- The full positive sample dominates the multiplicity assigned to its bin. -/
theorem two_fifths_binMass_le_sample
    (Z : ℕ) (known : Finset ZeroPoint) {k : ℕ}
    (hk : k ∈ Finset.range (Z + 1)) :
    (2 / 5 : ℝ) * (frequencyBinMass Z known k : ℝ) ≤
      integerPoissonSample Z known k := by
  classical
  rw [frequencyBinMass_cast]
  unfold integerPoissonSample
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro z hz
  have hhead : z ∈ positiveHeightHead (Z : ℝ) :=
    (Finset.mem_sdiff.mp hz).1
  by_cases hbin : k = floorFrequency z
  · rw [if_pos hbin]
    have hkern := poissonKernelAtTwo_floor_ge_two_fifths hhead
    rw [← hbin] at hkern
    simpa [mul_comm] using
      (mul_le_mul_of_nonneg_left hkern (Nat.cast_nonneg (multiplicity z)))
  · rw [if_neg hbin, zero_mul]
    exact mul_nonneg (Nat.cast_nonneg (multiplicity z))
      (poissonKernelAtTwo_nonneg z k)

theorem integerPoissonSample_nonneg
    (Z : ℕ) (known : Finset ZeroPoint) (k : ℕ) :
    0 ≤ integerPoissonSample Z known k := by
  unfold integerPoissonSample
  apply Finset.sum_nonneg
  intro z hz
  exact mul_nonneg (Nat.cast_nonneg (multiplicity z))
    (poissonKernelAtTwo_nonneg z k)

theorem natCast_le_square (n : ℕ) : (n : ℝ) ≤ (n : ℝ) ^ 2 := by
  by_cases hn : n = 0
  · simp [hn]
  · have h1 : (1 : ℝ) ≤ (n : ℝ) := by
      exact_mod_cast (Nat.one_le_iff_ne_zero.mpr hn)
    have h0 : (0 : ℝ) ≤ (n : ℝ) := Nat.cast_nonneg n
    have hp : 0 ≤ (n : ℝ) * ((n : ℝ) - 1) :=
      mul_nonneg h0 (sub_nonneg.mpr h1)
    nlinarith

/-- One bin pays all of its assigned integer multiplicity. -/
theorem four_binMass_le_twentyfive_sample_sq
    (Z : ℕ) (known : Finset ZeroPoint) {k : ℕ}
    (hk : k ∈ Finset.range (Z + 1)) :
    4 * (frequencyBinMass Z known k : ℝ) ≤
      25 * integerPoissonSample Z known k ^ 2 := by
  let M : ℝ := frequencyBinMass Z known k
  let S : ℝ := integerPoissonSample Z known k
  have hlin : (2 / 5 : ℝ) * M ≤ S := by
    simpa [M, S] using two_fifths_binMass_le_sample Z known hk
  have hS0 : 0 ≤ S := by
    simpa [S] using integerPoissonSample_nonneg Z known k
  have hM0 : 0 ≤ M := by dsimp [M]; positivity
  have hMsq : M ≤ M ^ 2 := by
    simpa [M] using natCast_le_square (frequencyBinMass Z known k)
  have hprod : 0 ≤ (S - (2 / 5 : ℝ) * M) * (S + (2 / 5 : ℝ) * M) :=
    mul_nonneg (sub_nonneg.mpr hlin)
      (add_nonneg hS0 (mul_nonneg (by norm_num) hM0))
  nlinarith

/-- Fixed zero-side lower frame. There is no height-dependent frame loss:
frequency collisions increase the square. -/
theorem integerPoisson_zero_side_lower_frame
    (Z : ℕ) (known : Finset ZeroPoint) :
    4 * (unknownMultiplicityDeficit Z known : ℝ) ≤
      25 * integerPoissonEnergy Z known := by
  have hcast :
      (unknownMultiplicityDeficit Z known : ℝ) =
        ∑ k ∈ Finset.range (Z + 1),
          (frequencyBinMass Z known k : ℝ) := by
    rw [← Nat.cast_sum, sum_frequencyBinMass_eq_unknownMultiplicityDeficit]
  rw [hcast]
  unfold integerPoissonEnergy
  rw [Finset.mul_sum, Finset.mul_sum]
  apply Finset.sum_le_sum
  intro k hk
  exact four_binMass_le_twentyfive_sample_sq Z known hk


end GRWTSK.RiemannHypothesis.IntegerPoissonZeroFrame
