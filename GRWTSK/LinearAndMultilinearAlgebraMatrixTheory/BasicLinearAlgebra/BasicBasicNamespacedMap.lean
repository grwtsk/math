-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.BitMatrixArrayBacked.Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.BitMatrixArrayBacked.Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Core/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Matrix.Basic
import Init.Data.Array.MapIdx

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


namespace GRWTSK.Algebra.LinearAlgebra.BitMatrixArrayBacked.Variant41f0242ace5e0ac7cfa9f6f682cebf8a255f8dde450dc87bbdc6788183dccfe2

/--
A declarative binary matrix.

This is an abbreviation of Mathlib's function-based matrix representation, so
function extensionality, rewriting, and simplification work directly.
-/
abbrev BitMatrix (m n : Nat) :=
  Matrix (Fin m) (Fin n) Bool

namespace BitMatrix

variable {m n : Nat}

/-- Pointwise unary operation on a declarative matrix. -/
@[inline]
def map (f : Bool → Bool) (A : BitMatrix m n) : BitMatrix m n :=
  Matrix.of fun i j => f (A i j)

/-- Pointwise binary operation on two declarative matrices. -/
@[inline]
def zipWith
    (f : Bool → Bool → Bool)
    (A B : BitMatrix m n) :
    BitMatrix m n :=
  Matrix.of fun i j => f (A i j) (B i j)

/-- Pointwise Boolean conjunction. -/
@[inline]
def and (A B : BitMatrix m n) : BitMatrix m n :=
  zipWith (fun a b => a && b) A B

/-- Pointwise Boolean disjunction. -/
@[inline]
def or (A B : BitMatrix m n) : BitMatrix m n :=
  zipWith (fun a b => a || b) A B

/-- Pointwise exclusive disjunction. -/
@[inline]
def xor (A B : BitMatrix m n) : BitMatrix m n :=
  zipWith (fun a b => a != b) A B

/-- Pointwise Boolean negation. -/
@[inline]
def not (A : BitMatrix m n) : BitMatrix m n :=
  map (fun a => !a) A

@[simp]
theorem map_apply
    (f : Bool → Bool)
    (A : BitMatrix m n)
    (i : Fin m)
    (j : Fin n) :
    map f A i j = f (A i j) :=
  rfl

@[simp]
theorem zipWith_apply
    (f : Bool → Bool → Bool)
    (A B : BitMatrix m n)
    (i : Fin m)
    (j : Fin n) :
    zipWith f A B i j = f (A i j) (B i j) :=
  rfl

@[simp]
theorem and_apply
    (A B : BitMatrix m n)
    (i : Fin m)
    (j : Fin n) :
    and A B i j = (A i j && B i j) :=
  rfl

@[simp]
theorem or_apply
    (A B : BitMatrix m n)
    (i : Fin m)
    (j : Fin n) :
    or A B i j = (A i j || B i j) :=
  rfl

@[simp]
theorem xor_apply
    (A B : BitMatrix m n)
    (i : Fin m)
    (j : Fin n) :
    xor A B i j = (A i j != B i j) :=
  rfl

@[simp]
theorem not_apply
    (A : BitMatrix m n)
    (i : Fin m)
    (j : Fin n) :
    not A i j = !(A i j) :=
  rfl

/-- Extensional equality specialized to binary matrices. -/
@[ext]
theorem ext
    {A B : BitMatrix m n}
    (h : ∀ i j, A i j = B i j) :
    A = B := by
  funext i j
  exact h i j

theorem and_comm (A B : BitMatrix m n) :
    and A B = and B A := by
  apply ext
  intro i j
  cases hA : A i j <;>
    cases hB : B i j <;>
    simp [and, zipWith, hA, hB]

theorem and_assoc (A B C : BitMatrix m n) :
    and (and A B) C = and A (and B C) := by
  apply ext
  intro i j
  cases hA : A i j <;>
    cases hB : B i j <;>
    cases hC : C i j <;>
    simp [and, zipWith, hA, hB, hC]

theorem or_comm (A B : BitMatrix m n) :
    or A B = or B A := by
  apply ext
  intro i j
  cases hA : A i j <;>
    cases hB : B i j <;>
    simp [or, zipWith, hA, hB]

theorem xor_comm (A B : BitMatrix m n) :
    xor A B = xor B A := by
  apply ext
  intro i j
  cases hA : A i j <;>
    cases hB : B i j <;>
    simp [xor, zipWith, hA, hB]

theorem not_not (A : BitMatrix m n) :
    not (not A) = A := by
  apply ext
  intro i j
  cases h : A i j <;>
    simp [not, map, h]

end BitMatrix


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
