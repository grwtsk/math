# Complete source: GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.SuppliedGaloisMatrixEncoding.Variantd9d307f9fc4eb0f7.PointwiseProductObstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3278aafe1ef55c21a6c649c415abcc53526c7e39` · SHA-256 `acb41e9537d15ecd71e7ee5795e727c4de85747ca33d13fa0725b10a3d38a025`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
PointwiseProductObstruction — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: d9d307f9fc4eb0f70539d3fb84809fc24f00c8c80fb99fc4fd541f8037b44081
Organized SHA-256: bb3ffcc9e0e8e912c20c2a1cacf6ed8204c89556342470b494e5f1a8afc34418
PMD: 510.1.080.030.010 finite fields (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- All pointwise identities, empty-product equality, singleton witnesses, zero divisors under 1 < m*n and the exact one-entry GF2 equivalence remain. No raw multi-entry Boolean matrix field instance is installed. -/

import BitMatrix.Dynamics.Avalanche
import Mathlib.LinearAlgebra.Matrix.ToLinearEquiv
import Mathlib.Tactic.IntervalCases
import Mathlib.Tactic.Linarith

import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.SuppliedGaloisMatrixEncoding.Variantd9d307f9fc4eb0f7.BooleanCoefficientEquivalence
import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.SuppliedGaloisMatrixEncoding.Variantd9d307f9fc4eb0f7.RowMajorBooleanCoordinates

/-!
# Model-indexed Galois-field semantics for binary matrices

`BitMatrix` has intrinsic pointwise Boolean operations.  This module first identifies
its Boolean coefficients with `GF(2)`, and then makes a sharp distinction between
those pointwise operations and extension-field multiplication.

Under the coefficient equivalence, pointwise XOR is addition in the product
`GF(2)`-vector space.  Pointwise AND is multiplication in the corresponding
product ring, and that product ring has zero divisors whenever `1 < m*n`.

The central guarantee is constructive: an explicit `GF(2)`-linear coordinate
equivalence makes pointwise XOR represent field addition.  Cardinality alone is
never used to identify the two additions: a bare finite-set equivalence may
scramble XOR and provides no additive compatibility.  Field multiplication is
instead transported through a chosen `BitMatrix.FiniteField.Encoding`; it depends on the
selected field together with the basis, coordinate indexing, and encoding
contained in that model.  For more than one entry it is provably different from
pointwise Boolean AND.

No algebraic instance is installed on `Bool` or on raw `BitMatrix m n`.  All field
operations below remain indexed by the model `E` that supplies their semantics.
-/

universe u


namespace BitMatrix.FiniteField

open BitMatrix.Dynamics.Avalanche
open BitMatrix.Reduction.SAT

/-- The all-false Boolean matrix. -/
def zeroMatrix (m n : Nat) : BitMatrix m n := fun _ _ => false


/-- The all-true matrix, the identity only for pointwise Boolean AND. -/
def pointwiseOneMatrix (m n : Nat) : BitMatrix m n := fun _ _ => true


@[simp]
theorem xor_zero_right (A : BitMatrix m n) :
    BitMatrix.xor A (zeroMatrix m n) = A := by
  ext i j
  cases h : A i j <;> simp [BitMatrix.xor, zeroMatrix, h]


@[simp]
theorem xor_self (A : BitMatrix m n) :
    BitMatrix.xor A A = zeroMatrix m n := by
  ext i j
  cases h : A i j <;> simp [BitMatrix.xor, zeroMatrix, h]


@[simp]
theorem and_zero_right (A : BitMatrix m n) :
    BitMatrix.and A (zeroMatrix m n) = zeroMatrix m n := by
  ext i j
  cases h : A i j <;> simp [BitMatrix.and, zeroMatrix, h]


@[simp]
theorem and_one_right (A : BitMatrix m n) :
    BitMatrix.and A (pointwiseOneMatrix m n) = A := by
  ext i j
  cases h : A i j <;> simp [BitMatrix.and, pointwiseOneMatrix, h]


/-- With no entries, the all-false and all-true functions coincide. -/
theorem zeroMatrix_eq_pointwiseOneMatrix_of_mul_eq_zero
    (h : m * n = 0) :
    zeroMatrix m n = pointwiseOneMatrix m n := by
  ext i j
  rcases Nat.mul_eq_zero.mp h with hm | hn
  · exact Fin.elim0 (hm ▸ i)
  · exact Fin.elim0 (hn ▸ j)


/-- A Boolean matrix supported at exactly one coordinate. -/
def singletonMatrix (p : Fin m × Fin n) : BitMatrix m n :=
  fun i j => decide ((i, j) = p)


/-- A singleton-support matrix is nonzero. -/
theorem singletonMatrix_ne_zero (p : Fin m × Fin n) :
    singletonMatrix p ≠ zeroMatrix m n := by
  intro h
  have hp := congrFun (congrFun h p.1) p.2
  simp [singletonMatrix, zeroMatrix] at hp


/--
If there are at least two entries, pointwise AND has disjoint nonzero supports
and hence zero divisors.  This is the obstruction to reading it as extension-
field multiplication.
-/
theorem exists_pointwise_zero_divisors (h : 1 < m * n) :
    ∃ A B : BitMatrix m n,
      A ≠ zeroMatrix m n ∧
      B ≠ zeroMatrix m n ∧
      BitMatrix.and A B = zeroMatrix m n := by
  let a : Fin (m * n) := ⟨0, by omega⟩
  let b : Fin (m * n) := ⟨1, h⟩
  let p := (rowMajorIndexEquiv m n).symm a
  let q := (rowMajorIndexEquiv m n).symm b
  have hab : a ≠ b := by
    intro hab
    have := congrArg Fin.val hab
    simp [a, b] at this
  have hpq : p ≠ q := by
    intro hpq
    apply hab
    simpa [p, q] using congrArg (rowMajorIndexEquiv m n) hpq
  refine ⟨singletonMatrix p, singletonMatrix q,
    singletonMatrix_ne_zero p, singletonMatrix_ne_zero q, ?_⟩
  ext i j
  by_cases hip : (i, j) = p
  · simp [BitMatrix.and, singletonMatrix, zeroMatrix, hip, hpq]
  · simp [BitMatrix.and, singletonMatrix, zeroMatrix, hip]


/-- The existing pointwise operations on a `1 × 1` matrix realize `GF(2)`. -/
def oneEntryGF2Equiv : BitMatrix 1 1 ≃ GF2 where
  toFun A := boolGF2Equiv (A 0 0)
  invFun x _ _ := boolGF2Equiv.symm x
  left_inv A := by
    ext i j
    simp [Subsingleton.elim i 0, Subsingleton.elim j 0]
  right_inv x := by
    simp


theorem oneEntryGF2Equiv_xor (A B : BitMatrix 1 1) :
    oneEntryGF2Equiv (BitMatrix.xor A B) =
      oneEntryGF2Equiv A + oneEntryGF2Equiv B :=
  boolGF2Equiv_xor _ _


theorem oneEntryGF2Equiv_and (A B : BitMatrix 1 1) :
    oneEntryGF2Equiv (BitMatrix.and A B) =
      oneEntryGF2Equiv A * oneEntryGF2Equiv B :=
  boolGF2Equiv_and _ _


end BitMatrix.FiniteField

```
