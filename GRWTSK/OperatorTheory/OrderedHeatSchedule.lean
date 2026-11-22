/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteSpectralHeat
import Mathlib.Tactic

/-!
# Ordered heat schedules

Every stage acts on the output of its predecessor. A common spectral chart
gives an exact operator in terms of cumulative modal exposure. Contractive
stages in one state metric admit a sum of local errors when their charts differ.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.OperatorTheory.OrderedHeatSchedule

open GRWTSK.Algebra.LinearAlgebra.FiniteSpectralHeat

variable {X ι : Type*}

/-- The first n stages, applied in increasing index order to one state. -/
def run (stage : ℕ → X → X) (initial : X) : ℕ → X
  | 0 => initial
  | n + 1 => stage n (run stage initial n)

theorem run_error_le [PseudoMetricSpace X] (stage : ℕ → X → X) (initial : X)
    (observed : ℕ → X) (error : ℕ → ℝ) (n : ℕ)
    (contractive : ∀ j < n, ∀ x y, dist (stage j x) (stage j y) ≤ dist x y)
    (localError : ∀ j < n, dist (observed (j + 1)) (stage j (observed j)) ≤ error j) :
    dist (observed n) (run stage initial n) ≤
      dist (observed 0) initial + ∑ j ∈ Finset.range n, error j := by
  induction n with
  | zero => simp [run]
  | succ n previous =>
    have within : ∀ j < n, j < n + 1 := fun _ h => Nat.lt_trans h (Nat.lt_succ_self n)
    have prior := previous (fun j hj => contractive j (within j hj))
      (fun j hj => localError j (within j hj))
    rw [run, Finset.sum_range_succ]
    calc
      dist (observed (n + 1)) (stage n (run stage initial n)) ≤
          dist (observed (n + 1)) (stage n (observed n)) +
          dist (stage n (observed n)) (stage n (run stage initial n)) :=
        dist_triangle _ _ _
      _ ≤ error n + dist (observed n) (run stage initial n) :=
        add_le_add (localError n (Nat.lt_succ_self n))
          (contractive n (Nat.lt_succ_self n) _ _)
      _ ≤ _ := by linarith

/-- The scalar in the exponent for each mode of a shared spectral chart. -/
def exposure (time : ℕ → ℝ) (spectrum : ℕ → ι → ℝ) (n : ℕ) (i : ι) : ℝ :=
  ∑ j ∈ Finset.range n, time j * spectrum j i

theorem exposure_nonneg (time : ℕ → ℝ) (spectrum : ℕ → ι → ℝ) (n : ℕ) (i : ι)
    (ht : ∀ j < n, 0 ≤ time j) (hspectrum : ∀ j < n, 0 ≤ spectrum j i) :
    0 ≤ exposure time spectrum n i :=
  Finset.sum_nonneg fun j hj =>
    mul_nonneg (ht j (Finset.mem_range.mp hj)) (hspectrum j (Finset.mem_range.mp hj))

private theorem spectralHeat_apply (eigenvalue : ι → ℝ) (s : ℝ) (x : ι → ℝ) (i : ι) :
    spectralHeat eigenvalue s x i = Real.exp (-s * eigenvalue i) * x i := rfl

theorem run_spectral_eq (time : ℕ → ℝ) (spectrum : ℕ → ι → ℝ)
    (initial : ι → ℝ) (n : ℕ) :
    run (fun j x => spectralHeat (spectrum j) (time j) x) initial n =
      spectralHeat (exposure time spectrum n) 1 initial := by
  induction n with
  | zero => ext i; simp [run, exposure, spectralHeat_apply]
  | succ n previous =>
    rw [run, previous]
    ext i
    simp only [spectralHeat_apply, neg_one_mul]
    have h : -exposure time spectrum (n + 1) i =
        -time n * spectrum n i + -exposure time spectrum n i := by
      simp only [exposure, Finset.sum_range_succ]
      ring
    rw [h, Real.exp_add]
    ring

theorem run_same_generator_eq (time : ℕ → ℝ) (eigenvalue : ι → ℝ)
    (initial : ι → ℝ) (n : ℕ) :
    run (fun j x => spectralHeat eigenvalue (time j) x) initial n =
      spectralHeat eigenvalue (∑ j ∈ Finset.range n, time j) initial := by
  rw [run_spectral_eq]
  ext i
  simp [spectralHeat_apply, exposure, Finset.sum_mul, neg_mul]

theorem spectral_stage_dist_le [Fintype ι] (eigenvalue : ι → ℝ) (hspectrum : ∀ i, 0 ≤ eigenvalue i)
    (s : ℝ) (hs : 0 ≤ s) (x y : ι → ℝ) :
    dist (spectralHeat eigenvalue s x) (spectralHeat eigenvalue s y) ≤ dist x y := by
  apply (dist_pi_le_iff dist_nonneg).2
  intro i
  rw [Real.dist_eq]
  simp only [spectralHeat_apply, ← mul_sub, abs_mul, abs_of_pos (Real.exp_pos _)]
  have h : Real.exp (-s * eigenvalue i) ≤ 1 :=
    Real.exp_le_one_iff.mpr (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hs) (hspectrum i))
  calc
    Real.exp (-s * eigenvalue i) * |x i - y i| ≤ 1 * |x i - y i| :=
      mul_le_mul_of_nonneg_right h (abs_nonneg _)
    _ ≤ dist x y := by rw [one_mul, ← Real.dist_eq]; exact dist_le_pi_dist x y i

