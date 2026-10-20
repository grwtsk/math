/-
BooleanOrdinaryProductAndRegularImage — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7
Organized SHA-256: c23d33bc4924783edd46c281a767bf48b810bc8562c3faa33518d687c01623ec
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Ordinary row-by-column gf2MatMul, Boolean identity, exact entry sums, identity/associativity laws and Boolean regular representation/faithfulness/inverse consequence remain together in the other component. Its private boolMatrixGF2Equiv_identity is used by both the early identity laws and regularBitMatrix_one, so the two regions stay in ONE file; importing a private theorem or fabricating a duplicate is avoided. The whole public left-regular companion supplies only its exact own-source definitions. Original containing namespaces remain exact for historical type/method extensions; physical mathematical taxonomy is GRWTSK. No joint admission of duplicate historical declarations or provider replacement is asserted. -/

import BitMatrix.FiniteField.Galois
import Mathlib.LinearAlgebra.Matrix.ToLin

import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteBooleanDerivativeAndFieldData.Variant3ebcd6479f74a588.FaithfulLeftRegularRepresentation

/-!
# Regular multiplication matrices for model-indexed fields

This module separates two products on square binary matrices.  `BitMatrix.and` is
entrywise Boolean conjunction, whereas `gf2MatMul` transports **ordinary matrix
multiplication** over `GF2`; its entries are row-by-column sums.  The latter is
the product needed for representing composition of linear operators.

For a field `F` carrying an algebra structure over `GF2`, multiplication by
`a : F` is a `GF2`-linear operator.  Relative to a chosen basis `b`,
`regularMatrix b a` is its matrix.  The construction respects zero, one,
addition, and multiplication, with multiplication in the same order:

`regularMatrix b (a * c) = regularMatrix b a * regularMatrix b c`.

Transporting these matrices back through `boolMatrixGF2Equiv` gives Boolean
regular-representation matrices.  Only the image
`{ regularMatrix b a | a : F }` (equivalently its Boolean transport) inherits
the field operations of `F`.  The entire matrix ring is not a field when its
dimension is greater than one, and pointwise AND is not substituted for its
ordinary matrix multiplication.
-/

universe u

namespace BitMatrix.FiniteField

open Module

variable {r : Nat}

/-! ## Ordinary matrix multiplication over `GF2` -/

/--
Boolean square-matrix multiplication obtained by transporting ordinary
row-by-column matrix multiplication over `GF2`.

This operation is deliberately distinct from `BitMatrix.and`.
-/
def gf2MatMul (A B : BitMatrix r r) : BitMatrix r r :=
  (boolMatrixGF2Equiv r r).symm
    (boolMatrixGF2Equiv r r A * boolMatrixGF2Equiv r r B)

/-- The Boolean matrix whose diagonal entries are true and whose other entries are false. -/
def gf2IdentityMatrix (r : Nat) : BitMatrix r r :=
  fun i j => decide (i = j)

/-- Encoding the Boolean identity gives the identity for ordinary `GF2` matrix multiplication. -/
private theorem boolMatrixGF2Equiv_identity (r : Nat) :
    boolMatrixGF2Equiv r r (gf2IdentityMatrix r) = 1 := by
  ext i j
  by_cases h : i = j <;>
    simp [gf2IdentityMatrix, Matrix.one_apply, h]

/-- The Boolean identity is a left identity for transported ordinary multiplication. -/
@[simp]
theorem gf2MatMul_identity_left (A : BitMatrix r r) :
    gf2MatMul (gf2IdentityMatrix r) A = A := by
  apply (boolMatrixGF2Equiv r r).injective
  simp [gf2MatMul, boolMatrixGF2Equiv_identity]

/-- The Boolean identity is a right identity for transported ordinary multiplication. -/
@[simp]
theorem gf2MatMul_identity_right (A : BitMatrix r r) :
    gf2MatMul A (gf2IdentityMatrix r) = A := by
  apply (boolMatrixGF2Equiv r r).injective
  simp [gf2MatMul, boolMatrixGF2Equiv_identity]

