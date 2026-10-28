/- Copyright (c) 2026 grwtsk. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.Analysis.FiniteSums.DyadicBlockSquareMaximal
import Mathlib.Algebra.Order.Floor.Semiring

/-!
# Deterministic sampling of actual short sums

An averaged-origin estimate is not a pointwise bound at a chosen origin.
For bounded inputs, however, the exact two-endpoint translation identity
prevents an isolated large sample. The finite comparison below converts
origin L1 mass into sampled L2 mass. It does not import any arXiv theorem.
The input may be centered at a nonzero constant; that constant is never
assumed to be an arithmetic mean or small. SOURCE_PROOF_CANDIDATE / NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.Analysis.FiniteSums.ShortIntervalSampling
open GRWTSK.Analysis.FiniteSums.DyadicBlockSquareMaximal

/-- The H terms at ordinary indices o,...,o+H-1, not a periodic interval. -/
def shortSum (f : ℕ → ℝ) (o H : ℕ) : ℝ :=
  finitePrefixSum (shiftedSequence f o) H

/-- An unnormalised L1 sum over L consecutive integer origins. -/
def slidingL1 (f : ℕ → ℝ) (o L H : ℕ) : ℝ :=
  ∑ r ∈ Finset.range L, |shortSum f (o + r) H|

/-- This center is the same at all origins in this occurrence. -/
def centeredSlidingL1 (f : ℕ → ℝ) (c : ℝ) (o L H : ℕ) : ℝ :=
  slidingL1 (fun n => f n - c) o L H

@[simp] theorem shortSum_zero (f : ℕ → ℝ) (o : ℕ) : shortSum f o 0 = 0 := by
  simp [shortSum]

theorem shortSum_eq_prefix_difference (f : ℕ → ℝ) (o H : ℕ) :
    shortSum f o H = finitePrefixSum f (o + H) - finitePrefixSum f o := by
  rw [finitePrefixSum_add]
  change shortSum f o H = finitePrefixSum f o + shortSum f o H - finitePrefixSum f o
  ring

theorem shortSum_sub_const (f : ℕ → ℝ) (c : ℝ) (o H : ℕ) :
    shortSum (fun n => f n - c) o H = shortSum f o H - (H : ℝ) * c := by
  simp [shortSum, finitePrefixSum, shiftedSequence, Finset.sum_sub_distrib]

theorem abs_shortSum_le (f : ℕ → ℝ) (o H : ℕ) {B : ℝ}
    (hf : ∀ n : ℕ, |f n| ≤ B) : |shortSum f o H| ≤ (H : ℝ) * B := by
  unfold shortSum finitePrefixSum shiftedSequence
  calc
    _ ≤ ∑ r ∈ Finset.range H, |f (o + r)| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _r ∈ Finset.range H, B := Finset.sum_le_sum (fun r _ => hf (o + r))
    _ = _ := by simp

/-- Only the two length-r boundary pieces survive a shift of the origin. -/
theorem shortSum_translation (f : ℕ → ℝ) (o H r : ℕ) :
    shortSum f (o + r) H - shortSum f o H =
      shortSum f (o + H) r - shortSum f o r := by
  simp only [shortSum_eq_prefix_difference]
  rw [show o + r + H = o + H + r by omega]
  ring

theorem abs_shortSum_translation_le (f : ℕ → ℝ) (o H r : ℕ) {B : ℝ}
    (hf : ∀ n : ℕ, |f n| ≤ B) :
    |shortSum f (o + r) H - shortSum f o H| ≤ 2 * B * (r : ℝ) := by
  rw [shortSum_translation]
  have h := (abs_sub _ _).trans (add_le_add
    (abs_shortSum_le f (o + H) r hf) (abs_shortSum_le f o r hf))
  nlinarith

