/- Copyright (c) 2026 R.A. Jacob Martone. MIT. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerModeOrthogonality
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

theorem periodFourX_zero_mode_sum
    {X : ℕ} (hX : 0 < X) :
    (∑ r ∈ Finset.range (fejerOctavePeriod X),
      fourier 0
        ((((r : ℝ) /
          ((fejerOctavePeriod X : ℕ) : ℝ))) :
          AddCircle (1 : ℝ)) : ℂ) =
      (fejerOctavePeriod X : ℂ) := by
  simp [fejerOctavePeriod]

theorem periodFourX_kernelComplexMass
    {X N : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N) :
    (∑ r ∈ Finset.range (fejerOctavePeriod X),
      symmetricTriangularKernel N
        ((((r : ℝ) /
          ((fejerOctavePeriod X : ℕ) : ℝ))) :
          AddCircle (1 : ℝ)) : ℂ) =
      (fejerOctavePeriod X : ℂ) := by
  classical
  rcases hreg with ⟨hX, hN, hNL⟩
  unfold symmetricTriangularKernel
  rw [Finset.sum_comm]
  calc
    (∑ k ∈ Finset.Icc (-(N : ℤ)) (N : ℤ),
      ∑ r ∈ Finset.range (fejerOctavePeriod X),
        (symmetricTriangularWeight N k : ℂ) *
          fourier k
            ((((r : ℝ) /
              ((fejerOctavePeriod X : ℕ) : ℝ))) :
              AddCircle (1 : ℝ)))
      =
      ∑ k ∈ Finset.Icc (-(N : ℤ)) (N : ℤ),
        (symmetricTriangularWeight N k : ℂ) *
          (∑ r ∈ Finset.range (fejerOctavePeriod X),
            fourier k
              ((((r : ℝ) /
                ((fejerOctavePeriod X : ℕ) : ℝ))) :
                AddCircle (1 : ℝ))) := by
          apply Finset.sum_congr rfl
          intro k hk
          rw [Finset.mul_sum]
    _ = (symmetricTriangularWeight N 0 : ℂ) *
        (fejerOctavePeriod X : ℂ) := by
          rw [← Finset.sum_eq_single 0]
          · simp [symmetricTriangularWeight_zero hN,
              periodFourX_zero_mode_sum hX]
          · intro k hk hk0
            rw [periodFourXFourierModeOrthogonality
              ⟨hX, hN, hNL⟩ hk hk0]
            simp
          · intro hzero
            exfalso
            exact hzero (by simp [hN])
    _ = (fejerOctavePeriod X : ℂ) := by
          rw [symmetricTriangularWeight_zero hN]
          simp

end GRWTSK.RiemannHypothesis
