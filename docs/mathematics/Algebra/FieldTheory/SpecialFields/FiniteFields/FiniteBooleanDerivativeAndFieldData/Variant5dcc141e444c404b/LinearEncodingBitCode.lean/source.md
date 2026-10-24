# Complete source: GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.FiniteBooleanDerivativeAndFieldData.Variant5dcc141e444c404b.LinearEncodingBitCode

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0c9c9433197e0fb462c8678daed9b855d1e72b4` · SHA-256 `799f5f4458cdb3f05fdec2644a57c703fe2e4ac6e9a5bd681bf832d074999947`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
LinearEncodingBitCode — exact individually reviewed source
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

/- The complete Encoding.bitCode definition and additive/XOR proof form one seam. Full transportToMatrix, exact flattening commutation, encodeFieldRound and its structural bijectivity form another, importing only its exact same-source bitCode component. Exact full field/algebra/finite/encoding hypotheses remain. Original containing namespaces remain exact for historical type/method extensions; physical mathematical taxonomy is GRWTSK. No joint admission of duplicate historical declarations or provider replacement is asserted. -/

import BitMatrix.FiniteField.Galois
import BitMatrix.FiniteField.Round

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

namespace Encoding

/--
The bit representation derived from the chosen field-to-matrix encoding and
the existing row-major matrix flattening.
-/
def bitCode (E : BitMatrix.FiniteField.Encoding F m n) :
    F ≃ BitMatrix.Reduction.SAT.Bits (m * n) :=
  E.code.trans (flattenEquiv m n)

/--
The derived bit representation preserves field addition as pointwise XOR.
This follows from the linearity certified by `E` and from XOR compatibility of
row-major flattening, rather than from a cardinality calculation.
-/
theorem bitCode_add
    (E : BitMatrix.FiniteField.Encoding F m n)
    (x y : F) :
    E.bitCode (x + y) =
      BitMatrix.Dynamics.Avalanche.xorBits (E.bitCode x) (E.bitCode y) := by
  change flattenEquiv m n (E.code (x + y)) =
    BitMatrix.Dynamics.Avalanche.xorBits
      (flattenEquiv m n (E.code x))
      (flattenEquiv m n (E.code y))
  rw [E.code_add, flattenEquiv_xor]

end Encoding
end BitMatrix.FiniteField
```
