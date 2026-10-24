# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.ThreeBitMarginalBalanceWitnesses.Variant50b38a23487e8948.InvolutionSACAndCorrelatedCoordinates

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2159ea1bbe02e5cd6b5751a7c2c21f61b944c75e` · SHA-256 `126f958f65d91d3b019f3ba41fd6ec2ceffc7b36410d6e78bb7e34591a0f47bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
InvolutionSACAndCorrelatedCoordinates — exact original finite mathematical examples
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 50b38a23487e894834720cf1c73664719eec20b7e8009a57548603467d122bbe
Organized SHA-256: e6846df7587be550c6c98d78c78e0d3da4d6f120ce5a503b89082ff13eb9ef2c
PMD: 510.8.010.010.070 independence (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The exact011/100 swap, its involution and bijectivity, strict marginal balance, two scores and maximal nonzero pair correlation remain together; the positive-width identity score examples retain their supplied proof arguments. No joint independence, security property or native proof execution is asserted. Original decide/native_decide proof text is retained without execution or proof acceptance. -/

import BitMatrix.Dynamics.Avalanche

/-!
# Concrete avalanche tests

The permutation below swaps `011` and `100` and fixes the other six three-bit
vectors.  Exact finite evaluation proves that it is bijective and has perfect
SAC marginals, while two output-flip coordinates remain perfectly correlated.
Thus marginal avalanche balance does not imply joint independence.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.ThreeBitMarginalBalanceWitnesses.Variant50b38a23487e8948

namespace BitMatrix.Tests.Avalanche

open BitMatrix.Reduction.SAT
open BitMatrix.Dynamics.Avalanche

/-- The three-bit vector `011`, with coordinates read from index `0` upward. -/
def bits011 : Bits 3 :=
  fun i => i.val != 0

/-- The three-bit vector `100`, with coordinates read from index `0` upward. -/
def bits100 : Bits 3 :=
  fun i => i.val == 0

/-- Swap `011` and `100`, fixing every other three-bit vector. -/
def swap011100 (x : Bits 3) : Bits 3 :=
  if x = bits011 then
    bits100
  else if x = bits100 then
    bits011
  else
    x

/-- The concrete swap is its own inverse. -/
theorem swap011100_involutive : Function.Involutive swap011100 := by
  unfold Function.Involutive
  native_decide

/-- Every involution is bijective. -/
theorem swap011100_bijective : Function.Bijective swap011100 :=
  swap011100_involutive.bijective

example : StrictSAC swap011100 := by
  unfold StrictSAC
  native_decide

example : sacScore swap011100 = 1 := by
  native_decide

example : varianceScore swap011100 = 1 := by
  native_decide

/--
For input direction zero, output-flip coordinates one and two always agree,
so their unnormalized sign correlation is the maximal value eight.
-/
example :
    correlationNumerator swap011100
      (0 : Fin 3) (1 : Fin 3) (2 : Fin 3) = 8 := by
  native_decide

example :
    correlationNumerator swap011100
      (0 : Fin 3) (1 : Fin 3) (2 : Fin 3) ≠ 0 := by
  native_decide

/-! Concrete checks of the identity-map counterexample and Jacobian image. -/

example : sacScore (id : Bits 3 → Bits 3) = 0 :=
  identity_sacScore (by decide)

example : varianceScore (id : Bits 3 → Bits 3) = 0 :=
  identity_varianceScore (by decide)

end BitMatrix.Tests.Avalanche

end GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.ThreeBitMarginalBalanceWitnesses.Variant50b38a23487e8948
```
