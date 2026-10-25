# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Correspondence.Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9193dd533fe1292b1619e079244172ed70b657c` · SHA-256 `ae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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

/-! ## Raster and ownership operation records

Unlike the older proof-carrying carrier record, the records below contain only
operation inputs.  Their results are computed by the formal operation, so the
refinement theorems do not assume an output equation as a record field.
-/

/-- Inputs to one raster-rounding invocation. -/
structure RoundingInvocation where
  mode : RasterRounding
  input : ℚ

def executeRounding (invocation : RoundingInvocation) : ℤ :=
  invocation.mode.round invocation.input

def roundingResultRepresentation :
    RepresentationRelation ℤ RoundingInvocation where
  abstract := executeRounding
  represents runtime semantic := executeRounding runtime = semantic
  represents_iff _ _ := Iff.rfl

theorem executeRounding_represents (invocation : RoundingInvocation) :
    roundingResultRepresentation.represents invocation
      (invocation.mode.round invocation.input) :=
  rfl

/-- Signed-zero-preserving execution of the same raw rounding input. -/
def executeSignedRounding (invocation : RoundingInvocation) : SignedInteger :=
  invocation.mode.roundSigned invocation.input

/-- A complete success observation for rational rounding.  Rational inputs are
always finite, so this operation has no error branch, but its result still
retains JavaScript's observable sign of zero. -/
def signedRoundingResult (invocation : RoundingInvocation) :
    RuntimeResult SignedInteger :=
  .ok (executeSignedRounding invocation)

def SignedRoundingResultRefines
    (observation : RuntimeObservation RoundingInvocation SignedInteger) : Prop :=
  ResultRefines signedRoundingResult observation

@[simp] theorem executeSignedRounding_refines (invocation : RoundingInvocation) :
    SignedRoundingResultRefines
      ⟨invocation, signedRoundingResult invocation⟩ :=
  rfl

@[simp] theorem executeSignedRounding_negative_tie_sign :
    (executeSignedRounding ⟨.nearest, -1 / 2⟩).negativeZero = true :=
  roundSigned_negative_tie_sign

/-- A tagged foreign rounding request retains unsupported modes, nonfinite
numbers, and negative zero until the checked operation classifies them. -/
structure ForeignRoundingInvocation where
  mode : ForeignRoundingMode
  input : ForeignRational

def executeForeignRounding (invocation : ForeignRoundingInvocation) :
    RuntimeResult SignedInteger :=
  foreignRoundingResult invocation.mode invocation.input

def ForeignRoundingResultRefines
    (observation : RuntimeObservation ForeignRoundingInvocation SignedInteger) :
    Prop :=
  ResultRefines executeForeignRounding observation

@[simp] theorem executeForeignRounding_refines
    (invocation : ForeignRoundingInvocation) :
    ForeignRoundingResultRefines
      ⟨invocation, executeForeignRounding invocation⟩ :=
  rfl

@[simp] theorem executeForeignRounding_rejects_nonfinite
    (mode : RasterRounding) :
    executeForeignRounding ⟨.supported mode, .nan⟩ =
      .error .nonfiniteInput :=
  rfl

/-- Inputs to quantize-normalize-orient one raster coordinate. -/
structure NormalizedCoordinateInvocation where
  mode : RasterRounding
  direction : AxisDirection
  extent : Nat
  extentPositive : 0 < extent
  coordinate : ℚ

def executeNormalizedCoordinate
    (invocation : NormalizedCoordinateInvocation) : ℚ :=
  normalizeRasterCoordinate invocation.mode invocation.direction
    invocation.extent invocation.coordinate

def normalizedCoordinateRepresentation :
    RepresentationRelation ℚ NormalizedCoordinateInvocation where
  abstract := executeNormalizedCoordinate
  represents runtime semantic := executeNormalizedCoordinate runtime = semantic
  represents_iff _ _ := Iff.rfl

theorem executeNormalizedCoordinate_represents
    (invocation : NormalizedCoordinateInvocation) :
    normalizedCoordinateRepresentation.represents invocation
      (normalizeRasterCoordinate invocation.mode invocation.direction
        invocation.extent invocation.coordinate) :=
  rfl

/-- Checked normalized-coordinate boundary retaining raw mode, extent, and
signed/nonfinite numeric input. -/
structure ForeignNormalizedCoordinateInvocation where
  request : ForeignNormalizedCoordinateRequest

def executeForeignNormalizedCoordinate
    (invocation : ForeignNormalizedCoordinateInvocation) :
    RuntimeResult SignedRational :=
  foreignNormalizedCoordinateResult invocation.request

def ForeignNormalizedCoordinateResultRefines
    (observation : RuntimeObservation ForeignNormalizedCoordinateInvocation
      SignedRational) : Prop :=
  ResultRefines executeForeignNormalizedCoordinate observation

@[simp] theorem executeForeignNormalizedCoordinate_refines
    (invocation : ForeignNormalizedCoordinateInvocation) :
    ForeignNormalizedCoordinateResultRefines
      ⟨invocation, executeForeignNormalizedCoordinate invocation⟩ :=
  rfl

@[simp] theorem executeForeignNormalizedCoordinate_negativeZero
    (extent : Nat) (nonzero : extent ≠ 0) :
    executeForeignNormalizedCoordinate
      ⟨⟨.supported .nearest, .increasing, extent, .negativeZero⟩⟩ =
        .ok negativeZeroRational :=
  foreignNormalizedCoordinate_negativeZero extent nonzero

/-- Inputs to exact-or-sampled cell coverage, including the runtime's positive
sampling precondition. -/
structure CoverageInvocation where
  request : CoverageRequest

def executeCoverage (invocation : CoverageInvocation) : CoverageEvidence :=
  cellCoverageDetailed invocation.request

def coverageRepresentation :
    RepresentationRelation CoverageEvidence CoverageInvocation where
  abstract := executeCoverage
  represents runtime semantic := executeCoverage runtime = semantic
  represents_iff _ _ := Iff.rfl

theorem executeCoverage_represents (invocation : CoverageInvocation) :
    coverageRepresentation.represents invocation
      (cellCoverageDetailed invocation.request) :=
  rfl

