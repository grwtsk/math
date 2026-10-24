# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ProjectSpecifications.Variant41855715c046de87630ec2205063b76970f035b02c72efa6ad22134e1199cfe6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31c5787307ef71c20a3fff22b0ec6776f9d9b836` · SHA-256 `41855715c046de87630ec2205063b76970f035b02c72efa6ad22134e1199cfe6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.Dynamics.EvolutionSurgeryRestart
import BitMatrix.Rhetorical.Coverage

/-! Compile-time conformance witnesses for concrete project specifications. -/

namespace BitMatrix.Tests.ProjectSpecifications

open BitMatrix.Dynamics.EvolutionSurgeryRestart

private def sourceLayoutFixture : BitMatrix.Codec.CanonicalSource where
  body := "A"
  noCarriageReturn := by decide
  noTerminalLineFeed := by decide

example (index : Nat) :
    Nat.Prime
      (BitMatrix.Carrier.SequentialPrimeSpecification.canonicalPrimeEnumeration.value
        index) :=
  BitMatrix.Carrier.SequentialPrimeSpecification.canonicalPrimeEnumeration.prime index

example (index : Nat) :
    BitMatrix.Carrier.rawCanonicalAddressEnumeration.code
      (BitMatrix.Carrier.rawCanonicalAddressEnumeration.enumerate index) = index := by
  simp

example (source : BitMatrix.Codec.CanonicalSource) :
    BitMatrix.Codec.oneHotSourceCodec.decode
      (BitMatrix.Codec.oneHotSourceCodec.encode source) = some source := by
  simp

example (source : BitMatrix.Codec.CanonicalSource) :
    (BitMatrix.Rhetorical.canonicalSourceSpecialization source).codec.encode source =
      (BitMatrix.Rhetorical.canonicalSourceTheory source).baseline :=
  rfl

example (index : Nat) :
    BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.code
      (BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.enumerate
        index) ∈
      BitMatrix.Carrier.SequentialPrimeCarrierAddress.AddressImage :=
  BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration_code_mem index

example : Nonempty
    (BitMatrix.Carrier.CoordinateFiber
        BitMatrix.Codec.SequentialPrimeSource.byteSpecification.axisCardinalities ≃
      Fin (BitMatrix.Carrier.CoordinateFiber.cardinality
        BitMatrix.Codec.SequentialPrimeSource.byteSpecification.axisCardinalities)) :=
  ⟨BitMatrix.Carrier.CoordinateFiber.mixedRadixEquiv
      BitMatrix.Codec.SequentialPrimeSource.byteSpecification.axisCardinalities
      (fun _ member =>
        BitMatrix.Codec.SequentialPrimeSource.byteSpecification.axisCardinalities_positive
          member)⟩

example :
    BitMatrix.Carrier.CoordinateFiber.mixedRadix
      (BitMatrix.Codec.SequentialPrimeSource.byteCoordinate
        (1 : Fin 2) (0 : Fin 2) (1 : Fin 2)) = 5 := by
  norm_num

example
    (source : BitMatrix.Codec.CanonicalSource)
    (occurrence : Nat)
    (b₂ b₁ b₀ : Fin 2)
    (byteBound : occurrence < source.utf8.size) :
    BitMatrix.Codec.SequentialPrimeSource.sourceState source
      (BitMatrix.Codec.SequentialPrimeSource.byteCoordinateAddress
        occurrence b₂ b₁ b₀) =
      Nat.testBit source.utf8[occurrence].toNat
        (7 - (4 * b₂.val + 2 * b₁.val + b₀.val)) :=
  BitMatrix.Codec.SequentialPrimeSource.sourceState_byteCoordinateAddress_testBit
    source occurrence b₂ b₁ b₀ byteBound

example :
    BitMatrix.Codec.SequentialPrimeSource.sourceState sourceLayoutFixture
      (BitMatrix.Codec.SequentialPrimeSource.relationAddress
        (BitMatrix.Carrier.cantorPair 0 1) 0) = true := by
  simpa using BitMatrix.Codec.SequentialPrimeSource.sourceState_contains
    sourceLayoutFixture ⟨0, by decide⟩

example :
    BitMatrix.Codec.SequentialPrimeSource.sourceState sourceLayoutFixture
      (BitMatrix.Codec.SequentialPrimeSource.relationAddress
        (BitMatrix.Carrier.cantorPair 1 2) 1) = true := by
  simpa using BitMatrix.Codec.SequentialPrimeSource.sourceState_next
    sourceLayoutFixture 0 (by decide)

example :
    BitMatrix.Codec.SequentialPrimeSource.sourceCodec.decode
      BitMatrix.Codec.SequentialPrimeSource.baselineCarrier =
        some BitMatrix.Codec.SequentialPrimeSource.distinguishedCanonicalSource :=
  BitMatrix.Codec.SequentialPrimeSource.distinguishedCanonicalSource_decodes

example :
    BitMatrix.Codec.SequentialPrimeSource.sourceState
      BitMatrix.Codec.SequentialPrimeSource.distinguishedCanonicalSource
      (BitMatrix.Codec.SequentialPrimeSource.relationAddress
        (BitMatrix.Carrier.cantorPair 0 0) 2) = true :=
  BitMatrix.Codec.SequentialPrimeSource.sourceState_root_ref _

example
    (target : BitMatrix.Carrier.BooleanState
      BitMatrix.Carrier.SequentialPrimeCarrierAddress) :
    BitMatrix.Carrier.distinguishedInterpreter
      BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.enumerate
      BitMatrix.Topology.analyticCantorRepresentation
      BitMatrix.Codec.SequentialPrimeSource.baselineCarrier
      (BitMatrix.Rhetorical.sourceRelativeScalar target) = target :=
  BitMatrix.Rhetorical.documentedInterpreter_sourceRelativeScalar target

example
    (scalar : BitMatrix.Topology.ExactCantorScalar) :
    BitMatrix.Rhetorical.sourceRelativeScalar
      (BitMatrix.Carrier.distinguishedInterpreter
        BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.enumerate
        BitMatrix.Topology.analyticCantorRepresentation
        BitMatrix.Codec.SequentialPrimeSource.baselineCarrier scalar) = scalar :=
  BitMatrix.Rhetorical.sourceRelativeScalar_documentedInterpreter scalar

example (source : BitMatrix.Codec.CanonicalSource) :
    (BitMatrix.Rhetorical.selfSourceScalarEquiv
      (BitMatrix.Rhetorical.scalarOfCanonicalSource source)).val =
        BitMatrix.Codec.SequentialPrimeSource.sourceCodec.encode source := by
  simp

example {rows columns : Nat}
    (cut : BitMatrix.Surgery.Digital.CutDatum rows columns) :
    (RasterSurgeryEvent.reconstruction cut).postEventState =
      (RasterSurgeryEvent.reconstruction cut).preEventState := by
  simp

example {rows columns : Nat}
    {cut : BitMatrix.Surgery.Digital.CutDatum rows columns}
    (repair : BitMatrix.Surgery.Digital.Repair cut) :
    repair.addedCells ⊆ cut.selected :=
  repair.addedCells_subset_selected

example {rows columns : Nat}
    {cut : BitMatrix.Surgery.Digital.CutDatum rows columns}
    (repair : BitMatrix.Surgery.Digital.Repair cut) :
    repair.deletedCells ⊆ cut.selected :=
  repair.deletedCells_subset_selected

example (left right : EvolutionStatus) :
    EvolutionStatus.LE (EvolutionStatus.meet left right) left :=
  EvolutionStatus.meet_le_left left right

end BitMatrix.Tests.ProjectSpecifications
```
