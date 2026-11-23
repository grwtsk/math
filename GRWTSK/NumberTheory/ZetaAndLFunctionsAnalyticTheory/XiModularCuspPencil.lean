/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.LinearAlgebra.Matrix.SchurComplement
import Mathlib.Basic.Complex.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-! # Finite determinant and energy identities for the modular cusp pencil -/
namespace GRWTSK.NumberTheory.XiModularCuspPencil

/-- Taking the lower Schur complement gives the finite section of the
quadratic pencil from its doubled linear realization. -/
theorem finite_pencil_det {ι R : Type*} [Fintype ι] [DecidableEq ι] [CommRing R]
    (C Q : Matrix ι ι R) (v : R) :
    (Matrix.fromBlocks (1-v • C) (v • Q) (-(v • Q)) 1).det =
      (1-v • C+v^2 • (Q*Q)).det := by
  rw [Matrix.det_fromBlocks_one₂₂, Matrix.mul_neg, sub_neg_eq_add,
    Matrix.smul_mul, Matrix.mul_smul, smul_smul, pow_two]

/-- Evaluating the quadratic pencil on a nonreal eigenvector gives the
norm and the boundary-energy identities. Here n, g and b respectively
denote its squared norm, Green energy and scaled squared cut average. -/
theorem nonreal_mode_energy (v : ℂ) (n g b : ℝ) (hv : v.im ≠ 0)
    (h : (n:ℂ) + v*(v-1)*g + v*b = 0) :
    n = v.normSq*g ∧ b = (1-2*v.re)*g := by
  have hi := congrArg Complex.im h
  have hr := congrArg Complex.re h
  simp only [Complex.add_im, Complex.add_re, Complex.mul_im, Complex.mul_re,
    Complex.sub_re, Complex.sub_im, Complex.ofReal_re, Complex.ofReal_im,
    Complex.one_re, Complex.one_im, Complex.zero_im, Complex.zero_re, sub_zero,
    mul_zero] at hi hr
  have hh : v.im*(b-(1-2*v.re)*g) = 0 := by nlinarith only [hi]
  have hb := sub_eq_zero.mp ((mul_eq_zero.mp hh).resolve_left hv)
  refine ⟨?_,hb⟩
  rw [Complex.normSq_apply]
  rw [hb] at hr
  nlinarith only [hr]

end GRWTSK.NumberTheory.XiModularCuspPencil
