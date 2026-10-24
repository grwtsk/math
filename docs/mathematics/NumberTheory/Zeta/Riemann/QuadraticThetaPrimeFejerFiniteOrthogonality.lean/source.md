# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerFiniteOrthogonality

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a82c9eaacd10878a14fb5c3eccf9247dce4b1aa3` · SHA-256 `68e4b79ea8f2354db36498a66e56ddbe8787014a9edf3e91964e8dabfd67564f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMassOneReduction
import Mathlib.Algebra.Field.GeomSum
import Mathlib.Analysis.SpecialFunctions.Complex.Log
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

def periodFourXModeRatio
    (X : ℕ) (k : ℤ) : ℂ :=
  Complex.exp
    (2 * (Real.pi : ℂ) * Complex.I *
      ((k : ℂ) / (fejerOctavePeriod X : ℂ)))

theorem periodFourXModeRatio_pow_period
    {X : ℕ} (hX : 0 < X)
    (k : ℤ) :
    (periodFourXModeRatio X k) ^ (fejerOctavePeriod X) = 1 := by
  unfold periodFourXModeRatio fejerOctavePeriod
  rw [← Complex.exp_nat_mul]
  have hX0 : ((4 * X : ℕ) : ℂ) ≠ 0 := by
    exact_mod_cast (by omega : (4 * X : ℕ) ≠ 0)
  rw [show
    2 * (Real.pi : ℂ) * Complex.I *
        ((k : ℂ) / ((4 * X : ℕ) : ℂ)) *
        (4 * X : ℕ) =
      (k : ℂ) * (2 * (Real.pi : ℂ) * Complex.I) by
        field_simp [hX0]
        ring]
  exact Complex.exp_int_mul_two_pi_mul_I k

theorem periodFourXModeRatio_ne_one
    {X : ℕ} (hX : 0 < X)
    {k : ℤ}
    (hkmod : (k : ZMod (fejerOctavePeriod X)) ≠ 0) :
    periodFourXModeRatio X k ≠ 1 := by
  intro hphase
  unfold periodFourXModeRatio at hphase
  obtain ⟨m, hm⟩ := Complex.exp_eq_one_iff.mp hphase
  have hL0 : (fejerOctavePeriod X : ℤ) ≠ 0 := by
    unfold fejerOctavePeriod
    exact_mod_cast (by omega : (4 * X : ℕ) ≠ 0)
  have hdiv : (fejerOctavePeriod X : ℤ) ∣ k := by
    refine ⟨m, ?_⟩
    apply (@Int.cast_inj ℂ _ _).mp
    have hLc : ((fejerOctavePeriod X : ℕ) : ℂ) ≠ 0 := by
      exact_mod_cast hL0
    linear_combination
      (norm := (push_cast; field [hLc, Complex.I_ne_zero,
        (show (Real.pi : ℂ) ≠ 0 by exact_mod_cast Real.pi_ne_zero)]))
      hm * (((fejerOctavePeriod X : ℕ) : ℂ) /
        (2 * (Real.pi : ℂ) * Complex.I))
  exact hkmod (by
    rw [ZMod.intCast_eq_zero_iff_dvd]
    exact hdiv)

theorem fourier_periodFourX_lattice_eq_pow
    {X : ℕ} (hX : 0 < X)
    (k : ℤ) (r : ℕ) :
    fourier k
        ((((r : ℝ) /
          ((fejerOctavePeriod X : ℕ) : ℝ))) :
          AddCircle (1 : ℝ)) =
      (periodFourXModeRatio X k) ^ r := by
  rw [fourier_coe_apply]
  unfold periodFourXModeRatio
  rw [← Complex.exp_nat_mul]
  have hLc : ((fejerOctavePeriod X : ℕ) : ℂ) ≠ 0 := by
    unfold fejerOctavePeriod
    exact_mod_cast (by omega : (4 * X : ℕ) ≠ 0)
  congr 1
  push_cast
  field_simp [hLc]
  ring

/-- Every nonzero Fourier index in Icc(-N,N) remains nonzero modulo 4X when
N < 4X. This covers the formal endpoint frequencies ±N as well. -/
theorem intervalFrequency_nonzero_mod_octavePeriod
    {X N : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    {k : ℤ}
    (hk : k ∈ Finset.Icc (-(N : ℤ)) (N : ℤ))
    (hk0 : k ≠ 0) :
    (k : ZMod (fejerOctavePeriod X)) ≠ 0 := by
  intro hz
  have hdiv : (fejerOctavePeriod X : ℤ) ∣ k := by
    simpa [ZMod.intCast_eq_zero_iff_dvd] using hz
  rcases hreg with ⟨hX, hN, hNL⟩
  have hLabs :
      fejerOctavePeriod X ≤ Int.natAbs k := by
    apply Int.natAbs_le_of_dvd_ne_zero hdiv hk0
  have hki := Finset.mem_Icc.mp hk
  have hkabsInt :
      (Int.natAbs k : ℤ) ≤ (N : ℤ) := by
    rw [Int.natCast_natAbs, abs_le]
    exact hki
  have hkabs : Int.natAbs k ≤ N := by
    exact_mod_cast hkabsInt
  omega

theorem periodFourXFourierModeOrthogonality :
    PeriodFourXFourierModeOrthogonalityClaim := by
  intro X N hreg k hk hk0
  rcases hreg with ⟨hX, hN, hNL⟩
  have hkmod :=
    intervalFrequency_nonzero_mod_octavePeriod
      ⟨hX, hN, hNL⟩ hk hk0
  have hratio :=
    periodFourXModeRatio_ne_one hX hkmod
  simp_rw [fourier_periodFourX_lattice_eq_pow hX k]
  rw [geom_sum_eq hratio]
  rw [periodFourXModeRatio_pow_period hX k]
  simp

theorem periodFourXSampledKernelMassOne :
    PeriodFourXSampledKernelMassOneClaim :=
  fourierModeOrthogonality_to_sampledKernelMassOne
    periodFourXFourierModeOrthogonality

def nonAliasingFejerDiscreteReproductionData :
    NonAliasingFejerDiscreteReproductionData where
  massOne := periodFourXSampledKernelMassOne
  nonnegative := periodFourXSampledKernelNonnegative

end GRWTSK.RiemannHypothesis
```
