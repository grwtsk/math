# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ConcreteBooleanMathematics.Variantf1717f3d39ac62ca.ConcretePointwiseOperations

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff42f787509a9b83e00ea330c4291529229b35f0` · SHA-256 `5ac0f9a500556849b4a960215abac035a5604094c2a9f7efee909c72d1c3a260`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
ConcretePointwiseOperations — exact individually reviewed source
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

/- Exact2x3 fixtures and four pointwise AND/OR/XOR/NOT equations; no destructive-runtime or performance claim. Both private fixtures are deliberately copied unchanged into each independent module, never exported or renamed. Original source namespaces are retained exactly; mathematical examples remain anonymous commands, not new named theorems. Native_decide, decide, examples and tactics are copied text and have not been executed. Whole original documentation may describe other retained components or historical claimed checked status; no present replay or external program acceptance is asserted. -/

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

/-! ## Concrete computation tests -/

example :
    (a.andInPlace b).data =
      #[true, false, false, false, true, false] := by
  native_decide

example :
    (a.orInPlace b).data =
      #[true, true, true, false, true, true] := by
  native_decide

example :
    (a.xorInPlace b).data =
      #[false, true, true, false, false, true] := by
  native_decide

example :
    a.notInPlace.data =
      #[false, true, false, true, false, false] := by
  native_decide

end BitMatrix.Tests.Core
```
