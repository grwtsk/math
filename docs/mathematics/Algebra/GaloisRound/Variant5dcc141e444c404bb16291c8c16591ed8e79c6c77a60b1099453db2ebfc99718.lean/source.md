# Complete source: GRWTSK.Algebra.GaloisRound.Variant5dcc141e444c404bb16291c8c16591ed8e79c6c77a60b1099453db2ebfc99718

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de8c74eb8fe25cdf6a9948d35e3bf9e8eb4f8d48` · SHA-256 `5dcc141e444c404bb16291c8c16591ed8e79c6c77a60b1099453db2ebfc99718`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
