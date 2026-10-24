# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerSampleNonnegative

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `978ba118c3b456f2d8ce0038edd7d0943b0b0f38` · SHA-256 `8fa11fa4574dd8a4935a628b19822c9ffa1249f8552767eae4061926389e4f70`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerDiscreteReproduction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- The symmetric triangular kernel is real and nonnegative for every real
argument, by the already source-proved autocorrelation identity. -/
theorem symmetricTriangularKernel_re_nonnegative
    {N : ℕ} (hN : 0 < N)
    (t : ℝ) :
    0 ≤
      (symmetricTriangularKernel N
        (t : AddCircle (1 : ℝ))).re := by
  rw [symmetricTriangularKernel_autocorrelation N hN t]
  rw [show
    ((1 : ℂ) / (N : ℝ)) *
        triangularGeometricBlock N t *
        Complex.conj (triangularGeometricBlock N t) =
      ((1 : ℂ) / (N : ℝ)) *
        (triangularGeometricBlock N t *
          Complex.conj (triangularGeometricBlock N t)) by ring]
  rw [Complex.mul_conj']
  simp only [Complex.div_re, Complex.one_re, Complex.one_im,
    Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero,
    Complex.normSq_apply, mul_zero, add_zero, div_eq_mul_inv]
  have hNr : (0 : ℝ) < (N : ℝ) := by
    exact_mod_cast hN
  positivity

/-- Every signed period-4X lattice sample is nonnegative in the alias-free
cutoff regime.  No off-boundary exclusion is needed at the zero residue. -/
theorem periodFourXSampledKernelNonnegative :
    PeriodFourXSampledKernelNonnegativeClaim := by
  intro X N hreg r
  rcases hreg with ⟨hX, hN, hNL⟩
  unfold signedSampledTriangularKernelAtPeriod fejerOctavePeriod
  have hL : (0 : ℝ) < ((4 * X : ℕ) : ℝ) := by
    exact_mod_cast (by omega : 0 < 4 * X)
  have hscale : 0 ≤ (1 : ℝ) / ((4 * X : ℕ) : ℝ) := by
    positivity
  exact mul_nonneg hscale
    (symmetricTriangularKernel_re_nonnegative hN
      ((r : ℝ) / ((4 * X : ℕ) : ℝ)))

/-- The discrete-reproduction packet is now reduced to the mass-one theorem
alone. -/
def PeriodFourXSampledKernelMassOneOnlyFrontier : Prop :=
  PeriodFourXSampledKernelMassOneClaim

end GRWTSK.RiemannHypothesis
```
