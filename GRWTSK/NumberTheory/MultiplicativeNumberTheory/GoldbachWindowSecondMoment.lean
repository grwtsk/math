/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachWeightedWindowError

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact window second-moment bookkeeping. The source-specific upper
bound is not supplied. Boundary cross terms remain explicit.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachWindowSecondMoment

theorem full_boundary_second_moment {ι : Type*}
    (W : Finset ι) (C D h : ι → ℝ) :
    (∑ i ∈ W, (C i + D i) ^ 2 / h i) =
      (∑ i ∈ W, C i ^ 2 / h i) +
      2 * (∑ i ∈ W, C i * D i / h i) + (∑ i ∈ W, D i ^ 2 / h i) := by
  simp only [Finset.mul_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i _
  ring

lemma normalized_coordinate_moment (G h κ : ℝ) (hh : h ≠ 0) (hκ : κ ≠ 0) :
    κ ^ 2 * (h * (G / (κ * h) - 1) ^ 2) =
      G ^ 2 / h - 2 * κ * G + κ ^ 2 * h := by
  field_simp [hh, hκ]
  <;> ring

theorem complete_normalized_moment {ι : Type*}
    (W : Finset ι) (G h : ι → ℝ) (κ : ℝ)
    (hh : ∀ i ∈ W, h i ≠ 0) (hκ : κ ≠ 0) :
    κ ^ 2 * (∑ i ∈ W, h i * (G i / (κ * h i) - 1) ^ 2) =
      (∑ i ∈ W, G i ^ 2 / h i) - 2 * κ * (∑ i ∈ W, G i) +
        κ ^ 2 * (∑ i ∈ W, h i) := by
  simp only [Finset.mul_sum, ← Finset.sum_sub_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i hi
  exact normalized_coordinate_moment (G i) (h i) κ (hh i hi) hκ

theorem calibrated_normalized_moment {ι : Type*}
    (W : Finset ι) (G h : ι → ℝ) (κ : ℝ)
    (hh : ∀ i ∈ W, h i ≠ 0) (hκ : κ ≠ 0)
    (hcal : (∑ i ∈ W, G i) = κ * (∑ i ∈ W, h i)) :
    κ ^ 2 * (∑ i ∈ W, h i * (G i / (κ * h i) - 1) ^ 2) =
      (∑ i ∈ W, G i ^ 2 / h i) - κ ^ 2 * (∑ i ∈ W, h i) := by
  have hmoment := complete_normalized_moment W G h κ hh hκ
  rw [hcal] at hmoment
  nlinarith

end GRWTSK.NumberTheory.Primes.GoldbachWindowSecondMoment
