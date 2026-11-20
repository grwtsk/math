/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Data.Matrix.Basic
import Mathlib.Basic.Complex.Basic
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Tactic

/-!
# Finite critical-strip samples and normalized Gaussian averaging

This file specifies ideal real/complex mathematics. It does not implement
floating-point interval arithmetic, certify zeta zeros, or establish Weil
positivity. In particular, normalized Gaussian averaging is not called a
heat semigroup.

Checked development target: Lean 4.34.1 and Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
-/

noncomputable section

namespace GRWTSK.NumberTheory.CriticalStripSampling

/-- An even midpoint grid in a proper substrip of 0 < re(s) < 1.
    Heights are sample coordinates, not certified zero ordinates.
    Repeated heights are allowed. -/
structure StripSamples (M N : ℕ) where
  rows_pos : 0 < M
  radius : ℝ
  radius_pos : 0 < radius
  radius_lt_half : radius < 1 / 2
  heights : Fin N → ℝ
  values : Matrix (Fin (2 * M)) (Fin N) ℂ

variable {M N : ℕ}

/-- Uniform midpoint coordinates; the central rows are at
    1/2 ± radius / (2*M). -/
def rowSigma (T : StripSamples M N) (i : Fin (2 * M)) : ℝ :=
  1 / 2 + T.radius * (((i.val : ℝ) + 1 / 2) / (M : ℝ) - 1)

def reverseRow (_hM : 0 < M) (i : Fin (2 * M)) : Fin (2 * M) :=
  ⟨2 * M - 1 - i.val, by omega⟩

theorem reverseRow_involutive (hM : 0 < M) (i : Fin (2 * M)) :
    reverseRow hM (reverseRow hM i) = i := by
  apply Fin.ext
  simp only [reverseRow]
  omega

theorem rowSigma_reflect (T : StripSamples M N) (i : Fin (2 * M)) :
    rowSigma T (reverseRow T.rows_pos i) = 1 - rowSigma T i := by
  have hm : (M : ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt T.rows_pos)
  have hsN : (reverseRow T.rows_pos i).val + i.val + 1 = 2 * M := by
    simp only [reverseRow]
    omega
  have hs : ((reverseRow T.rows_pos i).val : ℝ) + (i.val : ℝ) + 1 =
      2 * (M : ℝ) := by exact_mod_cast hsN
  unfold rowSigma
  field_simp
  nlinarith [congrArg (fun x : ℝ => T.radius * x) hs]

theorem rowSigma_mem_strip (T : StripSamples M N) (i : Fin (2 * M)) :
    0 < rowSigma T i ∧ rowSigma T i < 1 := by
  have hm : (0 : ℝ) < M := by exact_mod_cast T.rows_pos
  have hi : (0 : ℝ) ≤ i.val := Nat.cast_nonneg _
  have hbN : i.val + 1 ≤ 2 * M := Nat.succ_le_of_lt i.isLt
  have hb : (i.val : ℝ) + 1 ≤ 2 * (M : ℝ) := by exact_mod_cast hbN
  have hl : 0 < ((i.val : ℝ) + 1 / 2) / (M : ℝ) :=
    div_pos (by linarith) hm
  have hu : ((i.val : ℝ) + 1 / 2) / (M : ℝ) < 2 := by
    apply (div_lt_iff₀ hm).2
    linarith
  have hr := T.radius_pos
  have hrh := T.radius_lt_half
  unfold rowSigma
  constructor <;> nlinarith

def leftCenter (hM : 0 < M) : Fin (2 * M) := ⟨M - 1, by omega⟩
def rightCenter (hM : 0 < M) : Fin (2 * M) := ⟨M, by omega⟩

theorem rowSigma_leftCenter (T : StripSamples M N) :
    rowSigma T (leftCenter T.rows_pos) = 1 / 2 - T.radius / (2 * (M : ℝ)) := by
  have hm : (M : ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt T.rows_pos)
  have hsN : (M - 1) + 1 = M := by
    have hM := T.rows_pos
    omega
  have hs : ((M - 1 : ℕ) : ℝ) + 1 = (M : ℝ) := by exact_mod_cast hsN
  unfold rowSigma leftCenter
  dsimp
  field_simp
  nlinarith [congrArg (fun x : ℝ => T.radius * x) hs]

theorem rowSigma_rightCenter (T : StripSamples M N) :
    rowSigma T (rightCenter T.rows_pos) = 1 / 2 + T.radius / (2 * (M : ℝ)) := by
  have hm : (M : ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt T.rows_pos)
  unfold rowSigma rightCenter
  dsimp
  field_simp
  ring

