/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import Mathlib

/-!
# Rank-one coercivity certificates

A quadratic-energy lower bound on the kernel of one linear functional makes
that functional injective on every linear space lying strictly below the bound.
Consequently such a space is at most one dimensional; an operator preserving
both the space and the functional fixes it pointwise. For a reflected Weil
operator and an even trial vector, this is the algebraic simplicity/parity step.

The separate block lemmas retain the finite/tail coupling. They do not supply
coercivity for the actual Weil operator. The full spectral realization, domain
and min-max applications are explained in the accompanying research note.

Comparison: Connes, arXiv:2602.04022v1, Sections 6.1 and 6.6; the finite cyclic
projector-gap module at math 24541f93fec792a2eb7ca5fd22ebb99341e158d2 treats a
specific Hamiltonian and already assumes a comparison gap. This file instead
extracts rank/parity consequences of a general codimension-one lower bound.
Primary arguments: injectivity, subtraction, completing the square. Standard
linear algebra, not a priority claim. AI-assisted source candidates.
Compilation, fresh kernel checking and transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.OperatorTheory.Coercivity

section Kernel
variable {𝕜 E : Type*} [NormedField 𝕜] [NormedAddCommGroup E] [NormedSpace 𝕜 E]

/-- Coercivity on a codimension-at-most-one constraint. -/
def OnKernel (Q : E → ℝ) (ell : E →ₗ[𝕜] 𝕜) (beta : ℝ) : Prop :=
  ∀ x, ell x = 0 → beta * ‖x‖ ^ 2 ≤ Q x

/-- A vector below the constraint threshold cannot lie in its kernel. -/
theorem eq_zero_of_low_energy_in_kernel
    {Q : E → ℝ} {ell : E →ₗ[𝕜] 𝕜} {alpha beta : ℝ}
    (coercive : OnKernel Q ell beta) (gap : alpha < beta)
    {x : E} (low : Q x ≤ alpha * ‖x‖ ^ 2) (kernel : ell x = 0) : x = 0 := by
  by_contra hx
  have hn : 0 < ‖x‖ := norm_pos_iff.mpr hx
  have hs : 0 < ‖x‖ ^ 2 := pow_pos hn 2
  have strict := mul_lt_mul_of_pos_right gap hs
  exact (not_le_of_gt strict) ((coercive x kernel).trans low)

/-- One nonzero vector generates the whole low-energy subspace. -/
theorem low_energy_subspace_is_rank_one
    {Q : E → ℝ} {ell : E →ₗ[𝕜] 𝕜} {alpha beta : ℝ}
    (coercive : OnKernel Q ell beta) (gap : alpha < beta)
    (S : Submodule 𝕜 E)
    (low : ∀ x ∈ S, Q x ≤ alpha * ‖x‖ ^ 2)
    {u : E} (hu : u ∈ S) (hne : u ≠ 0) :
    ∀ x ∈ S, x = (ell x / ell u) • u := by
  have he : ell u ≠ 0 := by
    intro h
    exact hne (eq_zero_of_low_energy_in_kernel coercive gap (low u hu) h)
  intro x hx
  have hm : x - (ell x / ell u) • u ∈ S :=
    S.sub_mem hx (S.smul_mem (ell x / ell u) hu)
  have hk : ell (x - (ell x / ell u) • u) = 0 := by
    simp only [map_sub, map_smul, smul_eq_mul]
    field_simp [he]
  exact sub_eq_zero.mp
    (eq_zero_of_low_energy_in_kernel coercive gap (low _ hm) hk)

