# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.SequentialPrimeCanonicalSourceEncoding.Variantfbf782fb31be88b3.FiniteByteLengthAndIncidenceAddresses

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7aea3b851a7f81067bdb35fa3f78b7be472c70d4` · SHA-256 `d6a16702a855f017f9e423a3892ef08b5e5af7bd008614ca7eb9b7540d65ff75`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
FiniteByteLengthAndIncidenceAddresses — individually reviewed exact source
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

/- All complete8/3/5-cardinality sequential-prime specs, positivity/bound-conditioned mixed-radix coordinate laws, MSB high-to-low tuple convention, full dependent address constructors and exact three disjunct incidence predicate. No finite-coordinate bounds or next-edge index+1<length premise is removed. -/

import BitMatrix.Carrier.SequentialPrime
import BitMatrix.Codec.Source
import Mathlib.Data.Nat.Bitwise

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

/-- Byte-bit specification `sigma_8 = (0;3)`. -/
def byteSpecification : SequentialPrimeSpecification where
  start := 0
  multiplicities := [3]
  nonempty := by simp
  admissible := by
    intro value member
    simp only [List.mem_singleton] at member
    subst value
    exact Or.inr Nat.prime_three


/-- Relation specification `sigma_rel = (1;1)`. -/
def relationSpecification : SequentialPrimeSpecification where
  start := 1
  multiplicities := [1]
  nonempty := by simp
  admissible := by simp


/-- Unary-length specification `sigma_len = (2;1)`. -/
def lengthSpecification : SequentialPrimeSpecification where
  start := 2
  multiplicities := [1]
  nonempty := by simp
  admissible := by simp


theorem byteSpecification_cardinality :
    CoordinateFiber.cardinality byteSpecification.axisCardinalities = 8 := by
  simp [byteSpecification, SequentialPrimeSpecification.axisCardinalities,
    SequentialPrimeSpecification.axesFrom,
    SequentialPrimeSpecification.canonicalPrimeEnumeration_value,
    Nat.nth_prime_zero_eq_two, CoordinateFiber.cardinality]


theorem relationSpecification_cardinality :
    CoordinateFiber.cardinality relationSpecification.axisCardinalities = 3 := by
  simp [relationSpecification, SequentialPrimeSpecification.axisCardinalities,
    SequentialPrimeSpecification.axesFrom,
    SequentialPrimeSpecification.canonicalPrimeEnumeration_value,
    Nat.nth_prime_one_eq_three, CoordinateFiber.cardinality]


theorem lengthSpecification_cardinality :
    CoordinateFiber.cardinality lengthSpecification.axisCardinalities = 5 := by
  simp [lengthSpecification, SequentialPrimeSpecification.axisCardinalities,
    SequentialPrimeSpecification.axesFrom,
    SequentialPrimeSpecification.canonicalPrimeEnumeration_value,
    Nat.nth_prime_two_eq_five, CoordinateFiber.cardinality]


theorem byte_ne_relation : byteSpecification ≠ relationSpecification := by
  intro equality
  have := congrArg SequentialPrimeSpecification.start equality
  simp [byteSpecification, relationSpecification] at this


theorem byte_ne_length : byteSpecification ≠ lengthSpecification := by
  intro equality
  have := congrArg SequentialPrimeSpecification.start equality
  simp [byteSpecification, lengthSpecification] at this


theorem relation_ne_length : relationSpecification ≠ lengthSpecification := by
  intro equality
  have := congrArg SequentialPrimeSpecification.start equality
  simp [relationSpecification, lengthSpecification] at this


/-- Coordinate whose exact mixed-radix value is `index`. -/
noncomputable def coordinateOfIndex
    (specification : SequentialPrimeSpecification)
    (index : Nat) : CoordinateFiber specification.axisCardinalities :=
  CoordinateFiber.ofNat specification.axisCardinalities
    (fun _ member => specification.axisCardinalities_positive member) index


theorem coordinateOfIndex_mixedRadix
    (specification : SequentialPrimeSpecification)
    (index : Nat)
    (bound : index < CoordinateFiber.cardinality
      specification.axisCardinalities) :
    CoordinateFiber.mixedRadix (coordinateOfIndex specification index) = index :=
  CoordinateFiber.mixedRadix_ofNat specification.axisCardinalities
    (fun _ member => specification.axisCardinalities_positive member)
    index bound


/-- The documented byte-coordinate value `beta(b₂,b₁,b₀)`. -/
def byteCoordinateIndex (b₂ b₁ b₀ : Fin 2) : Nat :=
  4 * b₂.val + 2 * b₁.val + b₀.val


theorem byteCoordinateIndex_lt (b₂ b₁ b₀ : Fin 2) :
    byteCoordinateIndex b₂ b₁ b₀ < 8 := by
  unfold byteCoordinateIndex
  have high := b₂.isLt
  have middle := b₁.isLt
  have low := b₀.isLt
  omega


/--
The named coordinate constructor for the documented tuple `(b₂,b₁,b₀)`.
The underlying mixed-radix fiber is least-significant-coordinate first, while
this public constructor retains the mathematical high-to-low tuple order.
-/
noncomputable def byteCoordinate (b₂ b₁ b₀ : Fin 2) :
    CoordinateFiber byteSpecification.axisCardinalities :=
  coordinateOfIndex byteSpecification (byteCoordinateIndex b₂ b₁ b₀)


@[simp]
theorem byteCoordinate_mixedRadix (b₂ b₁ b₀ : Fin 2) :
    CoordinateFiber.mixedRadix (byteCoordinate b₂ b₁ b₀) =
      4 * b₂.val + 2 * b₁.val + b₀.val := by
  exact coordinateOfIndex_mixedRadix byteSpecification
    (byteCoordinateIndex b₂ b₁ b₀)
    (by
      rw [byteSpecification_cardinality]
      exact byteCoordinateIndex_lt b₂ b₁ b₀)


/-- Address of byte `occurrence` and MSB-first bit coordinate `index`. -/
noncomputable def byteAddress (occurrence index : Nat) :
    SequentialPrimeCarrierAddress :=
  ⟨occurrence, byteSpecification, coordinateOfIndex byteSpecification index⟩


/-- Address constructor retaining the documented `(b₂,b₁,b₀)` orientation. -/
noncomputable def byteCoordinateAddress
    (occurrence : Nat) (b₂ b₁ b₀ : Fin 2) :
    SequentialPrimeCarrierAddress :=
  ⟨occurrence, byteSpecification, byteCoordinate b₂ b₁ b₀⟩


/-- Address of one unary-length marker. -/
noncomputable def lengthAddress (occurrence : Nat) :
    SequentialPrimeCarrierAddress :=
  ⟨occurrence, lengthSpecification, coordinateOfIndex lengthSpecification 0⟩


/-- Address of one of the three incidence relation coordinates. -/
noncomputable def relationAddress (occurrence relation : Nat) :
    SequentialPrimeCarrierAddress :=
  ⟨occurrence, relationSpecification,
    coordinateOfIndex relationSpecification relation⟩


/-- Canonical code for a source incidence point. -/
def pointCode {length : Nat} : SourcePoint length → Nat
  | .root => 0
  | .byte index => index.val + 1


/-- Exact three-relation incidence predicate from the source specification. -/
def incidence
    (length occurrence relation : Nat) : Prop :=
  (relation = 0 ∧
    ∃ index : Fin length,
      occurrence = cantorPair 0 (pointCode (SourcePoint.byte index))) ∨
  (relation = 1 ∧
    ∃ index : Nat, ∃ bound : index + 1 < length,
      occurrence = cantorPair
        (pointCode (SourcePoint.byte ⟨index, Nat.lt_trans (Nat.lt_succ_self index) bound⟩))
        (pointCode (SourcePoint.byte ⟨index + 1, bound⟩))) ∨
  (relation = 2 ∧ occurrence = cantorPair 0 0)


/-- Boolean observation of the exact incidence predicate. -/
noncomputable def incidenceBit
    (length occurrence relation : Nat) : Bool := by
  classical
  exact decide (incidence length occurrence relation)


theorem incidenceBit_eq_true_iff
    (length occurrence relation : Nat) :
    incidenceBit length occurrence relation = true ↔
      incidence length occurrence relation := by
  classical
  simp [incidenceBit]


end SequentialPrimeSource

end BitMatrix.Codec

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.SequentialPrimeCanonicalSourceEncoding.Variantfbf782fb31be88b3
```
