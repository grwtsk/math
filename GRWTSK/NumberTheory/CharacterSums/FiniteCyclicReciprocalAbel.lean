/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Formalization assistance: OpenAI ChatGPT.
Mathlib imports retain their upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.CharacterSums.FiniteCyclicIntervalDistance
import Mathlib.Algebra.BigOperators.Module

/-!
# Reciprocal-weight Abel summation for a finite cyclic character

For the negative phase `stdAddChar (-(n * t))`, this file applies finite
summation by parts to the positive decreasing weight `1 / (n + R)`.  The
unweighted interval estimates from `FiniteCyclicIntervalDistance` then give

`‖∑ n ∈ Ico A B, stdAddChar (-(n * t)) / (n + R)‖
  ≤ q / (2 * circularDistance q t * (A + R))`

when `1 ≤ A`, `A < B`, and `t ≠ 0` in `ZMod q`.

Every endpoint and finite boundary term remains explicit in the Abel identity.
No weighted arithmetic cancellation, Möbius estimate, or endpoint-packet
estimate is used.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.CharacterSums

open scoped BigOperators
open AddChar

variable {q : ℕ} [NeZero q]

/-- Positive real reciprocal weight used in finite Abel summation. -/
def finiteCyclicReciprocalWeight (R n : ℕ) : ℝ :=
  (((n + R : ℕ) : ℝ))⁻¹

/-- Reciprocal weights are nonnegative, including at the field convention
`0⁻¹ = 0`. -/
theorem finiteCyclicReciprocalWeight_nonneg (R n : ℕ) :
    0 ≤ finiteCyclicReciprocalWeight R n := by
  unfold finiteCyclicReciprocalWeight
  positivity

/-- On positive indices, the reciprocal weight decreases at each successor. -/
theorem finiteCyclicReciprocalWeight_succ_le
    (R n : ℕ) (hn : 1 ≤ n) :
    finiteCyclicReciprocalWeight R (n + 1) ≤
      finiteCyclicReciprocalWeight R n := by
  unfold finiteCyclicReciprocalWeight
  have hleft : (0 : ℝ) < (((n + 1 + R : ℕ) : ℝ)) := by
    exact_mod_cast (show 0 < n + 1 + R by omega)
  have hright : (0 : ℝ) < (((n + R : ℕ) : ℝ)) := by
    exact_mod_cast (show 0 < n + R by omega)
  exact (inv_le_inv₀ hleft hright).2 (by exact_mod_cast (show n + R ≤ n + 1 + R by omega))

/-- The norm of the complex image of a reciprocal weight is the weight itself. -/
theorem norm_coe_finiteCyclicReciprocalWeight (R n : ℕ) :
    ‖(finiteCyclicReciprocalWeight R n : ℂ)‖ =
      finiteCyclicReciprocalWeight R n := by
  rw [Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (finiteCyclicReciprocalWeight_nonneg R n)]

/-- The norm of one complexified reciprocal decrement is its real decrement. -/
theorem norm_coe_finiteCyclicReciprocalWeight_sub_succ
    (R n : ℕ) (hn : 1 ≤ n) :
    ‖((finiteCyclicReciprocalWeight R n -
        finiteCyclicReciprocalWeight R (n + 1) : ℝ) : ℂ)‖ =
      finiteCyclicReciprocalWeight R n -
        finiteCyclicReciprocalWeight R (n + 1) := by
  rw [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg]
  exact sub_nonneg.mpr (finiteCyclicReciprocalWeight_succ_le R n hn)

/-- The terminal reciprocal plus all finite successor decrements telescopes to
the initial reciprocal. -/
theorem finiteCyclicReciprocalWeight_endpoint_add_steps
    (A B R : ℕ) (hAB : A < B) :
    finiteCyclicReciprocalWeight R (B - 1) +
        ∑ k ∈ Finset.Ico A (B - 1),
          (finiteCyclicReciprocalWeight R k -
            finiteCyclicReciprocalWeight R (k + 1)) =
      finiteCyclicReciprocalWeight R A := by
  have hAle : A ≤ B - 1 := Nat.le_sub_one_of_lt hAB
  have htel :=
    Finset.sum_Ico_sub (fun n => finiteCyclicReciprocalWeight R n) hAle
  calc
    finiteCyclicReciprocalWeight R (B - 1) +
        ∑ k ∈ Finset.Ico A (B - 1),
          (finiteCyclicReciprocalWeight R k -
            finiteCyclicReciprocalWeight R (k + 1)) =
      finiteCyclicReciprocalWeight R (B - 1) -
        ∑ k ∈ Finset.Ico A (B - 1),
          (finiteCyclicReciprocalWeight R (k + 1) -
            finiteCyclicReciprocalWeight R k) := by
        congr 1
        rw [← Finset.sum_neg_distrib]
        apply Finset.sum_congr rfl
        intro k _hk
        ring
    _ = finiteCyclicReciprocalWeight R A := by
      rw [htel]
      ring