/-- Reflection is an application: invariance plus an even detecting functional
forces evenness of every vector in the low-energy space. No parity is assumed. -/
theorem symmetry_fixes_low_energy_subspace
    {Q : E → ℝ} {ell : E →ₗ[𝕜] 𝕜} {alpha beta : ℝ}
    (coercive : OnKernel Q ell beta) (gap : alpha < beta)
    (S : Submodule 𝕜 E)
    (low : ∀ x ∈ S, Q x ≤ alpha * ‖x‖ ^ 2)
    (J : E →ₗ[𝕜] E) (stable : ∀ x ∈ S, J x ∈ S)
    (invariant : ∀ x, ell (J x) = ell x) :
    ∀ x ∈ S, J x = x := by
  intro x hx
  have hm : J x - x ∈ S := S.sub_mem (stable x hx) hx
  have hk : ell (J x - x) = 0 := by rw [map_sub, invariant, sub_self]
  exact sub_eq_zero.mp
    (eq_zero_of_low_energy_in_kernel coercive gap (low _ hm) hk)
end Kernel

/-- The exact Schur identity, with no division or sign assumptions. -/
theorem schur_identity (a b r x y : ℝ) :
    b * (a * x ^ 2 - 2 * r * x * y + b * y ^ 2) =
      (b * y - r * x) ^ 2 + (a * b - r ^ 2) * x ^ 2 := by ring

/-- A positive complementary block and its determinant budget imply positivity. -/
theorem schur_nonnegative {a b r : ℝ} (hb : 0 < b)
    (budget : r ^ 2 ≤ a * b) (x y : ℝ) :
    0 ≤ a * x ^ 2 - 2 * r * x * y + b * y ^ 2 := by
  have h1 : 0 ≤ (a * b - r ^ 2) * x ^ 2 :=
    mul_nonneg (sub_nonneg.mpr budget) (sq_nonneg x)
  have h2 : 0 ≤ b * (a * x ^ 2 - 2 * r * x * y + b * y ^ 2) := by
    rw [schur_identity]
    exact add_nonneg (sq_nonneg _) h1
  exact (mul_nonneg_iff_of_pos_left hb).mp h2

/-- A finite block, an infinite tail bound and their coupling certify a shifted
complementary lower bound. The coupling cannot be discarded. -/
theorem two_block_lower_bound {a b r beta : ℝ}
    (tail : beta < b) (budget : r ^ 2 ≤ (a - beta) * (b - beta))
    (x y : ℝ) :
    beta * (x ^ 2 + y ^ 2) ≤ a * x ^ 2 - 2 * r * x * y + b * y ^ 2 := by
  have h := schur_nonnegative (sub_pos.mpr tail) budget x y
  nlinarith

/-- Quantitative lower endpoint obtained without square roots (Temple-type bound). -/
theorem residual_lower_endpoint {mu beta r : ℝ} (gap : mu < beta)
    (x y : ℝ) :
    (mu - r ^ 2 / (beta - mu)) * (x ^ 2 + y ^ 2) ≤
      mu * x ^ 2 - 2 * r * x * y + beta * y ^ 2 := by
  have hd : 0 < beta - mu := sub_pos.mpr gap
  have hs : 0 ≤ ((beta - mu) * y - r * x) ^ 2 := sq_nonneg _
  have hr : 0 ≤ r ^ 2 * y ^ 2 := mul_nonneg (sq_nonneg _) (sq_nonneg _)
  have identity :
      (beta - mu) *
        ((mu * x ^ 2 - 2 * r * x * y + beta * y ^ 2) -
          (mu - r ^ 2 / (beta - mu)) * (x ^ 2 + y ^ 2)) =
        ((beta - mu) * y - r * x) ^ 2 + r ^ 2 * y ^ 2 := by
    field_simp [ne_of_gt hd]
    <;> ring
  have hscaled :
      0 ≤ (beta - mu) *
        ((mu * x ^ 2 - 2 * r * x * y + beta * y ^ 2) -
          (mu - r ^ 2 / (beta - mu)) * (x ^ 2 + y ^ 2)) := by
    rw [identity]
    exact add_nonneg hs hr
  have hnonneg := (mul_nonneg_iff_of_pos_left hd).mp hscaled
  linarith

end GRWTSK.Analysis.OperatorTheory.Coercivity
