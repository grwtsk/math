/- Copyright (c) 2026 R.A. Jacob Martone. MIT. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerKernelMass
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

theorem periodFourXSampledKernelMassOne
    {X N : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N) :
    (∑ r ∈ Finset.range (fejerOctavePeriod X),
      signedSampledTriangularKernelAtPeriod
        (fejerOctavePeriod X) N r) = 1 := by
  rcases hreg with ⟨hX, hN, hNL⟩
  unfold signedSampledTriangularKernelAtPeriod
  have hLr : (0 : ℝ) < ((fejerOctavePeriod X : ℕ) : ℝ) := by
    unfold fejerOctavePeriod
    exact_mod_cast (by omega : 0 < 4 * X)
  rw [Finset.mul_sum]
  have hcomplex :=
    periodFourX_kernelComplexMass ⟨hX, hN, hNL⟩
  have hre := congrArg Complex.re hcomplex
  simp only [map_sum, Complex.ofReal_re, Complex.natCast_re] at hre
  calc
    (1 / ((fejerOctavePeriod X : ℕ) : ℝ)) *
        (∑ r ∈ Finset.range (fejerOctavePeriod X),
          (symmetricTriangularKernel N
            ((((r : ℝ) /
              ((fejerOctavePeriod X : ℕ) : ℝ))) :
              AddCircle (1 : ℝ))).re)
      =
      (1 / ((fejerOctavePeriod X : ℕ) : ℝ)) *
        ((fejerOctavePeriod X : ℕ) : ℝ) := by
          rw [hre]
    _ = 1 := by
          field_simp [hLr.ne']

end GRWTSK.RiemannHypothesis
