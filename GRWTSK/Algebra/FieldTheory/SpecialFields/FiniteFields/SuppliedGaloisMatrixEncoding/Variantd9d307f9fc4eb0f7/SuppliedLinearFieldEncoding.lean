/-
SuppliedLinearFieldEncoding — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: R.A. Jacob Martone.
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

/- Whole Encoding record retains coordinates : F equiv-linear[GF2] GF2Matrix m n, full Field/Fintype/Algebra assumptions, universe, both equivalence directions, additive laws, cardinality and dimension positivity. A field and linear coordinate model are supplied, not constructed from cardinality. -/

import BitMatrix.Dynamics.Avalanche
import Mathlib.LinearAlgebra.Matrix.ToLinearEquiv
import Mathlib.Tactic.IntervalCases
import Mathlib.Tactic.Linarith

import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.SuppliedGaloisMatrixEncoding.Variantd9d307f9fc4eb0f7.BooleanCoefficientEquivalence
import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.SuppliedGaloisMatrixEncoding.Variantd9d307f9fc4eb0f7.PointwiseProductObstruction

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

/--
An explicit `GF(2)`-linear coordinate model for a finite field on an `m × n`
binary matrix.  Linearity, not mere equicardinality, certifies XOR-compatible
field addition.
-/
structure Encoding
    (F : Type u) [Field F] [Fintype F] [Algebra GF2 F]
    (m n : Nat) where
  coordinates : F ≃ₗ[GF2] GF2Matrix m n


namespace Encoding

variable {F : Type u} [Field F] [Fintype F] [Algebra GF2 F]
variable {m n : Nat}

/-- Encode field elements as Boolean matrices through the chosen coordinates. -/
def code (E : BitMatrix.FiniteField.Encoding F m n) : F ≃ BitMatrix m n :=
  E.coordinates.toEquiv.trans (boolMatrixGF2Equiv m n).symm


/-- Decode Boolean matrices according to the chosen field model. -/
def decode (E : BitMatrix.FiniteField.Encoding F m n) : BitMatrix m n ≃ F :=
  E.code.symm


@[simp]
theorem decode_code (E : BitMatrix.FiniteField.Encoding F m n) (x : F) :
    E.decode (E.code x) = x :=
  E.code.symm_apply_apply x


@[simp]
theorem code_decode (E : BitMatrix.FiniteField.Encoding F m n) (A : BitMatrix m n) :
    E.code (E.decode A) = A :=
  E.code.apply_symm_apply A


@[simp]
theorem code_zero (E : BitMatrix.FiniteField.Encoding F m n) :
    E.code 0 = zeroMatrix m n := by
  apply (boolMatrixGF2Equiv m n).injective
  simp only [code, Equiv.trans_apply, Equiv.apply_symm_apply]
  change E.coordinates 0 = boolMatrixGF2Equiv m n (zeroMatrix m n)
  rw [E.coordinates.map_zero]
  ext i j
  rfl


@[simp]
theorem code_add (E : BitMatrix.FiniteField.Encoding F m n) (x y : F) :
    E.code (x + y) = BitMatrix.xor (E.code x) (E.code y) := by
  apply (boolMatrixGF2Equiv m n).injective
  rw [boolMatrixGF2Equiv_xor]
  simp [code]


@[simp]
theorem decode_zero (E : BitMatrix.FiniteField.Encoding F m n) :
    E.decode (zeroMatrix m n) = 0 := by
  rw [← E.code_zero]
  exact E.decode.apply_symm_apply 0


/-- A field coordinate model forces exactly `2^(m*n)` field elements. -/
theorem card_field (E : BitMatrix.FiniteField.Encoding F m n) :
    Fintype.card F = 2 ^ (m * n) := by
  rw [← BitMatrix.Quantizer.card_bitMatrix m n]
  exact Fintype.card_congr E.code


/-- A nontrivial field cannot be encoded by a matrix with no entries. -/
theorem dimension_pos (E : BitMatrix.FiniteField.Encoding F m n) : 0 < m * n := by
  by_contra h
  have hzero : m * n = 0 := Nat.eq_zero_of_not_pos h
  have hcard : Fintype.card F = 1 := by
    simpa [hzero] using E.card_field
  have hone : 1 < Fintype.card F := Fintype.one_lt_card
  omega


end Encoding

end BitMatrix.FiniteField