/-- Every represented coverage result satisfies the runtime's unit-interval
contract, independently of which evidence branch produced it. -/
theorem executeCoverage_mem_unitInterval (invocation : CoverageInvocation) :
    0 ≤ (executeCoverage invocation).value ∧
      (executeCoverage invocation).value ≤ 1 :=
  ⟨(executeCoverage invocation).nonnegative,
    (executeCoverage invocation).atMostOne⟩

/-- Raw cell coverage preserves invalid support, exact ratios, sample counts,
and containment callback results as distinct checked failures. -/
structure RawCoverageInvocation where
  request : RawCoverageRequest

def executeRawCoverage (invocation : RawCoverageInvocation) :
    RuntimeResult CoverageEvidence :=
  coverageResult invocation.request

def RawCoverageResultRefines
    (observation : RuntimeObservation RawCoverageInvocation CoverageEvidence) :
    Prop :=
  ResultRefines executeRawCoverage observation

@[simp] theorem executeRawCoverage_refines
    (invocation : RawCoverageInvocation) :
    RawCoverageResultRefines ⟨invocation, executeRawCoverage invocation⟩ :=
  rfl

@[simp] theorem executeRawCoverage_rejects_zero_samples
    (invocation : RawCoverageInvocation) (cell : CellSupport)
    (validSupport : checkRawCellSupport invocation.request.support = .ok cell)
    (noExact : invocation.request.exactCoverage = none)
    (zero : invocation.request.samples = 0) :
    executeRawCoverage invocation = .error .invalidSampleCount :=
  coverageResult_rejects_zero_samples invocation.request cell validSupport
    noExact zero

/-- Complete foreign coverage invocation, retaining region shape, tagged
numeric support, JavaScript sample-count shape, and callback outcomes. -/
structure ForeignCoverageInvocation where
  request : ForeignCoverageRequest

def executeForeignCoverage (invocation : ForeignCoverageInvocation) :
    RuntimeResult CoverageEvidence :=
  foreignCoverageResult invocation.request

def ForeignCoverageResultRefines
    (observation : RuntimeObservation ForeignCoverageInvocation
      CoverageEvidence) : Prop :=
  ResultRefines executeForeignCoverage observation

@[simp] theorem executeForeignCoverage_refines
    (invocation : ForeignCoverageInvocation) :
    ForeignCoverageResultRefines
      ⟨invocation, executeForeignCoverage invocation⟩ :=
  rfl

@[simp] theorem executeForeignCoverage_rejects_invalid_region
    (support : ForeignCellSupport) (samples : ForeignSampleCount) :
    executeForeignCoverage ⟨⟨.invalid, support, samples⟩⟩ =
      .error .invalidCoverage :=
  rfl

/-- Inputs to sign-sensitive exact-threshold resolution. -/
structure ThresholdInvocation where
  coverage : ℚ
  coverageNonnegative : 0 ≤ coverage
  coverageAtMostOne : coverage ≤ 1
  threshold : ℚ
  thresholdNonnegative : 0 ≤ threshold
  thresholdAtMostOne : threshold ≤ 1
  scalar : ℚ
  policy : TiePolicy
  ownership : OwnershipTiePolicies

def executeThreshold (invocation : ThresholdInvocation) : Bool :=
  resolveThreshold invocation.coverage invocation.threshold invocation.scalar
    invocation.policy invocation.ownership

def thresholdRepresentation :
    RepresentationRelation Bool ThresholdInvocation where
  abstract := executeThreshold
  represents runtime semantic := executeThreshold runtime = semantic
  represents_iff _ _ := Iff.rfl

theorem executeThreshold_represents (invocation : ThresholdInvocation) :
    thresholdRepresentation.represents invocation
      (resolveThreshold invocation.coverage invocation.threshold
        invocation.scalar invocation.policy invocation.ownership) :=
  rfl

/-- Raw threshold invocation retains invalid-coverage and invalid-threshold
results instead of baking their proofs into the input type. -/
structure RawThresholdInvocation where
  request : RawThresholdRequest

def executeRawThreshold (invocation : RawThresholdInvocation) :
    RuntimeResult Bool :=
  thresholdResult invocation.request

def RawThresholdResultRefines
    (observation : RuntimeObservation RawThresholdInvocation Bool) : Prop :=
  ResultRefines executeRawThreshold observation

@[simp] theorem executeRawThreshold_refines
    (invocation : RawThresholdInvocation) :
    RawThresholdResultRefines
      ⟨invocation, executeRawThreshold invocation⟩ :=
  rfl

@[simp] theorem executeRawThreshold_rejects_negative_coverage
    (invocation : RawThresholdInvocation)
    (negative : invocation.request.coverage < 0) :
    executeRawThreshold invocation = .error .invalidCoverage :=
  thresholdResult_rejects_negative_coverage invocation.request negative

/-- Tagged foreign threshold invocation, including nonfinite numbers and an
unsupported tie-policy constructor. -/
structure ForeignThresholdInvocation where
  request : ForeignThresholdRequest

def executeForeignThreshold (invocation : ForeignThresholdInvocation) :
    RuntimeResult Bool :=
  foreignThresholdResult invocation.request

def ForeignThresholdResultRefines
    (observation : RuntimeObservation ForeignThresholdInvocation Bool) : Prop :=
  ResultRefines executeForeignThreshold observation

@[simp] theorem executeForeignThreshold_refines
    (invocation : ForeignThresholdInvocation) :
    ForeignThresholdResultRefines
      ⟨invocation, executeForeignThreshold invocation⟩ :=
  rfl

/-- Inputs to exact ownership normalization. -/
structure OwnershipInvocation (count : Nat) where
  mask : OwnershipSelectionMask count
  selected : selectedOwnerCount mask ≠ 0

def executeOwnership {count : Nat} (invocation : OwnershipInvocation count) :
    Fin count → ℚ :=
  ownershipWeight invocation.mask

def ownershipRepresentation (count : Nat) :
    RepresentationRelation (Fin count → ℚ) (OwnershipInvocation count) where
  abstract := executeOwnership
  represents runtime semantic := executeOwnership runtime = semantic
  represents_iff _ _ := Iff.rfl

