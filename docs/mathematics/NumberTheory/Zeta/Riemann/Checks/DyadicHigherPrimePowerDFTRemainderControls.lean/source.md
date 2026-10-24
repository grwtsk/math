# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicHigherPrimePowerDFTRemainderControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b36a21e2e349c583c69c5506098c207422899da` · SHA-256 `05bf2f694d5f3f3045bbfd59b8c3b71ebd69234db291a016a0d60e390ecb5d9d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicHigherPrimePowerDFTRemainder
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicHigherPrimePowerDFTRemainderControls

open GRWTSK.RiemannHypothesis

theorem higher_prime_power_mass_is_sqrt_scale :
    ∃ C : ℝ, ∀ X : ℕ, 0 < X →
      higherPrimePowerWindowMass X ≤
        C * Real.sqrt (((2 * X : ℕ) : ℝ)) / (X : ℝ) :=
  higherPrimePowerWindowMass_sqrt_bound

end GRWTSK.RiemannHypothesis.Checks.DyadicHigherPrimePowerDFTRemainderControls
```
