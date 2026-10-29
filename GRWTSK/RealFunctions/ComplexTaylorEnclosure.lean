/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Complex.Exponential
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring
import Lean.Elab.Tactic.NormCast
import Mathlib.Tactic.Abel

set_option autoImplicit false

/-!
# Finite complex Taylor values with explicit input and arithmetic errors

The exponential remainder is supplied by pinned Mathlib, not by an arbitrary
approximation premise. Polynomial input transport and accumulation use exact
finite arithmetic. No code execution or validated runtime is claimed.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ErrorBounds.ComplexTaylorEnclosure

open scoped BigOperators
noncomputable section

/-- A finite arithmetic expression, with M terms rather than degree M. -/
def taylorValue (w : ℂ) (M : ℕ) : ℂ :=
  ∑ k ∈ Finset.range M, w ^ k / (k.factorial : ℂ)

/-- Valid under the explicit ratio guard B/(M+1) <= 1/2. -/
def taylorTail (B : ℝ) (M : ℕ) : ℝ := B ^ M / (M.factorial : ℝ) * 2

/-- L1 majorant avoids square roots when the complex components are rational. -/
def componentBound (w : ℂ) : ℝ := |w.re| + |w.im|

theorem norm_le_componentBound (w : ℂ) : ‖w‖ ≤ componentBound w :=
  Complex.norm_le_abs_re_add_abs_im w

theorem componentBound_nonneg (w : ℂ) : 0 ≤ componentBound w :=
  (norm_nonneg w).trans (norm_le_componentBound w)

theorem taylorTail_nonneg {B : ℝ} (hB : 0 ≤ B) (M : ℕ) : 0 ≤ taylorTail B M := by
  exact mul_nonneg (div_nonneg (pow_nonneg hB _) (Nat.cast_nonneg _)) (by norm_num)

/-- The guard prices every term after the finite truncation by a geometric tail. -/
theorem exponential_tail {w : ℂ} {B : ℝ} (hw : ‖w‖ ≤ B) (M : ℕ)
    (hguard : B / (M + 1 : ℕ) ≤ (1 / 2 : ℝ)) :
    ‖Complex.exp w - taylorValue w M‖ ≤ taylorTail B M := by
  have hg : ‖w‖ / (M.succ : ℝ) ≤ (1 / 2 : ℝ) :=
    (div_le_div_of_nonneg_right hw (Nat.cast_nonneg _)).trans hguard
  have h := Complex.exp_bound' hg
  apply h.trans
  exact mul_le_mul_of_nonneg_right
    (div_le_div_of_nonneg_right
      (pow_le_pow_left₀ (norm_nonneg w) hw M) (Nat.cast_nonneg _)) (by norm_num)

/-- A division-free recurrence for perturbing powers; valid also at exponent zero. -/
def powerRadius (B e : ℝ) : ℕ → ℝ
  | 0 => 0
  | k + 1 => B * powerRadius B e k + B ^ k * e

theorem powerRadius_nonneg {B e : ℝ} (hB : 0 ≤ B) (he : 0 ≤ e) (k : ℕ) :
    0 ≤ powerRadius B e k := by
  induction k with
  | zero => simp [powerRadius]
  | succ k ih => exact add_nonneg (mul_nonneg hB ih) (mul_nonneg (pow_nonneg hB k) he)

/-- The recurrence retains the exact first-order amplification factor. -/
theorem powerRadius_succ (B e : ℝ) (k : ℕ) :
    powerRadius B e (k + 1) = (k + 1 : ℕ) * B ^ k * e := by
  induction k with
  | zero => simp [powerRadius]
  | succ k ih =>
    rw [powerRadius, ih]
    simp only [pow_succ, Nat.cast_add, Nat.cast_one]
    ring

theorem power_error {u v : ℂ} {B e : ℝ} (hB : 0 ≤ B) (he : 0 ≤ e)
    (hu : ‖u‖ ≤ B) (hv : ‖v‖ ≤ B) (huv : ‖u - v‖ ≤ e) (k : ℕ) :
    ‖u ^ k - v ^ k‖ ≤ powerRadius B e k := by
  induction k with
  | zero => simp [powerRadius]
  | succ k ih =>
    calc
      _ = ‖u * (u ^ k - v ^ k) + (u - v) * v ^ k‖ := by congr 1; ring
      _ ≤ ‖u * (u ^ k - v ^ k)‖ + ‖(u - v) * v ^ k‖ := norm_add_le _ _
      _ = ‖u‖ * ‖u ^ k - v ^ k‖ + ‖u - v‖ * ‖v‖ ^ k := by
        simp only [norm_mul, norm_pow]
      _ ≤ B * powerRadius B e k + e * B ^ k :=
        add_le_add
          (mul_le_mul hu ih (norm_nonneg _) hB)
          (mul_le_mul huv (pow_le_pow_left₀ (norm_nonneg v) hv k)
            (pow_nonneg (norm_nonneg v) k) he)
      _ = powerRadius B e (k + 1) := by rw [powerRadius]; ring