theorem executeOwnership_represents {count : Nat}
    (invocation : OwnershipInvocation count) :
    (ownershipRepresentation count).represents invocation
      (ownershipWeight invocation.mask) :=
  rfl

/-- The operation-specific normalization invariant for a successful ownership
invocation. -/
theorem executeOwnership_sum {count : Nat}
    (invocation : OwnershipInvocation count) :
    ∑ index, executeOwnership invocation index = 1 :=
  ownershipWeight_sum invocation.mask invocation.selected

/-- Raw ownership normalization retains the zero-mask failure branch. -/
structure RawOwnershipInvocation (count : Nat) where
  mask : OwnershipSelectionMask count

def executeRawOwnership {count : Nat}
    (invocation : RawOwnershipInvocation count) :
    RuntimeResult (Fin count → ℚ) :=
  normalizeOwnershipResult invocation.mask

def RawOwnershipResultRefines {count : Nat}
    (observation : RuntimeObservation (RawOwnershipInvocation count)
      (Fin count → ℚ)) : Prop :=
  ResultRefines executeRawOwnership observation

@[simp] theorem executeRawOwnership_refines {count : Nat}
    (invocation : RawOwnershipInvocation count) :
    RawOwnershipResultRefines
      ⟨invocation, executeRawOwnership invocation⟩ :=
  rfl

@[simp] theorem executeRawOwnership_rejects_zero {count : Nat}
    (invocation : RawOwnershipInvocation count)
    (empty : selectedOwnerCount invocation.mask = 0) :
    executeRawOwnership invocation = .error .zeroOwnershipMask := by
  exact normalizeOwnershipResult_empty invocation.mask empty

/-- Raw configured selection for one, two, four, or an unsupported arity. -/
structure ConfiguredOwnershipInvocation where
  configuration : ConfiguredOwnership
  carrierCount : Nat
  direction : TraversalDirection
  corner : SquareCorner

def executeConfiguredOwnership (invocation : ConfiguredOwnershipInvocation) :
    RuntimeResult (List Bool) :=
  ownershipMaskResult invocation.configuration invocation.carrierCount
    invocation.direction invocation.corner

def ConfiguredOwnershipResultRefines
    (observation : RuntimeObservation ConfiguredOwnershipInvocation
      (List Bool)) : Prop :=
  ResultRefines executeConfiguredOwnership observation

@[simp] theorem executeConfiguredOwnership_refines
    (invocation : ConfiguredOwnershipInvocation) :
    ConfiguredOwnershipResultRefines
      ⟨invocation, executeConfiguredOwnership invocation⟩ :=
  rfl

theorem executeConfiguredOwnership_rejects_invalid
    (invocation : ConfiguredOwnershipInvocation)
    (invalid : invocation.carrierCount ≠ 1 ∧
      invocation.carrierCount ≠ 2 ∧ invocation.carrierCount ≠ 4) :
    executeConfiguredOwnership invocation = .error .invalidCarrierArity :=
  ownershipMaskResult_invalid invocation.configuration invocation.carrierCount
    invocation.direction invocation.corner invalid

/-- Complete configured ownership invocation, including candidate order and
the composite mask/weight/owner result. -/
structure ResolveCarrierOwnershipInvocation (Carrier : Type) where
  configuration : ConfiguredOwnership
  candidates : List Carrier
  direction : TraversalDirection
  corner : SquareCorner

def executeResolveCarrierOwnership {Carrier : Type}
    (invocation : ResolveCarrierOwnershipInvocation Carrier) :
    RuntimeResult (CarrierOwnershipResult Carrier) :=
  resolveCarrierOwnership invocation.configuration invocation.candidates
    invocation.direction invocation.corner

def ResolveCarrierOwnershipResultRefines {Carrier : Type}
    (observation : RuntimeObservation (ResolveCarrierOwnershipInvocation Carrier)
      (CarrierOwnershipResult Carrier)) : Prop :=
  ResultRefines executeResolveCarrierOwnership observation

@[simp] theorem executeResolveCarrierOwnership_refines {Carrier : Type}
    (invocation : ResolveCarrierOwnershipInvocation Carrier) :
    ResolveCarrierOwnershipResultRefines
      ⟨invocation, executeResolveCarrierOwnership invocation⟩ :=
  rfl

theorem executeResolveCarrierOwnership_fields {Carrier : Type}
    (invocation : ResolveCarrierOwnershipInvocation Carrier)
    (result : CarrierOwnershipResult Carrier)
    (success : executeResolveCarrierOwnership invocation = .ok result) :
    ownershipMaskResult invocation.configuration invocation.candidates.length
        invocation.direction invocation.corner = .ok result.mask ∧
      result.candidates = invocation.candidates ∧
      result.normalizedWeights = normalizedMaskListWeights result.mask ∧
      result.owners = selectedCarrierOwners invocation.candidates result.mask ∧
      result.mask.length = invocation.candidates.length ∧
      result.normalizedWeights.length = invocation.candidates.length :=
  resolveCarrierOwnership_fields invocation.configuration invocation.candidates
    invocation.direction invocation.corner result success

/-- Runtime occupancy data remains a separate semantic record and is never
silently promoted to nonempty ownership. -/
structure OccupancyInvocation (count : Nat) where
  mask : OccupancyMask count

def executeOccupancy {count : Nat}
    (invocation : OccupancyInvocation count) : OccupancyState count :=
  ⟨invocation.mask⟩

@[simp] theorem executeOccupancy_preserves_mask {count : Nat}
    (invocation : OccupancyInvocation count) :
    (executeOccupancy invocation).mask = invocation.mask :=
  rfl

/-- Inputs to weighted bit projection. -/
structure WeightedBitInvocation (count : Nat) where
  mask : OwnershipSelectionMask count
  selected : selectedOwnerCount mask ≠ 0
  bits : Fin count → Bool

def executeWeightedBit {count : Nat}
    (invocation : WeightedBitInvocation count) : ℚ :=
  weightedBitEvaluation invocation.mask invocation.bits

