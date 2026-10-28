/- Copyright (c) 2026 grwtsk. MIT.
Mathlib retains its upstream attribution and license. -/
import Mathlib

/-!
# Signed fourth moments with exact weights

Independent real-valued derivation and weighted extension of the finite method
in OpenAI, Ordinary two-point correlations of multiplicative functions (2026),
OAI.TwoPointCorrelations.minor_arc_fourth_sum and
minor_arc_fourth_moment_expansion, upstream blob
43fb7f542683c5b68fa0b419d547d4cde8ca8566 at
7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a. No upstream analytic theorem or
proof closure is imported. No complex conjugates are omitted from a complex
claim: the statements here are explicitly REAL.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.Analysis.FiniteSums.WeightedFourthMoment

/-- Every ordered quartet is retained, including all diagonals. -/
theorem fourth_sum_expansion {ι : Type*} (S : Finset ι) (f : ι → ℝ) :
    (∑ a ∈ S, f a) ^ 4 =
      ∑ a ∈ S, ∑ b ∈ S, ∑ c ∈ S, ∑ d ∈ S,
        f a * f b * f c * f d := by
  rw [show (∑ a ∈ S, f a) ^ 4 =
    (∑ a ∈ S, f a) * (∑ a ∈ S, f a) * (∑ a ∈ S, f a) * (∑ a ∈ S, f a) by ring]
  simp_rw [Finset.sum_mul, Finset.mul_sum]

/-- Finite Cauchy in the exact absolute coefficient measure. -/
theorem weighted_square_le {ι : Type*} (S : Finset ι) (w f : ι → ℝ) :
    (∑ a ∈ S, w a * f a) ^ 2 ≤
      (∑ a ∈ S, |w a|) * ∑ a ∈ S, |w a| * f a ^ 2 := by
  apply Finset.sum_sq_le_sum_mul_sum_of_sq_le_mul
  · intro a _; exact abs_nonneg _
  · intro a _; exact mul_nonneg (abs_nonneg _) (sq_nonneg _)
  · intro a _
    apply le_of_eq
    rw [mul_pow, ← sq_abs (w a)]
    ring

/-- The cubic coefficient-mass loss is explicit; finite dimension is not smallness. -/
theorem weighted_fourth_le {ι : Type*} (S : Finset ι) (w f : ι → ℝ) :
    (∑ a ∈ S, w a * f a) ^ 4 ≤
      (∑ a ∈ S, |w a|) ^ 3 * ∑ a ∈ S, |w a| * f a ^ 4 := by
  let W : ℝ := ∑ a ∈ S, |w a|
  let E : ℝ := ∑ a ∈ S, |w a| * f a ^ 2
  let F : ℝ := ∑ a ∈ S, |w a| * f a ^ 4
  have hW : 0 ≤ W := Finset.sum_nonneg (fun _ _ => abs_nonneg _)
  have hE : 0 ≤ E := Finset.sum_nonneg (fun _ _ => mul_nonneg (abs_nonneg _) (sq_nonneg _))
  have hs : (∑ a ∈ S, w a * f a) ^ 2 ≤ W * E := weighted_square_le S w f
  have he : E ^ 2 ≤ W * F := by
    dsimp [E, W, F]
    apply Finset.sum_sq_le_sum_mul_sum_of_sq_le_mul
    · intro a _; exact abs_nonneg _
    · intro a _; positivity
    · intro a _; apply le_of_eq; ring
  calc
    _ = ((∑ a ∈ S, w a * f a) ^ 2) ^ 2 := by ring
    _ ≤ (W * E) ^ 2 := (sq_le_sq₀ (sq_nonneg _) (mul_nonneg hW hE)).2 hs
    _ = W ^ 2 * E ^ 2 := by ring
    _ ≤ W ^ 2 * (W * F) := mul_le_mul_of_nonneg_left he (sq_nonneg W)
    _ = W ^ 3 * F := by ring

/-- Taking fourth roots is kept as an ordered-real theorem, including epsilon zero. -/
theorem abs_le_of_fourth_le {x ε : ℝ} (hε : 0 ≤ ε) (h : x ^ 4 ≤ ε ^ 4) :
    |x| ≤ ε := by
  have hs : x ^ 2 ≤ ε ^ 2 := (sq_le_sq₀ (sq_nonneg x) (sq_nonneg ε)).mp
    (by nlinarith [h])
  exact (sq_le_sq₀ (abs_nonneg x) hε).mp (by simpa only [sq_abs] using hs)

/-- Threshold decomposition retains the small-value mass and the weighted bad set. -/
theorem fourth_threshold {ι : Type*} (S : Finset ι) (w f : ι → ℝ)
    (V U : ℝ) (hV : 0 ≤ V) (hf : ∀ a ∈ S, f a ^ 4 ≤ U) :
    (∑ a ∈ S, |w a| * f a ^ 4) ≤
      V * (∑ a ∈ S, |w a|) +
        U * (∑ a ∈ S, if V < f a ^ 4 then |w a| else 0) := by
  calc
    _ ≤ ∑ a ∈ S,
        (V * |w a| + U * (if V < f a ^ 4 then |w a| else 0)) := by
      apply Finset.sum_le_sum
      intro a ha
      by_cases hlarge : V < f a ^ 4
      · rw [if_pos hlarge]
        have hu := mul_le_mul_of_nonneg_left (hf a ha) (abs_nonneg (w a))
        nlinarith [mul_nonneg hV (abs_nonneg (w a))]
      · rw [if_neg hlarge, mul_zero, add_zero]
        simpa only [mul_comm] using
          mul_le_mul_of_nonneg_left (le_of_not_gt hlarge) (abs_nonneg (w a))
    _ = _ := by rw [Finset.sum_add_distrib, ← Finset.mul_sum, ← Finset.mul_sum]

/-- A low-complexity exact evaluation alone cannot give a small arithmetic value. -/
theorem constant_signal_fourth (S : Finset ℕ) :
    (∑ _a ∈ S, (1 : ℝ)) ^ 4 = (S.card : ℝ) ^ 4 := by simp

end GRWTSK.Analysis.FiniteSums.WeightedFourthMoment
