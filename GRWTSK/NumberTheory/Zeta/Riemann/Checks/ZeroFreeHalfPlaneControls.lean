/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ZeroFreeHalfPlaneCriterion
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Controls for strict half-plane statements

These finite order-theoretic fixtures do not model the zeta divisor.  They show
why strict boundaries and threshold direction must remain explicit.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.Checks.ZeroFreeHalfPlaneControls

/-- A toy zero predicate supported on one vertical line. -/
def VerticalLineZero (c : ℝ) (s : ℂ) : Prop :=
  s.re = c

/-- A strict right-half-plane statement says nothing about a zero exactly on
its boundary. -/
theorem strict_right_half_plane_excludes_no_boundary_point (σ : ℝ) :
    (∀ s : ℂ, σ < s.re → ¬ VerticalLineZero σ s) ∧
      VerticalLineZero σ (σ : ℂ) := by
  constructor
  · intro s hright hzero
    rw [hzero] at hright
    exact (lt_irrefl σ) hright
  · simp [VerticalLineZero]

/-- The converse of threshold monotonicity fails in general: zero-free to the
right of a larger threshold need not imply zero-free to the right of a smaller
threshold. -/
theorem larger_threshold_does_not_imply_smaller
    {a b : ℝ} (hab : a < b) :
    (∀ s : ℂ, b < s.re →
      ¬ VerticalLineZero ((a + b) / 2) s) ∧
    ¬ (∀ s : ℂ, a < s.re →
      ¬ VerticalLineZero ((a + b) / 2) s) := by
  constructor
  · intro s hright hzero
    have hmid : (a + b) / 2 < b := by linarith
    unfold VerticalLineZero at hzero
    linarith
  · intro hsmall
    have haleft : a < (a + b) / 2 := by linarith
    have hnot := hsmall (((a + b) / 2 : ℝ) : ℂ) (by simpa using haleft)
    exact hnot (by simp [VerticalLineZero])

/-- The unconditional threshold `1` is weaker than the critical-line threshold
in the ordering used by the main module. -/
theorem half_le_one : (1 / 2 : ℝ) ≤ 1 := by norm_num

/-- The main equivalence is still only an equivalence of propositions; this
fixture cannot produce either side. -/
theorem criterion_requires_a_supplier :
    GRWTSK.RiemannHypothesis.NontrivialZeroFreeRightHalfPlane (1 / 2 : ℝ) →
      _root_.RiemannHypothesis :=
  GRWTSK.RiemannHypothesis.riemannHypothesis_of_nontrivialZeroFreeRightHalfPlane
    le_rfl

end GRWTSK.RiemannHypothesis.Checks.ZeroFreeHalfPlaneControls
