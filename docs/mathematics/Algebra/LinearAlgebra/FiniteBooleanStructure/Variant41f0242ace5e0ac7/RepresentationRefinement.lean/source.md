# Complete source: GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant41f0242ace5e0ac7.RepresentationRefinement

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13cd76990a5819f4c963ec6e1b8b96e97b35f2f4` · SHA-256 `ee1d9201d8f931ae9f1adf1342b7c1dc2b0bb97fa2f071bf8e903362aa9185e8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
RepresentationRefinement — exact individually reviewed source
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

import GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant41f0242ace5e0ac7.PointwiseSpecifications

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

/-! ## Explicit refinement relation -/

end BitMatrix.ArrayBacked

namespace BitMatrix

variable {m n : Nat}

/--
`M` refines `A` when the executable representation denotes exactly the
declarative matrix `A`.
-/
def Refines
    (M : BitMatrix.ArrayBacked m n)
    (A : BitMatrix m n) :
    Prop :=
  M.toMatrix = A

end BitMatrix

namespace BitMatrix.ArrayBacked

variable {m n : Nat}

theorem refines_toMatrix
    (M : BitMatrix.ArrayBacked m n) :
    Refines M M.toMatrix :=
  rfl

/--
Unary operations preserve the refinement relation.
-/
theorem mapInPlace_refines
    (f : Bool → Bool)
    {M : BitMatrix.ArrayBacked m n}
    {A : BitMatrix m n}
    (h : Refines M A) :
    Refines
      (M.mapInPlace f)
      (BitMatrix.map f A) := by
  unfold Refines at *
  rw [mapInPlace_spec, h]

/--
Binary operations preserve the refinement relation.
-/
theorem zipWithInPlace_refines
    (f : Bool → Bool → Bool)
    {MA MB : BitMatrix.ArrayBacked m n}
    {A B : BitMatrix m n}
    (hA : Refines MA A)
    (hB : Refines MB B) :
    Refines
      (MA.zipWithInPlace MB f)
      (BitMatrix.zipWith f A B) := by
  unfold Refines at *
  rw [zipWithInPlace_spec, hA, hB]

theorem andInPlace_refines
    {MA MB : BitMatrix.ArrayBacked m n}
    {A B : BitMatrix m n}
    (hA : Refines MA A)
    (hB : Refines MB B) :
    Refines
      (MA.andInPlace MB)
      (BitMatrix.and A B) := by
  simpa [andInPlace, BitMatrix.and] using
    zipWithInPlace_refines
      (m := m)
      (n := n)
      (fun a b => a && b)
      hA
      hB


end BitMatrix.ArrayBacked

end GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant41f0242ace5e0ac7
```
