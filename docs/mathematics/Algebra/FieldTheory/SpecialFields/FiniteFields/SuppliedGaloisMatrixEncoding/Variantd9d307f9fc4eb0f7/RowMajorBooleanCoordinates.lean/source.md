# Complete source: GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.SuppliedGaloisMatrixEncoding.Variantd9d307f9fc4eb0f7.RowMajorBooleanCoordinates

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc641de6e9b11474f294d89f8440e31cd5fb61c8` · SHA-256 `ff60cbaa4ad5db8133a549697a64056e0c9aa008ec8239449ec48e73ab5913d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
RowMajorBooleanCoordinates — individually reviewed exact source
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

/- Exact finite row-major coordinate and flattening equivalences, including empty dimensions. Original provider namespace retained; no new array representation or imported historical provider is substituted. -/

import BitMatrix.Dynamics.Avalanche
import Mathlib.LinearAlgebra.Matrix.ToLinearEquiv
import Mathlib.Tactic.IntervalCases
import Mathlib.Tactic.Linarith

import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.SuppliedGaloisMatrixEncoding.Variantd9d307f9fc4eb0f7.BooleanCoefficientEquivalence

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

/-- Row-major identification `(i,j) ↦ i*n+j`, including empty dimensions. -/
def rowMajorIndexEquiv (m n : Nat) : Fin m × Fin n ≃ Fin (m * n) :=
  finProdFinEquiv


@[simp]
theorem rowMajorIndexEquiv_apply (i : Fin m) (j : Fin n) :
    rowMajorIndexEquiv m n (i, j) = BitMatrix.ArrayBacked.flatIdx i j := by
  apply Fin.ext
  change j.val + n * i.val = i.val * n + j.val
  ac_rfl


/-- Flatten a binary matrix in row-major order, with inverse given by reshaping. -/
def flattenEquiv (m n : Nat) : BitMatrix m n ≃ Bits (m * n) where
  toFun A k :=
    let p := (rowMajorIndexEquiv m n).symm k
    A p.1 p.2
  invFun x i j := x (rowMajorIndexEquiv m n (i, j))
  left_inv A := by
    ext i j
    change A ((rowMajorIndexEquiv m n).symm
        (rowMajorIndexEquiv m n (i, j))).1
        ((rowMajorIndexEquiv m n).symm
        (rowMajorIndexEquiv m n (i, j))).2 = A i j
    rw [Equiv.symm_apply_apply]
  right_inv x := by
    funext k
    simp


@[simp]
theorem flattenEquiv_apply_flatIdx
    (A : BitMatrix m n) (i : Fin m) (j : Fin n) :
    flattenEquiv m n A (BitMatrix.ArrayBacked.flatIdx i j) = A i j := by
  change A ((rowMajorIndexEquiv m n).symm (BitMatrix.ArrayBacked.flatIdx i j)).1
      ((rowMajorIndexEquiv m n).symm (BitMatrix.ArrayBacked.flatIdx i j)).2 = A i j
  have hp : (rowMajorIndexEquiv m n).symm (BitMatrix.ArrayBacked.flatIdx i j) = (i, j) := by
    apply (rowMajorIndexEquiv m n).injective
    rw [Equiv.apply_symm_apply, rowMajorIndexEquiv_apply]
  rw [hp]


/-- Row-major flattening preserves pointwise XOR. -/
theorem flattenEquiv_xor (A B : BitMatrix m n) :
    flattenEquiv m n (BitMatrix.xor A B) =
      xorBits (flattenEquiv m n A) (flattenEquiv m n B) := by
  funext k
  change
    (A ((rowMajorIndexEquiv m n).symm k).1 ((rowMajorIndexEquiv m n).symm k).2 !=
      B ((rowMajorIndexEquiv m n).symm k).1 ((rowMajorIndexEquiv m n).symm k).2) =
    (A ((rowMajorIndexEquiv m n).symm k).1 ((rowMajorIndexEquiv m n).symm k).2 !=
      B ((rowMajorIndexEquiv m n).symm k).1 ((rowMajorIndexEquiv m n).symm k).2)
  rfl


end BitMatrix.FiniteField

```
