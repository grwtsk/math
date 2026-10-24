# Complete source: GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.FiniteBooleanDerivativeAndFieldData.Variant5dcc141e444c404b.FieldRoundMatrixConjugacy

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ddc851be4cf6887a35cb8a7cdb2f79f9f97270b4` · SHA-256 `dd8b26c331b546b8f8eb3914bb7d5ff2db7bba4ae0ee1195ca783658649d74da`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
FieldRoundMatrixConjugacy — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 5dcc141e444c404bb16291c8c16591ed8e79c6c77a60b1099453db2ebfc99718
Organized SHA-256: 168651ac241f27375c2bca07fae43d43176e4f629360d12c7dc223f717a0107e
PMD: 510.1.080.030.010 finite fields (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Full matrix/bit conjugacy and encoded FieldRound equivalence; structural bijectivity alone supplies no diffusion, SAC or security conclusion. Original containing namespaces remain exact for historical type/method extensions; physical mathematical taxonomy is GRWTSK. No joint admission of duplicate historical declarations or provider replacement is asserted. -/

import BitMatrix.FiniteField.Galois
import BitMatrix.FiniteField.Round

import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.FiniteBooleanDerivativeAndFieldData.Variant5dcc141e444c404b.LinearEncodingBitCode

/-!
# Model-indexed finite-field rounds on binary matrices

A `BitMatrix.FiniteField.Encoding` supplies both the matrix representation of a finite
field and, by row-major flattening, its bit representation. Transporting a
field permutation through either representation preserves bijectivity, and the
two transported actions form the commutative diagram proved below.

The bit action is representation-dependent. In particular, finite-field
structure and structural bijectivity alone imply no SAC, differential-
uniformity, branch-number, or other avalanche guarantee. Such properties must
be established separately for the selected encoding and round.
-/

namespace BitMatrix.FiniteField

universe u

variable {F : Type u} [Field F] [Fintype F] [Algebra GF2 F]
variable {m n : Nat}



/-!
## Transporting field permutations

The matrix and bit transports below express the same permutation through two
representations. Their only automatic dynamical conclusion is bijectivity;
bit-level diffusion remains a separate property of the concrete encoding.
-/

/-- Transport a field permutation directly through the chosen matrix code. -/
def transportToMatrix
    (E : BitMatrix.FiniteField.Encoding F m n)
    (R : F ≃ F) :
    BitMatrix m n ≃ BitMatrix m n :=
  (E.code.symm.trans R).trans E.code

/--
Row-major flattening intertwines matrix transport with the existing transport
of the derived bit representation.
-/
theorem flatten_transportToMatrix
    (E : BitMatrix.FiniteField.Encoding F m n)
    (R : F ≃ F)
    (A : BitMatrix m n) :
    flattenEquiv m n (transportToMatrix E R A) =
      BitMatrix.FiniteField.Round.transportToBits E.bitCode R
        (flattenEquiv m n A) := by
  simp [transportToMatrix, BitMatrix.FiniteField.Encoding.bitCode,
    BitMatrix.FiniteField.Round.transportToBits]

/-- Transport a structurally bijective finite-field round to binary matrices. -/
def encodeFieldRound
    (E : BitMatrix.FiniteField.Encoding F m n)
    (R : BitMatrix.FiniteField.Round.FieldRound F) :
    BitMatrix m n ≃ BitMatrix m n :=
  transportToMatrix E R.toEquiv

/--
An encoded field round is bijective because it is an equivalence transport.
No SAC, differential-uniformity, or branch-number conclusion is attached.
-/
theorem encodeFieldRound_bijective
    (E : BitMatrix.FiniteField.Encoding F m n)
    (R : BitMatrix.FiniteField.Round.FieldRound F) :
    Function.Bijective (encodeFieldRound E R) :=
  (encodeFieldRound E R).bijective


end BitMatrix.FiniteField
```
