/-
TransportedFieldOperations — individually reviewed exact source
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

/- All six transported operations, decode laws, field equations and nonzero/inverse hypotheses retained exactly with E. The final 1 < m*n obstruction distinguishes transported multiplication from Boolean AND; no model-independent multiplication or algebraic instance is introduced. -/

import BitMatrix.Dynamics.Avalanche
import Mathlib.LinearAlgebra.Matrix.ToLinearEquiv
import Mathlib.Tactic.IntervalCases
import Mathlib.Tactic.Linarith

import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.SuppliedGaloisMatrixEncoding.Variantd9d307f9fc4eb0f7.SuppliedLinearFieldEncoding

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

variable {F : Type u} [Field F] [Fintype F] [Algebra GF2 F]
variable {m n : Nat}

/-- Transported additive zero. -/
def gfZero (E : BitMatrix.FiniteField.Encoding F m n) : BitMatrix m n := E.code 0


/-- Transported multiplicative one. -/
def gfOne (E : BitMatrix.FiniteField.Encoding F m n) : BitMatrix m n := E.code 1


/-- Transported field addition. -/
def gfAdd (E : BitMatrix.FiniteField.Encoding F m n) (A B : BitMatrix m n) : BitMatrix m n :=
  E.code (E.decode A + E.decode B)


/-- Transported field multiplication; this is generally not pointwise AND. -/
def gfMul (E : BitMatrix.FiniteField.Encoding F m n) (A B : BitMatrix m n) : BitMatrix m n :=
  E.code (E.decode A * E.decode B)


/-- Transported field negation. -/
def gfNeg (E : BitMatrix.FiniteField.Encoding F m n) (A : BitMatrix m n) : BitMatrix m n :=
  E.code (-E.decode A)


/-- Transported field inverse. -/
def gfInv (E : BitMatrix.FiniteField.Encoding F m n) (A : BitMatrix m n) : BitMatrix m n :=
  E.code (E.decode A)⁻¹


@[simp]
theorem decode_gfAdd (E : BitMatrix.FiniteField.Encoding F m n) (A B : BitMatrix m n) :
    E.decode (gfAdd E A B) = E.decode A + E.decode B := by
  change E.decode (E.code (E.decode A + E.decode B)) = _
  exact E.decode_code _


@[simp]
theorem decode_gfMul (E : BitMatrix.FiniteField.Encoding F m n) (A B : BitMatrix m n) :
    E.decode (gfMul E A B) = E.decode A * E.decode B := by
  change E.decode (E.code (E.decode A * E.decode B)) = _
  exact E.decode_code _


@[simp]
theorem decode_gfNeg (E : BitMatrix.FiniteField.Encoding F m n) (A : BitMatrix m n) :
    E.decode (gfNeg E A) = -E.decode A := by
  change E.decode (E.code (-E.decode A)) = _
  exact E.decode_code _


@[simp]
theorem decode_gfInv (E : BitMatrix.FiniteField.Encoding F m n) (A : BitMatrix m n) :
    E.decode (gfInv E A) = (E.decode A)⁻¹ := by
  change E.decode (E.code (E.decode A)⁻¹) = _
  exact E.decode_code _


@[simp]
theorem gfZero_eq_zeroMatrix (E : BitMatrix.FiniteField.Encoding F m n) :
    gfZero E = zeroMatrix m n :=
  E.code_zero


/--
Transported addition is exactly the pre-existing pointwise XOR.  The proof
uses surjectivity of the chosen code and its proved linear-additive behavior.
-/
theorem gfAdd_eq_xor (E : BitMatrix.FiniteField.Encoding F m n) (A B : BitMatrix m n) :
    gfAdd E A B = BitMatrix.xor A B := by
  obtain ⟨x, rfl⟩ := E.code.surjective A
  obtain ⟨y, rfl⟩ := E.code.surjective B
  change E.code (E.decode (E.code x) + E.decode (E.code y)) = _
  rw [E.decode_code, E.decode_code]
  exact E.code_add x y


theorem gfAdd_assoc (E : BitMatrix.FiniteField.Encoding F m n) (A B C : BitMatrix m n) :
    gfAdd E (gfAdd E A B) C = gfAdd E A (gfAdd E B C) := by
  apply E.decode.injective
  simp [add_assoc]


