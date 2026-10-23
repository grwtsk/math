/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Formalization assistance: OpenAI ChatGPT.
Mathlib imports retain their upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.CharacterSums.FiniteCyclicIntervalDistance
import Mathlib.Algebra.BigOperators.Module

/-!
# Finite cyclic character sums controlled by coefficient variation

For the negative phase `stdAddChar (-(n * t))`, finite summation by parts
transfers the checked uniform interval bound to an arbitrary complex
coefficient sequence.  The only coefficient quantity is the exact terminal
norm plus all successor variations on the interval.

The reciprocal-weighted corollary applies this to

`a n / ((n + R : ℕ) : ℂ)`.

No arithmetic cancellation premise is introduced.  In particular, this file
does not claim that Möbius, Liouville, centered-fiber, or squarefree-gcd
coefficients have small variation.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.CharacterSums

open scoped BigOperators
open AddChar

variable {q : ℕ} [NeZero q]

/-- Exact finite variation quantity consumed by Dirichlet summation.  It is
zero for an empty or reversed interval. -/
def finiteCyclicCoefficientVariation
    (a : ℕ → ℂ) (A B : ℕ) : ℝ :=
  if A < B then
    ‖a (B - 1)‖ +
      ∑ k ∈ Finset.Ico A (B - 1), ‖a k - a (k + 1)‖
  else 0

/-- Finite coefficient variation is nonnegative. -/
theorem finiteCyclicCoefficientVariation_nonneg
    (a : ℕ → ℂ) (A B : ℕ) :
    0 ≤ finiteCyclicCoefficientVariation a A B := by
  by_cases hAB : A < B
  · simp only [finiteCyclicCoefficientVariation, hAB, if_pos]
    exact add_nonneg (norm_nonneg _) (Finset.sum_nonneg fun _ _ => norm_nonneg _)
  · simp [finiteCyclicCoefficientVariation, hAB]

/-- Exact Abel identity for an arbitrary coefficient sequence.  The terminal
coefficient and every successor difference remain explicit. -/
theorem sum_mul_stdAddChar_neg_Ico_eq_terminal_add_variation
    (a : ℕ → ℂ)
    (t : ZMod q)
    (A B : ℕ)
    (hAB : A < B) :
    (∑ n ∈ Finset.Ico A B,
      a n * ZMod.stdAddChar (-((n : ZMod q) * t))) =
      a (B - 1) *
          (∑ n ∈ Finset.Ico A B,
            ZMod.stdAddChar (-((n : ZMod q) * t))) +
        ∑ k ∈ Finset.Ico A (B - 1),
          (a k - a (k + 1)) *
            (∑ n ∈ Finset.Ico A (k + 1),
              ZMod.stdAddChar (-((n : ZMod q) * t))) := by
  classical
  let g : ℕ → ℂ := fun n =>
    if A ≤ n then ZMod.stdAddChar (-((n : ZMod q) * t)) else 0
  have hpartial (K : ℕ) :
      (∑ n ∈ Finset.range K, g n) =
        ∑ n ∈ Finset.Ico A K,
          ZMod.stdAddChar (-((n : ZMod q) * t)) := by
    unfold g
    rw [← Finset.sum_filter]
    have hset :
        (Finset.range K).filter (fun n => A ≤ n) = Finset.Ico A K := by
      ext n
      simp [Finset.mem_Ico]
    rw [hset]
  have hparts := Finset.sum_Ico_by_parts a g hAB
  simp only [smul_eq_mul] at hparts
  simp_rw [hpartial] at hparts
  have hleft :
      (∑ n ∈ Finset.Ico A B, a n * g n) =
        ∑ n ∈ Finset.Ico A B,
          a n * ZMod.stdAddChar (-((n : ZMod q) * t)) := by
    apply Finset.sum_congr rfl
    intro n hn
    have hAn : A ≤ n := (Finset.mem_Ico.mp hn).1
    simp [g, hAn]
  rw [hleft] at hparts
  rw [hparts]
  simp only [Finset.Ico_self, Finset.sum_empty, mul_zero, sub_zero]
  rw [sub_eq_add_neg, ← Finset.sum_neg_distrib]
  apply congrArg (fun z =>
    a (B - 1) *
        (∑ n ∈ Finset.Ico A B,
          ZMod.stdAddChar (-((n : ZMod q) * t))) + z)
  apply Finset.sum_congr rfl
  intro k _hk
  ring

