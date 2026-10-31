/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Tactic.Ring

/-!
# Symmetric strain and real quadratic forms

The immediate consumer is the pointwise vortex-stretching expression
`inner ℝ (A ω) ω`, where a separate PDE bridge must identify `A` with the
velocity derivative. Its antisymmetric part contributes zero. No positivity,
trace condition, evolution equation, or global regularity is assumed here.

These are source proof candidates. Compilation, fresh kernel replay,
transitive axiom audit and expected-interface checks: NOT_RUN.
-/

namespace GRWTSK.FunctionalAnalysis.StrainQuadraticForm

noncomputable section

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℝ H]
  [CompleteSpace H]

/-- The self-adjoint part of a bounded real Hilbert-space operator. -/
def symmetricPart (A : H →L[ℝ] H) : H →L[ℝ] H :=
  (1 / 2 : ℝ) • (A + ContinuousLinearMap.adjoint A)

/-- The skew-adjoint part contributes nothing to a real quadratic form. -/
theorem inner_sub_adjoint_self (A : H →L[ℝ] H) (z : H) :
    inner ℝ ((A - ContinuousLinearMap.adjoint A) z) z = 0 := by
  rw [ContinuousLinearMap.sub_apply, inner_sub_left,
    ContinuousLinearMap.adjoint_inner_left, real_inner_comm z (A z)]
  exact sub_self _

/-- Passing to the symmetric part preserves the exact quadratic observation. -/
theorem inner_symmetricPart_self (A : H →L[ℝ] H) (z : H) :
    inner ℝ (symmetricPart A z) z = inner ℝ (A z) z := by
  simp only [symmetricPart, ContinuousLinearMap.smul_apply,
    ContinuousLinearMap.add_apply, real_inner_smul_left, inner_add_left,
    ContinuousLinearMap.adjoint_inner_left, real_inner_comm z (A z)]
  ring

/-- The pointwise stretching magnitude is bounded by the symmetric operator
norm, rather than requiring a sign for the original operator. -/
theorem abs_inner_self_le_symmetricPart_norm (A : H →L[ℝ] H) (z : H) :
    |inner ℝ (A z) z| ≤ ‖symmetricPart A‖ * ‖z‖ ^ 2 := by
  rw [← inner_symmetricPart_self A z]
  calc
    |inner ℝ (symmetricPart A z) z| ≤ ‖symmetricPart A z‖ * ‖z‖ :=
      abs_real_inner_le_norm _ _
    _ ≤ (‖symmetricPart A‖ * ‖z‖) * ‖z‖ :=
      mul_le_mul_of_nonneg_right ((symmetricPart A).le_opNorm z) (norm_nonneg z)
    _ = ‖symmetricPart A‖ * ‖z‖ ^ 2 := by ring

/-- A supplied nonnegative strain bound gives the one-sided quadratic estimate
used before spatial integration in an enstrophy argument. The bound itself is
an explicit premise; no time-integrability or continuation theorem follows. -/
theorem inner_self_le_of_symmetricPart_norm_le (A : H →L[ℝ] H)
    (z : H) {s : ℝ} (hs : ‖symmetricPart A‖ ≤ s) :
    inner ℝ (A z) z ≤ s * ‖z‖ ^ 2 := by
  exact (le_abs_self _).trans
    ((abs_inner_self_le_symmetricPart_norm A z).trans
      (mul_le_mul_of_nonneg_right hs (sq_nonneg ‖z‖)))

end

end GRWTSK.FunctionalAnalysis.StrainQuadraticForm