/-- Exact recovery of all modes at finite cumulative exposure. -/
theorem recover_run (time : ℕ → ℝ) (spectrum : ℕ → ι → ℝ)
    (initial : ι → ℝ) (n : ℕ) :
    spectralHeat (exposure time spectrum n) (-1)
        (run (fun j x => spectralHeat (spectrum j) (time j) x) initial n) = initial := by
  rw [run_spectral_eq]
  funext i
  simp only [spectralHeat_apply, neg_neg, one_mul, neg_one_mul, ← mul_assoc,
    ← Real.exp_add, add_neg_cancel, Real.exp_zero]

theorem recover_dist_le [Fintype ι] (A : ι → ℝ) (M : ℝ) (hM : ∀ i, A i ≤ M)
    (x y : ι → ℝ) :
    dist (spectralHeat A (-1) x) (spectralHeat A (-1) y) ≤ Real.exp M * dist x y := by
  apply (dist_pi_le_iff (mul_nonneg (Real.exp_nonneg _) dist_nonneg)).2
  intro i
  rw [Real.dist_eq]
  simp only [spectralHeat_apply, neg_neg, one_mul, ← mul_sub, abs_mul,
    abs_of_pos (Real.exp_pos _)]
  apply mul_le_mul (Real.exp_le_exp.mpr (hM i)) _ (abs_nonneg _) (Real.exp_nonneg _)
  rw [← Real.dist_eq]
  exact dist_le_pi_dist x y i

/-- Exact bias of a weighted readout before inverse correction. -/
theorem raw_readout_defect [Fintype ι] (time : ℕ → ℝ) (spectrum : ℕ → ι → ℝ)
    (weight initial : ι → ℝ) (n : ℕ) :
    (∑ i, weight i * run (fun j x => spectralHeat (spectrum j) (time j) x) initial n i) -
      (∑ i, weight i * initial i) =
    ∑ i, weight i * (Real.exp (-exposure time spectrum n i) - 1) * initial i := by
  rw [run_spectral_eq, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i _
  simp only [spectralHeat_apply, neg_one_mul]
  ring

/-- After exact inverse correction only the amplified measurement error remains. -/
theorem recover_readout_defect [Fintype ι] (time : ℕ → ℝ) (spectrum : ℕ → ι → ℝ)
    (weight initial noise : ι → ℝ) (n : ℕ) :
    (∑ i, weight i * spectralHeat (exposure time spectrum n) (-1)
      (run (fun j x => spectralHeat (spectrum j) (time j) x) initial n + noise) i) -
      (∑ i, weight i * initial i) =
      ∑ i, weight i * Real.exp (exposure time spectrum n i) * noise i := by
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i _
  rw [map_add, Pi.add_apply, congrFun (recover_run time spectrum initial n) i]
  simp only [spectralHeat_apply, neg_neg, one_mul]
  ring

/-- Heat with attenuation r in the second coordinate. -/
def axisStage (r : ℝ) (x : ℝ × ℝ) : ℝ × ℝ := (x.1, r * x.2)

/-- Heat with attenuation r in the antisymmetric mode, leaving the symmetric mode fixed. -/
def mixedStage (r : ℝ) (x : ℝ × ℝ) : ℝ × ℝ :=
  ((x.1 + x.2 + r * (x.1 - x.2)) / 2, (x.1 + x.2 - r * (x.1 - x.2)) / 2)

theorem mixedStage_on_modes (r a b : ℝ) :
    mixedStage r (a + b, a - b) = (a + r * b, a - r * b) := by
  apply Prod.ext <;> simp [mixedStage] <;> ring

/-- Two exact unit-time heats with eigenvalues 0, 1 in different orthogonal bases. -/
theorem exact_heat_order_matters :
    let r := Real.exp (-1)
    axisStage r (mixedStage r (1, 0)) ≠ mixedStage r (axisStage r (1, 0)) := by
  dsimp
  intro h
  have hsecond := congrArg Prod.snd h
  have hlt : Real.exp (-1) < 1 := Real.exp_lt_one_iff.mpr (by norm_num)
  have hsq : 0 < (1 - Real.exp (-1)) ^ 2 := sq_pos_of_ne_zero (sub_ne_zero.mpr hlt.ne')
  simp only [axisStage, mixedStage, add_zero, sub_zero, mul_one, mul_zero] at hsecond
  nlinarith [hsecond]

end GRWTSK.OperatorTheory.OrderedHeatSchedule
