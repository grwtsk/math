# Complete source: GRWTSK.Algebra.LinearAlgebra.BinaryMatrix.Variant13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `702913a371aa7b2651aad0b55160b65e53a8cd93` · SHA-256 `13584d77a2145cf7c875c4f24887973ea50f9c6e9ba7c07bdc008e8b73867a84`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Matrix.Basic
import Init.Data.Array.MapIdx

/-!
# BinaryMatrix

A refinement architecture for binary matrices:

* `BinMat m n` is the declarative, mathematical interface.
* `BinMatMut m n` is the flat, array-backed implementation.
* `BinMatMut.toDecl` exposes an implementation as a mathematical matrix.
* Refinement theorems prove that optimized operations implement their
  declarative specifications.

The implementation uses row-major indexing:

    flatIdx i j = i * n + j

`Array.mapFinIdx` has a pure logical definition, but Lean's runtime replaces it
with an implementation that can destructively reuse uniquely owned arrays.
-/

/-! ## Declarative interface -/

/--
A declarative binary matrix.

This is an abbreviation of Mathlib's function-based matrix representation, so
function extensionality, rewriting, and simplification work directly.
-/
abbrev BinMat (m n : Nat) :=
  Matrix (Fin m) (Fin n) Bool

namespace BinMat

variable {m n : Nat}

/-- Pointwise unary operation on a declarative matrix. -/
@[inline]
def map (f : Bool → Bool) (A : BinMat m n) : BinMat m n :=
  Matrix.of fun i j => f (A i j)

/-- Pointwise binary operation on two declarative matrices. -/
@[inline]
def zipWith
    (f : Bool → Bool → Bool)
    (A B : BinMat m n) :
    BinMat m n :=
  Matrix.of fun i j => f (A i j) (B i j)

/-- Pointwise Boolean conjunction. -/
@[inline]
def and (A B : BinMat m n) : BinMat m n :=
  zipWith (fun a b => a && b) A B

/-- Pointwise Boolean disjunction. -/
@[inline]
def or (A B : BinMat m n) : BinMat m n :=
  zipWith (fun a b => a || b) A B

/-- Pointwise exclusive disjunction. -/
@[inline]
def xor (A B : BinMat m n) : BinMat m n :=
  zipWith (fun a b => a != b) A B

/-- Pointwise Boolean negation. -/
@[inline]
def not (A : BinMat m n) : BinMat m n :=
  map (fun a => !a) A

@[simp]
theorem map_apply
    (f : Bool → Bool)
    (A : BinMat m n)
    (i : Fin m)
    (j : Fin n) :
    map f A i j = f (A i j) :=
  rfl

@[simp]
theorem zipWith_apply
    (f : Bool → Bool → Bool)
    (A B : BinMat m n)
    (i : Fin m)
    (j : Fin n) :
    zipWith f A B i j = f (A i j) (B i j) :=
  rfl

@[simp]
theorem and_apply
    (A B : BinMat m n)
    (i : Fin m)
    (j : Fin n) :
    and A B i j = (A i j && B i j) :=
  rfl

@[simp]
theorem or_apply
    (A B : BinMat m n)
    (i : Fin m)
    (j : Fin n) :
    or A B i j = (A i j || B i j) :=
  rfl

@[simp]
theorem xor_apply
    (A B : BinMat m n)
    (i : Fin m)
    (j : Fin n) :
    xor A B i j = (A i j != B i j) :=
  rfl

@[simp]
theorem not_apply
    (A : BinMat m n)
    (i : Fin m)
    (j : Fin n) :
    not A i j = !(A i j) :=
  rfl

/-- Extensional equality specialized to binary matrices. -/
@[ext]
theorem ext
    {A B : BinMat m n}
    (h : ∀ i j, A i j = B i j) :
    A = B := by
  funext i j
  exact h i j

theorem and_comm (A B : BinMat m n) :
    and A B = and B A := by
  apply ext
  intro i j
  cases hA : A i j <;>
    cases hB : B i j <;>
    simp [and, zipWith, hA, hB]

theorem and_assoc (A B C : BinMat m n) :
    and (and A B) C = and A (and B C) := by
  apply ext
  intro i j
  cases hA : A i j <;>
    cases hB : B i j <;>
    cases hC : C i j <;>
    simp [and, zipWith, hA, hB, hC]

theorem or_comm (A B : BinMat m n) :
    or A B = or B A := by
  apply ext
  intro i j
  cases hA : A i j <;>
    cases hB : B i j <;>
    simp [or, zipWith, hA, hB]

theorem xor_comm (A B : BinMat m n) :
    xor A B = xor B A := by
  apply ext
  intro i j
  cases hA : A i j <;>
    cases hB : B i j <;>
    simp [xor, zipWith, hA, hB]

theorem not_not (A : BinMat m n) :
    not (not A) = A := by
  apply ext
  intro i j
  cases h : A i j <;>
    simp [not, map, h]

end BinMat


/-! ## Array-backed implementation -/

/--
A flat, row-major binary matrix.

The dependent field `size_eq` makes malformed matrices unrepresentable: any
value of `BinMatMut m n` must contain exactly `m * n` elements.
-/
structure BinMatMut (m n : Nat) where
  data : Array Bool
  size_eq : data.size = m * n

namespace BinMatMut

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
    Option (BinMatMut m n) :=
  if h : data.size = m * n then
    some ⟨data, h⟩
  else
    none

/-- Construct a matrix whose entries all contain `value`. -/
@[inline]
def fill
    (m n : Nat)
    (value : Bool) :
    BinMatMut m n :=
  ⟨Array.replicate (m * n) value, by simp⟩

/--
Read a flat implementation index.

No runtime bounds check is required by the logical interface: `k` carries its
bound, and `size_eq` transports that bound to the underlying array.
-/
@[inline]
def get
    (M : BinMatMut m n)
    (k : Fin (m * n)) :
    Bool :=
  M.data[k.val]'(M.size_eq.symm ▸ k.isLt)

/--
Expose an implementation matrix through its declarative mathematical meaning.
-/
@[inline]
def toDecl
    (M : BinMatMut m n) :
    BinMat m n :=
  Matrix.of fun i j => M.get (flatIdx i j)

/--
Apply a unary operation to every matrix entry.

`Array.mapFinIdx` has a pure logical interpretation but uses a destructive
runtime implementation when the array is uniquely owned.
-/
@[inline]
def mapInPlace
    (A : BinMatMut m n)
    (f : Bool → Bool) :
    BinMatMut m n :=
  ⟨A.data.mapFinIdx (fun _ a _ => f a), by
    simpa using A.size_eq⟩

/--
Apply a binary operation pointwise.