/-- Uniform interval cancellation transfers to arbitrary coefficients through
exact finite variation.  Empty and reversed intervals are included. -/
theorem norm_sum_mul_stdAddChar_neg_Ico_le_coefficientVariation
    (a : ℕ → ℂ)
    (t : ZMod q)
    (A B : ℕ)
    (hA : 1 ≤ A)
    (ht : t ≠ 0) :
    ‖∑ n ∈ Finset.Ico A B,
        a n * ZMod.stdAddChar (-((n : ZMod q) * t))‖ ≤
      ((q : ℝ) /
          (2 * (finiteCyclicCircularDistance t : ℝ))) *
        finiteCyclicCoefficientVariation a A B := by
  by_cases hAB : A < B
  · let d := finiteCyclicCircularDistance t
    let M : ℝ := (q : ℝ) / (2 * (d : ℝ))
    have hpartial (K : ℕ) :
        ‖∑ n ∈ Finset.Ico A K,
            ZMod.stdAddChar (-((n : ZMod q) * t))‖ ≤ M := by
      simpa [M, d] using
        norm_sum_stdAddChar_neg_Ico_le_circularDistance
          (q := q) t A K hA ht
    rw [sum_mul_stdAddChar_neg_Ico_eq_terminal_add_variation
      a t A B hAB]
    have hend :
        ‖a (B - 1) *
            (∑ n ∈ Finset.Ico A B,
              ZMod.stdAddChar (-((n : ZMod q) * t)))‖ ≤
          ‖a (B - 1)‖ * M := by
      rw [norm_mul]
      exact mul_le_mul_of_nonneg_left (hpartial B) (norm_nonneg _)
    have hsteps :
        ‖∑ k ∈ Finset.Ico A (B - 1),
            (a k - a (k + 1)) *
              (∑ n ∈ Finset.Ico A (k + 1),
                ZMod.stdAddChar (-((n : ZMod q) * t)))‖ ≤
          ∑ k ∈ Finset.Ico A (B - 1),
            ‖a k - a (k + 1)‖ * M := by
      calc
        ‖∑ k ∈ Finset.Ico A (B - 1),
            (a k - a (k + 1)) *
              (∑ n ∈ Finset.Ico A (k + 1),
                ZMod.stdAddChar (-((n : ZMod q) * t)))‖ ≤
          ∑ k ∈ Finset.Ico A (B - 1),
            ‖(a k - a (k + 1)) *
              (∑ n ∈ Finset.Ico A (k + 1),
                ZMod.stdAddChar (-((n : ZMod q) * t)))‖ :=
          norm_sum_le _ _
        _ ≤ ∑ k ∈ Finset.Ico A (B - 1),
            ‖a k - a (k + 1)‖ * M := by
          apply Finset.sum_le_sum
          intro k _hk
          rw [norm_mul]
          exact mul_le_mul_of_nonneg_left
            (hpartial (k + 1)) (norm_nonneg _)
    calc
      ‖a (B - 1) *
            (∑ n ∈ Finset.Ico A B,
              ZMod.stdAddChar (-((n : ZMod q) * t))) +
          ∑ k ∈ Finset.Ico A (B - 1),
            (a k - a (k + 1)) *
              (∑ n ∈ Finset.Ico A (k + 1),
                ZMod.stdAddChar (-((n : ZMod q) * t)))‖ ≤
        ‖a (B - 1) *
            (∑ n ∈ Finset.Ico A B,
              ZMod.stdAddChar (-((n : ZMod q) * t)))‖ +
          ‖∑ k ∈ Finset.Ico A (B - 1),
            (a k - a (k + 1)) *
              (∑ n ∈ Finset.Ico A (k + 1),
                ZMod.stdAddChar (-((n : ZMod q) * t)))‖ :=
        norm_add_le _ _
      _ ≤ ‖a (B - 1)‖ * M +
          ∑ k ∈ Finset.Ico A (B - 1),
            ‖a k - a (k + 1)‖ * M :=
        add_le_add hend hsteps
      _ = M * finiteCyclicCoefficientVariation a A B := by
        rw [← Finset.sum_mul]
        simp only [finiteCyclicCoefficientVariation, hAB, if_pos]
        ring
      _ = ((q : ℝ) /
          (2 * (finiteCyclicCircularDistance t : ℝ))) *
          finiteCyclicCoefficientVariation a A B := by
        rfl
  · have hBA : B ≤ A := Nat.le_of_not_gt hAB
    have hempty : Finset.Ico A B = ∅ :=
      Finset.Ico_eq_empty_iff.mpr hBA
    simp [hempty, finiteCyclicCoefficientVariation, hAB]

/-- Variation of the reciprocal-weighted coefficient sequence. -/
def finiteCyclicReciprocalCoefficientVariation
    (a : ℕ → ℂ) (A B R : ℕ) : ℝ :=
  finiteCyclicCoefficientVariation
    (fun n => a n / (((n + R : ℕ) : ℂ))) A B

/-- Actual weighted reciprocal estimate.  The arithmetic coefficients enter
only through the exact variation of `a n / (n + R)`. -/
theorem norm_sum_mul_stdAddChar_neg_div_nat_add_Ico_le_variation
    (a : ℕ → ℂ)
    (t : ZMod q)
    (A B R : ℕ)
    (hA : 1 ≤ A)
    (ht : t ≠ 0) :
    ‖∑ n ∈ Finset.Ico A B,
        a n * ZMod.stdAddChar (-((n : ZMod q) * t)) /
          (((n + R : ℕ) : ℂ))‖ ≤
      ((q : ℝ) /
          (2 * (finiteCyclicCircularDistance t : ℝ))) *
        finiteCyclicReciprocalCoefficientVariation a A B R := by
  simpa [finiteCyclicReciprocalCoefficientVariation,
    div_eq_mul_inv, mul_assoc, mul_comm, mul_left_comm] using
    norm_sum_mul_stdAddChar_neg_Ico_le_coefficientVariation
      (q := q)
      (a := fun n => a n / (((n + R : ℕ) : ℂ)))
      t A B hA ht

end GRWTSK.NumberTheory.CharacterSums
