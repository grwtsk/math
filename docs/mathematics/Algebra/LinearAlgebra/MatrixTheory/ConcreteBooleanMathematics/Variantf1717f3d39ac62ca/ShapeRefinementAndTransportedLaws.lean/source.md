# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ConcreteBooleanMathematics.Variantf1717f3d39ac62ca.ShapeRefinementAndTransportedLaws

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2dbde784198da7bf3fd640a6874bad06c8438661` · SHA-256 `66426eb78a4e00e0b83bca1a4340a95f8a0877a2f9392f13b246bee9597ddfd7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
ShapeRefinementAndTransportedLaws — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: f1717f3d39ac62ca857bc25969d954b8cdeda541b3c709e50543936d01f7d7c3
Organized SHA-256: eb41e575f0b8093f23f6e8e70bbadfc76275d4531ed69dfeaf725304e7dea372
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Same full private2x3 fixtures, three exact size invariants, five original declarative-refinement equations/relations and two transported observational laws. No proof-carrying representation field is discarded. Original source namespaces are retained exactly; mathematical examples remain anonymous commands, not new named theorems. Native_decide, decide, examples and tactics are copied text and have not been executed. Whole original documentation may describe other retained components or historical claimed checked status; no present replay or external program acceptance is asserted. -/

import BitMatrix.Core.Basic
import Mathlib.Tactic

/-!
# Core BitMatrix tests

Compile-time refinement checks and concrete executable checks for the
array-backed core. This module is test-only and is reached through
`BitMatrix.Tests`.
-/

namespace BitMatrix.Tests.Core

private def a : BitMatrix.ArrayBacked 2 3 :=
  ⟨#[
    true,  false, true,
    false, true,  true
  ], by decide⟩

private def b : BitMatrix.ArrayBacked 2 3 :=
  ⟨#[
    true, true,  false,
    false, true, false
  ], by decide⟩

/-! ## Structural-invariant tests -/

example :
    (a.andInPlace b).data.size = 2 * 3 :=
  (a.andInPlace b).size_eq

example :
    (a.orInPlace b).data.size = 2 * 3 :=
  (a.orInPlace b).size_eq

example :
    a.notInPlace.data.size = 2 * 3 :=
  a.notInPlace.size_eq

/-! ## Refinement tests -/

example :
    (a.andInPlace b).toMatrix =
      BitMatrix.and a.toMatrix b.toMatrix :=
  BitMatrix.ArrayBacked.andInPlace_spec a b

example :
    (a.orInPlace b).toMatrix =
      BitMatrix.or a.toMatrix b.toMatrix :=
  BitMatrix.ArrayBacked.orInPlace_spec a b

example :
    (a.xorInPlace b).toMatrix =
      BitMatrix.xor a.toMatrix b.toMatrix :=
  BitMatrix.ArrayBacked.xorInPlace_spec a b

example :
    a.notInPlace.toMatrix =
      BitMatrix.not a.toMatrix :=
  BitMatrix.ArrayBacked.notInPlace_spec a

example :
    BitMatrix.Refines
      (a.andInPlace b)
      (BitMatrix.and a.toMatrix b.toMatrix) :=
  BitMatrix.ArrayBacked.andInPlace_refines
    (BitMatrix.ArrayBacked.refines_toMatrix a)
    (BitMatrix.ArrayBacked.refines_toMatrix b)

/-! ## Laws transported through the declarative cover -/

example :
    (a.andInPlace b).toMatrix =
      (b.andInPlace a).toMatrix :=
  BitMatrix.ArrayBacked.andInPlace_comm_toMatrix a b

example :
    a.notInPlace.notInPlace.toMatrix =
      a.toMatrix :=
  BitMatrix.ArrayBacked.notInPlace_involutive_toMatrix a

end BitMatrix.Tests.Core
```