The output reuses `A.data` when it is uniquely owned. The proof passed while
reading `B.data` is derived statically from both matrices' dimension invariants.
-/
@[inline]
def zipWithInPlace
    (A B : BinMatMut m n)
    (f : Bool → Bool → Bool) :
    BinMatMut m n :=
  ⟨A.data.mapFinIdx fun k a hk =>
      let hb : k < B.data.size := by
        have hmn : k < m * n := A.size_eq ▸ hk
        exact B.size_eq.symm ▸ hmn
      f a (B.data[k]'hb),
    by simpa using A.size_eq⟩

/-! ### Primitive optimized operations -/

@[inline]
def andInPlace
    (A B : BinMatMut m n) :
    BinMatMut m n :=
  A.zipWithInPlace B (fun a b => a && b)

@[inline]
def orInPlace
    (A B : BinMatMut m n) :
    BinMatMut m n :=
  A.zipWithInPlace B (fun a b => a || b)

@[inline]
def xorInPlace
    (A B : BinMatMut m n) :
    BinMatMut m n :=
  A.zipWithInPlace B (fun a b => a != b)

@[inline]
def notInPlace
    (A : BinMatMut m n) :
    BinMatMut m n :=
  A.mapInPlace fun a => !a


/-! ## Verification interface -/

/--
Element-level specification for the unary imperative kernel.
-/
@[simp]
theorem get_mapInPlace
    (A : BinMatMut m n)
    (f : Bool → Bool)
    (k : Fin (m * n)) :
    (A.mapInPlace f).get k = f (A.get k) := by
  simp [mapInPlace, get]

/--
Element-level specification for the binary imperative kernel.
-/
@[simp]
theorem get_zipWithInPlace
    (A B : BinMatMut m n)
    (f : Bool → Bool → Bool)
    (k : Fin (m * n)) :
    (A.zipWithInPlace B f).get k =
      f (A.get k) (B.get k) := by
  simp [zipWithInPlace, get]

/--
Generic unary refinement theorem.

The implementation operation and the declarative operation commute through
`toDecl`.
-/
theorem mapInPlace_spec
    (A : BinMatMut m n)
    (f : Bool → Bool) :
    (A.mapInPlace f).toDecl =
      BinMat.map f A.toDecl := by
  apply BinMat.ext
  intro i j
  simp [toDecl, BinMat.map]

/--
Generic binary refinement theorem.

This theorem is the central reusable proof: every pointwise binary operation
inherits its correctness from it.
-/
theorem zipWithInPlace_spec
    (A B : BinMatMut m n)
    (f : Bool → Bool → Bool) :
    (A.zipWithInPlace B f).toDecl =
      BinMat.zipWith f A.toDecl B.toDecl := by
  apply BinMat.ext
  intro i j
  simp [toDecl, BinMat.zipWith]

theorem andInPlace_spec
    (A B : BinMatMut m n) :
    (A.andInPlace B).toDecl =
      BinMat.and A.toDecl B.toDecl := by
  simpa [andInPlace, BinMat.and] using
    A.zipWithInPlace_spec B (fun a b => a && b)

theorem orInPlace_spec
    (A B : BinMatMut m n) :
    (A.orInPlace B).toDecl =
      BinMat.or A.toDecl B.toDecl := by
  simpa [orInPlace, BinMat.or] using
    A.zipWithInPlace_spec B (fun a b => a || b)

theorem xorInPlace_spec
    (A B : BinMatMut m n) :
    (A.xorInPlace B).toDecl =
      BinMat.xor A.toDecl B.toDecl := by
  simpa [xorInPlace, BinMat.xor] using
    A.zipWithInPlace_spec B (fun a b => a != b)

theorem notInPlace_spec
    (A : BinMatMut m n) :
    A.notInPlace.toDecl =
      BinMat.not A.toDecl := by
  simpa [notInPlace, BinMat.not] using
    A.mapInPlace_spec (fun a => !a)


/-! ## Explicit refinement relation -/

/--
`M` refines `A` when the executable representation denotes exactly the
declarative matrix `A`.
-/
def Refines
    (M : BinMatMut m n)
    (A : BinMat m n) :
    Prop :=
  M.toDecl = A

theorem refines_toDecl
    (M : BinMatMut m n) :
    Refines M M.toDecl :=
  rfl

/--
Unary operations preserve the refinement relation.
-/
theorem mapInPlace_refines
    (f : Bool → Bool)
    {M : BinMatMut m n}
    {A : BinMat m n}
    (h : Refines M A) :
    Refines
      (M.mapInPlace f)
      (BinMat.map f A) := by
  unfold Refines at *
  rw [mapInPlace_spec, h]

/--
Binary operations preserve the refinement relation.
-/
theorem zipWithInPlace_refines
    (f : Bool → Bool → Bool)
    {MA MB : BinMatMut m n}
    {A B : BinMat m n}
    (hA : Refines MA A)
    (hB : Refines MB B) :
    Refines
      (MA.zipWithInPlace MB f)
      (BinMat.zipWith f A B) := by
  unfold Refines at *
  rw [zipWithInPlace_spec, hA, hB]

theorem andInPlace_refines
    {MA MB : BinMatMut m n}
    {A B : BinMat m n}
    (hA : Refines MA A)
    (hB : Refines MB B) :
    Refines
      (MA.andInPlace MB)
      (BinMat.and A B) := by
  simpa [andInPlace, BinMat.and] using
    zipWithInPlace_refines
      (m := m)
      (n := n)
      (fun a b => a && b)
      hA
      hB


/-! ## Transporting mathematical laws through the cover -/

/--
The executable AND implementation is commutative observationally.

No commutativity proof is performed against arrays or loops. Both sides are
mapped to the declarative interface, where the mathematical law is immediate.
-/
theorem andInPlace_comm_toDecl
    (A B : BinMatMut m n) :
    (A.andInPlace B).toDecl =
      (B.andInPlace A).toDecl := by
  rw [andInPlace_spec, andInPlace_spec]
  exact BinMat.and_comm A.toDecl B.toDecl

theorem andInPlace_assoc_toDecl
    (A B C : BinMatMut m n) :
    ((A.andInPlace B).andInPlace C).toDecl =
      (A.andInPlace (B.andInPlace C)).toDecl := by
  rw [andInPlace_spec, andInPlace_spec]
  rw [andInPlace_spec, andInPlace_spec]
  exact BinMat.and_assoc A.toDecl B.toDecl C.toDecl

theorem notInPlace_involutive_toDecl
    (A : BinMatMut m n) :
    A.notInPlace.notInPlace.toDecl =
      A.toDecl := by
  rw [notInPlace_spec, notInPlace_spec]
  exact BinMat.not_not A.toDecl

end BinMatMut
```
