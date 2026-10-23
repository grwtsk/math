/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenQuadrature
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory

namespace GRWTSK.RiemannHypothesis

/-- Historical Fourier slope, moved in the same thin coordinate language. -/
def thinFourierModeSlope (k : ℤ) (t : ℝ) : ℂ :=
  fourier (-k) (t : AddCircle (1 : ℝ))

theorem fourierModePrimitive_hasDerivAt_thin
    {k : ℤ} (hk : k ≠ 0) (t : ℝ) :
    HasDerivAt (fourierModePrimitive k)
      (thinFourierModeSlope k t) t := by
  simpa [fourierModePrimitive, thinFourierModeSlope] using
    (has_antideriv_at_fourier_neg
      (T := (1 : ℝ)) (Fact.mk zero_lt_one) hk t)

theorem fourierModeValue_hasDerivAt_thin
    {k : ℤ} (hk : k ≠ 0) (t : ℝ) :
    HasDerivAt (fourierModeValue k)
      (thinFourierModeSlope k t) t := by
  exact (fourierModePrimitive_hasDerivAt_thin hk t).sub_const
    (fourierModePrimitive k 0)

/-- The Fourier slope has unit norm. -/
theorem norm_thinFourierModeSlope (k : ℤ) (t : ℝ) :
    ‖thinFourierModeSlope k t‖ = 1 := by
  simp [thinFourierModeSlope, norm_fourier]

/-- Exact derivative of f_k(t)=phi_k(t)/(1+t). -/
theorem greenFourierBackgroundIntegrand_hasDerivAt
    {k : ℤ} (hk : k ≠ 0) (t : ℝ)
    (ht : t ≠ -1) :
    HasDerivAt (greenFourierBackgroundIntegrand k)
      ((thinFourierModeSlope k t * (1 + (t : ℂ)) -
          fourierModeValue k t) /
        (1 + (t : ℂ))^2) t := by
  unfold greenFourierBackgroundIntegrand
  convert
    (fourierModeValue_hasDerivAt_thin hk t).div
      ((hasDerivAt_id t).ofReal_clm.add_const 1)
      (by
        simpa using (show (1 + (t : ℂ)) ≠ 0 by
          exact add_ne_zero.mpr ?_)) using 1
  · ring
  · intro h
    have : t = -1 := by
      apply_fun Complex.re at h
      norm_num at h ⊢
      linarith
    exact ht this

/-- Cellwise deterministic quadrature target: a derivative bound M on one cell
implies error at most M/(2X^2). Kept as a named statement for the next replayed
analytic increment; no arithmetic premise appears. -/
def GreenCellDerivativeBound
    (X : ℕ) (k : ℤ) (j : ℕ) (M : ℝ) : Prop :=
  ∀ t ∈ Set.Icc (((j - 1 : ℕ) : ℝ) / X) ((j : ℝ) / X),
    ‖((thinFourierModeSlope k t * (1 + (t : ℂ)) -
        fourierModeValue k t) /
      (1 + (t : ℂ))^2)‖ ≤ M

end GRWTSK.RiemannHypothesis