/-- A finite Lipschitz sample costs no exceptional-grid equidistribution hypothesis.
The constant eight is deliberately not asserted optimal. -/
theorem sample_square_le_eight_mass (H : ℕ) (a B : ℝ) (b : ℕ → ℝ)
    (ha : 0 ≤ a) (hB : 0 ≤ B) (hcap : a ≤ (H : ℝ) * B)
    (hb : ∀ r ∈ Finset.range H, 0 ≤ b r)
    (hshift : ∀ r ∈ Finset.range H, a ≤ b r + 2 * B * (r : ℝ)) :
    a ^ 2 ≤ 8 * B * ∑ r ∈ Finset.range H, b r := by
  by_cases hBz : B = 0
  · subst B
    have hz : a = 0 := by nlinarith
    simp [hz]
  have hBp : 0 < B := lt_of_le_of_ne hB (Ne.symm hBz)
  let R : ℕ := ⌈a / (4 * B)⌉₊
  have hRH : R ≤ H := by
    apply Nat.ceil_le.mpr
    apply (div_le_iff₀ (by positivity : 0 < 4 * B)).mpr
    have hHB : 0 ≤ (H : ℝ) * B := mul_nonneg (Nat.cast_nonneg _) hB
    nlinarith
  have haR : a ≤ 4 * B * (R : ℝ) := by
    have h := Nat.le_ceil (a / (4 * B))
    have hh := (div_le_iff₀ (by positivity : 0 < 4 * B)).mp h
    change a ≤ 4 * B * (⌈a / (4 * B)⌉₊ : ℝ)
    nlinarith
  have hnear : ∀ r ∈ Finset.range R, a / 2 ≤ b r := by
    intro r hr
    have hrR : r < ⌈a / (4 * B)⌉₊ := Finset.mem_range.mp hr
    have hrA : (r : ℝ) < a / (4 * B) := Nat.lt_ceil.mp hrR
    have hrB := (lt_div_iff₀ (by positivity : 0 < 4 * B)).mp hrA
    have hrH : r ∈ Finset.range H := Finset.mem_range.mpr ((Finset.mem_range.mp hr).trans_le hRH)
    have ht := hshift r hrH
    nlinarith
  have hsmall : (R : ℝ) * (a / 2) ≤ ∑ r ∈ Finset.range R, b r := by
    calc
      _ = ∑ _r ∈ Finset.range R, a / 2 := by simp
      _ ≤ _ := Finset.sum_le_sum hnear
  have hsub : (∑ r ∈ Finset.range R, b r) ≤ ∑ r ∈ Finset.range H, b r := by
    apply Finset.sum_le_sum_of_subset_of_nonneg
    · intro r hr
      exact Finset.mem_range.mpr ((Finset.mem_range.mp hr).trans_le hRH)
    · intro r hr _
      exact hb r hr
  have hmul := mul_le_mul_of_nonneg_right haR ha
  have hmass := mul_le_mul_of_nonneg_left (hsmall.trans hsub) (show 0 ≤ 8 * B by positivity)
  nlinarith

/-- Exact-origin sample from its adjacent H origins; H=0 is included. -/
theorem shortSum_square_le_sliding (f : ℕ → ℝ) (o H : ℕ) {B : ℝ}
    (hB : 0 ≤ B) (hf : ∀ n : ℕ, |f n| ≤ B) :
    shortSum f o H ^ 2 ≤ 8 * B * slidingL1 f o H H := by
  have hs := sample_square_le_eight_mass H |shortSum f o H| B
    (fun r => |shortSum f (o + r) H|) (abs_nonneg _) hB
    (abs_shortSum_le f o H hf) (fun _ _ => abs_nonneg _) (by
      intro r _
      have hd := abs_shortSum_translation_le f o H r hf
      have ht := abs_sub (shortSum f (o + r) H)
        (shortSum f (o + r) H - shortSum f o H)
      have he : shortSum f (o + r) H -
          (shortSum f (o + r) H - shortSum f o H) = shortSum f o H := by ring
      rw [he] at ht
      linarith)
  simpa only [sq_abs, slidingL1] using hs

theorem slidingL1_nonneg (f : ℕ → ℝ) (o L H : ℕ) :
    0 ≤ slidingL1 f o L H := Finset.sum_nonneg (fun _ _ => abs_nonneg _)

