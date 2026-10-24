# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.MatrixPredicateFormats.Variantb3c2ae23632c55ad.WholePredicateFormat

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `913c2a0ce1c2b26d08d5e3bf1942a7a91fb6a720` · SHA-256 `879b3b9e51c3221081e5c2e82619f357702e89feee6047718c36dccc8924198d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
WholePredicateFormat — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: b3c2ae23632c55ad930ddfd1f953f19805ab8e48490aab2b68146e914c0750c9
Organized SHA-256: 2502d79f51fda197b35a45bee3ed2e38e454fad6ddb6095f0024e1cd35ed4d44
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The entire record is a predicate over Nat×Nat→Bool matrices; any/exact/intersection are mathematical predicates, not an authority or runtime validation mechanism. No logical laws beyond the actual constructors are asserted. Original provider identities and all proof bytes retained; no Lean/Lake replay or stronger domain construction. -/

import BooleanMatrix.Matrix.Core

/-!
# BooleanMatrix formats

A format is a validity predicate over the common BooleanMatrix carrier.
-/

namespace BooleanMatrix

/--
A format identifies the matrices considered valid under one interpretation.
-/
structure Format where
  Valid : Matrix → Prop

namespace Format

/-- The unrestricted format accepts every matrix. -/
def any : Format where
  Valid := fun _ => True

/-- A format containing exactly one matrix. -/
def exact (expected : Matrix) : Format where
  Valid := fun matrix => matrix = expected

/-- Conjunction of two matrix formats. -/
def intersection
    (left right : Format) :
    Format where
  Valid := fun matrix =>
    left.Valid matrix ∧ right.Valid matrix

end Format
end BooleanMatrix
```