/-- Transported ordinary matrix multiplication is associative. -/
theorem gf2MatMul_assoc (A B C : BitMatrix r r) :
    gf2MatMul (gf2MatMul A B) C =
      gf2MatMul A (gf2MatMul B C) := by
  apply (boolMatrixGF2Equiv r r).injective
  simp [gf2MatMul, Matrix.mul_assoc]

/--
The entry formula for `gf2MatMul`, stated after converting the Boolean result
to `GF2`: each entry is the usual row-by-column finite sum.
-/
theorem gf2MatMul_apply (A B : BitMatrix r r) (i j : Fin r) :
    boolGF2Equiv (gf2MatMul A B i j) =
      ∑ k, boolGF2Equiv (A i k) * boolGF2Equiv (B k j) := by
  calc
    boolGF2Equiv (gf2MatMul A B i j) =
        boolMatrixGF2Equiv r r (gf2MatMul A B) i j :=
      (boolMatrixGF2Equiv_apply (gf2MatMul A B) i j).symm
    _ = (boolMatrixGF2Equiv r r A * boolMatrixGF2Equiv r r B) i j := by
      rw [show boolMatrixGF2Equiv r r (gf2MatMul A B) =
          boolMatrixGF2Equiv r r A * boolMatrixGF2Equiv r r B by
        simp [gf2MatMul]]
    _ = ∑ k, boolGF2Equiv (A i k) * boolGF2Equiv (B k j) := by
      simp [Matrix.mul_apply]

variable {F : Type u} [Field F] [Algebra GF2 F]

/-! ## Boolean regular-representation matrices -/

/-- The regular multiplication matrix transported back to Boolean entries. -/
noncomputable def regularBitMatrix
    (b : Basis (Fin r) GF2 F)
    (a : F) :
    BitMatrix r r :=
  (boolMatrixGF2Equiv r r).symm (regularMatrix b a)

/-- Field addition becomes pointwise Boolean XOR on regular matrices. -/
theorem regularBitMatrix_add
    (b : Basis (Fin r) GF2 F)
    (a c : F) :
    regularBitMatrix b (a + c) =
      BitMatrix.xor (regularBitMatrix b a) (regularBitMatrix b c) := by
  apply (boolMatrixGF2Equiv r r).injective
  rw [boolMatrixGF2Equiv_xor]
  simp [regularBitMatrix, regularMatrix_add]

/-- Field multiplication becomes transported ordinary matrix multiplication. -/
theorem regularBitMatrix_mul
    (b : Basis (Fin r) GF2 F)
    (a c : F) :
    regularBitMatrix b (a * c) =
      gf2MatMul (regularBitMatrix b a) (regularBitMatrix b c) := by
  apply (boolMatrixGF2Equiv r r).injective
  simp [regularBitMatrix, gf2MatMul, regularMatrix_mul]

/-- The field unit is represented by the Boolean identity matrix. -/
theorem regularBitMatrix_one
    (b : Basis (Fin r) GF2 F) :
    regularBitMatrix b 1 = gf2IdentityMatrix r := by
  apply (boolMatrixGF2Equiv r r).injective
  simp [regularBitMatrix, regularMatrix_one, boolMatrixGF2Equiv_identity]

/-- Boolean transport preserves faithfulness of the regular representation. -/
theorem regularBitMatrix_injective
    (b : Basis (Fin r) GF2 F) :
    Function.Injective (regularBitMatrix b) := by
  intro a c h
  apply regularMatrix_injective b
  simpa [regularBitMatrix] using congrArg (boolMatrixGF2Equiv r r) h

/-- A nonzero field element and its inverse give inverse Boolean regular matrices. -/
theorem regularBitMatrix_inverse
    (b : Basis (Fin r) GF2 F)
    {a : F}
    (ha : a ≠ 0) :
    gf2MatMul (regularBitMatrix b a) (regularBitMatrix b a⁻¹) =
      gf2IdentityMatrix r := by
  rw [← regularBitMatrix_mul, mul_inv_cancel₀ ha, regularBitMatrix_one]


end BitMatrix.FiniteField
