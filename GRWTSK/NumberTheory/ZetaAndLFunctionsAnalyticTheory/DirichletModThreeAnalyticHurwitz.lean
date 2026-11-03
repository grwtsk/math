/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib Dirichlet/Hurwitz continuation retains upstream attribution
and Apache-2.0 license obligations. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletModThreePrimitiveGauss
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletAnalyticObservationError

set_option autoImplicit false
noncomputable section

/-! Actual analytically continued Dirichlet source for the constructed
character. Scalar analytic cancellation is not a full-vector residual.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeAnalyticHurwitz
open DirichletModThreeQuadraticConstruction

theorem actual_modThree_analytic_hurwitz (s : ℂ) :
    DirichletCharacter.LFunction modThreeQuadratic s = (3 : ℂ)^(-s)*
      (HurwitzZeta.hurwitzZeta (ZMod.toAddCircle (1 : ZMod 3)) s-
       HurwitzZeta.hurwitzZeta (ZMod.toAddCircle (2 : ZMod 3)) s) := by
  have hu : (Finset.univ : Finset (ZMod 3))={0,1,2} := by decide
  have h₀ : modThreeQuadratic 0=0 := by simp
  simp [DirichletCharacter.LFunction,ZMod.LFunction,hu,h₀,
    modThreeQuadratic_one,modThreeQuadratic_two,sub_eq_add_neg]

theorem actual_modThree_analytic_zero_iff (s : ℂ) :
    DirichletCharacter.LFunction modThreeQuadratic s=0 ↔
      HurwitzZeta.hurwitzZeta (ZMod.toAddCircle (1 : ZMod 3)) s =
      HurwitzZeta.hurwitzZeta (ZMod.toAddCircle (2 : ZMod 3)) s := by
  have hscale : (3 : ℂ)^(-s) ≠ 0 :=
    Complex.cpow_ne_zero_iff.mpr (Or.inl (by norm_num))
  rw [actual_modThree_analytic_hurwitz,mul_eq_zero]
  simp [hscale,sub_eq_zero]

/- This genuine analytic zero is an equality of two Hurwitz observations.
It supplies neither the fixed arithmetic eigenvalue parameter nor a
shrinking full-vector residual. That source bridge remains UNSUPPLIED. -/
end GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeAnalyticHurwitz
