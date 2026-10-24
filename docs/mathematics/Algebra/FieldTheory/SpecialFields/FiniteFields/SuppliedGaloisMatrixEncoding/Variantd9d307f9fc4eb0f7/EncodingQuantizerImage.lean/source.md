# Complete source: GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.SuppliedGaloisMatrixEncoding.Variantd9d307f9fc4eb0f7.EncodingQuantizerImage

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aeb79d787cb7e7ed933251478fc30d12b85adccc` · SHA-256 `d881ca6d159713e904e5f8cb9b955b04c7892ee5ae6e00f0d97f7008ae0009b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
EncodingQuantizerImage — individually reviewed exact source
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

/- Exact quantizer from the supplied bijective encoding, equality kernel, full realized finite image and quotient-to-field equivalence. The original Quantizer provider and complete E assumptions are retained; general quantizer images are not claimed surjective. -/

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

/-- The lossless quantizer supplied by a field encoding. -/
def fieldQuantizer (E : BitMatrix.FiniteField.Encoding F m n) : BitMatrix.Quantizer F m n :=
  ⟨E.code⟩


theorem fieldQuantizer_indistinguishable_iff
    (E : BitMatrix.FiniteField.Encoding F m n) (x y : F) :
    (fieldQuantizer E).Indistinguishable x y ↔ x = y := by
  exact E.code.injective.eq_iff


/-- Every binary matrix is realized by the lossless field quantizer. -/
theorem fieldQuantizer_effectiveStates_eq_univ
    (E : BitMatrix.FiniteField.Encoding F m n) :
    (fieldQuantizer E).effectiveStates = Finset.univ := by
  ext A
  simp only [BitMatrix.Quantizer.mem_effectiveStates_iff, Finset.mem_univ, iff_true]
  exact E.code.surjective A


theorem fieldQuantizer_effectiveStates_card
    (E : BitMatrix.FiniteField.Encoding F m n) :
    (fieldQuantizer E).effectiveStates.card = 2 ^ (m * n) := by
  rw [fieldQuantizer_effectiveStates_eq_univ, Finset.card_univ,
    BitMatrix.Quantizer.card_bitMatrix]


/-- Since the quantizer is injective, its quotient by observation is `F` itself. -/
noncomputable def fieldQuantizer_quotientEquiv
    (E : BitMatrix.FiniteField.Encoding F m n) :
    Quotient (fieldQuantizer E).setoid ≃ F where
  toFun := Quotient.lift id (by
    intro x y h
    exact (fieldQuantizer_indistinguishable_iff E x y).mp h)
  invFun x := Quotient.mk _ x
  left_inv q := by
    induction q using Quotient.inductionOn with
    | _ x => rfl
  right_inv x := rfl


end BitMatrix.FiniteField

```
