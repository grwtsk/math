# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeSymmetricTriangularKernelDecay

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05d29c414ba3be92fbbe364dba2f75892938aac0` · SHA-256 `ac9ffaf63c75cb9c4e1957ca3280bada710d28ae96fa3b11e68c565d51ee78ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeSymmetricTriangularKernel
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

/-- Jordan's inequality specialized to the denominator appearing in the
symmetric triangular kernel. -/
theorem abs_sin_pi_mul_lower
    {t : ℝ}
    (ht : |t| ≤ (1 : ℝ) / 2) :
    2 * |t| ≤ |Real.sin (Real.pi * t)| := by
  have hpi :
      |Real.pi * t| ≤ Real.pi / 2 := by
    rw [abs_mul, abs_of_pos Real.pi_pos]
    nlinarith [Real.pi_pos]
  have hJ := Real.mul_abs_le_abs_sin hpi
  have hpi0 : Real.pi ≠ 0 := Real.pi_pos.ne'
  have :
      (2 / Real.pi) * |Real.pi * t| = 2 * |t| := by
    rw [abs_mul, abs_of_pos Real.pi_pos]
    field_simp [hpi0]
  simpa [this] using hJ

/-- The classical sine-squared closed form immediately gives the standard
off-boundary O(1/(N t^2)) Fejer-kernel decay. -/
theorem symmetricTriangularKernelDecay_of_closedForm
    (hclosed : SymmetricTriangularKernelClosedFormClaim) :
    SymmetricTriangularKernelDecayClaim := by
  refine ⟨(1 : ℝ) / 4, by norm_num, ?_⟩
  intro N hN t ht0 htHalf
  have hdenLower :
      2 * |t| ≤ |Real.sin (Real.pi * t)| :=
    abs_sin_pi_mul_lower htHalf
  have hdenPos :
      0 < |Real.sin (Real.pi * t)| := by
    have htAbs : 0 < |t| := abs_pos.mpr ht0
    linarith
  have hnum :
      |Real.sin (Real.pi * (N : ℝ) * t)| ≤ 1 :=
    Real.abs_sin_le_one _
  have hNreal : (0 : ℝ) < (N : ℝ) := by
    exact_mod_cast hN
  rw [hclosed N hN t ht0]
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
  have htSq : 0 < t^2 := sq_pos_of_ne_zero ht0
  have hcalc :
      (1 / (2 * |t|))^2 / (N : ℝ) =
        ((1 : ℝ) / 4) / ((N : ℝ) * t^2) := by
    rw [sq_abs]
    field_simp [hNreal.ne', ht0]
    ring
  calc
    ((|Real.sin (Real.pi * (N : ℝ) * t)| /
        |Real.sin (Real.pi * t)|)^2) / (N : ℝ)
        ≤ ((1 / (2 * |t|))^2) / (N : ℝ) := by
          exact div_le_div_of_nonneg_right hsq hNreal.le
    _ = ((1 : ℝ) / 4) / ((N : ℝ) * t^2) := hcalc

/-- Hence after the symmetric finite-sum identity is proved, the pointwise
kernel-decay theorem is no longer an independent obligation. -/
theorem closedForm_discharge_pointwise_decay
    (hclosed : SymmetricTriangularKernelClosedFormClaim) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ N : ℕ, 0 < N →
        ∀ t : ℝ, 0 < |t| → |t| ≤ (1 : ℝ) / 2 →
          ‖symmetricTriangularKernel N (t : AddCircle (1 : ℝ))‖ ≤
            C / ((N : ℝ) * t^2) :=
  symmetricTriangularKernelDecay_of_closedForm hclosed

end GRWTSK.RiemannHypothesis
```
