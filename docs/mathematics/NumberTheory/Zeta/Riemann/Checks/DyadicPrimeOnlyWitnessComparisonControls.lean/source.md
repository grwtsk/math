# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicPrimeOnlyWitnessComparisonControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4366c063a1faf3c4ffb15c5fc7dfb7bf08ad0460` · SHA-256 `2549193a37b6b2567b00fd6fe2888e3215d85cc9014773faefd67fb8c68a5590`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyWitnessComparison
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicPrimeOnlyWitnessComparisonControls

open GRWTSK.RiemannHypothesis

theorem full_vs_prime_stage
    (X N : ℕ) :
    fullGreenArithmeticCoordinateStage X N ≤
      2 * fullGreenPrimeOnlyCoordinateStage X N +
        2 * higherPrimePowerFullWitnessEnergy X :=
  fullStage_le_two_primeOnly_add_residual X N

theorem prime_vs_full_stage
    (X N : ℕ) :
    fullGreenPrimeOnlyCoordinateStage X N ≤
      2 * fullGreenArithmeticCoordinateStage X N +
        2 * higherPrimePowerFullWitnessEnergy X :=
  primeOnlyStage_le_two_full_add_residual X N

end GRWTSK.RiemannHypothesis.Checks.DyadicPrimeOnlyWitnessComparisonControls
```
