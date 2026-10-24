# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.CountableBooleanMatrices.Variant8e457ae93b872fb8.ZeroMatrixAndEvaluation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `226e36b3de5c2689c8fc57f24f71817ccbb75722` · SHA-256 `faf5c07dcff7f8d1d2e8a81c0da1f70ffd7197e5597762cc33f159f5dba43225`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
ZeroMatrixAndEvaluation — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 8e457ae93b872fb8d8a46389ab0d2d6ee6c6b439146eca88e55d5b434fc42164
Organized SHA-256: 00b5fa3020986dd28c3d2ecf0e4cd42ea1014c28bda25e0b5a918791e6a5c6aa
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The exact constant-false matrix and rfl evaluation theorem use the same-source carrier companion. Original Matrix namespace control is copied, not approximated by a new alias. No addition, multiplication, finite support or zero law beyond the actual entry equation is claimed. -/

import Std

import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.CountableBooleanMatrices.Variant8e457ae93b872fb8.CarrierAndEntrywiseExtensionality
/-!
# BooleanMatrix carrier

The universal carrier is a Boolean matrix indexed by two natural numbers.
-/

namespace BooleanMatrix

namespace Matrix

/-- The matrix containing `false` at every coordinate. -/
def empty : Matrix :=
  fun _ _ => false

@[simp]
theorem empty_apply (row column : Nat) :
    empty row column = false :=
  rfl

end Matrix

end BooleanMatrix
```