theorem gfAdd_comm (E : BitMatrix.FiniteField.Encoding F m n) (A B : BitMatrix m n) :
    gfAdd E A B = gfAdd E B A := by
  apply E.decode.injective
  simp [add_comm]


theorem gfAdd_zero (E : BitMatrix.FiniteField.Encoding F m n) (A : BitMatrix m n) :
    gfAdd E A (gfZero E) = A := by
  apply E.decode.injective
  simp [gfZero]


theorem gfAdd_self (E : BitMatrix.FiniteField.Encoding F m n) (A : BitMatrix m n) :
    gfAdd E A A = gfZero E := by
  rw [gfAdd_eq_xor, gfZero_eq_zeroMatrix, xor_self]


theorem gfMul_assoc (E : BitMatrix.FiniteField.Encoding F m n) (A B C : BitMatrix m n) :
    gfMul E (gfMul E A B) C = gfMul E A (gfMul E B C) := by
  apply E.decode.injective
  simp [mul_assoc]


theorem gfMul_comm (E : BitMatrix.FiniteField.Encoding F m n) (A B : BitMatrix m n) :
    gfMul E A B = gfMul E B A := by
  apply E.decode.injective
  simp [mul_comm]


theorem gfMul_one (E : BitMatrix.FiniteField.Encoding F m n) (A : BitMatrix m n) :
    gfMul E A (gfOne E) = A := by
  apply E.decode.injective
  simp [gfOne]


theorem gfMul_zero (E : BitMatrix.FiniteField.Encoding F m n) (A : BitMatrix m n) :
    gfMul E A (gfZero E) = gfZero E := by
  apply E.decode.injective
  simp [gfZero]


theorem gfMul_add (E : BitMatrix.FiniteField.Encoding F m n) (A B C : BitMatrix m n) :
    gfMul E A (gfAdd E B C) = gfAdd E (gfMul E A B) (gfMul E A C) := by
  apply E.decode.injective
  simp [mul_add]


theorem gfMul_ne_zero
    (E : BitMatrix.FiniteField.Encoding F m n) {A B : BitMatrix m n}
    (hA : A ≠ gfZero E) (hB : B ≠ gfZero E) :
    gfMul E A B ≠ gfZero E := by
  have hA' : E.decode A ≠ 0 := by
    intro h
    apply hA
    apply E.decode.injective
    simpa [gfZero] using h
  have hB' : E.decode B ≠ 0 := by
    intro h
    apply hB
    apply E.decode.injective
    simpa [gfZero] using h
  intro h
  have h' := congrArg E.decode h
  simp [hA', hB'] at h'


theorem gfMul_inv
    (E : BitMatrix.FiniteField.Encoding F m n) {A : BitMatrix m n}
    (hA : A ≠ gfZero E) :
    gfMul E A (gfInv E A) = gfOne E := by
  have hA' : E.decode A ≠ 0 := by
    intro h
    apply hA
    apply E.decode.injective
    simpa [gfZero] using h
  apply E.decode.injective
  simp [gfOne, hA']


theorem gfInv_mul
    (E : BitMatrix.FiniteField.Encoding F m n) {A : BitMatrix m n}
    (hA : A ≠ gfZero E) :
    gfMul E (gfInv E A) A = gfOne E := by
  rw [gfMul_comm]
  exact gfMul_inv E hA


/--
For a multi-entry representation, disjoint pointwise supports multiply to zero
under AND but not under the transported field multiplication.
-/
theorem transported_mul_differs_from_pointwise_and
    (E : BitMatrix.FiniteField.Encoding F m n) (h : 1 < m * n) :
    ∃ A B : BitMatrix m n,
      A ≠ zeroMatrix m n ∧
      B ≠ zeroMatrix m n ∧
      BitMatrix.and A B = zeroMatrix m n ∧
      gfMul E A B ≠ zeroMatrix m n := by
  obtain ⟨A, B, hA, hB, hand⟩ := exists_pointwise_zero_divisors h
  refine ⟨A, B, hA, hB, hand, ?_⟩
  simpa [gfZero_eq_zeroMatrix] using
    (gfMul_ne_zero E (by simpa [gfZero_eq_zeroMatrix] using hA)
      (by simpa [gfZero_eq_zeroMatrix] using hB))


end BitMatrix.FiniteField

