/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.IntegerPoissonZeroFrame.NearestGeometry
import Mathlib

/-! # Nearest-integer fixed lower frame -/

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

theorem sum_nearestFrequencyBinMass_eq_unknownMultiplicityDeficit
    (Z : ℕ) (known : Finset ZeroPoint) :
    ∑ k ∈ Finset.range (Z + 1), nearestFrequencyBinMass Z known k =
      unknownMultiplicityDeficit Z known := by
  classical
  unfold nearestFrequencyBinMass unknownMultiplicityDeficit
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro z hz
  have hhead : z ∈ positiveHeightHead (Z : ℝ) :=
    (Finset.mem_sdiff.mp hz).1
  have hmem := nearestFrequency_mem_range hhead
  simp [hmem]

theorem nearestFrequencyBinMass_cast
    (Z : ℕ) (known : Finset ZeroPoint) (k : ℕ) :
    (nearestFrequencyBinMass Z known k : ℝ) =
      ∑ z ∈ unknownPositiveHead Z known,
        if k = nearestFrequency z then (multiplicity z : ℝ) else 0 := by
  simp [nearestFrequencyBinMass]

/-- The positive sample dominates the multiplicity assigned to its nearest bin. -/
theorem eight_seventeenths_binMass_le_sample
    (Z : ℕ) (known : Finset ZeroPoint) {k : ℕ}
    (hk : k ∈ Finset.range (Z + 1)) :
    (8 / 17 : ℝ) * (nearestFrequencyBinMass Z known k : ℝ) ≤
      integerPoissonSample Z known k := by
  classical
  rw [nearestFrequencyBinMass_cast]
  unfold integerPoissonSample
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro z hz
  have hhead : z ∈ positiveHeightHead (Z : ℝ) :=
    (Finset.mem_sdiff.mp hz).1
  by_cases hbin : k = nearestFrequency z
  · rw [if_pos hbin]
    have hkern := poissonKernelAtTwo_nearest_ge_eight_seventeenths hhead
    rw [← hbin] at hkern
    simpa [mul_comm] using
      (mul_le_mul_of_nonneg_left hkern (Nat.cast_nonneg (multiplicity z)))
  · rw [if_neg hbin, zero_mul]
    exact mul_nonneg (Nat.cast_nonneg (multiplicity z))
      (poissonKernelAtTwo_nonneg z k)

/-- One nearest bin pays all of its assigned integer multiplicity. -/
theorem sixtyfour_binMass_le_twohundredeightynine_sample_sq
    (Z : ℕ) (known : Finset ZeroPoint) {k : ℕ}
    (hk : k ∈ Finset.range (Z + 1)) :
    64 * (nearestFrequencyBinMass Z known k : ℝ) ≤
      289 * integerPoissonSample Z known k ^ 2 := by
  let M : ℝ := nearestFrequencyBinMass Z known k
  let S : ℝ := integerPoissonSample Z known k
  have hlin : (8 / 17 : ℝ) * M ≤ S := by
    simpa [M, S] using eight_seventeenths_binMass_le_sample Z known hk
  have hS0 : 0 ≤ S := by
    simpa [S] using integerPoissonSample_nonneg Z known k
  have hM0 : 0 ≤ M := by dsimp [M]; positivity
  have hMsq : M ≤ M ^ 2 := by
    simpa [M] using natCast_le_square (nearestFrequencyBinMass Z known k)
  have hprod : 0 ≤ (S - (8 / 17 : ℝ) * M) * (S + (8 / 17 : ℝ) * M) :=
    mul_nonneg (sub_nonneg.mpr hlin)
      (add_nonneg hS0 (mul_nonneg (by norm_num) hM0))
  nlinarith

/-- Sharpened fixed zero-side lower frame on the same `Z+1` integer samples. -/
theorem integerPoisson_zero_side_lower_frame_nearest
    (Z : ℕ) (known : Finset ZeroPoint) :
    64 * (unknownMultiplicityDeficit Z known : ℝ) ≤
      289 * integerPoissonEnergy Z known := by
  have hcast :
      (unknownMultiplicityDeficit Z known : ℝ) =
        ∑ k ∈ Finset.range (Z + 1),
          (nearestFrequencyBinMass Z known k : ℝ) := by
    rw [← Nat.cast_sum, sum_nearestFrequencyBinMass_eq_unknownMultiplicityDeficit]
  rw [hcast]
  unfold integerPoissonEnergy
  rw [Finset.mul_sum, Finset.mul_sum]
  apply Finset.sum_le_sum
  intro k hk
  exact sixtyfour_binMass_le_twohundredeightynine_sample_sq Z known hk


end GRWTSK.RiemannHypothesis.IntegerPoissonZeroFrame
