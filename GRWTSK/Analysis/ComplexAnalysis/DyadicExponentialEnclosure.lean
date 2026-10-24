/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.FiniteExponentialEnclosure
import Mathlib.Tactic.FieldSimp

set_option autoImplicit false

/-!
# Dyadic exponential scaling with propagated squaring errors

Small-argument Taylor error and argument uncertainty are derived before
squaring. Each squaring enlarges the error; a local rounding allowance is
charged before later amplification. The principal evaluator squares exactly.
No phase reduction, optimal precision selector, or floating-point execution is
represented. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.DyadicExponentialEnclosure

open GRWTSK.Analysis.ComplexAnalysis.FiniteExponentialEnclosure

noncomputable section

/-- Exact repeated squaring, not an evaluation of a new large Taylor polynomial. -/
def squareValue (v : ℂ) : ℕ → ℂ
  | 0 => v
  | j + 1 => squareValue v j ^ 2

/-- The local rounding error enters BEFORE the next amplification. -/
def propagatedError (values : ℕ → ℂ) (rounding : ℕ → ℝ) (initial : ℝ) : ℕ → ℝ
  | 0 => initial
  | j + 1 =>
      propagatedError values rounding initial j *
        (2 * rectNorm (values j) + propagatedError values rounding initial j) + rounding j

/-- The quadratic error term cannot be dropped. -/
theorem norm_square_sub_le (a b : ℂ) (e : ℝ) (he : ‖a - b‖ ≤ e) :
    ‖a ^ 2 - b ^ 2‖ ≤ e * (2 * rectNorm b + e) := by
  have he0 : 0 ≤ e := (norm_nonneg _).trans he
  have hab : ‖a + b‖ ≤ 2 * rectNorm b + e := by
    have ha := norm_le_norm_sub_add a b
    have hp := norm_add_le a b
    linarith [norm_le_rectNorm b]
  have hid : a ^ 2 - b ^ 2 = (a - b) * (a + b) := by ring
  rw [hid, norm_mul]
  exact mul_le_mul he hab (norm_nonneg _) he0

/-- Rounding a square is separate from the inherited input uncertainty. -/
theorem norm_rounded_square_sub_le (a b c : ℂ) (e r : ℝ)
    (he : ‖a - b‖ ≤ e) (hr : ‖b ^ 2 - c‖ ≤ r) :
    ‖a ^ 2 - c‖ ≤ e * (2 * rectNorm b + e) + r := by
  calc
    _ = ‖(a ^ 2 - b ^ 2) + (b ^ 2 - c)‖ := by congr 1; ring
    _ ≤ _ := (norm_add_le _ _).trans (add_le_add (norm_square_sub_le a b e he) hr)

/-- Every admitted local step is checked; no final-chain error is a premise. -/
theorem squaring_chain_sound (a : ℂ) (values : ℕ → ℂ) (rounding : ℕ → ℝ)
    (initial : ℝ) (hinitial : ‖a - values 0‖ ≤ initial) (s : ℕ)
    (hstep : ∀ j, j < s → ‖values j ^ 2 - values (j + 1)‖ ≤ rounding j) :
    ‖squareValue a s - values s‖ ≤ propagatedError values rounding initial s := by
  revert hstep
  induction s with
  | zero => intro _; exact hinitial
  | succ s ih =>
      intro hstep
      have hp := ih (fun j hj => hstep j (Nat.lt_trans hj (Nat.lt_succ_self s)))
      exact norm_rounded_square_sub_le (squareValue a s) (values s) (values (s + 1))
        (propagatedError values rounding initial s) (rounding s) hp
        (hstep s (Nat.lt_succ_self s))

/-- Exact algebraic squaring sets only the local rounding allowances to zero. -/
theorem exact_squaring_sound (a v : ℂ) (e : ℝ) (he : ‖a - v‖ ≤ e) (s : ℕ) :
    ‖squareValue a s - squareValue v s‖ ≤
      propagatedError (squareValue v) (fun _ => 0) e s :=
  squaring_chain_sound a (squareValue v) (fun _ => 0) e he s
    (fun j _ => by simp [squareValue])

