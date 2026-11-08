/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Data.Real.Basic
import Mathlib.LinearAlgebra.BilinearForm.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# Schur square completion and residual enclosures on a real form domain

This module supplies the algebraic form-domain layer of the Schur residual enclosure.
The carrier below may be an operator's form domain; it need not be the entire
ambient Hilbert space. The maps and solution equations are explicit inputs.
No boundedness, inverse existence, spectral inertia theorem, or arithmetic
lower bound is inferred merely by introducing these inputs.

The source-specific consumer is the full Weil operator, after its high-block
floor has independently justified the high inverse. The analytical note proves
the domain return, constructs finite high-block Galerkin solves, and bounds their
whole residual. These operator constructions are NOT formalized here.

The completion and residual identities are standard variational algebra, not
claims of theorem-level novelty. No upstream implementation is copied. Mathlib
is an existing Apache-2.0 dependency. Elaboration, fresh kernel checking,
transitive axiom audit and independent review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.LinearAlgebra.SchurResidual

variable {V L : Type*} [AddCommGroup V] [Module ℝ V]
  [AddCommGroup L] [Module ℝ L]

/-- The exact defect of a variational inverse evaluation is an energy square. -/
theorem inverse_energy_defect
    (a : LinearMap.BilinForm ℝ V) (ell : V →ₗ[ℝ] ℝ)
    (hsym : ∀ v w, a v w = a w v)
    (x y : V) (hsolve : ∀ v, a x v = ell v) :
    ell x - (2 * ell y - a y y) = a (x - y) (x - y) := by
  simp only [LinearMap.BilinForm.sub_left, LinearMap.BilinForm.sub_right]
  rw [hsym y x, hsolve x, hsolve y]
  ring

/-- Lower variational approximation; it does not assert existence of `x`. -/
theorem inverse_energy_lower
    (a : LinearMap.BilinForm ℝ V) (ell : V →ₗ[ℝ] ℝ)
    (hsym : ∀ v w, a v w = a w v)
    (hpos : ∀ v, 0 ≤ a v v)
    (x y : V) (hsolve : ∀ v, a x v = ell v) :
    2 * ell y - a y y ≤ ell x := by
  have h := hpos (x - y)
  rw [← inverse_energy_defect a ell hsym x y hsolve] at h
  linarith

/-- Completion of the high square. In the consumer all forms are shifted by `z`. -/
theorem block_square_completion
    (a : LinearMap.BilinForm ℝ V) (l : LinearMap.BilinForm ℝ L)
    (b : L →ₗ[ℝ] V →ₗ[ℝ] ℝ) (Y : L →ₗ[ℝ] V)
    (hsym : ∀ v w, a v w = a w v)
    (hsolve : ∀ u v, a (Y u) v = b u v)
    (u : L) (v : V) :
    l u u + 2 * b u v + a v v =
      (l u u - b u (Y u)) + a (v + Y u) (v + Y u) := by
  simp only [LinearMap.BilinForm.add_left, LinearMap.BilinForm.add_right]
  rw [hsym v (Y u), hsolve u v, hsolve u (Y u)]
  ring

/-- Full form nonnegativity is equivalent to Schur nonnegativity when the high
form is nonnegative and its solution map has actually been supplied. -/
theorem block_nonnegative_iff
    (a : LinearMap.BilinForm ℝ V) (l : LinearMap.BilinForm ℝ L)
    (b : L →ₗ[ℝ] V →ₗ[ℝ] ℝ) (Y : L →ₗ[ℝ] V)
    (hsym : ∀ v w, a v w = a w v)
    (hpos : ∀ v, 0 ≤ a v v)
    (hsolve : ∀ u v, a (Y u) v = b u v) :
    (∀ u v, 0 ≤ l u u + 2 * b u v + a v v) ↔
      (∀ u, 0 ≤ l u u - b u (Y u)) := by
  constructor
  · intro h u
    have hv := h u (-Y u)
    rw [block_square_completion a l b Y hsym hsolve] at hv
    simpa using hv
  · intro h u v
    rw [block_square_completion a l b Y hsym hsolve]
    exact add_nonneg (h u) (hpos (v + Y u))