/-- Exact finite Abel identity.  The first term is the terminal endpoint and
the remaining sum contains every reciprocal decrement and its corresponding
partial character sum. -/
theorem sum_stdAddChar_neg_mul_reciprocalWeight_Ico_eq_abel
    (t : ZMod q) (A B R : ℕ) (hAB : A < B) :
    (∑ n ∈ Finset.Ico A B,
      (finiteCyclicReciprocalWeight R n : ℂ) *
        ZMod.stdAddChar (-((n : ZMod q) * t))) =
      (finiteCyclicReciprocalWeight R (B - 1) : ℂ) *
          (∑ n ∈ Finset.Ico A B,
            ZMod.stdAddChar (-((n : ZMod q) * t))) +
        ∑ k ∈ Finset.Ico A (B - 1),
          ((finiteCyclicReciprocalWeight R k -
              finiteCyclicReciprocalWeight R (k + 1) : ℝ) : ℂ) *
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
  have hparts :=
    Finset.sum_Ico_by_parts
      (fun n => (finiteCyclicReciprocalWeight R n : ℂ)) g hAB
  simp only [smul_eq_mul] at hparts
  simp_rw [hpartial] at hparts
  have hleft :
      (∑ n ∈ Finset.Ico A B,
        (finiteCyclicReciprocalWeight R n : ℂ) * g n) =
        ∑ n ∈ Finset.Ico A B,
          (finiteCyclicReciprocalWeight R n : ℂ) *
            ZMod.stdAddChar (-((n : ZMod q) * t)) := by
    apply Finset.sum_congr rfl
    intro n hn
    have hAn : A ≤ n := (Finset.mem_Ico.mp hn).1
    simp [g, hAn]
  rw [hleft] at hparts
  rw [hparts]
  simp only [Finset.Ico_self, Finset.sum_empty, mul_zero, sub_zero]
  rw [sub_eq_add_neg, ← Finset.sum_neg_distrib]
  apply congrArg (fun z =>
    (finiteCyclicReciprocalWeight R (B - 1) : ℂ) *
        (∑ n ∈ Finset.Ico A B,
          ZMod.stdAddChar (-((n : ZMod q) * t))) + z)
  apply Finset.sum_congr rfl
  intro k _hk
  push_cast
  ring

