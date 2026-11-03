/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib Fourier and Gauss-sum sources retain upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletFiniteFourierOrthogonality
import Mathlib.Analysis.Complex.Norm

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Full finite Parseval expansion and genuine primitive Gauss norm.
Every residue coordinate is retained. No spectral or analytic zero
identification is asserted. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletFiniteParseval
open ZMod AddChar DirichletFiniteFourierOrthogonality
variable (N : ℕ) [NeZero N]

def transform (x : ZMod N → ℂ) (k : ZMod N) : ℂ :=
  ∑ j, x j * stdAddChar (k * j)

def complexMass (x : ZMod N → ℂ) : ℂ := ∑ j, star (x j) * x j

theorem standard_kernel_product (j l k : ZMod N) :
    star (stdAddChar (k * j)) * stdAddChar (k * l) = stdAddChar ((l - j) * k) := by
  rw [Complex.star_def, ← map_neg_eq_conj, ← map_add_eq_mul]
  congr 1
  ring

theorem full_kernel_orthogonality (j l : ZMod N) :
    (∑ k, star (stdAddChar (k * j)) * stdAddChar (k * l)) =
      if l = j then (N : ℂ) else 0 := by
  simp_rw [standard_kernel_product]
  simpa only [sub_eq_zero] using standard_kernel_sum N (l - j)

theorem complex_parseval (x : ZMod N → ℂ) :
    complexMass N (transform N x) = (N : ℂ) * complexMass N x := by
  have hexpand (k : ZMod N) :
      star (transform N x k) * transform N x k =
        ∑ j, ∑ l, star (x j) * x l *
          (star (stdAddChar (k * j)) * stdAddChar (k * l)) := by
    unfold transform
    simp only [map_sum, star_mul, Finset.sum_mul, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro j _
    apply Finset.sum_congr rfl
    intro l _
    ring
  unfold complexMass
  simp_rw [hexpand]
  rw [Finset.sum_comm]
  have hswap :
      (∑ j : ZMod N, ∑ k : ZMod N, ∑ l : ZMod N,
        star (x j) * x l * (star (stdAddChar (k * j)) * stdAddChar (k * l))) =
      ∑ j : ZMod N, ∑ l : ZMod N, star (x j) * x l *
        (∑ k : ZMod N, star (stdAddChar (k * j)) * stdAddChar (k * l)) := by
    apply Finset.sum_congr rfl
    intro j _
    rw [Finset.sum_comm]
    simp only [Finset.mul_sum]
  rw [hswap]
  simp_rw [full_kernel_orthogonality]
  simp only [mul_ite, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j _
  ring

lemma coordinate_mass_re (z : ℂ) : (star z * z).re = ‖z‖ ^ 2 := by
  simp [Complex.star_def, Complex.mul_re, Complex.sq_norm, Complex.normSq_apply]
  <;> ring

theorem finite_parseval (x : ZMod N → ℂ) :
    (∑ k, ‖transform N x k‖ ^ 2) = (N : ℝ) * (∑ j, ‖x j‖ ^ 2) := by
  have hp := congrArg Complex.re (complex_parseval N x)
  simpa [complexMass, map_sum, Complex.mul_re, coordinate_mass_re] using hp

theorem primitive_transform (χ : DirichletCharacter ℂ N) (hχ : χ.IsPrimitive) :
    transform N χ = fun k => gaussSum χ stdAddChar * χ⁻¹ k := by
  funext k
  have h := gaussSum_mulShift_of_isPrimitive stdAddChar hχ k
  change (∑ j, χ j * stdAddChar (k * j)) = χ⁻¹ k * gaussSum χ stdAddChar at h
  exact h.trans (mul_comm _ _)

theorem primitive_gauss_norm (χ : DirichletCharacter ℂ N) (hχ : χ.IsPrimitive) :
    ‖gaussSum χ stdAddChar‖ = Real.sqrt (N : ℝ) := by
  have hp := finite_parseval N (χ : ZMod N → ℂ)
  rw [primitive_transform N χ hχ] at hp
  simp only [norm_mul, mul_pow] at hp
  rw [← Finset.mul_sum] at hp
  simp_rw [← MulChar.star_apply' χ, norm_star] at hp
  have hsingle := Finset.single_le_sum
    (fun j (_ : j ∈ (Finset.univ : Finset (ZMod N))) => sq_nonneg ‖χ j‖)
    (Finset.mem_univ (1 : ZMod N))
  have hm : 0 < ∑ j : ZMod N, ‖χ j‖ ^ 2 := by
    simp only [map_one, norm_one, one_pow] at hsingle
    linarith
  exact gauss_norm_of_parseval_mass N _ _ hm hp

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletFiniteParseval
