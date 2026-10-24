# Complete source: GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.FixedPointCounting.ConcreteBooleanMathematics.Variantd8cb463b818e187b.DivisorMobiusAndFiniteEulerCounts

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4bdc9f3799087c2f0e2792f8a1921bfa7c7d269` · SHA-256 `b6a9e2cdcd1d4e111b7e8b2e30de1c1ca256526dd330cc14248f39b0b30762f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
DivisorMobiusAndFiniteEulerCounts — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: d8cb463b818e187b3b8346defe890d918b3c224107d506a88d67356890cf4bae
Organized SHA-256: f45cb02a599e5f7cc8a875e686a4f427081f0b61bc4b9f36fa1f14592269d640
PMD: 510.1.030.010.050.020 fixed point counting (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Two exact positive-time divisor-sum/Mobius examples and three finitely supported Euler-exponent evaluations. Import only same-source public rotation definitions; no analytic Euler-product convergence or new provider identity. Original source namespaces are retained exactly; mathematical examples remain anonymous commands, not new named theorems. Native_decide, decide, examples and tactics are copied text and have not been executed. Whole original documentation may describe other retained components or historical claimed checked status; no present replay or external program acceptance is asserted. -/

import BitMatrix.Dynamics.DynamicalZeta
import Mathlib.Logic.Equiv.Fin.Rotate

import GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.FixedPointCounting.ConcreteBooleanMathematics.Variantd8cb463b818e187b.RotationStateAndCycleCounts

/-!
# Concrete finite-cycle tests

The three-coordinate rotation acts on eight Boolean states as two fixed points,
one three-cycle of weight-one states, and one three-cycle of weight-two states.
These executable checks validate the exact cycle, fixed-point, Möbius, and
finite Euler-factor interfaces on that decomposition.
-/

namespace BitMatrix.Tests.DynamicalZeta

open BitMatrix.Reduction.SAT
open BitMatrix.Algebra.Symmetry
open BitMatrix.Dynamics.DynamicalZeta
open BitMatrix.Network.Permutation
open scoped BigOperators

example :
    fixedPointCount zetaRotate3 3 =
      ∑ d ∈ Nat.divisors 3, d * cycleCount zetaRotate3 d :=
  fixedPointCount_eq_sum_mul_cycleCount zetaRotate3 (by decide)

example :
    (((3 * cycleCount zetaRotate3 3 : Nat) : ℤ)) =
      ∑ d ∈ Nat.divisors 3,
        (ArithmeticFunction.moebius (3 / d) : ℤ) *
          (fixedPointCount zetaRotate3 d : ℤ) :=
  cycleCount_mobius zetaRotate3 (by decide)

example : cycleEulerFactorData zetaRotate3 1 = 2 := by
  native_decide

example : cycleEulerFactorData zetaRotate3 3 = 2 := by
  native_decide

example : cycleEulerFactorData zetaRotate3 4 = 0 := by
  native_decide

end BitMatrix.Tests.DynamicalZeta
```
