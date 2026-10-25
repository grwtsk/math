# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.FunctionEquality.ConcreteBooleanMathematics.Variantff1c4d5be5dcb39c.ProductDiagonalAndFixedPointExamples

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5d72fa53f37ff704c6cedffab4843f8fd7d284e` · SHA-256 `1ac46cdf1ee082590475462c5bcaa6de078040338789fc9f1d9cc38e44de8fa4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
ProductDiagonalAndFixedPointExamples — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: ff1c4d5be5dcb39c8ee06bf780d84a10ab53e8a67dadbfecaf50b98a6caf6431
Organized SHA-256: c7bc098aeced07b97c4f24fced632b79ce42045aa175ad5af03c03680ac4493f
PMD: 510.0.070.020.010.030 function equality (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Two exact product-section equations, fixed-set/graph-diagonal equivalence, identity fixed set and singleton-premise consequence on Nat; no topology, global attraction, existence for arbitrary endomaps or geometry theorem. Original source namespaces are retained exactly; mathematical examples remain anonymous commands, not new named theorems. Native_decide, decide, examples and tactics are copied text and have not been executed. Whole original documentation may describe other retained components or historical claimed checked status; no present replay or external program acceptance is asserted. -/

import BitMatrix.Formal
import BitMatrix.Codec.Profiles
import BitMatrix.Geometry.CarrierGrid
import BitMatrix.Runtime.Correspondence
import BitMatrix.Runtime.Semantics
import Mathlib.Tactic

namespace BitMatrix.Tests.Correspondence

open BitMatrix.Carrier

example (point : Nat) :
    BitMatrix.Runtime.Semantics.firstProjection
      (BitMatrix.Runtime.Semantics.diagonalSection point) = point :=
  BitMatrix.Runtime.Semantics.firstProjection_diagonalSection point

example :
    (BitMatrix.Runtime.Semantics.firstProjection :
      BitMatrix.Runtime.Semantics.CarrierProduct Nat → Nat) ∘
        BitMatrix.Runtime.Semantics.diagonalSection = id :=
  BitMatrix.Runtime.Semantics.firstProjection_comp_diagonalSection

example (dynamics : Nat → Nat) (point : Nat) :
    point ∈ BitMatrix.Runtime.Semantics.FixedSet dynamics ↔
      BitMatrix.Runtime.Semantics.LiesOnDiagonal
        (BitMatrix.Runtime.Semantics.graphPoint dynamics point) :=
  BitMatrix.Runtime.Semantics.mem_fixedSet_iff_graphPoint_liesOnDiagonal
    dynamics point

example (dynamics : Nat → Nat) :
    BitMatrix.Runtime.Semantics.FixedPoint dynamics ≃
      BitMatrix.Runtime.Semantics.GraphDiagonalIntersection dynamics :=
  BitMatrix.Runtime.Semantics.fixedPointEquivGraphDiagonalIntersection dynamics

example :
    BitMatrix.Runtime.Semantics.FixedSet (id : Nat → Nat) = Set.univ :=
  BitMatrix.Runtime.Semantics.fixedSet_identity

example (dynamics : Nat → Nat) (equilibrium point : Nat)
    (hfixedSet :
      BitMatrix.Runtime.Semantics.FixedSet dynamics = {equilibrium})
    (hpoint :
      point ∈ BitMatrix.Runtime.Semantics.FixedSet dynamics) :
    point = equilibrium :=
  BitMatrix.Runtime.Semantics.fixedPoint_eq_of_fixedSet_eq_singleton
    hfixedSet hpoint
end BitMatrix.Tests.Correspondence
```
