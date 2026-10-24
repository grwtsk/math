# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMassOneReduction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c519b6630c64dfb533b33895a6335d9a0b156a2` · SHA-256 `b2b8ec592ca152401d8e56d02cd61a6e5c2f7f3574be51cbcf9c8781f5803e4f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerSampleNonnegative
import Mathlib.Analysis.Fourier.ZMod
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Exact finite-character orthogonality statement required by the period-4X
sampled kernel.  Every nonzero Fourier mode in the triangular support must
average to zero over one complete period. -/
def PeriodFourXFourierModeOrthogonalityClaim : Prop :=
  ∀ X N : ℕ,
    NonAliasingFejerCutoffRegime X N →
      ∀ k : ℤ,
        k ∈ Finset.Icc (-(N : ℤ)) (N : ℤ) →
        k ≠ 0 →
        (∑ r ∈ Finset.range (fejerOctavePeriod X),
          fourier k
            ((((r : ℝ) /
              ((fejerOctavePeriod X : ℕ) : ℝ))) :
              AddCircle (1 : ℝ))) : ℂ) = 0

/-- The zero Fourier mode sums to the period length. -/
theorem periodFourX_zero_mode_sum
    {X : ℕ} (hX : 0 < X) :
    (∑ r ∈ Finset.range (fejerOctavePeriod X),
      fourier 0
        ((((r : ℝ) /
          ((fejerOctavePeriod X : ℕ) : ℝ))) :
          AddCircle (1 : ℝ))) : ℂ) =
      (fejerOctavePeriod X : ℂ) := by
  simp [fejerOctavePeriod]

/-- Finite mode orthogonality implies exact complex mass for the triangular
kernel over one period: only the zero mode survives, with weight one. -/
theorem fourierModeOrthogonality_to_kernelComplexMass
    (horth : PeriodFourXFourierModeOrthogonalityClaim)
    {X N : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N) :
    (∑ r ∈ Finset.range (fejerOctavePeriod X),
      symmetricTriangularKernel N
        ((((r : ℝ) /
          ((fejerOctavePeriod X : ℕ) : ℝ))) :
          AddCircle (1 : ℝ))) : ℂ) =
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
                AddCircle (1 : ℝ)))) := by
          apply Finset.sum_congr rfl
          intro k hk
          rw [Finset.mul_sum]
    _ = (symmetricTriangularWeight N 0 : ℂ) *
        (fejerOctavePeriod X : ℂ) := by
          rw [← Finset.sum_eq_single 0]
          · simp [symmetricTriangularWeight_zero hN,
              periodFourX_zero_mode_sum hX]
          · intro k hk hk0
            rw [horth X N ⟨hX, hN, hNL⟩ k hk hk0]
            simp
          · intro hzero
            exfalso
            exact hzero (by simp [hN])
    _ = (fejerOctavePeriod X : ℂ) := by
          rw [symmetricTriangularWeight_zero hN]
          simp

/-- Therefore finite Fourier-mode orthogonality is sufficient to discharge the
period-4X sampled-kernel mass-one theorem. -/
theorem fourierModeOrthogonality_to_sampledKernelMassOne
    (horth : PeriodFourXFourierModeOrthogonalityClaim) :
    PeriodFourXSampledKernelMassOneClaim := by
  intro X N hreg
  rcases hreg with ⟨hX, hN, hNL⟩
  unfold signedSampledTriangularKernelAtPeriod
  have hLr : (0 : ℝ) < ((fejerOctavePeriod X : ℕ) : ℝ) := by
    unfold fejerOctavePeriod
    exact_mod_cast (by omega : 0 < 4 * X)
  rw [Finset.mul_sum]
  have hcomplex :=
    fourierModeOrthogonality_to_kernelComplexMass
      horth ⟨hX, hN, hNL⟩
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
        ((fejerOctavePeriod X : ℕ) : ℝ) := by rw [hre]
    _ = 1 := by field_simp [hLr.ne']

/-- The discrete-reproduction branch is now reduced to one standard finite
character-sum identity. -/
def PeriodFourXMassOneReducedFrontier : Prop :=
  PeriodFourXFourierModeOrthogonalityClaim

end GRWTSK.RiemannHypothesis
```
