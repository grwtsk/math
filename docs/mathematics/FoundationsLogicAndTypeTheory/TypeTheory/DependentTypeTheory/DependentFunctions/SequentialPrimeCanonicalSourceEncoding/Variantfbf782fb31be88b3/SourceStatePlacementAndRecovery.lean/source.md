# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.SequentialPrimeCanonicalSourceEncoding.Variantfbf782fb31be88b3.SourceStatePlacementAndRecovery

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b272b47a87ea814fda70c121e9bc17343805bc5d` · SHA-256 `2d4151f4da965e453cf4023cc9fca13c4146e0d02dd74fffcfc7c880b7837d13`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
SourceStatePlacementAndRecovery — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: fbf782fb31be88b3b09d73e68a4752a7a8dd926ab196b5b9419a6be6eedc2882
Organized SHA-256: b0f2381d484b71c4d60ce0aa283ad410e14dec07f719b065f987ed87485026d2
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Entire byte/unary-length/incidence/fallback-false Boolean assignment and all placement/injectivity proofs. Every occurrence/coordinate bound and dependent byte index proof remains exact, including bit>=8 handling and UTF8 recovery. This encodes canonical strings, not arbitrary files or computational validation. -/

import BitMatrix.Carrier.SequentialPrime
import BitMatrix.Codec.Source
import Mathlib.Data.Nat.Bitwise

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.SequentialPrimeCanonicalSourceEncoding.Variantfbf782fb31be88b3.CanonicalTextAndUtf8Recovery
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.SequentialPrimeCanonicalSourceEncoding.Variantfbf782fb31be88b3.FiniteByteLengthAndIncidenceAddresses

/-!
# Canonical source layout on the sequential-prime carrier

The constructor below uses the three documented specifications:

* `(0;3)` for the eight MSB-first byte bits;
* `(1;1)` for `contains`, `next`, and `ref` incidence bits;
* `(2;1)` for the unary UTF-8 byte length.

All remaining addresses are false.  The length and byte fields are proved to
recover the canonical source exactly; incidence is retained as an additional
checked self-description rather than used as an injectivity shortcut.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.SequentialPrimeCanonicalSourceEncoding.Variantfbf782fb31be88b3

open _root_.BitMatrix.Codec

namespace BitMatrix.Codec

open _root_.BitMatrix.Codec.CanonicalSource
open _root_.BitMatrix.Carrier

namespace SequentialPrimeSource

/-- The documented source-byte, unary-length, and incidence assignment. -/
noncomputable def sourceState (source : CanonicalSource) :
    BooleanState SequentialPrimeCarrierAddress := by
  classical
  exact fun address =>
    if byteField : address.specification = byteSpecification then
      if coordinateBound : CoordinateFiber.mixedRadix address.coordinate < 8 then
        if byteBound : address.occurrence < source.utf8.size then
          byteBitMSB source.utf8[address.occurrence]
            ⟨CoordinateFiber.mixedRadix address.coordinate, coordinateBound⟩
        else false
      else false
    else if lengthField : address.specification = lengthSpecification then
      decide (CoordinateFiber.mixedRadix address.coordinate = 0 ∧
        address.occurrence < source.utf8.size)
    else if relationField : address.specification = relationSpecification then
      incidenceBit source.utf8.size address.occurrence
        (CoordinateFiber.mixedRadix address.coordinate)
    else false


@[simp]
theorem sourceState_lengthAddress
    (source : CanonicalSource)
    (occurrence : Nat) :
    sourceState source (lengthAddress occurrence) =
      decide (occurrence < source.utf8.size) := by
  classical
  unfold sourceState lengthAddress
  dsimp only
  rw [dif_neg (fun equality => byte_ne_length equality.symm)]
  rw [dif_pos rfl]
  have coordinateZero := coordinateOfIndex_mixedRadix
    lengthSpecification 0 (by rw [lengthSpecification_cardinality]; omega)
  simp [coordinateZero]


@[simp]
theorem sourceState_byteAddress
    (source : CanonicalSource)
    (occurrence coordinate : Nat)
    (coordinateBound : coordinate < 8)
    (byteBound : occurrence < source.utf8.size) :
    sourceState source (byteAddress occurrence coordinate) =
      byteBitMSB source.utf8[occurrence]
        ⟨coordinate, coordinateBound⟩ := by
  classical
  have coordinateCode := coordinateOfIndex_mixedRadix
    byteSpecification coordinate
    (by rw [byteSpecification_cardinality]; exact coordinateBound)
  unfold sourceState byteAddress
  dsimp only
  rw [dif_pos rfl]
  simp [coordinateCode, coordinateBound, byteBound]


/--
The tuple `(b₂,b₁,b₀)` selects the MSB-first byte position
`4*b₂ + 2*b₁ + b₀` exactly.
-/
@[simp]
theorem sourceState_byteCoordinateAddress
    (source : CanonicalSource)
    (occurrence : Nat)
    (b₂ b₁ b₀ : Fin 2)
    (byteBound : occurrence < source.utf8.size) :
    sourceState source (byteCoordinateAddress occurrence b₂ b₁ b₀) =
      byteBitMSB source.utf8[occurrence]
        ⟨byteCoordinateIndex b₂ b₁ b₀,
          byteCoordinateIndex_lt b₂ b₁ b₀⟩ := by
  classical
  have coordinateBound :
      4 * b₂.val + 2 * b₁.val + b₀.val < 8 := by
    simpa [byteCoordinateIndex] using byteCoordinateIndex_lt b₂ b₁ b₀
  unfold sourceState byteCoordinateAddress
  dsimp only
  rw [dif_pos rfl]
  simp [byteCoordinate_mixedRadix, byteCoordinateIndex, coordinateBound, byteBound]


/-- Expanded bit-weight form of the documented byte-placement law. -/
theorem sourceState_byteCoordinateAddress_testBit
    (source : CanonicalSource)
    (occurrence : Nat)
    (b₂ b₁ b₀ : Fin 2)
    (byteBound : occurrence < source.utf8.size) :
    sourceState source (byteCoordinateAddress occurrence b₂ b₁ b₀) =
      Nat.testBit source.utf8[occurrence].toNat
        (7 - (4 * b₂.val + 2 * b₁.val + b₀.val)) := by
  rw [sourceState_byteCoordinateAddress source occurrence b₂ b₁ b₀ byteBound]
  rfl


@[simp]
theorem sourceState_relationAddress
    (source : CanonicalSource)
    (occurrence relation : Nat)
    (relationBound : relation < 3) :
    sourceState source (relationAddress occurrence relation) =
      incidenceBit source.utf8.size occurrence relation := by
  classical
  have relationCode := coordinateOfIndex_mixedRadix
    relationSpecification relation
    (by rw [relationSpecification_cardinality]; exact relationBound)
  unfold sourceState relationAddress
  dsimp only
  rw [dif_neg (fun equality => byte_ne_relation equality.symm)]
  rw [dif_neg relation_ne_length]
  rw [dif_pos rfl]
  simp [relationCode]


/-- The concrete `contains(root, byte(index))` incidence bit. -/
theorem sourceState_contains
    (source : CanonicalSource)
    (index : Fin source.utf8.size) :
    sourceState source
      (relationAddress (cantorPair 0 (index.val + 1)) 0) = true := by
  rw [sourceState_relationAddress source
    (cantorPair 0 (index.val + 1)) 0 (by omega)]
  rw [incidenceBit_eq_true_iff]
  exact Or.inl ⟨rfl, index, rfl⟩


/-- The concrete `next(byte(index), byte(index+1))` incidence bit. -/
theorem sourceState_next
    (source : CanonicalSource)
    (index : Nat)
    (bound : index + 1 < source.utf8.size) :
    sourceState source
      (relationAddress (cantorPair (index + 1) (index + 2)) 1) = true := by
  rw [sourceState_relationAddress source
    (cantorPair (index + 1) (index + 2)) 1 (by omega)]
  rw [incidenceBit_eq_true_iff]
  exact Or.inr (Or.inl ⟨rfl, index, bound, rfl⟩)


/-- Every encoded source contains the required root self-reference loop. -/
theorem sourceState_root_ref (source : CanonicalSource) :
    sourceState source (relationAddress (cantorPair 0 0) 2) = true := by
  rw [sourceState_relationAddress source (cantorPair 0 0) 2 (by omega)]
  simp [incidenceBit, incidence]


theorem sourceState_size
    {left right : CanonicalSource}
    (equality : sourceState left = sourceState right) :
    left.utf8.size = right.utf8.size := by
  by_contra different
  rcases lt_or_gt_of_ne different with less | greater
  · have atBoundary := congrFun equality (lengthAddress left.utf8.size)
    simp [less] at atBoundary
  · have atBoundary := congrFun equality (lengthAddress right.utf8.size)
    simp [greater] at atBoundary


theorem sourceState_byte
    {left right : CanonicalSource}
    (equality : sourceState left = sourceState right)
    (index : Nat)
    (leftBound : index < left.utf8.size)
    (rightBound : index < right.utf8.size) :
    left.utf8[index] = right.utf8[index] := by
  apply UInt8.ext
  apply Nat.eq_of_testBit_eq
  intro bit
  by_cases bitBound : bit < 8
  · let coordinate := 7 - bit
    have coordinateBound : coordinate < 8 := by omega
    have coordinateBit : 7 - coordinate = bit := by omega
    have atBit := congrFun equality (byteAddress index coordinate)
    rw [sourceState_byteAddress left index coordinate coordinateBound leftBound,
      sourceState_byteAddress right index coordinate coordinateBound rightBound] at atBit
    simpa [byteBitMSB, coordinateBit] using atBit
  · have leftFalse := Nat.testBit_eq_false_of_lt
      (n := left.utf8[index].toNat) (i := bit)
      (lt_of_lt_of_le left.utf8[index].toNat_lt
        (Nat.pow_le_pow_right (by omega) (by omega)))
    have rightFalse := Nat.testBit_eq_false_of_lt
      (n := right.utf8[index].toNat) (i := bit)
      (lt_of_lt_of_le right.utf8[index].toNat_lt
        (Nat.pow_le_pow_right (by omega) (by omega)))
    rw [leftFalse, rightFalse]


theorem sourceState_injective : Function.Injective sourceState := by
  intro left right equality
  apply CanonicalSource.utf8_injective
  apply ByteArray.ext
  apply Array.ext
  · exact sourceState_size equality
  · intro index leftBound rightBound
    exact sourceState_byte equality index leftBound rightBound


end SequentialPrimeSource

end BitMatrix.Codec

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.SequentialPrimeCanonicalSourceEncoding.Variantfbf782fb31be88b3
```
