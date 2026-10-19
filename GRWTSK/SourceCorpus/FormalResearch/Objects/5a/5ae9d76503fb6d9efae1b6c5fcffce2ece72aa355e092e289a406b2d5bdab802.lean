import BinaryMatrix.Symmetry
import Mathlib.Logic.Equiv.Fin.Rotate

/-!
# Concrete tests for finite bit-state symmetries

These width-three checks exercise the faithful translation and coordinate
actions, a translated coordinate Hamming isometry, and the general SAC-score
invariance theorems for Hamming-isometric conjugacy.
-/

namespace Symmetry

open SATReduction
open Avalanche
open PermutationNetwork

/-! ## Faithful width-three actions -/

example :
    Function.Injective (translationHom (n := 3)) :=
  translationHom_injective

example :
    Function.Injective (coordinatePermutationHom (n := 3)) :=
  coordinatePermutationHom_injective

/-! ## The three-coordinate cycle -/

/-- The coordinate cycle `0 ↦ 1`, `1 ↦ 2`, `2 ↦ 0`. -/
def symmetryRotate3Indices : Equiv.Perm (Fin 3) :=
  finRotate 3

/-- The state permutation induced by `symmetryRotate3Indices`. -/
def symmetryRotate3 : BitPerm 3 :=
  coordinatePermutation symmetryRotate3Indices

example :
    coordinatePermutationHom symmetryRotate3Indices = symmetryRotate3 := by
  ext x i
  rfl

/-! ## A nontrivially translated coordinate isometry -/

/-- A nonzero width-three translation key. -/
def symmetryOffset3 : Bits 3 :=
  basisBit (0 : Fin 3)

/-- Coordinate rotation followed by XOR with `symmetryOffset3`. -/
def symmetryHammingIso3 : HammingIso 3 where
  offset := symmetryOffset3
  coordinates := symmetryRotate3Indices

example (x y : Bits 3) :
    hammingDistance (symmetryHammingIso3.toPerm x)
        (symmetryHammingIso3.toPerm y) =
      hammingDistance x y :=
  symmetryHammingIso3.hammingDistance_toPerm x y

/-! ## Hamming-isometric conjugacy preserves aggregate SAC scores -/

/-- A concrete state permutation used as the conjugated transformation. -/
def symmetryTransformation3 : BitPerm 3 :=
  xorTranslation (basisBit (1 : Fin 3))

example :
    sacScore
        (conjugate symmetryHammingIso3.toPerm symmetryTransformation3) =
      sacScore symmetryTransformation3 :=
  sacScore_conjugate_hammingIso symmetryHammingIso3 symmetryTransformation3

example :
    varianceScore
        (conjugate symmetryHammingIso3.toPerm symmetryTransformation3) =
      varianceScore symmetryTransformation3 :=
  varianceScore_conjugate_hammingIso
    symmetryHammingIso3 symmetryTransformation3

end Symmetry