def weightedBitRepresentation (count : Nat) :
    RepresentationRelation ℚ (WeightedBitInvocation count) where
  abstract := executeWeightedBit
  represents runtime semantic := executeWeightedBit runtime = semantic
  represents_iff _ _ := Iff.rfl

theorem executeWeightedBit_represents {count : Nat}
    (invocation : WeightedBitInvocation count) :
    (weightedBitRepresentation count).represents invocation
      (weightedBitEvaluation invocation.mask invocation.bits) :=
  rfl

/-! ## Arbitrary finite raster states -/

/-- Valid nonnegative weights for `createFiniteRasterState`. -/
structure FiniteWeightsInvocation (count : Nat) where
  weights : NormalizableWeights count

def executeFiniteWeights {count : Nat}
    (invocation : FiniteWeightsInvocation count) : Fin count → ℚ :=
  normalizedWeight invocation.weights

def finiteWeightsRepresentation (count : Nat) :
    RepresentationRelation (Fin count → ℚ) (FiniteWeightsInvocation count) where
  abstract := executeFiniteWeights
  represents runtime semantic := executeFiniteWeights runtime = semantic
  represents_iff _ _ := Iff.rfl

theorem executeFiniteWeights_represents {count : Nat}
    (invocation : FiniteWeightsInvocation count) :
    (finiteWeightsRepresentation count).represents invocation
      (normalizedWeight invocation.weights) :=
  rfl

/-- The operation-specific refinement invariant: every successfully normalized
finite state has total mass one. -/
theorem executeFiniteWeights_sum {count : Nat}
    (invocation : FiniteWeightsInvocation count) :
    ∑ index, executeFiniteWeights invocation index = 1 :=
  normalizedWeight_sum invocation.weights

/-- Raw tolerance-aware invocation matching `createFiniteRasterState` before
its validation checks. -/
structure RawFiniteWeightsInvocation (count : Nat) where
  policy : NormalizationPolicy
  weights : RawFiniteWeights count

def executeRawFiniteWeights {count : Nat}
    (invocation : RawFiniteWeightsInvocation count) :
    RuntimeResult (Fin count → ℚ) :=
  finiteWeightsResult invocation.policy invocation.weights

def RawFiniteWeightsResultRefines {count : Nat}
    (observation : RuntimeObservation (RawFiniteWeightsInvocation count)
      (Fin count → ℚ)) : Prop :=
  ResultRefines executeRawFiniteWeights observation

@[simp] theorem executeRawFiniteWeights_refines {count : Nat}
    (invocation : RawFiniteWeightsInvocation count) :
    RawFiniteWeightsResultRefines
      ⟨invocation, executeRawFiniteWeights invocation⟩ :=
  rfl

theorem executeRawFiniteWeights_sum_of_success {count : Nat}
    (invocation : RawFiniteWeightsInvocation count)
    (weights : Fin count → ℚ)
    (success : executeRawFiniteWeights invocation = .ok weights) :
    ∑ index, weights index = 1 :=
  finiteWeightsResult_sum_of_success invocation.policy invocation.weights
    weights success

@[simp] theorem executeRawFiniteWeights_rejects_equal_tolerance {count : Nat}
    (invocation : RawFiniteWeightsInvocation count)
    (nonnegative : ¬ ∃ index, invocation.weights.rawWeight index < 0)
    (equal : (∑ index, invocation.weights.rawWeight index) =
      invocation.policy.tolerance) :
    executeRawFiniteWeights invocation = .error .insufficientWeightMass := by
  unfold executeRawFiniteWeights finiteWeightsResult
  rw [checkFiniteWeights_rejects_equal_tolerance invocation.policy
    invocation.weights nonnegative equal]
  rfl

/-- Exact-rational foreign finite-weight invocation.  This profile preserves
source-order entry errors but does not assert binary64 accumulation behavior. -/
structure ForeignFiniteWeightsInvocation (count : Nat) where
  policy : NormalizationPolicy
  weights : ForeignFiniteWeights count

def executeForeignFiniteWeights {count : Nat}
    (invocation : ForeignFiniteWeightsInvocation count) :
    RuntimeResult (Fin count → ℚ) :=
  foreignFiniteWeightsResult invocation.policy invocation.weights

def ForeignFiniteWeightsResultRefines {count : Nat}
    (observation : RuntimeObservation (ForeignFiniteWeightsInvocation count)
      (Fin count → ℚ)) : Prop :=
  ResultRefines executeForeignFiniteWeights observation

@[simp] theorem executeForeignFiniteWeights_refines {count : Nat}
    (invocation : ForeignFiniteWeightsInvocation count) :
    ForeignFiniteWeightsResultRefines
      ⟨invocation, executeForeignFiniteWeights invocation⟩ :=
  rfl

/-- Foreign finite-weight invocation with the observed binary64 accumulation
total retained explicitly.  Supplying that observation does not constitute a
universal proof about arbitrary foreign bytes or evaluators. -/
structure ObservedForeignFiniteWeightsInvocation (count : Nat) where
  policy : NormalizationPolicy
  observation : ForeignFiniteWeightsObservation count

def executeObservedForeignFiniteWeights {count : Nat}
    (invocation : ObservedForeignFiniteWeightsInvocation count) :
    RuntimeResult (Fin count → ℚ) :=
  foreignFiniteWeightsObservedResult invocation.policy invocation.observation

def ObservedForeignFiniteWeightsResultRefines {count : Nat}
    (observation : RuntimeObservation
      (ObservedForeignFiniteWeightsInvocation count) (Fin count → ℚ)) : Prop :=
  ResultRefines executeObservedForeignFiniteWeights observation

@[simp] theorem executeObservedForeignFiniteWeights_refines {count : Nat}
    (invocation : ObservedForeignFiniteWeightsInvocation count) :
    ObservedForeignFiniteWeightsResultRefines
      ⟨invocation, executeObservedForeignFiniteWeights invocation⟩ :=
  rfl

/-- One tagged bit-projection value before Boolean validation. -/
structure ForeignBitValueInvocation where
  value : ForeignBitValue

def executeForeignBitValue (invocation : ForeignBitValueInvocation) :
    RuntimeResult Bool :=
  checkForeignBitValue invocation.value

def ForeignBitValueResultRefines
    (observation : RuntimeObservation ForeignBitValueInvocation Bool) : Prop :=
  ResultRefines executeForeignBitValue observation

@[simp] theorem executeForeignBitValue_refines
    (invocation : ForeignBitValueInvocation) :
    ForeignBitValueResultRefines
      ⟨invocation, executeForeignBitValue invocation⟩ :=
  rfl

/-- Valid inputs to `evaluateBitProjection`. -/
structure FiniteBitProjectionInvocation (count : Nat) where
  weights : NormalizableWeights count
  bits : Fin count → Bool

def executeFiniteBitProjection {count : Nat}
    (invocation : FiniteBitProjectionInvocation count) : ℚ :=
  normalizedBitProjection invocation.weights invocation.bits

def finiteBitProjectionRepresentation (count : Nat) :
    RepresentationRelation ℚ (FiniteBitProjectionInvocation count) where
  abstract := executeFiniteBitProjection
  represents runtime semantic := executeFiniteBitProjection runtime = semantic
  represents_iff _ _ := Iff.rfl

theorem executeFiniteBitProjection_represents {count : Nat}
    (invocation : FiniteBitProjectionInvocation count) :
    (finiteBitProjectionRepresentation count).represents invocation
      (normalizedBitProjection invocation.weights invocation.bits) :=
  rfl

/-- The all-true bit field evaluates to unit mass. -/
@[simp] theorem executeFiniteBitProjection_all_true {count : Nat}
    (weights : NormalizableWeights count) :
    executeFiniteBitProjection ⟨weights, fun _ => true⟩ = 1 :=
  normalizedBitProjection_all_true weights

/-! ## Composed region rasterization -/

/-- A valid one-cell rasterization request. -/
structure RasterCellInvocation where
  request : RasterCellRequest

def executeRasterCell (invocation : RasterCellInvocation) : Bool :=
  rasterizeCell invocation.request

def rasterCellRepresentation :
    RepresentationRelation Bool RasterCellInvocation where
  abstract := executeRasterCell
  represents runtime semantic := executeRasterCell runtime = semantic
  represents_iff _ _ := Iff.rfl

theorem executeRasterCell_represents (invocation : RasterCellInvocation) :
    rasterCellRepresentation.represents invocation
      (rasterizeCell invocation.request) :=
  rfl

/-- A selected ownership override controls an exact ownership-policy tie. -/
theorem executeRasterCell_owner_tie (request : RasterCellRequest)
    (selected : Bool) (ownershipPolicy : request.policy = .ownership)
    (exactTie :
      (cellCoverageDetailed request.coverage).value = request.threshold)
    (selection : request.ownerSelection = some selected) :
    executeRasterCell ⟨request⟩ = selected :=
  rasterizeCell_owner_tie request selected ownershipPolicy exactTie selection

/-- Inputs to a typed finite `rasterizeRegion` invocation. -/
structure RasterRegionInvocation (count : Nat) where
  requests : Fin count → RasterCellRequest

def executeRasterRegion {count : Nat}
    (invocation : RasterRegionInvocation count) : Fin count → Bool :=
  rasterizeRegion invocation.requests

def rasterRegionRepresentation (count : Nat) :
    RepresentationRelation (Fin count → Bool) (RasterRegionInvocation count) where
  abstract := executeRasterRegion
  represents runtime semantic := executeRasterRegion runtime = semantic
  represents_iff _ _ := Iff.rfl

theorem executeRasterRegion_represents {count : Nat}
    (invocation : RasterRegionInvocation count) :
    (rasterRegionRepresentation count).represents invocation
      (rasterizeRegion invocation.requests) :=
  rfl

/-- Region-level refinement is pointwise: each output is produced by the
same checked one-cell rasterization semantics. -/
@[simp] theorem executeRasterRegion_at {count : Nat}
    (invocation : RasterRegionInvocation count) (index : Fin count) :
    executeRasterRegion invocation index =
      rasterizeCell (invocation.requests index) :=
  rfl

/-! ## High-level prepared carrier-geometry operation -/

/-- Prepared invocation of the complete combine/coverage/ownership/bit-field
pipeline. -/
structure PreparedCarrierGeometryInvocation (count : Nat) where
  request : PreparedCarrierGeometry count

def executePreparedCarrierGeometry {count : Nat}
    (invocation : PreparedCarrierGeometryInvocation count) :
    CarrierGeometryResult count :=
  rasterizeCarrierGeometryDetailedSpec invocation.request

def preparedCarrierGeometryRepresentation (count : Nat) :
    RepresentationRelation (CarrierGeometryResult count)
      (PreparedCarrierGeometryInvocation count) where
  abstract := executePreparedCarrierGeometry
  represents runtime semantic := executePreparedCarrierGeometry runtime = semantic
  represents_iff _ _ := Iff.rfl

theorem executePreparedCarrierGeometry_represents {count : Nat}
    (invocation : PreparedCarrierGeometryInvocation count) :
    (preparedCarrierGeometryRepresentation count).represents invocation
      (rasterizeCarrierGeometryDetailedSpec invocation.request) :=
  rfl

@[simp] theorem executePreparedCarrierGeometry_operationOrderLiteral
    {count : Nat} (invocation : PreparedCarrierGeometryInvocation count) :
    (executePreparedCarrierGeometry invocation).operationOrderLiteral =
      "before-rasterization" :=
  rfl

@[simp] theorem executePreparedCarrierGeometry_ownerSelection {count : Nat}
    (invocation : PreparedCarrierGeometryInvocation count) :
    (executePreparedCarrierGeometry invocation).ownerSelection =
      invocation.request.ownerSelection :=
  rfl

@[simp] theorem executePreparedCarrierGeometry_ownership {count : Nat}
    (invocation : PreparedCarrierGeometryInvocation count) :
    (executePreparedCarrierGeometry invocation).ownership =
      invocation.request.ownership :=
  rfl

@[simp] theorem executePreparedCarrierGeometry_at {count : Nat}
    (invocation : PreparedCarrierGeometryInvocation count) (index : Fin count) :
    (executePreparedCarrierGeometry invocation).bitField index =
      rasterizeCell (invocation.request.cellRequest index) :=
  rfl

/-- Fully formal invocation for a supplied continuous region, finite grid, and
ownership decisions.  This does not claim to construct a stroked path. -/
structure ContinuousRegionGridInvocation (count : Nat) where
  input : ContinuousRegionGridInput count

def executeContinuousRegionGrid {count : Nat}
    (invocation : ContinuousRegionGridInvocation count) :
    CarrierGeometryResult count :=
  rasterizeCarrierGeometryDetailedSpec
    (prepareContinuousRegionGrid invocation.input)

def continuousRegionGridRepresentation (count : Nat) :
    RepresentationRelation (CarrierGeometryResult count)
      (ContinuousRegionGridInvocation count) where
  abstract := executeContinuousRegionGrid
  represents runtime semantic := executeContinuousRegionGrid runtime = semantic
  represents_iff _ _ := Iff.rfl

theorem executeContinuousRegionGrid_represents {count : Nat}
    (invocation : ContinuousRegionGridInvocation count) :
    (continuousRegionGridRepresentation count).represents invocation
      (rasterizeCarrierGeometryDetailedSpec
        (prepareContinuousRegionGrid invocation.input)) :=
  rfl

@[simp] theorem executeContinuousRegionGrid_ownership {count : Nat}
    (invocation : ContinuousRegionGridInvocation count) :
    (executeContinuousRegionGrid invocation).ownership =
      invocation.input.ownership :=
  rfl

@[simp] theorem executeContinuousRegionGrid_ownerSelection {count : Nat}
    (invocation : ContinuousRegionGridInvocation count) (index : Fin count) :
    (executeContinuousRegionGrid invocation).ownerSelection index =
      match invocation.input.ownership with
      | none => none
      | some ownership => ownership.ownerSelection index :=
  rfl

@[simp] theorem executeContinuousRegionGrid_operationOrderLiteral
    {count : Nat} (invocation : ContinuousRegionGridInvocation count) :
    (executeContinuousRegionGrid invocation).operationOrderLiteral =
      "before-rasterization" :=
  rfl

/-- Raw invocation retains sampling and threshold failures. -/
structure RawCarrierGeometryInvocation (count : Nat) where
  request : RawCarrierGeometry count

def executeRawCarrierGeometry {count : Nat}
    (invocation : RawCarrierGeometryInvocation count) :
    RuntimeResult (CarrierGeometryResult count) :=
  rasterizeCarrierGeometryResult invocation.request

def RawCarrierGeometryResultRefines {count : Nat}
    (observation : RuntimeObservation (RawCarrierGeometryInvocation count)
      (CarrierGeometryResult count)) : Prop :=
  ResultRefines executeRawCarrierGeometry observation

@[simp] theorem executeRawCarrierGeometry_refines {count : Nat}
    (invocation : RawCarrierGeometryInvocation count) :
    RawCarrierGeometryResultRefines
      ⟨invocation, executeRawCarrierGeometry invocation⟩ :=
  rfl

@[simp] theorem executeRawCarrierGeometry_rejects_zero_samples {count : Nat}
    (invocation : RawCarrierGeometryInvocation count)
    (zero : invocation.request.samples = 0) :
    executeRawCarrierGeometry invocation = .error .invalidSampleCount := by
  unfold executeRawCarrierGeometry rasterizeCarrierGeometryResult
  rw [prepareCarrierGeometryResult_zero_samples invocation.request zero]
  rfl

/-- High-level foreign invocation retaining the configured set-operation
order before post-stroke geometry validation. -/
structure CheckedForeignCarrierGeometryInvocation (count : Nat) where
  request : ForeignCarrierGeometryRequest count

def executeCheckedForeignCarrierGeometry {count : Nat}
    (invocation : CheckedForeignCarrierGeometryInvocation count) :
    RuntimeResult (CarrierGeometryResult count) :=
  foreignCarrierGeometryResult invocation.request

def CheckedForeignCarrierGeometryResultRefines {count : Nat}
    (observation : RuntimeObservation
      (CheckedForeignCarrierGeometryInvocation count)
      (CarrierGeometryResult count)) : Prop :=
  ResultRefines executeCheckedForeignCarrierGeometry observation

@[simp] theorem executeCheckedForeignCarrierGeometry_refines {count : Nat}
    (invocation : CheckedForeignCarrierGeometryInvocation count) :
    CheckedForeignCarrierGeometryResultRefines
      ⟨invocation, executeCheckedForeignCarrierGeometry invocation⟩ :=
  rfl

@[simp] theorem executeCheckedForeignCarrierGeometry_rejects_order
    {count : Nat} (raw : RawCarrierGeometry count) :
    executeCheckedForeignCarrierGeometry ⟨⟨.unsupported, raw⟩⟩ =
      .error .invalidSetOperationOrder :=
  rfl

/-- Foreign public inputs are related to post-preparation records by explicit
executable evidence.  This is the boundary for path stroking, grid creation,
physical carrier ordering, and ownership lookup. -/
structure ForeignCarrierGeometryObservation (ForeignInput : Type)
    (count : Nat) where
  input : ForeignInput
  prepared : RawCarrierGeometry count
  observed : RuntimeResult (CarrierGeometryResult count)

def ForeignCarrierGeometryResultRefines {ForeignInput : Type} {count : Nat}
    (preparation : GeometryPreparationRelation ForeignInput count)
    (observation : ForeignCarrierGeometryObservation ForeignInput count) : Prop :=
  preparation.prepares observation.input observation.prepared ∧
    observation.observed = rasterizeCarrierGeometryResult observation.prepared

theorem foreignCarrierGeometryObservation_refines
    {ForeignInput : Type} {count : Nat}
    (preparation : GeometryPreparationRelation ForeignInput count)
    (input : ForeignInput) (prepared : RawCarrierGeometry count)
    (validated : preparation.prepares input prepared) :
    ForeignCarrierGeometryResultRefines preparation
      ⟨input, prepared, rasterizeCarrierGeometryResult prepared⟩ :=
  ⟨validated, rfl⟩

/-- Inputs to coordinate-swap reflection. -/
structure DiagonalReflectionInvocation where
  point : RasterPoint

def executeDiagonalReflection
    (invocation : DiagonalReflectionInvocation) : RasterPoint :=
  invocation.point.reflectDiagonal

def diagonalReflectionRepresentation :
    RepresentationRelation RasterPoint DiagonalReflectionInvocation where
  abstract := executeDiagonalReflection
  represents runtime semantic := executeDiagonalReflection runtime = semantic
  represents_iff _ _ := Iff.rfl

theorem executeDiagonalReflection_represents
    (invocation : DiagonalReflectionInvocation) :
    diagonalReflectionRepresentation.represents invocation
      invocation.point.reflectDiagonal :=
  rfl

@[simp] theorem executeDiagonalReflection_involutive (point : RasterPoint) :
    executeDiagonalReflection
      ⟨executeDiagonalReflection ⟨point⟩⟩ = point :=
  RasterPoint.reflectDiagonal_involutive point

/-- Checked reflection of a finite iterable under one exact descriptor. -/
structure IterableReflectionInvocation where
  points : List RasterPoint
  descriptor : ReflectionDescriptor

def executeIterableReflection (invocation : IterableReflectionInvocation) :
    List RasterPoint :=
  reflectCarrierSpace invocation.points invocation.descriptor

def iterableReflectionRepresentation :
    RepresentationRelation (List RasterPoint) IterableReflectionInvocation where
  abstract := executeIterableReflection
  represents runtime semantic := executeIterableReflection runtime = semantic
  represents_iff _ _ := Iff.rfl

theorem executeIterableReflection_represents
    (invocation : IterableReflectionInvocation) :
    iterableReflectionRepresentation.represents invocation
      (reflectCarrierSpace invocation.points invocation.descriptor) :=
  rfl

@[simp] theorem executeIterableReflection_length
    (invocation : IterableReflectionInvocation) :
    (executeIterableReflection invocation).length = invocation.points.length :=
  reflectCarrierSpace_length invocation.points invocation.descriptor

/-- Raw iterable reflection preserves invalid-normal failure. -/
structure RawIterableReflectionInvocation where
  points : List RasterPoint
  descriptor : RawReflectionDescriptor

def executeRawIterableReflection
    (invocation : RawIterableReflectionInvocation) :
    RuntimeResult (List RasterPoint) :=
  reflectCarrierSpaceResult invocation.points invocation.descriptor

def RawIterableReflectionResultRefines
    (observation : RuntimeObservation RawIterableReflectionInvocation
      (List RasterPoint)) : Prop :=
  ResultRefines executeRawIterableReflection observation

@[simp] theorem executeRawIterableReflection_refines
    (invocation : RawIterableReflectionInvocation) :
    RawIterableReflectionResultRefines
      ⟨invocation, executeRawIterableReflection invocation⟩ :=
  rfl

/-- Tagged foreign one-point diagonal reflection. -/
structure ForeignDiagonalReflectionInvocation where
  point : ForeignRasterPoint

def executeForeignDiagonalReflection
    (invocation : ForeignDiagonalReflectionInvocation) :
    RuntimeResult RasterPoint :=
  foreignDiagonalReflectionResult invocation.point

def ForeignDiagonalReflectionResultRefines
    (observation : RuntimeObservation ForeignDiagonalReflectionInvocation
      RasterPoint) : Prop :=
  ResultRefines executeForeignDiagonalReflection observation

@[simp] theorem executeForeignDiagonalReflection_refines
    (invocation : ForeignDiagonalReflectionInvocation) :
    ForeignDiagonalReflectionResultRefines
      ⟨invocation, executeForeignDiagonalReflection invocation⟩ :=
  rfl

/-- Tagged foreign iterable diagonal reflection. -/
structure ForeignCarrierDiagonalInvocation where
  points : List ForeignRasterPoint

def executeForeignCarrierDiagonal
    (invocation : ForeignCarrierDiagonalInvocation) :
    RuntimeResult (List RasterPoint) :=
  foreignCarrierDiagonalResult invocation.points

def ForeignCarrierDiagonalResultRefines
    (observation : RuntimeObservation ForeignCarrierDiagonalInvocation
      (List RasterPoint)) : Prop :=
  ResultRefines executeForeignCarrierDiagonal observation

@[simp] theorem executeForeignCarrierDiagonal_refines
    (invocation : ForeignCarrierDiagonalInvocation) :
    ForeignCarrierDiagonalResultRefines
      ⟨invocation, executeForeignCarrierDiagonal invocation⟩ :=
  rfl

@[simp] theorem executeCarrierDiagonal_involutive (points : List RasterPoint) :
    reflectCarrierDiagonal (reflectCarrierDiagonal points) = points :=
  reflectCarrierDiagonal_involutive points

/-- Inputs to the decidable Gamma branch/domain policy. -/
structure GammaBranchInvocation where
  input : ℚ

def executeGammaBranch (invocation : GammaBranchInvocation) : GammaBranch :=
  gammaBranch invocation.input

def gammaBranchRepresentation :
    RepresentationRelation GammaBranch GammaBranchInvocation where
  abstract := executeGammaBranch
  represents runtime semantic := executeGammaBranch runtime = semantic
  represents_iff _ _ := Iff.rfl

theorem executeGammaBranch_represents (invocation : GammaBranchInvocation) :
    gammaBranchRepresentation.represents invocation
      (gammaBranch invocation.input) :=
  rfl

/-- An observed floating Gamma output or rejection. -/
structure GammaRuntimeObservation where
  input : ℝ
  observed : RuntimeResult ℝ

def GammaRuntimeResultRefines (observation : GammaRuntimeObservation) : Prop :=
  GammaResultRelation observation.input observation.observed

theorem gammaRuntimeSuccess_refines
    (certificate : GammaApproximationCertificate) :
    GammaRuntimeResultRefines
      ⟨certificate.input, .ok certificate.runtimeOutput⟩ :=
  gammaResultRelation_of_certificate certificate

theorem gammaRuntimePole_refines (index : Nat) :
    GammaRuntimeResultRefines ⟨-(index : ℝ), .error .gammaPole⟩ :=
  gammaResultRelation_pole index