theorem slidingL1_add (f : ℕ → ℝ) (o L K H : ℕ) :
    slidingL1 f o (L + K) H = slidingL1 f o L H + slidingL1 f (o + L) K H := by
  simp [slidingL1, Finset.sum_range_add, Nat.add_assoc]

/-- Disjoint ordinary cells cover all origins; there is no density-to-grid inference. -/
theorem sum_slidingL1_cells (f : ℕ → ℝ) (o L H Q : ℕ) :
    (∑ q ∈ Finset.range Q, slidingL1 f (o + q * L) L H) =
      slidingL1 f o (Q * L) H := by
  induction Q with
  | zero => simp [slidingL1]
  | succ Q ih =>
      rw [Finset.sum_range_succ, ih, Nat.succ_mul, slidingL1_add]

/-- A common center is retained in the actual averaged absolute sum. -/
theorem centeredSlidingL1_eq (f : ℕ → ℝ) (c : ℝ) (o L H : ℕ) :
    centeredSlidingL1 f c o L H =
      ∑ r ∈ Finset.range L, |shortSum f (o + r) H - (H : ℝ) * c| := by
  simp only [centeredSlidingL1, slidingL1, shortSum_sub_const]

/-- Exceptional ORIGINS are paid in the full origin interval, not counted only on a grid. -/
theorem centeredSlidingL1_le_exceptional (f : ℕ → ℝ) (c η : ℝ)
    (o L H : ℕ) (bad : Finset ℕ) (hη : 0 ≤ η)
    (hf : ∀ n : ℕ, |f n| ≤ 1)
    (hgood : ∀ r ∈ Finset.range L, r ∉ bad →
      |shortSum f (o + r) H - (H : ℝ) * c| ≤ η * (H : ℝ)) :
    centeredSlidingL1 f c o L H ≤
      (H : ℝ) * (η * (L : ℝ) +
        (1 + |c|) * (((Finset.range L).filter (fun r => r ∈ bad)).card : ℝ)) := by
  classical
  have hf' : ∀ n : ℕ, |f n - c| ≤ 1 + |c| := by
    intro n
    exact (abs_sub _ _).trans (add_le_add_right (hf n) _)
  rw [centeredSlidingL1_eq]
  calc
    _ ≤ ∑ r ∈ Finset.range L,
        (η * (H : ℝ) + if r ∈ bad then (1 + |c|) * (H : ℝ) else 0) := by
      apply Finset.sum_le_sum
      intro r hr
      by_cases hbad : r ∈ bad
      · rw [if_pos hbad]
        have h := abs_shortSum_le (fun n => f n - c) (o + r) H hf'
        rw [shortSum_sub_const] at h
        nlinarith [mul_nonneg hη (Nat.cast_nonneg H)]
      · rw [if_neg hbad, add_zero]
        exact hgood r hr hbad
    _ = _ := by
      rw [Finset.sum_add_distrib, ← Finset.sum_filter]
      simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
      ring

/-- Closed and half-open integer windows differ by the actual terminal term. -/
theorem shortSum_succ (f : ℕ → ℝ) (o H : ℕ) :
    shortSum f o (H + 1) = shortSum f o H + f (o + H) := by
  simp [shortSum, finitePrefixSum, shiftedSequence, Finset.sum_range_succ]

theorem centered_half_open_of_closed (f : ℕ → ℝ) (c : ℝ) (o H : ℕ) {A : ℝ}
    (hclosed : |shortSum f o (H + 1) - (H : ℝ) * c| ≤ A)
    (hf : |f (o + H)| ≤ 1) :
    |shortSum f o H - (H : ℝ) * c| ≤ A + 1 := by
  have ht := abs_sub (shortSum f o (H + 1) - (H : ℝ) * c) (f (o + H))
  rw [shortSum_succ] at ht hclosed
  have he : shortSum f o H + f (o + H) - (H : ℝ) * c - f (o + H) =
      shortSum f o H - (H : ℝ) * c := by ring
  rw [he] at ht
  exact ht.trans (add_le_add hclosed hf)

end GRWTSK.Analysis.FiniteSums.ShortIntervalSampling
