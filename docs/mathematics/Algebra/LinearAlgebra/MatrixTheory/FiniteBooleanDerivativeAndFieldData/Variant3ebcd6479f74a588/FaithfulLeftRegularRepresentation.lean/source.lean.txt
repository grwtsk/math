/-
FaithfulLeftRegularRepresentation — exact individually reviewed source
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

/- The complete leftMulLinear, matrix construction, all zero/one/add/multiply laws, bundled ring homomorphism and faithful/injective proof form a whole independent seam. Multiplication order remains a*c→matrix(a)*matrix(c) exactly. Original containing namespaces remain exact for historical type/method extensions; physical mathematical taxonomy is GRWTSK. No joint admission of duplicate historical declarations or provider replacement is asserted. -/

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


end BitMatrix.FiniteField
