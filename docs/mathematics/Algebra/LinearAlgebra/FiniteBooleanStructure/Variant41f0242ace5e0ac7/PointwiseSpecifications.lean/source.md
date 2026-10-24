# Complete source: GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant41f0242ace5e0ac7.PointwiseSpecifications

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b167bd8e1c68b62f0065b1f233f43db9f8cab42` · SHA-256 `d46201d29ba9f5a9964f609181e4e7525fd93cdd2a73ffea616ccf39c15baf8b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
PointwiseSpecifications — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2
Organized SHA-256: aeb5bc3a1cc5d4289c7d83f2ef3385d9aa15a3afec00ce430738eebd935e383c
PMD: 510.1.070 linear algebra (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete pointwise element specifications and toMatrix operation specifications are separate from the exact Refines relation and its full unary/binary/conjunction preservation proofs; all arbitrary operations, dimensions and refinement hypotheses remain unchanged. -/

import Mathlib.Data.Matrix.Basic
import Init.Data.Array.MapIdx

import GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant41f0242ace5e0ac7.RowMajorArrayRepresentation

/-!
# BitMatrix

A refinement architecture for binary matrices:

* `BitMatrix m n` is the declarative, mathematical interface.
* `BitMatrix.ArrayBacked m n` is the flat, array-backed implementation.
* `BitMatrix.ArrayBacked.toMatrix` exposes an implementation as a mathematical matrix.
* Refinement theorems prove that optimized operations implement their
  declarative specifications.

The implementation uses row-major indexing:

    flatIdx i j = i * n + j

`Array.mapFinIdx` has a pure logical definition, but Lean's runtime replaces it
with an implementation that can destructively reuse uniquely owned arrays.
-/

/-! ## Declarative interface -/

namespace GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant41f0242ace5e0ac7

namespace BitMatrix.ArrayBacked

variable {m n : Nat}

/-! ## Verification interface -/

/--
Element-level specification for the unary imperative kernel.
-/
@[simp]
theorem get_mapInPlace
    (A : BitMatrix.ArrayBacked m n)
    (f : Bool → Bool)
    (k : Fin (m * n)) :
    (A.mapInPlace f).get k = f (A.get k) := by
  simp [mapInPlace, get]

/--
Element-level specification for the binary imperative kernel.
-/
@[simp]
theorem get_zipWithInPlace
    (A B : BitMatrix.ArrayBacked m n)
    (f : Bool → Bool → Bool)
    (k : Fin (m * n)) :
    (A.zipWithInPlace B f).get k =
      f (A.get k) (B.get k) := by
  simp [zipWithInPlace, get]

/--
Generic unary refinement theorem.

The implementation operation and the declarative operation commute through
`toMatrix`.
-/
theorem mapInPlace_spec
    (A : BitMatrix.ArrayBacked m n)
    (f : Bool → Bool) :
    (A.mapInPlace f).toMatrix =
      BitMatrix.map f A.toMatrix := by
  apply BitMatrix.ext
  intro i j
  simp [toMatrix, BitMatrix.map]

/--
Generic binary refinement theorem.

This theorem is the central reusable proof: every pointwise binary operation
inherits its correctness from it.
-/
theorem zipWithInPlace_spec
    (A B : BitMatrix.ArrayBacked m n)
    (f : Bool → Bool → Bool) :
    (A.zipWithInPlace B f).toMatrix =
      BitMatrix.zipWith f A.toMatrix B.toMatrix := by
  apply BitMatrix.ext
  intro i j
  simp [toMatrix, BitMatrix.zipWith]

theorem andInPlace_spec
    (A B : BitMatrix.ArrayBacked m n) :
    (A.andInPlace B).toMatrix =
      BitMatrix.and A.toMatrix B.toMatrix := by
  simpa [andInPlace, BitMatrix.and] using
    A.zipWithInPlace_spec B (fun a b => a && b)

theorem orInPlace_spec
    (A B : BitMatrix.ArrayBacked m n) :
    (A.orInPlace B).toMatrix =
      BitMatrix.or A.toMatrix B.toMatrix := by
  simpa [orInPlace, BitMatrix.or] using
    A.zipWithInPlace_spec B (fun a b => a || b)

theorem xorInPlace_spec
    (A B : BitMatrix.ArrayBacked m n) :
    (A.xorInPlace B).toMatrix =
      BitMatrix.xor A.toMatrix B.toMatrix := by
  simpa [xorInPlace, BitMatrix.xor] using
    A.zipWithInPlace_spec B (fun a b => a != b)

theorem notInPlace_spec
    (A : BitMatrix.ArrayBacked m n) :
    A.notInPlace.toMatrix =
      BitMatrix.not A.toMatrix := by
  simpa [notInPlace, BitMatrix.not] using
    A.mapInPlace_spec (fun a => !a)


end BitMatrix.ArrayBacked

end GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant41f0242ace5e0ac7
```
