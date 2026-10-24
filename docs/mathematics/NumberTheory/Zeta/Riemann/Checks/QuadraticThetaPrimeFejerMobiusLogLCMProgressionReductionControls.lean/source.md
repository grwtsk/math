# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerMobiusLogLCMProgressionReductionControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a6eb69de8e13b4472cbde34a7bedf5eb27d38fa` · SHA-256 `34ba08c1facf2993d755dedee3641d40f716c0ce1b747cf494b85b41642b8c96`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerMobiusLogLCMProgressionReductionControls

open GRWTSK.RiemannHypothesis

/-- Audit-facing summary of the exact reduction and its remaining frontier. -/
def exactFrontier : List String :=
  ["the centered Mobius-log antidiagonal sum is reindexed by divisor moduli",
   "the centering anchor is retained as an augmented modulus-one index",
   "all four anchor/genuine channels remain in one signed finite block",
   "every actual augmented pair satisfies gcd(D(u),D(v)) divides h",
   "every contributing n lies in the shifted divisibility fiber D(u)|n and D(v)|n+h",
   "any two members of one fiber are congruent modulo lcm(D(u),D(v))",
   "division by that lcm is injective on the fiber",
   "the fiber cardinality is at most floor(4X/lcm)+1",
   "the anchor-anchor fiber is the complete shifted interval",
   "progression sparsity alone therefore leaves the naive exponent two",
   "the lcm-progression supplier is exactly equivalent to the previous congruence supplier",
   "the signed centered lcm-progression bound remains open",
   "no threshold descent or Riemann Hypothesis result is supplied"]

/-- The elementary fiber bound is available without an arithmetic hypothesis. -/
theorem lcmFiberCardinalityClosed
    (X h : ℕ) (u v : Option ℕ) :
    (centeredMobiusLogLCMProgressionFiber X h u v).card ≤
      4 * X /
          Nat.lcm
            (centeredMobiusLogDivisorModulus u)
            (centeredMobiusLogDivisorModulus v) + 1 :=
  centeredMobiusLogLCMProgressionFiber_card_le X h u v

/-- The modulus-one anchor channel is not sparse. -/
theorem anchorAnchorFiberIsFull
    (X h : ℕ) :
    centeredMobiusLogLCMProgressionFiber X h none none =
      Finset.Ioc (2 * X) (4 * X - h) :=
  centeredMobiusLogLCMProgressionFiber_none_none X h

/-- The exact unresolved arithmetic proposition. -/
def remainingArithmeticFrontier : Prop :=
  SevenEighthsBoundaryMinimalMobiusLogLCMProgressionBound

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerMobiusLogLCMProgressionReductionControls
```
