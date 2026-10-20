/-
ObservationalBooleanLaws — exact individually reviewed source
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

/- Observational commutativity, associativity and negation involution are separate complete laws transported through toMatrix. No raw-array equality, destructive runtime guarantee, imperative loop verification or new performance claim is inferred. -/

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

/-! ## Transporting mathematical laws through the cover -/

/--
The executable AND implementation is commutative observationally.

No commutativity proof is performed against arrays or loops. Both sides are
mapped to the declarative interface, where the mathematical law is immediate.
-/
theorem andInPlace_comm_toMatrix
    (A B : BitMatrix.ArrayBacked m n) :
    (A.andInPlace B).toMatrix =
      (B.andInPlace A).toMatrix := by
  rw [andInPlace_spec, andInPlace_spec]
  exact BitMatrix.and_comm A.toMatrix B.toMatrix

theorem andInPlace_assoc_toMatrix
    (A B C : BitMatrix.ArrayBacked m n) :
    ((A.andInPlace B).andInPlace C).toMatrix =
      (A.andInPlace (B.andInPlace C)).toMatrix := by
  rw [andInPlace_spec, andInPlace_spec]
  rw [andInPlace_spec, andInPlace_spec]
  exact BitMatrix.and_assoc A.toMatrix B.toMatrix C.toMatrix

theorem notInPlace_involutive_toMatrix
    (A : BitMatrix.ArrayBacked m n) :
    A.notInPlace.notInPlace.toMatrix =
      A.toMatrix := by
  rw [notInPlace_spec, notInPlace_spec]
  exact BitMatrix.not_not A.toMatrix

end BitMatrix.ArrayBacked

end GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant41f0242ace5e0ac7