/-- A geometric condition on a real coordinate, not an assertion about all zeros. -/
def WithinCentralCell (T : StripSamples M N) (σ : ℝ) : Prop :=
  |σ - 1 / 2| < T.radius / (2 * (M : ℝ))

theorem withinCentralCell_iff (T : StripSamples M N) (σ : ℝ) :
    WithinCentralCell T σ ↔
      rowSigma T (leftCenter T.rows_pos) < σ ∧
        σ < rowSigma T (rightCenter T.rows_pos) := by
  rw [rowSigma_leftCenter, rowSigma_rightCenter]
  unfold WithinCentralCell
  rw [abs_lt]
  constructor <;> rintro ⟨hl, hu⟩ <;> constructor <;> linarith

/-- A positive averaging scale. -/
structure PositiveTime where
  value : ℝ
  positive : 0 < value

def gaussianWeight (T : StripSamples M N) (τ : PositiveTime)
    (i k : Fin (2 * M)) : ℝ :=
  Real.exp (-((rowSigma T i - rowSigma T k) ^ 2) / (4 * τ.value))

def gaussianRowMass (T : StripSamples M N) (τ : PositiveTime)
    (i : Fin (2 * M)) : ℝ :=
  ∑ k, gaussianWeight T τ i k

theorem gaussianWeight_pos (T : StripSamples M N) (τ : PositiveTime)
    (i k : Fin (2 * M)) : 0 < gaussianWeight T τ i k :=
  Real.exp_pos _

theorem gaussianRowMass_pos (T : StripSamples M N) (τ : PositiveTime)
    (i : Fin (2 * M)) : 0 < gaussianRowMass T τ i := by
  classical
  unfold gaussianRowMass
  apply Finset.sum_pos'
  · intro k _
    exact (gaussianWeight_pos T τ i k).le
  · exact ⟨i, Finset.mem_univ i, gaussianWeight_pos T τ i i⟩

/-- A row-stochastic Gaussian averaging kernel.
    No semigroup law is asserted. -/
def normalizedGaussian (T : StripSamples M N) (τ : PositiveTime)
    (i k : Fin (2 * M)) : ℝ :=
  gaussianWeight T τ i k / gaussianRowMass T τ i

theorem normalizedGaussian_nonneg (T : StripSamples M N) (τ : PositiveTime)
    (i k : Fin (2 * M)) : 0 ≤ normalizedGaussian T τ i k :=
  (div_pos (gaussianWeight_pos T τ i k) (gaussianRowMass_pos T τ i)).le

theorem normalizedGaussian_row_sum (T : StripSamples M N) (τ : PositiveTime)
    (i : Fin (2 * M)) : ∑ k, normalizedGaussian T τ i k = 1 := by
  classical
  unfold normalizedGaussian
  rw [← Finset.sum_div]
  exact div_self (ne_of_gt (gaussianRowMass_pos T τ i))

def normalizedGaussianStep (T : StripSamples M N) (τ : PositiveTime) :
    Matrix (Fin (2 * M)) (Fin N) ℂ :=
  fun i j => ∑ k, (normalizedGaussian T τ i k : ℂ) * T.values k j

/-- A normalized row preserves every constant column exactly. -/
theorem normalizedGaussian_preserves_constants (T : StripSamples M N) (τ : PositiveTime)
    (c : ℂ) (i : Fin (2 * M)) :
    (∑ k, (normalizedGaussian T τ i k : ℂ) * c) = c := by
  rw [← Finset.sum_mul, ← Complex.ofReal_sum, normalizedGaussian_row_sum]
  simp

/-- A row-stochastic average cannot increase a supplied uniform column bound. -/
theorem normalizedGaussian_norm_le (T : StripSamples M N) (τ : PositiveTime)
    (B : ℝ) (j : Fin N) (hB : ∀ k, ‖T.values k j‖ ≤ B) (i : Fin (2 * M)) :
    ‖normalizedGaussianStep T τ i j‖ ≤ B := by
  calc
    _ ≤ ∑ k, ‖(normalizedGaussian T τ i k : ℂ) * T.values k j‖ :=
      norm_sum_le _ _
    _ = ∑ k, normalizedGaussian T τ i k * ‖T.values k j‖ := by
      apply Finset.sum_congr rfl
      intro k _
      rw [norm_mul, Complex.norm_real, Real.norm_eq_abs,
        abs_of_nonneg (normalizedGaussian_nonneg T τ i k)]
    _ ≤ ∑ k, normalizedGaussian T τ i k * B :=
      Finset.sum_le_sum fun k _ =>
        mul_le_mul_of_nonneg_left (hB k) (normalizedGaussian_nonneg T τ i k)
    _ = B := by rw [← Finset.sum_mul, normalizedGaussian_row_sum, one_mul]

end GRWTSK.NumberTheory.CriticalStripSampling
