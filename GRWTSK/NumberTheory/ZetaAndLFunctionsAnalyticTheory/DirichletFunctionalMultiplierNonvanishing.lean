/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib Fourier and Dirichlet results retain upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletCompletedZeroReflection
import Mathlib.Analysis.Fourier.ZMod

set_option autoImplicit false
noncomputable section

/-! Nonvanishing from the genuine primitive-character Fourier identity and
invertibility of the complete finite transform. No prime-modulus-only
Gauss theorem is substituted. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletFunctionalMultiplierNonvanishing
variable {N : ℕ} [NeZero N]

theorem primitive_standard_gaussSum_ne_zero (χ : DirichletCharacter ℂ N)
    (hχ : χ.IsPrimitive) : gaussSum χ ZMod.stdAddChar ≠ 0 := by
  intro hg
  have hf : ZMod.dft (χ : ZMod N → ℂ) = 0 := by
    ext k
    rw [hχ.fourierTransform_eq_inv_mul_gaussSum k, hg, mul_zero]
    rfl
  have hz : (χ : ZMod N → ℂ) = 0 :=
    ZMod.dft.injective (hf.trans (map_zero ZMod.dft).symm)
  have ho := congrFun hz 1
  simpa using ho

theorem primitive_rootNumber_ne_zero (χ : DirichletCharacter ℂ N)
    (hχ : χ.IsPrimitive) : DirichletCharacter.rootNumber χ ≠ 0 := by
  classical
  unfold DirichletCharacter.rootNumber
  apply div_ne_zero
  · exact div_ne_zero (primitive_standard_gaussSum_ne_zero χ hχ)
      (pow_ne_zero _ Complex.I_ne_zero)
  · exact Complex.cpow_ne_zero_iff.mpr (Or.inl (NeZero.ne (N : ℂ)))

theorem functional_multiplier_ne_zero (χ : DirichletCharacter ℂ N)
    (hχ : χ.IsPrimitive) (s : ℂ) :
    (N : ℂ) ^ (s - 1 / 2) * DirichletCharacter.rootNumber χ ≠ 0 :=
  mul_ne_zero (Complex.cpow_ne_zero_iff.mpr (Or.inl (NeZero.ne (N : ℂ))))
    (primitive_rootNumber_ne_zero χ hχ)

theorem completed_zero_reflected_inverse (χ : DirichletCharacter ℂ N)
    (hχ : χ.IsPrimitive) (s : ℂ)
    (hz : DirichletCharacter.completedLFunction χ s = 0) :
    DirichletCharacter.completedLFunction χ⁻¹ (1 - s) = 0 := by
  exact DirichletCompletedZeroReflection.completed_zero_at_reflected_inverse
    χ hχ s (functional_multiplier_ne_zero χ hχ (1 - s)) hz

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletFunctionalMultiplierNonvanishing
