/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.LinearAlgebra.Vandermonde
import Mathlib.LinearAlgebra.Lagrange
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Normed.Group.InfiniteSum
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.GCongr
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# Recovering the nodes and masses of finite shifted power sums

The pencil on consecutive Hankel matrices has a characteristic quotient
which recovers the distinct nodes even for nonreal nodes or repeated
divisor multiplicities. Interpolation recovers the mass at each node.
See the source-specific limiting argument in NewtonHankelPencil.md.
-/

namespace GRWTSK.NumberTheory.NewtonHankelPencil

open Matrix Polynomial
open scoped BigOperators Matrix

variable {K : Type*} [Field K] {n : ℕ}

/-- Finite section of the shifted moment sequence indexed by distinct nodes.
The weights can encode divisor multiplicities. -/
def sectionMatrix (v m : Fin n → K) (r : ℕ) : Matrix (Fin n) (Fin n) K :=
  .of fun i j => ∑ k, m k * v k ^ (r + i.val + j.val)

theorem moment_factorization (v m : Fin n → K) (r : ℕ) :
    sectionMatrix v m r =
      (vandermonde v)ᵀ * diagonal (fun k => m k * v k ^ r) * vandermonde v := by
  ext i j
  rw [Matrix.mul_apply]
  simp only [sectionMatrix, Matrix.of_apply, Matrix.mul_diagonal,
    Matrix.transpose_apply, Matrix.vandermonde_apply, pow_add]
  apply Finset.sum_congr rfl
  intro k _
  ring

theorem pencil_factorization (v m : Fin n → K) (r : ℕ) (z : K) :
    z • sectionMatrix v m r - sectionMatrix v m (r + 1) =
      (vandermonde v)ᵀ * diagonal (fun k => m k * v k ^ r * (z - v k)) *
        vandermonde v := by
  ext i j
  rw [Matrix.mul_apply]
  simp only [sectionMatrix, Matrix.of_apply, Matrix.sub_apply, Matrix.smul_apply,
    smul_eq_mul, Finset.mul_sum, ← Finset.sum_sub_distrib,
    Matrix.mul_diagonal, Matrix.transpose_apply, Matrix.vandermonde_apply, pow_add, pow_one]
  apply Finset.sum_congr rfl
  intro k _
  ring

theorem pencil_determinant (v m : Fin n → K) (r : ℕ) (z : K) :
    (z • sectionMatrix v m r - sectionMatrix v m (r + 1)).det =
      (sectionMatrix v m r).det * ∏ k, (z - v k) := by
  rw [pencil_factorization, moment_factorization]
  simp only [Matrix.det_mul, Matrix.det_transpose, Matrix.det_diagonal, Finset.prod_mul_distrib]
  ring

theorem moment_det_ne_zero (v m : Fin n → K) (r : ℕ) (hv : Function.Injective v)
    (hn : ∀ i, v i ≠ 0) (hm : ∀ i, m i ≠ 0) : (sectionMatrix v m r).det ≠ 0 := by
  rw [moment_factorization, Matrix.det_mul, Matrix.det_mul, Matrix.det_transpose,
    Matrix.det_diagonal]
  have hV := Matrix.det_vandermonde_ne_zero_iff.mpr hv
  exact mul_ne_zero (mul_ne_zero hV (Finset.prod_ne_zero_iff.mpr
    (fun i _ => mul_ne_zero (hm i) (pow_ne_zero _ (hn i))))) hV

/-- Interpolatory mass of an exact node normalized by its power shift. -/
theorem recover_mass (v m : Fin n → K) (r : ℕ) (j : Fin n) (hv : Function.Injective v)
    (hj : v j ≠ 0) :
    (∑ k, m k * v k ^ r * (Lagrange.basis Finset.univ v j).eval (v k)) / v j ^ r = m j := by
  classical
  rw [Finset.sum_eq_single j]
  · rw [Lagrange.eval_basis_self hv.injOn (Finset.mem_univ _), mul_one,
      mul_div_cancel_right₀ _ (pow_ne_zero r hj)]
  · intro k hk hkj
    rw [Lagrange.eval_basis_of_ne (Ne.symm hkj) hk, mul_zero]
  · simp

/-- Uniform error from a summable tail for polynomial tests bounded on its
support. This isolates the geometric term in shifted mass recovery, with
one power of the small nodes reserved for absolute summability. -/
theorem normalized_tail_bound {ι : Type*} (w : ι → ℂ) (m : ι → ℕ)
    (q : ℂ[X]) (v : ℂ) (r : ℕ) (b L : ℝ) (hv : v ≠ 0)
    (hb : 0 ≤ b)
    (hw : ∀ i, ‖w i‖ ≤ b) (hq : ∀ i, ‖q.eval (w i)‖ ≤ L)
    (hm : Summable (fun i => (m i : ℝ) * ‖w i‖)) :
    ‖(∑' i, (m i : ℂ) * w i ^ (r + 1) * q.eval (w i)) / v ^ (r + 1)‖ ≤
      ((∑' i, (m i : ℝ) * ‖w i‖) * L / ‖v‖) * (b / ‖v‖) ^ r := by
  have hpos := norm_pos_iff.mpr hv
  let T := ∑' i, (m i : ℝ) * ‖w i‖
  have hsum : ‖∑' i, (m i : ℂ) * w i ^ (r+1) * q.eval (w i)‖ ≤ T * (b^r * L) := by
    apply tsum_of_norm_bounded (hm.hasSum.mul_right (b ^ r * L))
    intro i
    simp only [norm_mul, norm_pow, Complex.norm_natCast, pow_succ]
    calc
      _ = ((m i : ℝ) * ‖w i‖) * (‖w i‖ ^ r * ‖q.eval (w i)‖) := by ring
      _ ≤ _ := by gcongr <;> first | exact hw i | exact hq i
  rw [norm_div, norm_pow]
  apply (div_le_div_of_nonneg_right hsum (by positivity)).trans_eq
  dsimp [T]
  rw [div_pow, pow_succ]
  field_simp

end GRWTSK.NumberTheory.NewtonHankelPencil
