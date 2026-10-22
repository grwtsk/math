/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularAutocorrelationDiagonals
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeSymmetricTriangularKernelDecay
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

/-- Correct closed-form interface on the exact off-boundary interval consumed
by the decay theorem. -/
def SymmetricTriangularKernelClosedFormOffBoundaryClaim : Prop :=
  ∀ N : ℕ, 0 < N →
    ∀ t : ℝ, 0 < |t| → |t| ≤ (1 : ℝ) / 2 →
      symmetricTriangularKernel N (t : AddCircle (1 : ℝ)) =
        (((Complex.sin (Real.pi * (N : ℝ) * t)) /
          (Complex.sin (Real.pi * t))) ^ 2) / (N : ℝ)

/-- On the off-boundary interval, the sine denominator is nonzero. -/
theorem sin_pi_mul_ne_zero_of_offBoundary
    {t : ℝ}
    (ht0 : 0 < |t|)
    (htHalf : |t| ≤ (1 : ℝ) / 2) :
    Complex.sin (Real.pi * t) ≠ 0 := by
  have hlower := abs_sin_pi_mul_lower htHalf
  have hpos : 0 < |Real.sin (Real.pi * t)| := by
    linarith
  intro hzero
  have hreal : Real.sin (Real.pi * t) = 0 := by
    exact_mod_cast hzero
  rw [hreal, abs_zero] at hpos
  linarith

/-- The corrected off-boundary closed form is sufficient for the pointwise
kernel decay theorem, with the same explicit constant 1/4. -/
theorem symmetricTriangularKernelDecay_of_offBoundaryClosedForm
    (hclosed : SymmetricTriangularKernelClosedFormOffBoundaryClaim) :
    SymmetricTriangularKernelDecayClaim := by
  refine ⟨(1 : ℝ) / 4, by norm_num, ?_⟩
  intro N hN t ht0 htHalf
  have hdenLower :
      2 * |t| ≤ |Real.sin (Real.pi * t)| :=
    abs_sin_pi_mul_lower htHalf
  have hnum :
      |Real.sin (Real.pi * (N : ℝ) * t)| ≤ 1 :=
    Real.abs_sin_le_one _
  have hNreal : (0 : ℝ) < (N : ℝ) := by exact_mod_cast hN
  rw [hclosed N hN t ht0 htHalf]
  simp only [← Complex.ofReal_sin, norm_div, norm_pow,
    Complex.norm_real, Real.norm_eq_abs]
  have hratio :
      |Real.sin (Real.pi * (N : ℝ) * t)| /
          |Real.sin (Real.pi * t)| ≤
        1 / (2 * |t|) := by
    apply div_le_div hnum (by positivity) hdenLower (by positivity)
  have hratio0 :
      0 ≤
        |Real.sin (Real.pi * (N : ℝ) * t)| /
          |Real.sin (Real.pi * t)| := by
    positivity
  have hsq :
      (|Real.sin (Real.pi * (N : ℝ) * t)| /
          |Real.sin (Real.pi * t)|)^2 ≤
        (1 / (2 * |t|))^2 := by
    exact pow_le_pow_left₀ hratio0 hratio 2
  have hcalc :
      (1 / (2 * |t|))^2 / (N : ℝ) =
        ((1 : ℝ) / 4) / ((N : ℝ) * t^2) := by
    rw [sq_abs]
    field_simp [hNreal.ne', ne_of_gt ht0]
    ring
  calc
    ((|Real.sin (Real.pi * (N : ℝ) * t)| /
        |Real.sin (Real.pi * t)|)^2) / (N : ℝ)
        ≤ ((1 / (2 * |t|))^2) / (N : ℝ) := by
          exact div_le_div_of_nonneg_right hsq hNreal.le
    _ = ((1 : ℝ) / 4) / ((N : ℝ) * t^2) := hcalc

/-- The older globally quantified interface is stronger than necessary; when
available it restricts to the corrected off-boundary claim. -/
theorem globalClosedForm_to_offBoundaryClosedForm
    (hglobal : SymmetricTriangularKernelClosedFormClaim) :
    SymmetricTriangularKernelClosedFormOffBoundaryClaim := by
  intro N hN t ht0 htHalf
  exact hglobal N hN t (abs_pos.mp ht0)

/-- Corrected sine-conversion interface matching the same off-boundary domain. -/
def TriangularGeometricBlockSineNormOffBoundaryClaim : Prop :=
  ∀ N : ℕ, 0 < N →
    ∀ t : ℝ, 0 < |t| → |t| ≤ (1 : ℝ) / 2 →
      ((1 : ℂ) / (N : ℝ)) *
          triangularGeometricBlock N t *
          Complex.conj (triangularGeometricBlock N t) =
        (((Complex.sin (Real.pi * (N : ℝ) * t)) /
          (Complex.sin (Real.pi * t))) ^ 2) / (N : ℝ)

/-- Autocorrelation plus corrected sine conversion yields exactly the corrected
closed form needed downstream. -/
theorem autocorrelation_and_offBoundarySineNorm_to_closedForm
    (hAuto : SymmetricTriangularKernelAutocorrelationClaim)
    (hSine : TriangularGeometricBlockSineNormOffBoundaryClaim) :
    SymmetricTriangularKernelClosedFormOffBoundaryClaim := by
  intro N hN t ht0 htHalf
  rw [hAuto N hN t]
  exact hSine N hN t ht0 htHalf

end GRWTSK.RiemannHypothesis
