/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib Gamma and Dirichlet results retain upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletFunctionalMultiplierNonvanishing

set_option autoImplicit false
noncomputable section

/-! Gamma cancellation and reflected zeros of the actual analytically
continued Dirichlet LFunction. No naive LSeries in the critical strip,
same-argument inverse zero, or cyclic eigenvector bridge is asserted.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletOrdinaryZeroReflection
open DirichletCharacter DirichletFunctionalMultiplierNonvanishing
variable {N : ℕ} [NeZero N]

theorem gammaFactor_ne_zero_of_re_pos (χ : DirichletCharacter ℂ N)
    (s : ℂ) (hs : 0 < s.re) : gammaFactor χ s ≠ 0 := by
  classical
  unfold gammaFactor
  split_ifs
  · exact Complex.Gammaℝ_ne_zero_of_re_pos hs
  · apply Complex.Gammaℝ_ne_zero_of_re_pos
    simp only [Complex.add_re, Complex.one_re]
    linarith

theorem ordinary_zero_iff_completed_of_re_pos (χ : DirichletCharacter ℂ N)
    (s : ℂ) (hs : 0 < s.re) :
    LFunction χ s = 0 ↔ completedLFunction χ s = 0 := by
  have hs0 : s ≠ 0 := by
    intro hz
    simp [hz] at hs
  rw [LFunction_eq_completed_div_gammaFactor χ s (Or.inl hs0), div_eq_zero_iff]
  simp only [gammaFactor_ne_zero_of_re_pos χ s hs, or_false]

theorem ordinary_zero_reflected_inverse_iff (χ : DirichletCharacter ℂ N)
    (hχ : χ.IsPrimitive) (s : ℂ) (hs0 : 0 < s.re) (hs1 : s.re < 1) :
    LFunction χ s = 0 ↔ LFunction χ⁻¹ (1 - s) = 0 := by
  have hr : 0 < (1 - s).re := by
    simp only [Complex.sub_re, Complex.one_re]
    linarith
  rw [ordinary_zero_iff_completed_of_re_pos χ s hs0,
    ordinary_zero_iff_completed_of_re_pos χ⁻¹ (1 - s) hr]
  have h := DirichletCompletedZeroReflection.completed_zero_reflection_iff
    χ hχ (1 - s) (functional_multiplier_ne_zero χ hχ (1 - s))
  simpa only [sub_sub_self] using h

theorem ordinary_strip_zero_reflected_inverse (χ : DirichletCharacter ℂ N)
    (hχ : χ.IsPrimitive) (s : ℂ)
    (hz : LFunction χ s = 0) (hs0 : 0 < s.re) (hs1 : s.re < 1) :
    LFunction χ⁻¹ (1 - s) = 0 ∧ 0 < (1 - s).re ∧ (1 - s).re < 1 := by
  refine ⟨(ordinary_zero_reflected_inverse_iff χ hχ s hs0 hs1).mp hz, ?_, ?_⟩
  · simp only [Complex.sub_re, Complex.one_re]
    linarith
  · simp only [Complex.sub_re, Complex.one_re]
    linarith

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletOrdinaryZeroReflection
