import BitMatrix.Codec.Profiles
import BitMatrix.Geometry.CarrierGrid
import BitMatrix.Runtime.Semantics

/-!
# Concrete formal/runtime representation relations

These are typed models of the records exchanged with the runtime.  They prove
that abstraction preserves the stated operations.  They do not, on their own,
verify foreign JavaScript or Rust bytes; executable conformance vectors remain
the authority for that final bridge.
-/

namespace BitMatrix.Runtime.Correspondence

open BitMatrix.Runtime.Semantics
open BitMatrix.Geometry.CarrierGrid
open BitMatrix.Codec
open BitMatrix.Codec.Profiles

/-! ## Row-major grid records -/

/-- A runtime cell record whose redundant numeric index has been checked. -/
structure GridCellRecord (rows columns : Nat) where
  row : Fin rows
  column : Fin columns
  index : Fin (rows * columns)
  indexEquation : index = BitMatrix.ArrayBacked.flatIdx row column

/-- Forget the redundant runtime index. -/
def abstractGridCell {rows columns : Nat}
    (record : GridCellRecord rows columns) : GridCell rows columns :=
  ⟨record.row, record.column⟩

/-- Concrete representation relation for checked row-major cell records. -/
def gridCellRepresentation (rows columns : Nat) :
    RepresentationRelation (GridCell rows columns)
      (GridCellRecord rows columns) where
  abstract := abstractGridCell
  represents record semantic := abstractGridCell record = semantic
  represents_iff _ _ := Iff.rfl

/-- Abstraction preserves the checked row-major index. -/
theorem abstractGridCell_rowMajorIndex {rows columns : Nat}
    (record : GridCellRecord rows columns) :
    (abstractGridCell record).rowMajorIndex = record.index := by
  change BitMatrix.ArrayBacked.flatIdx record.row record.column = record.index
  exact record.indexEquation.symm

/-! ## Certified carrier-indexed finite states -/

/-- Semantic finite state together with complete source-point carrier
provenance. -/
structure CarrierIndexedState (size carrierCount : Nat) where
  sourcePoint : NormalizedPoint
  carrier : Fin carrierCount → GridCell size size
  distribution : FiniteRasterState carrierCount
  carrierSound : ∀ index, ExactCarrier size sourcePoint (carrier index)
  carrierComplete : ∀ cell, ExactCarrier size sourcePoint cell →
    ∃ index, carrier index = cell
  carrierInjective : Function.Injective carrier

/-- A typed runtime record for a carrier-indexed state.  The `complete` field
models the runtime provenance bit only after its proof obligations are met. -/
structure CarrierStateRecord (size carrierCount : Nat) where
  point : NormalizedPoint
  carriers : Fin carrierCount → GridCell size size
  weights : FiniteRasterState carrierCount
  eachCarrierIsExact : ∀ index, ExactCarrier size point (carriers index)
  everyExactCarrierPresent : ∀ cell, ExactCarrier size point cell →
    ∃ index, carriers index = cell
  carriersInjective : Function.Injective carriers
  complete : Bool
  completeChecked : complete = true

/-- Abstract a checked runtime state record to its semantic finite state. -/
def abstractCarrierState {size carrierCount : Nat}
    (record : CarrierStateRecord size carrierCount) :
    CarrierIndexedState size carrierCount where
  sourcePoint := record.point
  carrier := record.carriers
  distribution := record.weights
  carrierSound := record.eachCarrierIsExact
  carrierComplete := record.everyExactCarrierPresent
  carrierInjective := record.carriersInjective

/-- Concrete relation between certified runtime state records and semantic
carrier-indexed finite states. -/
def carrierStateRepresentation (size carrierCount : Nat) :
    RepresentationRelation (CarrierIndexedState size carrierCount)
      (CarrierStateRecord size carrierCount) where
  abstract := abstractCarrierState
  represents record semantic := abstractCarrierState record = semantic
  represents_iff _ _ := Iff.rfl

/-- Abstraction preserves every runtime weight exactly. -/
@[simp]
theorem abstractCarrierState_weight {size carrierCount : Nat}
    (record : CarrierStateRecord size carrierCount)
    (index : Fin carrierCount) :
    (abstractCarrierState record).distribution.weight index =
      record.weights.weight index :=
  rfl

/-- Certified runtime provenance is sound for every retained carrier. -/
theorem carrierStateRecord_support_sound {size carrierCount : Nat}
    (record : CarrierStateRecord size carrierCount) (index : Fin carrierCount) :
    ExactCarrier size (abstractCarrierState record).sourcePoint
      ((abstractCarrierState record).carrier index) :=
  record.eachCarrierIsExact index

/-- Certified runtime provenance is complete: it cannot silently substitute
an adjacent noncarrier for a true carrier. -/
theorem carrierStateRecord_support_complete {size carrierCount : Nat}
    (record : CarrierStateRecord size carrierCount)
    (cell : GridCell size size)
    (supported : ExactCarrier size
      (abstractCarrierState record).sourcePoint cell) :
    ∃ index, (abstractCarrierState record).carrier index = cell :=
  record.everyExactCarrierPresent cell supported

/-- Soundness, completeness, and duplicate-freedom make the carrier array an
actual enumeration of the exact-carrier subtype, rather than merely a covering
list that may repeat one carrier. -/
noncomputable def CarrierIndexedState.carrierEquivExactCarrier
    {size carrierCount : Nat}
    (state : CarrierIndexedState size carrierCount) :
    Fin carrierCount ≃
      { cell : GridCell size size // ExactCarrier size state.sourcePoint cell } where
  toFun index := ⟨state.carrier index, state.carrierSound index⟩
  invFun cell := Classical.choose (state.carrierComplete cell.1 cell.2)
  left_inv index := by
    apply state.carrierInjective
    exact Classical.choose_spec
      (state.carrierComplete
        (state.carrier index) (state.carrierSound index))
  right_inv cell := by
    apply Subtype.ext
    exact Classical.choose_spec (state.carrierComplete cell.1 cell.2)

/-- A certified state has exactly the geometric carrier multiplicity of its
source point.  In particular, duplicate array entries cannot inflate the
runtime carrier count. -/
theorem CarrierIndexedState.carrierCount_eq_carrierMultiplicity
    {size carrierCount : Nat}
    (state : CarrierIndexedState size carrierCount) :
    carrierCount = carrierMultiplicity size state.sourcePoint := by
  calc
    carrierCount = Fintype.card
        { cell : GridCell size size //
          ExactCarrier size state.sourcePoint cell } := by
      simpa using Fintype.card_congr state.carrierEquivExactCarrier
    _ = carrierMultiplicity size state.sourcePoint :=
      card_exactCarrier_eq_carrierMultiplicity state.sourcePoint

/-- The checked runtime record therefore has the same exact count law after
abstraction. -/
theorem carrierStateRecord_count_eq_carrierMultiplicity
    {size carrierCount : Nat}
    (record : CarrierStateRecord size carrierCount) :
    carrierCount = carrierMultiplicity size record.point :=
  (abstractCarrierState record).carrierCount_eq_carrierMultiplicity

/-! ## Codec invocation records -/

/-- A checked runtime codec invocation and its exact profile equation. -/
structure CodecInvocationRecord where
  profile : RuntimeCodecProfile
  prefixWidth : Nat
  source : List Char
  document : BitDocument
  representableLength : RepresentableLength prefixWidth
    (profilePayload profile source).bytes.size
  documentEquation :
    document = encodeWithProfile profile prefixWidth source

/-- Execute the formal profile encoder and retain the exact invocation. -/
def executeCodecInvocation (profile : RuntimeCodecProfile)
    (prefixWidth : Nat) (source : List Char)
    (representable : RepresentableLength prefixWidth
      (profilePayload profile source).bytes.size) : CodecInvocationRecord where
  profile := profile
  prefixWidth := prefixWidth
  source := source
  document := encodeWithProfile profile prefixWidth source
  representableLength := representable
  documentEquation := rfl

/-- Concrete representation relation for runtime codec result records. -/
def codecDocumentRepresentation :
    RepresentationRelation BitDocument CodecInvocationRecord where
  abstract := CodecInvocationRecord.document
  represents record semantic := record.document = semantic
  represents_iff _ _ := Iff.rfl

/-- The formal constructor represents its profile-specific encoded document. -/
theorem executeCodecInvocation_represents (profile : RuntimeCodecProfile)
    (prefixWidth : Nat) (source : List Char)
    (representable : RepresentableLength prefixWidth
      (profilePayload profile source).bytes.size) :
    codecDocumentRepresentation.represents
      (executeCodecInvocation profile prefixWidth source representable)
      (encodeWithProfile profile prefixWidth source) :=
  rfl

/-- A checked invocation satisfies the complete declarative relation, including
the fixed-width length representability obligation. -/
theorem codecInvocation_encodeDecodeRelation
    (record : CodecInvocationRecord) :
    EncodeDecodeRelation record.prefixWidth
      (profilePayload record.profile record.source) record.document :=
  ⟨record.documentEquation,
    record.representableLength⟩

/-- Serialization of a checked runtime record is exactly serialization of the
profile-specific formal document. -/
theorem codecInvocation_serialize_preserved
    (record : CodecInvocationRecord) :
    record.document.serialize =
      (encodeWithProfile record.profile record.prefixWidth record.source).serialize :=
  congrArg BitDocument.serialize record.documentEquation

/-! ## Graph-point records -/

/-- The two fields used by the runtime graph-point presentation. -/
structure GraphPointRecord (Point : Type*) where
  input : Point
  output : Point

/-- Concrete relation between graph-point records and doubled carrier points. -/
def graphPointRepresentation (Point : Type) :
    RepresentationRelation (CarrierProduct Point) (GraphPointRecord Point) where
  abstract record := (record.input, record.output)
  represents record semantic := (record.input, record.output) = semantic
  represents_iff _ _ := Iff.rfl

/-- Execute the graph-point constructor in record form. -/
def executeGraphPoint {Point : Type} (dynamics : Point → Point)
    (point : Point) : GraphPointRecord Point :=
  ⟨point, dynamics point⟩

/-- The runtime record constructor represents the formal graph point. -/
theorem executeGraphPoint_represents {Point : Type}
    (dynamics : Point → Point) (point : Point) :
    (graphPointRepresentation Point).represents
      (executeGraphPoint dynamics point) (graphPoint dynamics point) :=
  rfl

/-- The represented runtime graph point lies on the diagonal exactly when its
input is a fixed point. -/
theorem executeGraphPoint_liesOnDiagonal_iff_fixed {Point : Type}
    (dynamics : Point → Point) (point : Point) :
    LiesOnDiagonal
        ((graphPointRepresentation Point).abstract
          (executeGraphPoint dynamics point)) ↔
      point ∈ FixedSet dynamics := by
  change LiesOnDiagonal (graphPoint dynamics point) ↔
    point ∈ FixedSet dynamics
  exact (mem_fixedSet_iff_graphPoint_liesOnDiagonal dynamics point).symm

end BitMatrix.Runtime.Correspondence
