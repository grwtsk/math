/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Formalization assistance: OpenAI Codex.
Mathlib imports retain their upstream authorship and Apache-2.0 licensing. -/
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar
import Mathlib.Tactic

/-!
# Finite interval sums of a negative cyclic character

The phase is `stdAddChar (-n * t)` and the multiplier is
`stdAddChar t - 1`. The predecessor endpoints require `1 ≤ A`.
These are unweighted finite-character estimates. The final theorem gives
norm-one weights that cancel the phase exactly, so the estimate does not
extend to arbitrary coefficients from their norms alone.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.CharacterSums

open scoped BigOperators
open AddChar

variable {q : ℕ} [NeZero q]

/-- Exact successor identity for the negative phase. -/
theorem stdAddChar_neg_nat_succ_mul (t : ZMod q) (n : ℕ) :
    ZMod.stdAddChar (-(((n + 1 : ℕ) : ZMod q) * t)) *
        ZMod.stdAddChar t =
      ZMod.stdAddChar (-((n : ZMod q) * t)) := by
  rw [← map_add_eq_mul]
  congr 1
  push_cast
  ring

/-- Exact interval identity with the positive-character multiplier. -/
theorem stdAddChar_neg_Ico_mul (t : ZMod q) (A B : ℕ)
    (hA : 1 ≤ A) (hAB : A ≤ B) :
    (ZMod.stdAddChar t - 1) *
        (∑ n ∈ Finset.Ico A B,
          ZMod.stdAddChar (-((n : ZMod q) * t))) =
      ZMod.stdAddChar (-(((A - 1 : ℕ) : ZMod q) * t)) -
        ZMod.stdAddChar (-(((B - 1 : ℕ) : ZMod q) * t)) := by
  induction B, hAB using Nat.le_induction with
  | base => simp
  | succ B hAB ih =>
      rw [Finset.sum_Ico_succ_top hAB, mul_add, ih]
      have hpred : B - 1 + 1 = B :=
        Nat.sub_add_cancel (le_trans hA hAB)
      have hstep := stdAddChar_neg_nat_succ_mul t (B - 1)
      rw [hpred] at hstep
      rw [Nat.add_sub_cancel]
      linear_combination hstep

/-- A nonzero frequency gives an actual unweighted finite-sum bound.
The interval is allowed to be empty or reversed. -/
theorem norm_sum_stdAddChar_neg_Ico_le (t : ZMod q) (A B : ℕ)
    (hA : 1 ≤ A) (ht : t ≠ 0) :
    ‖∑ n ∈ Finset.Ico A B,
        ZMod.stdAddChar (-((n : ZMod q) * t))‖ ≤
      2 * ‖(ZMod.stdAddChar t - 1)⁻¹‖ := by
  by_cases hAB : A ≤ B
  · have hm : ZMod.stdAddChar t - 1 ≠ 0 := by
      intro h
      apply ht
      apply ZMod.injective_stdAddChar
      simpa using sub_eq_zero.mp h
    have hid := stdAddChar_neg_Ico_mul t A B hA hAB
    have hrewrite :
        (∑ n ∈ Finset.Ico A B,
          ZMod.stdAddChar (-((n : ZMod q) * t))) =
        (ZMod.stdAddChar t - 1)⁻¹ *
          (ZMod.stdAddChar (-(((A - 1 : ℕ) : ZMod q) * t)) -
            ZMod.stdAddChar (-(((B - 1 : ℕ) : ZMod q) * t))) := by
      calc
        _ = ((ZMod.stdAddChar t - 1)⁻¹ *
              (ZMod.stdAddChar t - 1)) *
            (∑ n ∈ Finset.Ico A B,
              ZMod.stdAddChar (-((n : ZMod q) * t))) := by
          rw [inv_mul_cancel₀ hm, one_mul]
        _ = (ZMod.stdAddChar t - 1)⁻¹ *
            ((ZMod.stdAddChar t - 1) *
              (∑ n ∈ Finset.Ico A B,
                ZMod.stdAddChar (-((n : ZMod q) * t)))) := by
          rw [mul_assoc]
        _ = _ := by rw [hid]
    have hnorm (n : ℕ) :
        ‖ZMod.stdAddChar (-((n : ZMod q) * t))‖ = 1 := by
      exact Circle.norm_coe (ZMod.toCircle (-((n : ZMod q) * t)))
    rw [hrewrite, norm_mul]
    calc
      _ ≤ ‖(ZMod.stdAddChar t - 1)⁻¹‖ *
          (‖ZMod.stdAddChar (-(((A - 1 : ℕ) : ZMod q) * t))‖ +
            ‖ZMod.stdAddChar (-(((B - 1 : ℕ) : ZMod q) * t))‖) :=
        mul_le_mul_of_nonneg_left (norm_sub_le _ _) (norm_nonneg _)
      _ = 2 * ‖(ZMod.stdAddChar t - 1)⁻¹‖ := by
        rw [hnorm, hnorm]
        ring
  · have hempty : Finset.Ico A B = ∅ :=
      Finset.Ico_eq_empty_iff.mpr (by omega)
    rw [hempty, Finset.sum_empty, norm_zero]
    exact mul_nonneg (by norm_num) (norm_nonneg _)

/-- At zero frequency the sum is its exact cardinality. -/
theorem sum_stdAddChar_neg_Ico_zero (A B : ℕ) :
    (∑ n ∈ Finset.Ico A B,
      ZMod.stdAddChar (-((n : ZMod q) * (0 : ZMod q)))) =
      ((Finset.Ico A B).card : ℂ) := by
  simp

/-- Norm-one coefficients can cancel the negative character pointwise.
Their weighted sum therefore has no cancellation on any finite set. -/
theorem stdAddChar_phase_matched_weights (t : ZMod q) (S : Finset ℕ) :
    (∀ n : ℕ, ‖ZMod.stdAddChar ((n : ZMod q) * t)‖ = 1) ∧
      (∑ n ∈ S,
        ZMod.stdAddChar ((n : ZMod q) * t) *
          ZMod.stdAddChar (-((n : ZMod q) * t))) = (S.card : ℂ) := by
  constructor
  · intro n
    exact Circle.norm_coe (ZMod.toCircle ((n : ZMod q) * t))
  · calc
      _ = ∑ _n ∈ S, (1 : ℂ) := by
        apply Finset.sum_congr rfl
        intro n _
        rw [← map_add_eq_mul]
        simp
      _ = S.card := by simp

end GRWTSK.NumberTheory.CharacterSums
