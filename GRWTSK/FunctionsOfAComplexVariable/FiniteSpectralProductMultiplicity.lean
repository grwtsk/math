/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrumAnchor
import GRWTSK.FunctionsOfAComplexVariable.AnalyticOrderTransport

/-!
# Analytic multiplicities of indexed finite real spectra

RP-OC-08, math issue #1805. This supplies actual analytic orders for the finite
products, not merely repeated entries in a list. It supports the positive-divisor
consumer of RP-OC-06. No convergence or arithmetic realization is asserted.
Source candidate: elaboration, fresh kernel replay, axiom audit and independent
review NOT_RUN. See adjacent declaration-level provenance.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology

namespace GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrum

variable {ι : Type*} [Fintype ι]

/-- Occurrences, including all repetitions, at one complex location. -/
def occurrenceCount (λ : ι → ℝ) (z : ℂ) : ℕ := by
  classical
  exact ∑ j, if (λ j : ℂ) = z then 1 else 0

/-- Distinct locations; multiplicities are stored separately, never discarded. -/
def rootSupport (λ : ι → ℝ) : Finset ℂ := by
  classical
  exact Finset.univ.image (fun j => (λ j : ℂ))

theorem mem_rootSupport (λ : ι → ℝ) (z : ℂ) :
    z ∈ rootSupport λ ↔ ∃ j, (λ j : ℂ) = z := by
  classical
  simp [rootSupport]

theorem occurrenceCount_pos_iff (λ : ι → ℝ) (z : ℂ) :
    0 < occurrenceCount λ z ↔ ∃ j, (λ j : ℂ) = z := by
  classical
  constructor
  · intro hp
    by_contra hn
    have hall : ∀ j, (λ j : ℂ) ≠ z := fun j hj => hn ⟨j, hj⟩
    have hz : occurrenceCount λ z = 0 := by simp [occurrenceCount, hall]
    exact (Nat.ne_of_gt hp) hz
  · rintro ⟨j, hj⟩
    have hle : (if (λ j : ℂ) = z then 1 else 0 : ℕ) ≤ occurrenceCount λ z :=
      Finset.single_le_sum (fun k _ => Nat.zero_le _) (Finset.mem_univ j)
    have hone : 1 ≤ occurrenceCount λ z := by simpa only [if_pos hj] using hle
    exact lt_of_lt_of_le Nat.zero_lt_one hone

theorem rootProduct_zero_iff (λ : ι → ℝ) (z : ℂ) :
    rootProduct λ z = 0 ↔ ∃ j, (λ j : ℂ) = z := by
  classical
  simp [rootProduct, Finset.prod_eq_zero_iff, sub_eq_zero, eq_comm]

theorem normalizedExpProduct_zero_iff (λ : ι → ℝ) {β : ℝ}
    (hβ : β ≠ 0) (c z : ℂ) :
    normalizedExpProduct λ β c z = 0 ↔ ∃ j, (λ j : ℂ) = z := by
  have hn : (rootProduct λ (anchor β))⁻¹ ≠ 0 :=
    inv_ne_zero (rootProduct_ne_zero λ (by simpa using hβ))
  simp only [normalizedExpProduct, normalizedProduct, mul_eq_zero,
    Complex.exp_ne_zero, hn, false_or, or_false, rootProduct_zero_iff]

/-- Each linear factor contributes one exactly at its own root. -/
theorem analyticOrderAt_linear_factor (x z : ℂ) :
    analyticOrderAt (fun w : ℂ => w - x) z =
      (if x = z then 1 else 0 : ℕ∞) := by
  classical
  by_cases h : x = z
  · subst x
    simpa using (analyticOrderAt_centeredMonomial (𝕜 := ℂ) (z₀ := z) (n := 1))
  · rw [if_neg h]
    exact (show AnalyticAt ℂ (fun w : ℂ => w - x) z by fun_prop).analyticOrderAt_eq_zero.mpr
      (sub_ne_zero.mpr (Ne.symm h))

