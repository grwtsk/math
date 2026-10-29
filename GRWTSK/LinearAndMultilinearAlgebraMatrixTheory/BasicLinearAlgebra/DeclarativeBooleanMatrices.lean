/-
DeclarativeBooleanMatrices — exact individually reviewed source
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

/- The declarative Boolean matrix abbreviation retains arbitrary natural dimensions, every pointwise operation, all seven application/extensional laws and all Boolean algebra proofs exactly. -/

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

namespace GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant41f0242ace5e0ac7

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



end GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant41f0242ace5e0ac7
