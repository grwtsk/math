# Complete source: GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerModeRatioCore

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ca8c3c4873edd2b31654f4ed2644f139fb87b77` · SHA-256 `531571cbd8e57163813e6a5bb62771b2e5b7226c902afb06918c7d2624607255`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerNonnegative
import Mathlib.Algebra.Field.GeomSum
import Mathlib.Analysis.Fourier.ZMod
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
  obtain ⟨z, hz⟩ := Complex.exp_eq_one_iff.mp hphase
  have hL0 : (fejerOctavePeriod X : ℤ) ≠ 0 := by
    unfold fejerOctavePeriod
    exact_mod_cast (by omega : (4 * X : ℕ) ≠ 0)
  have hdiv : (fejerOctavePeriod X : ℤ) ∣ k := by
    refine ⟨z, ?_⟩
    apply (@Int.cast_inj ℂ _ _).mp
    have hLc : ((fejerOctavePeriod X : ℕ) : ℂ) ≠ 0 := by
      exact_mod_cast hL0
    linear_combination
      (norm := (push_cast; field [hLc, Complex.I_ne_zero,
        (show (Real.pi : ℂ) ≠ 0 by exact_mod_cast Real.pi_ne_zero)]))
      hz * (((fejerOctavePeriod X : ℕ) : ℂ) /
        (2 * (Real.pi : ℂ) * Complex.I))
  exact hkmod (by
    rw [ZMod.intCast_eq_zero_iff_dvd]
    exact hdiv)

end GRWTSK.RiemannHypothesis
```
