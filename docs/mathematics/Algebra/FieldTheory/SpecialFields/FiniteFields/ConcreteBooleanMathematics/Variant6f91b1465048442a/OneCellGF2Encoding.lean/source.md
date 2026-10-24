# Complete source: GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.ConcreteBooleanMathematics.Variant6f91b1465048442a.OneCellGF2Encoding

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `679e7666f2e57f01ad93a7b2923b7fb9926d4bba` · SHA-256 `2ae7ac954bb03101b48843d733c51e6e3ebdc3b9e76af33721e8cbac9d9ea88b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
OneCellGF2Encoding — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 6f91b1465048442a0944d997ddb9a9ea192785b54cd4b4c10720870e22780573
Organized SHA-256: fdb97643f0cb4c5b2c989cc83fe8c2ac4314b32313696550e338f57d239cc784
PMD: 510.1.080.030.010 finite fields (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete1x1 GF2 linear equivalence with both inverse and linearity proofs, model-indexed encoding and all four addition/multiplication/unit/cardinality examples. No pointwise field structure on arbitrary matrices. Original source namespaces are retained exactly; mathematical examples remain anonymous commands, not new named theorems. Native_decide, decide, examples and tactics are copied text and have not been executed. Whole original documentation may describe other retained components or historical claimed checked status; no present replay or external program acceptance is asserted. -/

import BitMatrix.FiniteField.GaloisRound
import BitMatrix.FiniteField.Regular
import Mathlib.Tactic.FinCases

/-!
# Concrete tests for model-indexed Galois-field semantics

The one-cell model realizes `GF(2)` with the existing pointwise Boolean
operations.  Separate examples exhibit pointwise zero divisors in a two-bit
carrier and show computationally that ordinary `GF(2)` matrix multiplication
is not pointwise conjunction.
-/

namespace BitMatrix.Tests.FiniteField

open BitMatrix.FiniteField

/-! ## A concrete one-cell linear encoding -/

/-- A field element is the unique entry of a `1 × 1` coordinate matrix. -/
def gf2OneCellCoordinates : GF2 ≃ₗ[GF2] GF2Matrix 1 1 :=
  { toFun := fun x _ _ => x
    invFun := fun A => A 0 0
    left_inv := fun _ => rfl
    right_inv := by
      intro A
      funext i j
      fin_cases i
      fin_cases j
      rfl
    map_add' := by intro x y; rfl
    map_smul' := by intro c x; rfl }

/-- The resulting model-indexed encoding of `GF(2)` by one Boolean cell. -/
def gf2OneCellEncoding : BitMatrix.FiniteField.Encoding GF2 1 1 :=
  ⟨gf2OneCellCoordinates⟩

example (A B : BitMatrix 1 1) :
    gfAdd gf2OneCellEncoding A B = BitMatrix.xor A B :=
  gfAdd_eq_xor _ _ _

example (A B : BitMatrix 1 1) :
    gfMul gf2OneCellEncoding A B = BitMatrix.and A B := by
  ext i j
  fin_cases i
  fin_cases j
  simp [gfMul, gf2OneCellEncoding, BitMatrix.FiniteField.Encoding.decode,
    BitMatrix.FiniteField.Encoding.code, gf2OneCellCoordinates,
    boolMatrixGF2Equiv, ← boolGF2Equiv_and]

example :
    (fieldQuantizer gf2OneCellEncoding).effectiveStates.card = 2 := by
  simpa using fieldQuantizer_effectiveStates_card gf2OneCellEncoding

example :
    gfOne gf2OneCellEncoding = pointwiseOneMatrix 1 1 := by
  ext i j
  fin_cases i
  fin_cases j
  simp [gfOne, gf2OneCellEncoding, BitMatrix.FiniteField.Encoding.code,
    gf2OneCellCoordinates, boolMatrixGF2Equiv, pointwiseOneMatrix]
  exact boolGF2Equiv.symm_apply_apply true

end BitMatrix.Tests.FiniteField
```
