# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.CountableBooleanPointwiseOperations.Variant9bd72d6ef183613a.BinaryZipAndExclusiveOr

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3bc35d01b82cc123b233922daa3c0e1d2cd0db2` · SHA-256 `3873a75aa5c70fb61bd19c50bd58abd9130bf9583842d6d4d7b4b19e80ea37df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
BinaryZipAndExclusiveOr — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 9bd72d6ef183613a3b47098eb21646f06871253d8492146fc1fd67bbea13fcba
Organized SHA-256: f24d2a7e595d4acdc12b93e7760847088f752739a8f4e2b0da56f213fb97a8df
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete arbitrary Bool→Bool→Bool pointwise combination and its evaluation equation, plus the exact inequality-based exclusive-or definition. Each local zipWith consumer remains with its definition; no group or XOR identities are inferred or executed. -/

import BooleanMatrix.Matrix.Core

/-!
# Pointwise BooleanMatrix operations
-/

namespace BooleanMatrix
namespace Matrix

/-- Combine two matrices entry by entry. -/
def zipWith
    (function : Bool → Bool → Bool)
    (left right : Matrix) :
    Matrix :=
  fun row column =>
    function (left row column) (right row column)

@[simp]
theorem zipWith_apply
    (function : Bool → Bool → Bool)
    (left right : Matrix)
    (row column : Nat) :
    zipWith function left right row column =
      function (left row column) (right row column) :=
  rfl

/-- Pointwise Boolean exclusive-or. -/
def xor (left right : Matrix) : Matrix :=
  zipWith (fun a b => a != b) left right

end Matrix
end BooleanMatrix
```