/-- Finite multiplication adds analytic orders; no root simplicity is assumed. -/
theorem analyticOrderAt_finset_rootProduct (s : Finset ι) (λ : ι → ℝ) (z : ℂ) :
    analyticOrderAt (fun w : ℂ => ∏ j ∈ s, (w - (λ j : ℂ))) z =
      ((∑ j ∈ s, if (λ j : ℂ) = z then 1 else 0 : ℕ) : ℕ∞) := by
  classical
  induction s using Finset.induction_on with
  | empty =>
      simp only [Finset.prod_empty, Finset.sum_empty, Nat.cast_zero]
      exact (show AnalyticAt ℂ (fun _ : ℂ => (1 : ℂ)) z by fun_prop).analyticOrderAt_eq_zero.mpr
        one_ne_zero
  | @insert j s hj ih =>
      simp only [Finset.prod_insert hj, Finset.sum_insert hj, Nat.cast_add]
      have hadd := analyticOrderAt_mul
        (f := fun w : ℂ => w - (λ j : ℂ))
        (g := fun w : ℂ => ∏ k ∈ s, (w - (λ k : ℂ)))
        (z₀ := z) (by fun_prop) (by fun_prop)
      rw [hadd, analyticOrderAt_linear_factor, ih]
      split_ifs <;> simp

theorem analyticOrderAt_rootProduct (λ : ι → ℝ) (z : ℂ) :
    analyticOrderAt (rootProduct λ) z = (occurrenceCount λ z : ℕ∞) := by
  simpa only [rootProduct, occurrenceCount] using
    analyticOrderAt_finset_rootProduct Finset.univ λ z

/-- A nonzero normalization and any complex exponential slope preserve every order. -/
theorem analyticOrderAt_normalizedExpProduct (λ : ι → ℝ) {β : ℝ}
    (hβ : β ≠ 0) (c z : ℂ) :
    analyticOrderAt (normalizedExpProduct λ β c) z = (occurrenceCount λ z : ℕ∞) := by
  let u : ℂ → ℂ := fun w =>
    Complex.exp (c * (w - anchor β)) * (rootProduct λ (anchor β))⁻¹
  have hu : AnalyticAt ℂ u z := by dsimp [u]; fun_prop
  have hu0 : u z ≠ 0 :=
    mul_ne_zero (Complex.exp_ne_zero _)
      (inv_ne_zero (rootProduct_ne_zero λ (by simpa using hβ)))
  have hP : AnalyticAt ℂ (rootProduct λ) z := by unfold rootProduct; fun_prop
  have hfactor : normalizedExpProduct λ β c = rootProduct λ * u := by
    funext w
    dsimp [normalizedExpProduct, normalizedProduct, u]
    ring
  rw [hfactor,
    GRWTSK.Analysis.ComplexAnalysis.AnalyticOrderTransport.order_mul_nonzero_right
      (rootProduct λ) u z hP hu hu0,
    analyticOrderAt_rootProduct]

theorem analyticOrderNatAt_normalizedExpProduct (λ : ι → ℝ) {β : ℝ}
    (hβ : β ≠ 0) (c z : ℂ) :
    analyticOrderNatAt (normalizedExpProduct λ β c) z = occurrenceCount λ z := by
  simp [analyticOrderNatAt, analyticOrderAt_normalizedExpProduct λ hβ c z]

/-- Summing occurrence counts over distinct locations recovers the entire index size. -/
theorem sum_occurrenceCount (λ : ι → ℝ) :
    (∑ z ∈ rootSupport λ, occurrenceCount λ z) = Fintype.card ι := by
  classical
  unfold occurrenceCount
  rw [Finset.sum_comm]
  have hsum (j : ι) :
      (∑ z ∈ rootSupport λ, if (λ j : ℂ) = z then 1 else 0 : ℕ) = 1 := by
    rw [Finset.sum_eq_single (λ j : ℂ)]
    · simp
    · intro z _ hz
      simp [Ne.symm hz]
    · intro hn
      exact False.elim (hn ((mem_rootSupport λ (λ j : ℂ)).mpr ⟨j, rfl⟩))
  simp_rw [hsum]
  simp

/-- Regression: a triple repeated root remains order three after normalization. -/
theorem triple_root_order (x : ℝ) {β : ℝ} (hβ : β ≠ 0) (c : ℂ) :
    analyticOrderAt (normalizedExpProduct (fun _ : Fin 3 => x) β c) x = 3 := by
  rw [analyticOrderAt_normalizedExpProduct _ hβ]
  simp [occurrenceCount]

end GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrum
