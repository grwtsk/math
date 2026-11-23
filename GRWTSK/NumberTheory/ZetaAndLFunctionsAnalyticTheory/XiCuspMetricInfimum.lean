/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Analysis.InnerProductSpace.Symmetric
import Mathlib.Analysis.Normed.Operator.Basic
import Mathlib.Tactic.Linarith

/-! Resolvent estimates in an approximately symmetric metric on a complex
Hilbert space. These apply to every finite-dimensional modification used
in the variational characterization of the modular transverse energy. -/

namespace GRWTSK.NumberTheory.XiCuspMetricInfimum

open Complex
open scoped InnerProductSpace

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]

theorem symmetric_imaginary_line (A : E →L[ℂ] E) (hA : A.toLinearMap.IsSymmetric)
    (y : ℝ) (x : E) : ‖x‖ ≤ ‖x-((y:ℂ)*I) • A x‖ := by
  have hI := hA.im_inner_self_apply x
  change (inner ℂ x (A x)).im = 0 at hI
  have he : (inner ℂ x (((y:ℂ)*I) • A x)).re = 0 := by
    rw [inner_smul_right]
    simp [Complex.mul_re,Complex.mul_im,hI]
  have h := @norm_sub_sq ℂ _ _ _ _ x (((y:ℂ)*I) • A x)
  change ‖x-((y:ℂ)*I) • A x‖^2 = ‖x‖^2-2*(inner ℂ x (((y:ℂ)*I) • A x)).re+
    ‖((y:ℂ)*I) • A x‖^2 at h
  rw [he] at h
  nlinarith [norm_nonneg (x-((y:ℂ)*I) • A x), sq_nonneg ‖((y:ℂ)*I) • A x‖]

/-- The coercive constant only loses y times the size of the perturbation. -/
theorem perturbed_imaginary_line (A D : E →L[ℂ] E) (hA : A.toLinearMap.IsSymmetric)
    (y : ℝ) (hy : 0 ≤ y) (x : E) :
    (1-y*‖D‖)*‖x‖ ≤ ‖x-((y:ℂ)*I) • (A x+D x)‖ := by
  let z : ℂ := (y:ℂ)*I
  have hz : ‖z‖ = y := by simp [z,abs_of_nonneg hy]
  have he : x-z • A x = (x-z • (A x+D x))+z • D x := by rw [smul_add]; abel
  have hb := symmetric_imaginary_line A hA y x
  change ‖x‖ ≤ ‖x-z • A x‖ at hb
  rw [he] at hb
  have hc := hb.trans (norm_add_le _ _)
  rw [norm_smul,hz] at hc
  have hd := mul_le_mul_of_nonneg_left (D.le_opNorm x) hy
  change _ ≤ ‖x-z • (A x+D x)‖
  linarith

/-- A right inverse in conjugated coordinates forces the condition-number
bound; no compactness, diagonalization or eigenvalue assumption is used. -/
theorem metric_resolvent_bound (S : E ≃L[ℂ] E) (A D F : E →L[ℂ] E)
    (hA : A.toLinearMap.IsSymmetric) (y : ℝ) (hy : 0 ≤ y) (hp : 0 ≤ 1-y*‖D‖)
    (hF : ∀ x, S (F x)-((y:ℂ)*I) • (A (S (F x))+D (S (F x)))=S x)
    (x : E) :
    (1-y*‖D‖)*‖F x‖ ≤ ‖S.symm.toContinuousLinearMap‖*‖S.toContinuousLinearMap‖*‖x‖ := by
  have h := perturbed_imaginary_line A D hA y hy (S (F x))
  rw [hF] at h
  have hf := S.symm.toContinuousLinearMap.le_opNorm (S (F x))
  change ‖S.symm (S (F x))‖ ≤ _ at hf
  rw [S.symm_apply_apply] at hf
  have h1 := mul_le_mul_of_nonneg_left hf hp
  have h2 := mul_le_mul_of_nonneg_left (h.trans (S.toContinuousLinearMap.le_opNorm x))
    (norm_nonneg S.symm.toContinuousLinearMap)
  linarith

end GRWTSK.NumberTheory.XiCuspMetricInfimum
