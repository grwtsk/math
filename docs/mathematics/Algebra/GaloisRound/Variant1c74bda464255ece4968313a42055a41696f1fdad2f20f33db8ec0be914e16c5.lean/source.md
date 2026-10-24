# Complete source: GRWTSK.Algebra.GaloisRound.Variant1c74bda464255ece4968313a42055a41696f1fdad2f20f33db8ec0be914e16c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a9e9de6cc2b6b32bf831336be7cd80e58fca65d` · SHA-256 `2b34d093d66866b3ee841f3af1fc76a63491c6a6099570f6fa4b53c3a6fc49fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.BitCode.Variant5dcc141e444c404bb16291c8c16591ed8e79c6c77a60b1099453db2ebfc99718","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5dcc141e444c404bb16291c8c16591ed8e79c6c77a60b1099453db2ebfc99718","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.BitCode.Variant5dcc141e444c404bb16291c8c16591ed8e79c6c77a60b1099453db2ebfc99718","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"5dcc141e444c404bb16291c8c16591ed8e79c6c77a60b1099453db2ebfc99718","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/FiniteField/GaloisRound.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.Algebra.BitCode.Variant5dcc141e444c404bb16291c8c16591ed8e79c6c77a60b1099453db2ebfc99718

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
