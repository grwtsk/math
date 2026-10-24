# Complete source: GRWTSK.Algebra.LinearAlgebra.Regular.Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab3d68b3e45981d8f9dfe1cd423370b25fa42385` · SHA-256 `3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.FiniteField.Galois
import Mathlib.LinearAlgebra.Matrix.ToLin

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

/-! ## Left regular representation -/

variable {F : Type u} [Field F] [Algebra GF2 F]

/-- Left multiplication by `a` as a `GF2`-linear endomorphism of `F`. -/
def leftMulLinear (a : F) : F →ₗ[GF2] F :=
  Algebra.lmul GF2 F a

@[simp]
theorem leftMulLinear_apply (a x : F) :
    leftMulLinear a x = a * x :=
  rfl

/-- The matrix, in basis `b`, of the linear operator `x ↦ a * x`. -/
noncomputable def regularMatrix
    (b : Basis (Fin r) GF2 F)
    (a : F) :
    GF2Matrix r r :=
  LinearMap.toMatrix b b (leftMulLinear a)

@[simp]
theorem regularMatrix_zero (b : Basis (Fin r) GF2 F) :
    regularMatrix b (0 : F) = 0 := by
  change Algebra.leftMulMatrix b 0 = 0
  exact map_zero (Algebra.leftMulMatrix b)

@[simp]
theorem regularMatrix_one (b : Basis (Fin r) GF2 F) :
    regularMatrix b (1 : F) = 1 := by
  change Algebra.leftMulMatrix b 1 = 1
  exact map_one (Algebra.leftMulMatrix b)

theorem regularMatrix_add
    (b : Basis (Fin r) GF2 F)
    (a c : F) :
    regularMatrix b (a + c) =
      regularMatrix b a + regularMatrix b c := by
  change Algebra.leftMulMatrix b (a + c) =
    Algebra.leftMulMatrix b a + Algebra.leftMulMatrix b c
  exact map_add (Algebra.leftMulMatrix b) a c

/--
Regular matrices preserve multiplication using ordinary matrix multiplication
in the same order.  This is the `LinearMap.toMatrix` convention for composition
of the left-multiplication operators.
-/
theorem regularMatrix_mul
    (b : Basis (Fin r) GF2 F)
    (a c : F) :
    regularMatrix b (a * c) =
      regularMatrix b a * regularMatrix b c := by
  change Algebra.leftMulMatrix b (a * c) =
    Algebra.leftMulMatrix b a * Algebra.leftMulMatrix b c
  exact map_mul (Algebra.leftMulMatrix b) a c

/-- The left regular matrix construction, packaged as a ring homomorphism. -/
noncomputable def regularRepresentation
    (b : Basis (Fin r) GF2 F) :
    F →+* GF2Matrix r r :=
  (Algebra.leftMulMatrix b).toRingHom

@[simp]
theorem regularRepresentation_apply
    (b : Basis (Fin r) GF2 F)
    (a : F) :
    regularRepresentation b a = regularMatrix b a :=
  rfl

/--
The regular representation is faithful.  Equality of matrices gives equality
of the underlying linear maps, and evaluating the maps at `1` recovers the
field elements.
-/
theorem regularMatrix_injective
    (b : Basis (Fin r) GF2 F) :
    Function.Injective (regularMatrix b) := by
  intro a c h
  have hlinear : leftMulLinear a = leftMulLinear c :=
    (LinearMap.toMatrix b b).injective h
  calc
    a = leftMulLinear a 1 := by simp
    _ = leftMulLinear c 1 := by rw [hlinear]
    _ = c := by simp

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
```
