/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib retains its upstream attribution and license. -/
import Mathlib.Tactic

/-!
# The exact causal bidiagonal inverse and scalar Schur elimination

All inverses below are constructed by recursion or explicit division under a
nonzero guard. No positive uniform mass or Jacobi realization is postulated.
The sequence coordinate map does not choose an inner product on its image.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.Algebra.LinearAlgebra.LinearMap.CausalBidiagonalInverse

/-- I plus the lower shift. -/
def forward (x : ℕ → ℝ) : ℕ → ℝ
  | 0 => x 0
  | k + 1 => x (k + 1) + x k

/-- Every output reads only the finite prefix ending at that coordinate. -/
def solve (g : ℕ → ℝ) : ℕ → ℝ
  | 0 => g 0
  | k + 1 => g (k + 1) - solve g k

theorem forward_solve (g : ℕ → ℝ) : forward (solve g) = g := by
  funext k
  cases k with
  | zero => rfl
  | succ k => simp [forward, solve]

theorem solve_forward (x : ℕ → ℝ) : solve (forward x) = x := by
  funext k
  induction k with
  | zero => rfl
  | succ k ih => simp only [solve, forward, ih]; ring

theorem solve_add (g h : ℕ → ℝ) :
    solve (fun k => g k + h k) = (fun k => solve g k + solve h k) := by
  funext k
  induction k with
  | zero => rfl
  | succ k ih => simp only [solve, ih]; ring

theorem solve_smul (c : ℝ) (g : ℕ → ℝ) :
    solve (fun k => c * g k) = (fun k => c * solve g k) := by
  funext k
  induction k with
  | zero => rfl
  | succ k ih => simp only [solve, ih]; ring

theorem solve_local {g h : ℕ → ℝ} (k : ℕ)
    (heq : ∀ l, l ≤ k → g l = h l) : solve g k = solve h k := by
  revert heq
  induction k with
  | zero =>
      intro heq
      exact heq 0 le_rfl
  | succ k ih =>
      intro heq
      simp only [solve]
      rw [heq (k + 1) le_rfl, ih (fun l hl => heq l (Nat.le_trans hl (Nat.le_succ k)))]

/-- A genuine linear equivalence, not a matrix with assumed invertibility. -/
def causalEquiv : (ℕ → ℝ) ≃ₗ[ℝ] (ℕ → ℝ) where
  toFun := forward
  invFun := solve
  left_inv := solve_forward
  right_inv := forward_solve
  map_add' := by
    intro x y
    funext k
    cases k <;> simp [forward] <;> ring
  map_smul' := by
    intro c x
    funext k
    cases k <;> simp [forward, smul_eq_mul] <;> ring

/-- The first coordinate forcing produces the alternating source vector. -/
theorem solve_first (k : ℕ) :
    solve (fun n => if n = 0 then (1 : ℝ) else 0) k = (-1 : ℝ) ^ k := by
  induction k with
  | zero => simp [solve]
  | succ k ih => simp only [solve, Nat.succ_ne_zero, if_false, ih, pow_succ]; ring

theorem forward_alternating :
    forward (fun k => (-1 : ℝ) ^ k) = (fun k => if k = 0 then 1 else 0) := by
  funext k
  cases k with
  | zero => simp [forward]
  | succ k => simp only [forward, Nat.succ_ne_zero, if_false, pow_succ]; ring

/-- Finite transposition of I+shift, retaining the outgoing coordinate. -/
theorem forward_pairing (j : ℕ) (a f : ℕ → ℝ) :
    (∑ k ∈ Finset.range (j + 1), forward a k * f k) =
      (∑ k ∈ Finset.range (j + 1), a k * f k) +
        (∑ k ∈ Finset.range (j + 1), a k * f (k + 1)) - a j * f (j + 1) := by
  induction j with
  | zero => simp [forward]
  | succ j ih =>
      rw [Finset.sum_range_succ (fun k => forward a k * f k) (j + 1),
        Finset.sum_range_succ (fun k => a k * f k) (j + 1),
        Finset.sum_range_succ (fun k => a k * f (k + 1)) (j + 1), ih]
      simp only [forward]
      ring

/-- Keep the full mixed term and negative quadratic credit before estimating. -/
theorem signed_square_completion (b c z : ℝ) (hc : c ≠ 0) :
    2 * b * z - c * z ^ 2 = b ^ 2 / c - c * (z - b / c) ^ 2 := by
  field_simp [hc]
  ring

theorem signed_quadratic_upper (b c z : ℝ) (hc : 0 < c) :
    2 * b * z - c * z ^ 2 ≤ b ^ 2 / c := by
  rw [signed_square_completion b c z hc.ne']
  exact sub_le_self _ (mul_nonneg hc.le (sq_nonneg _))

theorem signed_quadratic_mass_upper (b c z m : ℝ) (hm : 0 < m) (hmc : m ≤ c) :
    2 * b * z - c * z ^ 2 ≤ b ^ 2 / m := by
  exact (signed_quadratic_upper b c z (hm.trans_le hmc)).trans
    (div_le_div_of_nonneg_left (sq_nonneg b) hm hmc)

/-- The scalar Schur complement is an identity in the actual two coordinates. -/
theorem schur_square_completion (a b c x z : ℝ) (hc : c ≠ 0) :
    a * x ^ 2 + 2 * b * x * z + c * z ^ 2 =
      c * (z + b / c * x) ^ 2 + (a - b ^ 2 / c) * x ^ 2 := by
  field_simp [hc]
  ring

/-- Strict positivity of the whole form forces the paid pivot to be positive. -/
theorem schur_pivot_positive (a b c : ℝ) (hc : 0 < c)
    (hpos : ∀ x z : ℝ, x ≠ 0 ∨ z ≠ 0 →
      0 < a * x ^ 2 + 2 * b * x * z + c * z ^ 2) :
    0 < a - b ^ 2 / c := by
  have h := hpos 1 (-(b / c)) (Or.inl one_ne_zero)
  rw [schur_square_completion a b c 1 (-(b / c)) hc.ne'] at h
  simpa using h

/-- Exact boundary solution after eliminating a nonzero trailing pivot. -/
theorem schur_boundary_solution (a b c x z f : ℝ)
    (hc : c ≠ 0) (hp : a - b ^ 2 / c ≠ 0)
    (hfirst : a * x + b * z = f) (hlast : b * x + c * z = 0) :
    x = f / (a - b ^ 2 / c) := by
  apply (eq_div_iff hp).mpr
  have he : c * (x * (a - b ^ 2 / c) - f) = 0 := by
    calc
      _ = c * (a * x + b * z - f) - b * (b * x + c * z) := by
        field_simp [hc]
        ring
      _ = 0 := by rw [hfirst, hlast]; ring
  have hz := (mul_eq_zero.mp he).resolve_left hc
  linarith

end GRWTSK.Algebra.LinearAlgebra.LinearMap.CausalBidiagonalInverse
