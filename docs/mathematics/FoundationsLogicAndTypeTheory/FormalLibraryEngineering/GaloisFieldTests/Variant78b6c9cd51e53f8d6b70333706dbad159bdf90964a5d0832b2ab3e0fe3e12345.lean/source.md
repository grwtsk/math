# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GaloisFieldTests.Variant78b6c9cd51e53f8d6b70333706dbad159bdf90964a5d0832b2ab3e0fe3e12345

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ebea4b89875852844196717b186a65f3acf4fcc` · SHA-256 `78b6c9cd51e53f8d6b70333706dbad159bdf90964a5d0832b2ab3e0fe3e12345`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BinaryMatrix.GaloisFieldRound
import BinaryMatrix.GaloisFieldRegular
import Mathlib.Tactic.FinCases

/-!
# Concrete tests for model-indexed Galois-field semantics

The one-cell model realizes `GF(2)` with the existing pointwise Boolean
operations.  Separate examples exhibit pointwise zero divisors in a two-bit
carrier and show computationally that ordinary `GF(2)` matrix multiplication
is not pointwise conjunction.
-/

namespace BinMatGalois

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
def gf2OneCellEncoding : BinMatFieldEncoding GF2 1 1 :=
  ⟨gf2OneCellCoordinates⟩

example (A B : BinMat 1 1) :
    gfAdd gf2OneCellEncoding A B = BinMat.xor A B :=
  gfAdd_eq_xor _ _ _

example (A B : BinMat 1 1) :
    gfMul gf2OneCellEncoding A B = BinMat.and A B := by
  ext i j
  fin_cases i
  fin_cases j
  simp [gfMul, gf2OneCellEncoding, BinMatFieldEncoding.decode,
    BinMatFieldEncoding.code, gf2OneCellCoordinates,
    boolMatrixGF2Equiv, ← boolGF2Equiv_and]

example :
    (fieldQuantizer gf2OneCellEncoding).effectiveStates.card = 2 := by
  simpa using fieldQuantizer_effectiveStates_card gf2OneCellEncoding

example :
    gfOne gf2OneCellEncoding = pointwiseOneMatrix 1 1 := by
  ext i j
  fin_cases i
  fin_cases j
  simp [gfOne, gf2OneCellEncoding, BinMatFieldEncoding.code,
    gf2OneCellCoordinates, boolMatrixGF2Equiv, pointwiseOneMatrix]
  exact boolGF2Equiv.symm_apply_apply true

/-! ## Pointwise Boolean zero divisors -/

/-- The first coordinate of a two-bit row. -/
def leftBit : BinMat 1 2 :=
  fun _ j => j.val == 0

/-- The second coordinate of a two-bit row. -/
def rightBit : BinMat 1 2 :=
  fun _ j => j.val == 1

example : leftBit ≠ zeroMatrix 1 2 := by
  native_decide

example : rightBit ≠ zeroMatrix 1 2 := by
  native_decide

example : BinMat.and leftBit rightBit = zeroMatrix 1 2 := by
  native_decide

example :
    ∃ A B : BinMat 1 2,
      A ≠ zeroMatrix 1 2 ∧
      B ≠ zeroMatrix 1 2 ∧
      BinMat.and A B = zeroMatrix 1 2 :=
  exists_pointwise_zero_divisors (by decide)

/-! ## Ordinary matrix multiplication is not pointwise AND -/

/-- The matrix `[[1,1],[0,1]]` over `GF(2)`, represented by Booleans. -/
def upperUnitriangular2 : BinMat 2 2 :=
  fun i j => decide (i.val ≤ j.val)

example :
    gf2MatMul upperUnitriangular2 upperUnitriangular2 =
      gf2IdentityMatrix 2 := by
  native_decide

example :
    BinMat.and upperUnitriangular2 upperUnitriangular2 =
      upperUnitriangular2 := by
  native_decide

example :
    gf2MatMul upperUnitriangular2 upperUnitriangular2 ≠
      BinMat.and upperUnitriangular2 upperUnitriangular2 := by
  native_decide

end BinMatGalois
```