/-- Explicit finite input-perturbation allowance, not an exponential value. -/
def polynomialRadius (B e : ℝ) (M : ℕ) : ℝ :=
  ∑ k ∈ Finset.range M, powerRadius B e k / (k.factorial : ℝ)

theorem polynomial_error {u v : ℂ} {B e : ℝ} (hB : 0 ≤ B) (he : 0 ≤ e)
    (hu : ‖u‖ ≤ B) (hv : ‖v‖ ≤ B) (huv : ‖u - v‖ ≤ e) (M : ℕ) :
    ‖taylorValue u M - taylorValue v M‖ ≤ polynomialRadius B e M := by
  calc
    _ = ‖∑ k ∈ Finset.range M, (u ^ k - v ^ k) / (k.factorial : ℂ)‖ := by
      simp only [taylorValue, sub_div, Finset.sum_sub_distrib]
    _ ≤ ∑ k ∈ Finset.range M, ‖(u ^ k - v ^ k) / (k.factorial : ℂ)‖ := norm_sum_le _ _
    _ ≤ _ := by
      apply Finset.sum_le_sum
      intro k _
      simpa only [norm_div, Complex.norm_natCast] using
        div_le_div_of_nonneg_right (power_error hB he hu hv huv k) (Nat.cast_nonneg k.factorial)

/-- Approximate exp at u using a polynomial at a different, enclosed input v. -/
theorem exponential_enclosure {u v : ℂ} {B e : ℝ} (hB : 0 ≤ B) (he : 0 ≤ e)
    (hu : ‖u‖ ≤ B) (hv : ‖v‖ ≤ B) (huv : ‖u - v‖ ≤ e) (M : ℕ)
    (hguard : B / (M + 1 : ℕ) ≤ (1 / 2 : ℝ)) :
    ‖Complex.exp u - taylorValue v M‖ ≤ taylorTail B M + polynomialRadius B e M := by
  calc
    _ = ‖(Complex.exp u - taylorValue u M) + (taylorValue u M - taylorValue v M)‖ := by
      congr 1; abel
    _ ≤ ‖Complex.exp u - taylorValue u M‖ + ‖taylorValue u M - taylorValue v M‖ :=
      norm_add_le _ _
    _ ≤ _ := add_le_add (exponential_tail hu M hguard) (polynomial_error hB he hu hv huv M)

/-- Local accumulation errors imply the final finite-sum error; zero initialization
is explicit. The local arithmetic checks are premises, not silently exact floats. -/
theorem sum_from_step_errors (term acc : ℕ → ℂ) (e : ℕ → ℝ) (h0 : acc 0 = 0)
    (N : ℕ) (hstep : ∀ i < N, ‖acc (i + 1) - (acc i + term i)‖ ≤ e i) :
    ‖(∑ i ∈ Finset.range N, term i) - acc N‖ ≤ ∑ i ∈ Finset.range N, e i := by
  induction N with
  | zero => simp [h0]
  | succ N ih =>
    have hp := ih (fun i hi => hstep i (Nat.lt_succ_of_lt hi))
    have hs : ‖acc N + term N - acc (N + 1)‖ ≤ e N := by
      simpa only [norm_sub_rev] using hstep N (Nat.lt_succ_self N)
    rw [Finset.sum_range_succ, Finset.sum_range_succ]
    calc
      _ = ‖((∑ i ∈ Finset.range N, term i) - acc N) +
          (acc N + term N - acc (N + 1))‖ := by congr 1; abel
      _ ≤ ‖(∑ i ∈ Finset.range N, term i) - acc N‖ +
          ‖acc N + term N - acc (N + 1)‖ := norm_add_le _ _
      _ ≤ _ := add_le_add hp hs

/-- Empty Taylor data at zero is not exp(0), and its valid tail allowance is not zero. -/
theorem zero_terms_control :
    taylorValue 0 0 = 0 ∧ ‖Complex.exp 0 - taylorValue 0 0‖ = 1 ∧ taylorTail 0 0 = 2 := by
  norm_num [taylorValue, taylorTail]

/-- Two terms have unit input sensitivity, including at zero. -/
theorem polynomialRadius_two (B e : ℝ) : polynomialRadius B e 2 = e := by
  norm_num [polynomialRadius, powerRadius, Finset.sum_range_succ]

end
end GRWTSK.Analysis.ErrorBounds.ComplexTaylorEnclosure
