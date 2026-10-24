# Complete source: GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant41f0242ace5e0ac7.RowMajorArrayRepresentation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d377dfca894cf45fa0178a946fb7d8c3d059a00` · SHA-256 `3a0e8d2c7c2d30f49ef8f1b108aa0a552c243da14835dc3b18607abb4ce16eb3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
RowMajorArrayRepresentation — exact individually reviewed source
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

/- The whole row-major array representation retains the dependent size invariant, bounded flat-index proof, checked constructor, fill/get/toMatrix, generic pure mapFinIdx operations with their complete proofs and all four Boolean specializations. The source runtime reuse comments remain original notices, not newly verified performance claims. -/

import Mathlib.Data.Matrix.Basic
import Init.Data.Array.MapIdx

import GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant41f0242ace5e0ac7.DeclarativeBooleanMatrices

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

/-! ## Array-backed implementation -/

/--
A flat, row-major binary matrix.

The dependent field `size_eq` makes malformed matrices unrepresentable: any
value of `BitMatrix.ArrayBacked m n` must contain exactly `m * n` elements.
-/
structure BitMatrix.ArrayBacked (m n : Nat) where
  data : Array Bool
  size_eq : data.size = m * n

namespace BitMatrix.ArrayBacked

variable {m n : Nat}

/--
Convert a two-dimensional index into a row-major flat index.

The return type itself records that the generated offset is in bounds.
-/
@[inline]
def flatIdx
    (i : Fin m)
    (j : Fin n) :
    Fin (m * n) := by
  refine ⟨i.val * n + j.val, ?_⟩
  calc
    i.val * n + j.val < i.val * n + n :=
      Nat.add_lt_add_left j.isLt (i.val * n)
    _ = (i.val + 1) * n := by
      simp [Nat.add_mul]
    _ ≤ m * n :=
      Nat.mul_le_mul_right n (Nat.succ_le_of_lt i.isLt)

/--
Safely construct an implementation matrix from an arbitrary array.

The size check is performed only at this external construction boundary.
Once constructed, subsequent operations preserve the invariant statically.
-/
def ofArray?
    (m n : Nat)
    (data : Array Bool) :
    Option (BitMatrix.ArrayBacked m n) :=
  if h : data.size = m * n then
    some ⟨data, h⟩
  else
    none

/-- Construct a matrix whose entries all contain `value`. -/
@[inline]
def fill
    (m n : Nat)
    (value : Bool) :
    BitMatrix.ArrayBacked m n :=
  ⟨Array.replicate (m * n) value, by simp⟩

/--
Read a flat implementation index.

No runtime bounds check is required by the logical interface: `k` carries its
bound, and `size_eq` transports that bound to the underlying array.
-/
@[inline]
def get
    (M : BitMatrix.ArrayBacked m n)
    (k : Fin (m * n)) :
    Bool :=
  M.data[k.val]'(M.size_eq.symm ▸ k.isLt)

/--
Expose an implementation matrix through its declarative mathematical meaning.
-/
@[inline]
def toMatrix
    (M : BitMatrix.ArrayBacked m n) :
    BitMatrix m n :=
  Matrix.of fun i j => M.get (flatIdx i j)

/--
Apply a unary operation to every matrix entry.

`Array.mapFinIdx` has a pure logical interpretation but uses a destructive
runtime implementation when the array is uniquely owned.
-/
@[inline]
def mapInPlace
    (A : BitMatrix.ArrayBacked m n)
    (f : Bool → Bool) :
    BitMatrix.ArrayBacked m n :=
  ⟨A.data.mapFinIdx (fun _ a _ => f a), by
    simpa using A.size_eq⟩

/--
Apply a binary operation pointwise.

The output reuses `A.data` when it is uniquely owned. The proof passed while
reading `B.data` is derived statically from both matrices' dimension invariants.
-/
@[inline]
def zipWithInPlace
    (A B : BitMatrix.ArrayBacked m n)
    (f : Bool → Bool → Bool) :
    BitMatrix.ArrayBacked m n :=
  ⟨A.data.mapFinIdx fun k a hk =>
      let hb : k < B.data.size := by
        have hmn : k < m * n := A.size_eq ▸ hk
        exact B.size_eq.symm ▸ hmn
      f a (B.data[k]'hb),
    by simpa using A.size_eq⟩

/-! ### Primitive optimized operations -/

@[inline]
def andInPlace
    (A B : BitMatrix.ArrayBacked m n) :
    BitMatrix.ArrayBacked m n :=
  A.zipWithInPlace B (fun a b => a && b)

@[inline]
def orInPlace
    (A B : BitMatrix.ArrayBacked m n) :
    BitMatrix.ArrayBacked m n :=
  A.zipWithInPlace B (fun a b => a || b)

@[inline]
def xorInPlace
    (A B : BitMatrix.ArrayBacked m n) :
    BitMatrix.ArrayBacked m n :=
  A.zipWithInPlace B (fun a b => a != b)

@[inline]
def notInPlace
    (A : BitMatrix.ArrayBacked m n) :
    BitMatrix.ArrayBacked m n :=
  A.mapInPlace fun a => !a


end BitMatrix.ArrayBacked

end GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant41f0242ace5e0ac7
```