theorem gammaRuntimeNonfinite_refines (input : ℝ)
    (domain : gammaDomain input)
    (certificate : FloatingRangeFailureCertificate)
    (output : certificate.exactOutput = lanczosGammaModel input) :
    GammaRuntimeResultRefines ⟨input, .error .nonfiniteForeignResult⟩ :=
  gammaResultRelation_nonfinite_of_certificate input domain certificate output

/-- Tagged foreign Gamma-domain validation.  This boundary rejects nonfinite
values before any approximation certificate can be considered. -/
structure ForeignGammaInputInvocation where
  input : ForeignRational

def executeForeignGammaInput (invocation : ForeignGammaInputInvocation) :
    RuntimeResult ℝ :=
  checkForeignGammaInput invocation.input

def ForeignGammaInputResultRefines
    (observation : RuntimeObservation ForeignGammaInputInvocation ℝ) : Prop :=
  ResultRefines executeForeignGammaInput observation

@[simp] theorem executeForeignGammaInput_refines
    (invocation : ForeignGammaInputInvocation) :
    ForeignGammaInputResultRefines
      ⟨invocation, executeForeignGammaInput invocation⟩ :=
  rfl

@[simp] theorem executeForeignGammaInput_rejects_nonfinite :
    executeForeignGammaInput ⟨.nan⟩ = .error .nonfiniteInput :=
  rfl

/-- Inputs to the exact real precession formula. -/
structure PrecessionInvocation where
  phase : ℝ
  exponent : ℝ
  admissible : PrecessionAdmissible phase exponent

noncomputable def executePrecession (invocation : PrecessionInvocation) : ℝ :=
  precessionPhaseModel invocation.phase invocation.exponent

noncomputable def precessionRepresentation :
    RepresentationRelation ℝ PrecessionInvocation where
  abstract := executePrecession
  represents runtime semantic := executePrecession runtime = semantic
  represents_iff _ _ := Iff.rfl

theorem executePrecession_represents (invocation : PrecessionInvocation) :
    precessionRepresentation.represents invocation
      (precessionPhaseModel invocation.phase invocation.exponent) :=
  rfl

/-- A successful precession invocation remains nonnegative.  Floating overflow
and approximation remain executable conformance obligations, not theorem
consequences of this real-valued model. -/
theorem executePrecession_nonnegative (invocation : PrecessionInvocation) :
    0 ≤ executePrecession invocation :=
  precessionPhaseModel_nonnegative invocation.admissible.1
    invocation.exponent

/-- Raw finite-input precession invocation retains both domain errors. -/
structure RawPrecessionInvocation where
  phase : ℝ
  exponent : ℝ

noncomputable def executeRawPrecession (invocation : RawPrecessionInvocation) :
    RuntimeResult ℝ :=
  precessionResult invocation.phase invocation.exponent

def RawPrecessionResultRefines
    (observation : RuntimeObservation RawPrecessionInvocation ℝ) : Prop :=
  ResultRefines executeRawPrecession observation

@[simp] theorem executeRawPrecession_refines
    (invocation : RawPrecessionInvocation) :
    RawPrecessionResultRefines
      ⟨invocation, executeRawPrecession invocation⟩ :=
  rfl

@[simp] theorem executeRawPrecession_rejects_negative
    {phase exponent : ℝ} (negative : phase < 0) :
    executeRawPrecession ⟨phase, exponent⟩ = .error .negativePhase :=
  precessionResult_negative negative

@[simp] theorem executeRawPrecession_rejects_zero_negative
    {exponent : ℝ} (negative : exponent < 0) :
    executeRawPrecession ⟨0, exponent⟩ = .error .zeroToNegativePower :=
  precessionResult_zero_negative negative

/-- Relation for foreign precession observations.  Unlike deterministic real
execution, this relation can represent floating overflow, but only with an
explicit range certificate. -/
structure PrecessionRuntimeObservation where
  phase : ℝ
  exponent : ℝ
  observed : RuntimeResult ℝ

def PrecessionRuntimeResultRefines
    (observation : PrecessionRuntimeObservation) : Prop :=
  PrecessionResultRelation observation.phase observation.exponent
    observation.observed

theorem precessionRuntimeSuccess_refines {phase exponent : ℝ}
    (admissible : PrecessionAdmissible phase exponent) :
    PrecessionRuntimeResultRefines
      ⟨phase, exponent, .ok (precessionPhaseModel phase exponent)⟩ :=
  ⟨admissible, by
    simpa using precessionProfileMaximumError_nonnegative⟩

theorem precessionRuntimeNonfinite_refines {phase exponent : ℝ}
    (admissible : PrecessionAdmissible phase exponent)
    (certificate : FloatingRangeFailureCertificate)
    (output : certificate.exactOutput =
      precessionPhaseModel phase exponent) :
    PrecessionRuntimeResultRefines
      ⟨phase, exponent, .error .nonfiniteForeignResult⟩ :=
  ⟨admissible, certificate, output⟩

/-- Tagged foreign precession invocation.  Both operands cross the nonfinite
boundary before the exact finite-input domain operation runs. -/
structure ForeignPrecessionInvocation where
  phase : ForeignRational
  exponent : ForeignRational

noncomputable def executeForeignPrecession
    (invocation : ForeignPrecessionInvocation) : RuntimeResult ℝ :=
  foreignPrecessionResult invocation.phase invocation.exponent

def ForeignPrecessionResultRefines
    (observation : RuntimeObservation ForeignPrecessionInvocation ℝ) : Prop :=
  ResultRefines executeForeignPrecession observation

@[simp] theorem executeForeignPrecession_refines
    (invocation : ForeignPrecessionInvocation) :
    ForeignPrecessionResultRefines
      ⟨invocation, executeForeignPrecession invocation⟩ :=
  rfl

@[simp] theorem executeForeignPrecession_rejects_nonfinite_phase
    (exponent : ForeignRational) :
    executeForeignPrecession ⟨.nan, exponent⟩ = .error .nonfiniteInput :=
  rfl

end BitMatrix.Runtime.Correspondence
```