/-- The exact source is restored, not approximated by repeated squaring. -/
theorem squareValue_exp (q : ℂ) (s : ℕ) :
    squareValue (Complex.exp q) s = Complex.exp ((2 : ℂ) ^ s * q) := by
  induction s with
  | zero => simp [squareValue]
  | succ s ih =>
      change squareValue (Complex.exp q) s ^ 2 = Complex.exp ((2 : ℂ) ^ (s + 1) * q)
      rw [ih]
      have he : (2 : ℂ) ^ (s + 1) * q = (2 : ℂ) ^ s * q + (2 : ℂ) ^ s * q := by
        rw [pow_succ]
        ring
      rw [he, Complex.exp_add, pow_two]

theorem squareValue_exp_div (u : ℂ) (s : ℕ) :
    squareValue (Complex.exp (u / (2 : ℂ) ^ s)) s = Complex.exp u := by
  rw [squareValue_exp]
  congr 1
  field_simp [pow_ne_zero s (by norm_num : (2 : ℂ) ≠ 0)]

/-- Scaling and squaring count s is distinct from the Taylor term count K. -/
def scaledValue (v : ℂ) (s K : ℕ) : ℂ :=
  squareValue (expPolynomial (v / (2 : ℂ) ^ s) K) s

/-- Complete scaled seed error, subsequently propagated through all s squarings. -/
def scaledError (v : ℂ) (s K : ℕ) (r d : ℝ) : ℝ :=
  propagatedError (squareValue (expPolynomial (v / (2 : ℂ) ^ s) K)) (fun _ => 0)
    (expRemainder r K +
      2 * (rectNorm (expPolynomial (v / (2 : ℂ) ^ s) K) + expRemainder r K) * d) s

/-- The actual and centered arguments are BOTH scaled before seed evaluation. -/
theorem scaled_exp_sound (u v : ℂ) (s K : ℕ) (r d : ℝ)
    (hr : ‖v / (2 : ℂ) ^ s‖ ≤ r) (hK : r / ((K : ℝ) + 1) ≤ 1 / 2)
    (hd : ‖u / (2 : ℂ) ^ s - v / (2 : ℂ) ^ s‖ ≤ d) (hd1 : d ≤ 1) :
    ‖Complex.exp u - scaledValue v s K‖ ≤ scaledError v s K r d := by
  have hseed := expPolynomial_perturbed_error (u / (2 : ℂ) ^ s)
    (v / (2 : ℂ) ^ s) r d K hr hK hd hd1
  have h := exact_squaring_sound (Complex.exp (u / (2 : ℂ) ^ s))
    (expPolynomial (v / (2 : ℂ) ^ s) K) _ hseed s
  rw [squareValue_exp_div] at h
  exact h

/-- After reduction to radius one, any positive term count satisfies the tail guard.
This is not a target-accuracy statement. -/
theorem degree_guard_of_unit_radius (r : ℝ) (hr : r ≤ 1) (K : ℕ) (hK : 1 ≤ K) :
    r / ((K : ℝ) + 1) ≤ 1 / 2 := by
  have hKR : (1 : ℝ) ≤ K := by exact_mod_cast hK
  apply (div_le_iff₀ (by positivity : (0 : ℝ) < (K : ℝ) + 1)).mpr
  linarith

/-- An elementary existence bound; no logarithmic-time search is claimed. -/
theorem nat_succ_le_two_pow (s : ℕ) : (s : ℝ) + 1 ≤ (2 : ℝ) ^ s := by
  induction s with
  | zero => norm_num
  | succ s ih =>
      rw [Nat.cast_succ, pow_succ]
      nlinarith [Nat.cast_nonneg (α := ℝ) s]

theorem exists_scaling (r d : ℝ) :
    ∃ s : ℕ, r / (2 : ℝ) ^ s ≤ 1 ∧ d / (2 : ℝ) ^ s ≤ 1 := by
  obtain ⟨s, hs⟩ := exists_nat_gt (max r d)
  have hp := nat_succ_le_two_pow s
  refine ⟨s, ?_, ?_⟩ <;>
    apply (div_le_one (by positivity : (0 : ℝ) < (2 : ℝ) ^ s)).mpr
  · linarith [le_max_left r d]
  · linarith [le_max_right r d]

end
end GRWTSK.Analysis.ComplexAnalysis.DyadicExponentialEnclosure