/-- Reconstruction at a Schur kernel vector, stated against every form test.
Membership in the actual operator domain requires a separate analytical argument. -/
theorem kernel_reconstruction
    (a : LinearMap.BilinForm ℝ V) (l : LinearMap.BilinForm ℝ L)
    (b : L →ₗ[ℝ] V →ₗ[ℝ] ℝ) (Y : L →ₗ[ℝ] V)
    (hsym : ∀ v w, a v w = a w v)
    (hsolve : ∀ u v, a (Y u) v = b u v)
    (u : L) (hker : ∀ t, l t u - b t (Y u) = 0)
    (t : L) (w : V) :
    l t u + b t (-Y u) + b u w + a w (-Y u) = 0 := by
  simp only [map_neg, LinearMap.BilinForm.neg_right]
  rw [hsym w (Y u), hsolve u w]
  have h := hker t
  linarith

/-- A coercive energy and its residual dual bound give a squared-residual price.
Here `n` is the error norm and `rho` is a bound for the whole residual norm. -/
theorem residual_energy_budget {delta n rho e : ℝ}
    (hd : 0 < delta) (hn : 0 ≤ n) (hr : 0 ≤ rho)
    (hcoerc : delta * n ^ 2 ≤ e) (hdual : e ≤ rho * n) :
    0 ≤ e ∧ e ≤ rho ^ 2 / delta := by
  have he : 0 ≤ e := le_trans (mul_nonneg hd.le (sq_nonneg n)) hcoerc
  constructor
  · exact he
  · by_cases hn0 : n = 0
    · subst n
      have he0 : e = 0 := by nlinarith
      rw [he0]
      exact div_nonneg (sq_nonneg rho) hd.le
    · have hnpos : 0 < n := lt_of_le_of_ne hn (Ne.symm hn0)
      have hdn : delta * n ≤ rho := by
        by_contra h
        have hp : 0 < (delta * n - rho) * n :=
          mul_pos (sub_pos.mpr (lt_of_not_ge h)) hnpos
        nlinarith
      have hmul := mul_le_mul_of_nonneg_left hdual hd.le
      have hmul' := mul_le_mul_of_nonneg_left hdn hr
      apply (le_div_iff₀ hd).2
      nlinarith

/-- Schur correction is subtracted, so the approximate Schur form is an UPPER
bound. This lemma keeps that sign explicit. -/
theorem schur_residual_enclosure {sourceValue upperValue defect delta rho : ℝ}
    (hd : 0 < delta) (hid : sourceValue = upperValue - defect)
    (he : 0 ≤ defect) (hbudget : defect ≤ rho ^ 2 / delta) :
    upperValue - rho ^ 2 / delta ≤ sourceValue ∧ sourceValue ≤ upperValue := by
  constructor <;> rw [hid] <;> linarith

/-- Whole residual accounting: the finite residual and remote tail are separate. -/
theorem split_residual_enclosure {sourceValue upperValue defect delta rfin2 rtail2 : ℝ}
    (hid : sourceValue = upperValue - defect) (he : 0 ≤ defect)
    (hbudget : defect ≤ (rfin2 + rtail2) / delta) :
    upperValue - (rfin2 + rtail2) / delta ≤ sourceValue ∧ sourceValue ≤ upperValue := by
  constructor <;> rw [hid] <;> linarith

/-- Norm-normalization cannot be omitted from a reconstructed vector. -/
theorem reconstruction_norm_not_head_norm {head2 tail2 : ℝ}
    (ht : 0 < tail2) : head2 < head2 + tail2 := by
  linarith

/-- Nonnegative compression alone cannot pay a negative Schur correction. -/
theorem positive_head_negative_schur :
    (0 : ℝ) < 1 ∧ (0 : ℝ) < 1 ∧ (1 : ℝ) - 2 ^ 2 / 1 < 0 := by
  norm_num

end GRWTSK.LinearAlgebra.SchurResidual
