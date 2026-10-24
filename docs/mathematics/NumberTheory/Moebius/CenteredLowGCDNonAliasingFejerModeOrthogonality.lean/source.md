# Complete source: GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerModeOrthogonality

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `acc2b3083247564dfd0fd680fb95035545e850f2` · SHA-256 `91989aa394b65309fa0bbec07ceee5c5da2121dd039f18ed805dd7f11b66f6b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerModeRatioFourier
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

theorem intervalFrequency_nonzero_mod_octavePeriod
    {X N : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    {k : ℤ}
    (hk : k ∈ Finset.Icc (-(N : ℤ)) (N : ℤ))
    (hk0 : k ≠ 0) :
    (k : ZMod (fejerOctavePeriod X)) ≠ 0 := by
  intro hz
  have hdiv :
      (fejerOctavePeriod X : ℤ) ∣ k := by
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

theorem periodFourXFourierModeOrthogonality
    {X N : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    {k : ℤ}
    (hk : k ∈ Finset.Icc (-(N : ℤ)) (N : ℤ))
    (hk0 : k ≠ 0) :
    (∑ r ∈ Finset.range (fejerOctavePeriod X),
      fourier k
        ((((r : ℝ) /
          ((fejerOctavePeriod X : ℕ) : ℝ))) :
          AddCircle (1 : ℝ)) : ℂ) = 0 := by
  rcases hreg with ⟨hX, hN, hNL⟩
  have hkmod :=
    intervalFrequency_nonzero_mod_octavePeriod
      ⟨hX, hN, hNL⟩ hk hk0
  have hratio := periodFourXModeRatio_ne_one hX hkmod
  simp_rw [fourier_periodFourX_lattice_eq_pow hX k]
  rw [geom_sum_eq hratio]
  rw [periodFourXModeRatio_pow_period hX k]
  simp

end GRWTSK.RiemannHypothesis
```