/-- Dirichlet--Abel estimate for the real reciprocal weight. -/
theorem norm_sum_stdAddChar_neg_mul_reciprocalWeight_Ico_le
    (t : ZMod q) (A B R : ℕ)
    (hA : 1 ≤ A) (hAB : A < B) (ht : t ≠ 0) :
    ‖∑ n ∈ Finset.Ico A B,
        (finiteCyclicReciprocalWeight R n : ℂ) *
          ZMod.stdAddChar (-((n : ZMod q) * t))‖ ≤
      (q : ℝ) /
        (2 * (finiteCyclicCircularDistance t : ℝ) *
          (((A + R : ℕ) : ℝ))) := by
  let d := finiteCyclicCircularDistance t
  let M : ℝ := (q : ℝ) / (2 * (d : ℝ))
  have hpartial (K : ℕ) :
      ‖∑ n ∈ Finset.Ico A K,
          ZMod.stdAddChar (-((n : ZMod q) * t))‖ ≤ M := by
    simpa [M, d] using
      norm_sum_stdAddChar_neg_Ico_le_circularDistance
        (q := q) t A K hA ht
  rw [sum_stdAddChar_neg_mul_reciprocalWeight_Ico_eq_abel
    t A B R hAB]
  have hend :
      ‖(finiteCyclicReciprocalWeight R (B - 1) : ℂ) *
          (∑ n ∈ Finset.Ico A B,
            ZMod.stdAddChar (-((n : ZMod q) * t)))‖ ≤
        finiteCyclicReciprocalWeight R (B - 1) * M := by
    rw [norm_mul, norm_coe_finiteCyclicReciprocalWeight]
    exact mul_le_mul_of_nonneg_left (hpartial B)
      (finiteCyclicReciprocalWeight_nonneg R (B - 1))
  have hsteps :
      ‖∑ k ∈ Finset.Ico A (B - 1),
          ((finiteCyclicReciprocalWeight R k -
              finiteCyclicReciprocalWeight R (k + 1) : ℝ) : ℂ) *
            (∑ n ∈ Finset.Ico A (k + 1),
              ZMod.stdAddChar (-((n : ZMod q) * t)))‖ ≤
        ∑ k ∈ Finset.Ico A (B - 1),
          (finiteCyclicReciprocalWeight R k -
            finiteCyclicReciprocalWeight R (k + 1)) * M := by
    calc
      ‖∑ k ∈ Finset.Ico A (B - 1),
          ((finiteCyclicReciprocalWeight R k -
              finiteCyclicReciprocalWeight R (k + 1) : ℝ) : ℂ) *
            (∑ n ∈ Finset.Ico A (k + 1),
              ZMod.stdAddChar (-((n : ZMod q) * t)))‖ ≤
        ∑ k ∈ Finset.Ico A (B - 1),
          ‖((finiteCyclicReciprocalWeight R k -
              finiteCyclicReciprocalWeight R (k + 1) : ℝ) : ℂ) *
            (∑ n ∈ Finset.Ico A (k + 1),
              ZMod.stdAddChar (-((n : ZMod q) * t)))‖ :=
        norm_sum_le _ _
      _ ≤ ∑ k ∈ Finset.Ico A (B - 1),
          (finiteCyclicReciprocalWeight R k -
            finiteCyclicReciprocalWeight R (k + 1)) * M := by
        apply Finset.sum_le_sum
        intro k hk
        have hkA : A ≤ k := (Finset.mem_Ico.mp hk).1
        have hk1 : 1 ≤ k := le_trans hA hkA
        rw [norm_mul,
          norm_coe_finiteCyclicReciprocalWeight_sub_succ R k hk1]
        exact mul_le_mul_of_nonneg_left (hpartial (k + 1))
          (sub_nonneg.mpr
            (finiteCyclicReciprocalWeight_succ_le R k hk1))
  calc
    ‖(finiteCyclicReciprocalWeight R (B - 1) : ℂ) *
          (∑ n ∈ Finset.Ico A B,
            ZMod.stdAddChar (-((n : ZMod q) * t))) +
        ∑ k ∈ Finset.Ico A (B - 1),
          ((finiteCyclicReciprocalWeight R k -
              finiteCyclicReciprocalWeight R (k + 1) : ℝ) : ℂ) *
            (∑ n ∈ Finset.Ico A (k + 1),
              ZMod.stdAddChar (-((n : ZMod q) * t)))‖ ≤
      ‖(finiteCyclicReciprocalWeight R (B - 1) : ℂ) *
          (∑ n ∈ Finset.Ico A B,
            ZMod.stdAddChar (-((n : ZMod q) * t)))‖ +
        ‖∑ k ∈ Finset.Ico A (B - 1),
          ((finiteCyclicReciprocalWeight R k -
              finiteCyclicReciprocalWeight R (k + 1) : ℝ) : ℂ) *
            (∑ n ∈ Finset.Ico A (k + 1),
              ZMod.stdAddChar (-((n : ZMod q) * t)))‖ :=
      norm_add_le _ _
    _ ≤ finiteCyclicReciprocalWeight R (B - 1) * M +
        ∑ k ∈ Finset.Ico A (B - 1),
          (finiteCyclicReciprocalWeight R k -
            finiteCyclicReciprocalWeight R (k + 1)) * M :=
      add_le_add hend hsteps
    _ = M *
        (finiteCyclicReciprocalWeight R (B - 1) +
          ∑ k ∈ Finset.Ico A (B - 1),
            (finiteCyclicReciprocalWeight R k -
              finiteCyclicReciprocalWeight R (k + 1))) := by
      rw [← Finset.sum_mul]
      ring
    _ = M * finiteCyclicReciprocalWeight R A := by
      rw [finiteCyclicReciprocalWeight_endpoint_add_steps A B R hAB]
    _ = (q : ℝ) /
        (2 * (finiteCyclicCircularDistance t : ℝ) *
          (((A + R : ℕ) : ℝ))) := by
      have hd0 : d ≠ 0 := by
        intro hd
        exact ht ((finiteCyclicCircularDistance_eq_zero_iff t).mp hd)
      have hd : (0 : ℝ) < (d : ℝ) := by
        exact_mod_cast Nat.pos_of_ne_zero hd0
      have hAR : (0 : ℝ) < (((A + R : ℕ) : ℝ)) := by
        exact_mod_cast (show 0 < A + R by omega)
      dsimp [M, d]
      unfold finiteCyclicReciprocalWeight
      field_simp [ne_of_gt hd, ne_of_gt hAR]
      ring

/-- Genuine reciprocal-weight form, with the denominator expressed directly
in `ℂ` as used by endpoint harmonic sums. -/
theorem norm_sum_stdAddChar_neg_div_nat_add_Ico_le_circularDistance
    (t : ZMod q) (A B R : ℕ)
    (hA : 1 ≤ A) (hAB : A < B) (ht : t ≠ 0) :
    ‖∑ n ∈ Finset.Ico A B,
        ZMod.stdAddChar (-((n : ZMod q) * t)) /
          (((n + R : ℕ) : ℂ))‖ ≤
      (q : ℝ) /
        (2 * (finiteCyclicCircularDistance t : ℝ) *
          (((A + R : ℕ) : ℝ))) := by
  simpa [finiteCyclicReciprocalWeight, div_eq_mul_inv, mul_comm] using
    norm_sum_stdAddChar_neg_mul_reciprocalWeight_Ico_le
      (q := q) t A B R hA hAB ht

end GRWTSK.NumberTheory.CharacterSums
