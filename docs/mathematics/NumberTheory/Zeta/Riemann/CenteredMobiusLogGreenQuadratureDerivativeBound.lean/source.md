# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenQuadratureDerivativeBound

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0ec147dc38b40fc54a7f6549e85531f677c1b91` · SHA-256 `590a3ea4adb9d705f5f6fea9508a5c321afda79892b5e468e39a79e5ef4422fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFourierPrimitiveBound
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

/-- Exact split of the derivative into slope/(1+t) and
-primitive/(1+t)^2. -/
theorem greenFourierBackgroundIntegrand_derivative_split
    (k : ℤ) (t : ℝ) :
    ((thinFourierModeSlope k t * (1 + (t : ℂ)) -
        fourierModeValue k t) /
      (1 + (t : ℂ))^2) =
      thinFourierModeSlope k t / (1 + (t : ℂ)) -
        fourierModeValue k t / (1 + (t : ℂ))^2 := by
  by_cases ht : (1 + (t : ℂ)) = 0
  · simp [ht]
  · field_simp
    ring

/-- Sharp elementary derivative bound on the actual quadrature interval. -/
theorem norm_greenFourierBackgroundIntegrand_derivative_le
    {k : ℤ} (hk : k ≠ 0)
    {t : ℝ} (ht0 : 0 ≤ t) (ht1 : t ≤ 1) :
    ‖((thinFourierModeSlope k t * (1 + (t : ℂ)) -
          fourierModeValue k t) /
        (1 + (t : ℂ))^2)‖ ≤
      1 + 1 / (Real.pi * |(k : ℝ)|) := by
  rw [greenFourierBackgroundIntegrand_derivative_split]
  calc
    ‖thinFourierModeSlope k t / (1 + (t : ℂ)) -
        fourierModeValue k t / (1 + (t : ℂ))^2‖ ≤
      ‖thinFourierModeSlope k t / (1 + (t : ℂ))‖ +
        ‖fourierModeValue k t / (1 + (t : ℂ))^2‖ :=
      norm_sub_le _ _
    _ ≤ 1 + 1 / (Real.pi * |(k : ℝ)|) := by
      rw [norm_div, norm_div, norm_pow, norm_thinFourierModeSlope]
      have hden : 1 ≤ ‖(1 + (t : ℂ))‖ := by
        rw [Complex.norm_real]
        simp only [Complex.ofReal_add, Complex.ofReal_one, Real.norm_eq_abs]
        rw [abs_of_nonneg]
        · linarith
        · linarith
      have hden2 : 1 ≤ ‖(1 + (t : ℂ))‖ ^ 2 := by nlinarith
      have hphi := norm_fourierModeValue_le hk t
      have hdenpos : 0 < ‖(1 + (t : ℂ))‖ := lt_of_lt_of_le zero_lt_one hden
      have hden2pos : 0 < ‖(1 + (t : ℂ))‖ ^ 2 := by positivity
      have hfirst :
          1 / ‖(1 + (t : ℂ))‖ ≤ 1 := by
        exact (div_le_one hdenpos).2 hden
      have hsecond :
          ‖fourierModeValue k t‖ / ‖(1 + (t : ℂ))‖ ^ 2 ≤
            1 / (Real.pi * |(k : ℝ)|) := by
        calc
          ‖fourierModeValue k t‖ / ‖(1 + (t : ℂ))‖ ^ 2 ≤
              ‖fourierModeValue k t‖ := by
            exact (div_le_iff₀ hden2pos).2
              (by nlinarith [norm_nonneg (fourierModeValue k t)])
          _ ≤ 1 / (Real.pi * |(k : ℝ)|) := hphi
      linarith

/-- The exact derivative from the preceding module inherits the sharp bound. -/
theorem greenFourierBackgroundIntegrand_hasDerivAt_with_bound
    {k : ℤ} (hk : k ≠ 0)
    {t : ℝ} (ht0 : 0 ≤ t) (ht1 : t ≤ 1) :
    ∃ z : ℂ,
      HasDerivAt (greenFourierBackgroundIntegrand k) z t ∧
      ‖z‖ ≤ 1 + 1 / (Real.pi * |(k : ℝ)|) := by
  let z :=
    ((thinFourierModeSlope k t * (1 + (t : ℂ)) -
        fourierModeValue k t) /
      (1 + (t : ℂ))^2)
  refine ⟨z, ?_, ?_⟩
  · exact greenFourierBackgroundIntegrand_hasDerivAt hk t (by linarith)
  · exact norm_greenFourierBackgroundIntegrand_derivative_le hk ht0 ht1

end GRWTSK.RiemannHypothesis
```
