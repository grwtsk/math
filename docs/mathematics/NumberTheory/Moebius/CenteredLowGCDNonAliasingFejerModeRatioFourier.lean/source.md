# Complete source: GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerModeRatioFourier

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77f9ee308f719e78e97d97d37734be5b2e8c7169` · SHA-256 `81ab4d09ad5500fb9d2d4ef6069c699eaf3c3d6f555bf69ab38c7bf2a72460e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerModeRatioCore
import Mathlib.Analysis.Fourier.ZMod
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

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

end GRWTSK.RiemannHypothesis
```
