# Complete source: GRWTSK.Algebra.GaloisFieldRound.Varianta77c309892f38b97b4248a62c9a90680970ea1a37f0acf7062f46cca01e6d1ee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95b399593217b321fe2654386f10f351d6731b27` · SHA-256 `a77c309892f38b97b4248a62c9a90680970ea1a37f0acf7062f46cca01e6d1ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BinaryMatrix.GaloisField
import BinaryMatrix.FiniteFieldRound

/-!
# Model-indexed finite-field rounds on binary matrices

A `BinMatFieldEncoding` supplies both the matrix representation of a finite
field and, by row-major flattening, its bit representation. Transporting a
field permutation through either representation preserves bijectivity, and the
two transported actions form the commutative diagram proved below.

The bit action is representation-dependent. In particular, finite-field
structure and structural bijectivity alone imply no SAC, differential-
uniformity, branch-number, or other avalanche guarantee. Such properties must
be established separately for the selected encoding and round.
-/

namespace BinMatGalois

universe u

variable {F : Type u} [Field F] [Fintype F] [Algebra GF2 F]
variable {m n : Nat}

namespace BinMatFieldEncoding

/--
The bit representation derived from the chosen field-to-matrix encoding and
the existing row-major matrix flattening.
-/
def bitCode (E : BinMatFieldEncoding F m n) :
    F ≃ SATReduction.Bits (m * n) :=
  E.code.trans (flattenEquiv m n)

/--
The derived bit representation preserves field addition as pointwise XOR.
This follows from the linearity certified by `E` and from XOR compatibility of
row-major flattening, rather than from a cardinality calculation.
-/
theorem bitCode_add
    (E : BinMatFieldEncoding F m n)
    (x y : F) :
    E.bitCode (x + y) =
      Avalanche.xorBits (E.bitCode x) (E.bitCode y) := by
  change flattenEquiv m n (E.code (x + y)) =
    Avalanche.xorBits
      (flattenEquiv m n (E.code x))
      (flattenEquiv m n (E.code y))
  rw [E.code_add, flattenEquiv_xor]

end BinMatFieldEncoding

/-!
## Transporting field permutations

The matrix and bit transports below express the same permutation through two
representations. Their only automatic dynamical conclusion is bijectivity;
bit-level diffusion remains a separate property of the concrete encoding.
-/

/-- Transport a field permutation directly through the chosen matrix code. -/
def transportToMatrix
    (E : BinMatFieldEncoding F m n)
    (R : F ≃ F) :
    BinMat m n ≃ BinMat m n :=
  (E.code.symm.trans R).trans E.code

/--
Row-major flattening intertwines matrix transport with the existing transport
of the derived bit representation.
-/
theorem flatten_transportToMatrix
    (E : BinMatFieldEncoding F m n)
    (R : F ≃ F)
    (A : BinMat m n) :
    flattenEquiv m n (transportToMatrix E R A) =
      FiniteFieldRound.transportToBits E.bitCode R
        (flattenEquiv m n A) := by
  simp [transportToMatrix, BinMatFieldEncoding.bitCode,
    FiniteFieldRound.transportToBits]

/-- Transport a structurally bijective finite-field round to binary matrices. -/
def encodeFieldRound
    (E : BinMatFieldEncoding F m n)
    (R : FiniteFieldRound.FieldRound F) :
    BinMat m n ≃ BinMat m n :=
  transportToMatrix E R.toEquiv

/--
An encoded field round is bijective because it is an equivalence transport.
No SAC, differential-uniformity, or branch-number conclusion is attached.
-/
theorem encodeFieldRound_bijective
    (E : BinMatFieldEncoding F m n)
    (R : FiniteFieldRound.FieldRound F) :
    Function.Bijective (encodeFieldRound E R) :=
  (encodeFieldRound E R).bijective

end BinMatGalois
```
