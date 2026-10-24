# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicPrimeOnlyLiteralFormulasControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78d3d7834d219fe2349412e7858b5c1b3a3cba5a` · SHA-256 `7bccb08016420b578055113f74c333553f8e796713c96959be67ace3dd0f9e50`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyLiteralFormulas
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicPrimeOnlyLiteralFormulasControls

open GRWTSK.RiemannHypothesis
open Chebyshev

theorem endpoint_sum_is_theta_octave_discrepancy
    {X : ℕ} (hX : 0 < X) :
    primeOnlyMass0 X + primeOnlyMass1 X =
      (θ (((2 * X : ℕ) : ℝ)) - θ ((X : ℕ) : ℝ)) /
        (X : ℝ) - 1 :=
  primeOnlyMass0_add_mass1_eq_theta_increment hX

end GRWTSK.RiemannHypothesis.Checks.DyadicPrimeOnlyLiteralFormulasControls
```
