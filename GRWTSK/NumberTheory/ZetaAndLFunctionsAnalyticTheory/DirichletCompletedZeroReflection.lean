/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib Dirichlet continuation retains upstream authorship and licenses. -/
import Mathlib.NumberTheory.LSeries.DirichletContinuation

set_option autoImplicit false
noncomputable section

/-! Actual completed functional equation transports zeros at reflected arguments.
The multiplier nonvanishing is explicit, not inferred from a documentation
comment. Gamma-factor cancellation and ordinary L-function zero transport
remain separate. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletCompletedZeroReflection

variable {N : ℕ} [NeZero N]

theorem completed_zero_reflection_iff (χ : DirichletCharacter ℂ N)
    (hχ : χ.IsPrimitive) (s : ℂ)
    (hm : (N : ℂ) ^ (s - 1 / 2) * DirichletCharacter.rootNumber χ ≠ 0) :
    DirichletCharacter.completedLFunction χ (1 - s) = 0 ↔
      DirichletCharacter.completedLFunction χ⁻¹ s = 0 := by
  rw [hχ.completedLFunction_one_sub s, mul_eq_zero]
  exact or_iff_right hm

theorem completed_zero_at_reflected_inverse (χ : DirichletCharacter ℂ N)
    (hχ : χ.IsPrimitive) (s : ℂ)
    (hm : (N : ℂ) ^ ((1 - s) - 1 / 2) * DirichletCharacter.rootNumber χ ≠ 0)
    (hz : DirichletCharacter.completedLFunction χ s = 0) :
    DirichletCharacter.completedLFunction χ⁻¹ (1 - s) = 0 := by
  apply (completed_zero_reflection_iff χ hχ (1 - s) hm).mp
  simpa only [sub_sub_self] using hz

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletCompletedZeroReflection
