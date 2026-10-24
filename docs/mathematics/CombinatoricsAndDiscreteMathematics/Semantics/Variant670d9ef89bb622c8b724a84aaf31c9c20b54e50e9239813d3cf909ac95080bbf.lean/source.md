# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Semantics.Variant670d9ef89bb622c8b724a84aaf31c9c20b54e50e9239813d3cf909ac95080bbf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5f5bc6df80e54bb39e21d79973c0110075965f8` · SHA-256 `77e27392a058b9d146fc0e403075f3d50acbbe0a34dead18aaaf29d40cb1a110`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.BitField.Variant03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.BitField.Variant03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Runtime/Semantics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Codec.BitDocument
import BitMatrix.Core.Basic
import BitMatrix.Geometry.GridCell
import BitMatrix.Geometry.Stroke
import BitMatrix.Rhetorical.Core
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Rat.Floor

/-!
# Runtime-visible Bit semantics

These definitions are the formal side of the runtime correspondence ledger.
They do not claim byte-for-byte equivalence with a Rust or JavaScript program;
that promotion additionally requires the executable conformance tests recorded
by the concept ledger.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.BitField.Variant03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac

namespace BitMatrix.Runtime.Semantics

/-- A checked fixed-width natural-number bit field. -/
structure BitField (width : Nat) where
  value : Nat
  inRange : value < 2 ^ width

/-- Read a field bit through a typed index. -/
def BitField.bitAt {width : Nat} (field : BitField width) (index : Fin width) : Bool :=
  Nat.testBit field.value index.val

/-- Finite carrier grid, distinguished origin, and carrier multiplicity. -/
structure CarrierGrid (rows columns : Nat) where
  origin : GridCell rows columns
  carrierMultiplicity : GridCell rows columns → Nat

/-- Ownership is a Boolean mask over a typed finite grid. -/
abbrev OwnershipMask (rows columns : Nat) := BitMatrix rows columns

/-- A normalized finite raster state. -/
structure FiniteRasterState (carrierCount : Nat) where
  weight : Fin carrierCount → ℝ
  nonnegative : ∀ carrier, 0 ≤ weight carrier
  normalized : ∑ carrier, weight carrier = 1

/-- The exact three-state triangle carrier. -/
inductive TriangleVertex where
  | point0
  | point1
  | point2
  deriving DecidableEq, Repr

/-- Triangle successor cycle `0 → 1 → 2 → 0`. -/
def triangleSuccessor : Equiv.Perm TriangleVertex where
  toFun
    | .point0 => .point1
    | .point1 => .point2
    | .point2 => .point0
  invFun
    | .point0 => .point2
    | .point1 => .point0
    | .point2 => .point1
  left_inv vertex := by cases vertex <;> rfl
  right_inv vertex := by cases vertex <;> rfl

@[simp]
theorem triangleSuccessor_third_power (vertex : TriangleVertex) :
    (triangleSuccessor ^ 3) vertex = vertex := by
  cases vertex <;> rfl

/-- Runtime braid semantics expose an endpoint permutation, not a braid-group proof. -/
structure BraidEndpointPresentation (Endpoint : Type) where
  endpointPermutation : Equiv.Perm Endpoint

/-- The canonical eight-stage runtime pipeline order. -/
inductive PipelineStage where
  | motion
  | strokeRegion
  | setCombination
  | rasterCoverage
  | ownership
  | bitField
  | finiteRasterState
  | annotations
  deriving DecidableEq, Repr

def canonicalPipelineStages : List PipelineStage :=
  [.motion, .strokeRegion, .setCombination, .rasterCoverage,
    .ownership, .bitField, .finiteRasterState, .annotations]

/-- A completed pipeline trace must retain the canonical stage order. -/
structure PipelineTrace where
  stages : List PipelineStage
  canonicalOrder : stages = canonicalPipelineStages

/-- User-controlled inputs from which runtime dimensions are derived. -/
structure ConfigurationInput where
  bitLength : Nat
  cellExtentPixels : Nat
  bitLengthPositive : 0 < bitLength
  cellExtentPositive : 0 < cellExtentPixels

/-- Immutable derived configuration values. -/
structure DerivedConfiguration where
  cellsPerAxis : Nat
  rasterTotalPixelsPerAxis : Nat
  payloadOffsetDigits : Nat

/-- One deterministic derivation authority for runtime dimensions. -/
def deriveConfiguration (input : ConfigurationInput) : DerivedConfiguration where
  cellsPerAxis := input.bitLength
  rasterTotalPixelsPerAxis := input.bitLength * input.cellExtentPixels
  payloadOffsetDigits := input.bitLength

@[simp]
theorem derive_cells_per_axis (input : ConfigurationInput) :
    (deriveConfiguration input).cellsPerAxis = input.bitLength :=
  rfl

@[simp]
theorem derive_raster_extent (input : ConfigurationInput) :
    (deriveConfiguration input).rasterTotalPixelsPerAxis =
      input.bitLength * input.cellExtentPixels :=
  rfl

/-! ## Exact raster, ownership, and floating-profile semantics

The JavaScript runtime necessarily uses IEEE-754 numbers.  The discrete
policy layer below is instead stated over rationals, so its rounding, tie,
coverage, ownership, and reflection rules are exact.  The Gamma/precession
section states the real-valued formula implemented by the floating profile and
keeps numerical-error evidence in an explicit certificate.
-/

/-- Stable semantic error classes for public runtime operations.  The exact
JavaScript exception text is presentation data; these constructors record the
fail-closed reason that is relevant to the formal operation. -/
inductive RuntimeFailure where
  | invalidCarrierArity
  | zeroOwnershipMask
  | invalidSampleCount
  | degenerateCellSupport
  | invalidCoverage
  | invalidExactCoverage
  | invalidContainment
  | invalidThreshold
  | invalidTiePolicy
  | invalidRoundingMode
  | invalidExtent
  | nonfiniteInput
  | invalidBitProjection
  | invalidReflectionPoint
  | invalidSetOperationOrder
  | invalidWeightCollection
  | invalidOwnership
  | negativeWeight
  | insufficientWeightMass
  | invalidReflectionNormal
  | gammaPole
  | negativePhase
  | zeroToNegativePower
  | nonfiniteForeignResult
  deriving DecidableEq, Repr

/-- A checked runtime operation either returns a value or an explicit failure. -/
abbrev RuntimeResult (Result : Type) := Except RuntimeFailure Result

/-- A foreign observation retains both its raw input and the result that was
actually observed.  This prevents a correspondence theorem from silently
discarding rejected inputs. -/
structure RuntimeObservation (Input Result : Type) where
  input : Input
  observed : RuntimeResult Result

/-- A runtime observation refines a checked semantic operation exactly when
its complete success-or-failure result agrees with the specification. -/
def ResultRefines {Input Result : Type}
    (specification : Input → RuntimeResult Result)
    (observation : RuntimeObservation Input Result) : Prop :=
  observation.observed = specification observation.input

/-- Executing a specification produces a refining observation. -/
@[simp] theorem executeObservation_refines {Input Result : Type}
    (specification : Input → RuntimeResult Result) (input : Input) :
    ResultRefines specification ⟨input, specification input⟩ :=
  rfl

/-- The complete configured raster-rounding vocabulary. -/
inductive RasterRounding where
  | nearest
  | floor
  | ceil
  deriving DecidableEq, Repr

/-- Exact counterpart of the runtime rounding operation.  The nearest branch
uses `floor (x + 1/2)`, matching JavaScript's ties-toward-positive-infinity
`Math.round`, including for negative half-integers. -/
def RasterRounding.round : RasterRounding → ℚ → ℤ
  | .nearest, value => Rat.floor (value + 1 / 2)
  | .floor, value => Rat.floor value
  | .ceil, value => Rat.ceil value

@[simp] theorem round_positive_tie :
    RasterRounding.nearest.round (1 / 2) = 1 := by
  change Rat.floor ((1 / 2 : ℚ) + 1 / 2) = 1
  rw [show ((1 / 2 : ℚ) + 1 / 2) = 1 by norm_num]
  change ⌊(1 : ℚ)⌋ = 1
  exact Int.floor_intCast 1

@[simp] theorem round_negative_tie :
    RasterRounding.nearest.round (-1 / 2) = 0 := by
  change Rat.floor ((-1 / 2 : ℚ) + 1 / 2) = 0
  rw [show ((-1 / 2 : ℚ) + 1 / 2) = 0 by norm_num]
  change ⌊(0 : ℚ)⌋ = 0
  exact Int.floor_intCast 0

@[simp] theorem round_zero :
    RasterRounding.nearest.round 0 = 0 := by
  change Rat.floor ((0 : ℚ) + 1 / 2) = 0
  rw [show ((0 : ℚ) + 1 / 2) = 1 / 2 by ring]
  change ⌊(1 / 2 : ℚ)⌋ = 0
  rw [Int.floor_eq_iff]
  norm_num

/-- An integer result with the IEEE-754 sign of zero retained separately.
`negativeZero = true` is meaningful only when `value = 0`. -/
structure SignedInteger where
  value : ℤ
  negativeZero : Bool
  negativeZeroOnlyAtZero : negativeZero = true → value = 0

/-- Exact abstraction of the sign produced by JavaScript rounding on a
nonzero rational input.  Rational inputs cannot themselves distinguish `0`
from `-0`; the output nevertheless records the observable negative zero
created by `Math.round` and `Math.ceil` on negative inputs. -/
def RasterRounding.roundSigned (mode : RasterRounding) (input : ℚ) : SignedInteger :=
  let result := mode.round input
  if zero : result = 0 then
    if negative : input < 0 ∧ mode ≠ .floor then
      { value := result
        negativeZero := true
        negativeZeroOnlyAtZero := fun _ => zero }
    else
      { value := result
        negativeZero := false
        negativeZeroOnlyAtZero := by simp }
  else
    { value := result
      negativeZero := false
      negativeZeroOnlyAtZero := by simp }

@[simp] theorem RasterRounding.roundSigned_value
    (mode : RasterRounding) (input : ℚ) :
    (mode.roundSigned input).value = mode.round input := by
  unfold RasterRounding.roundSigned
  dsimp only
  split
  · split <;> rfl
  · rfl

/-- JavaScript observes `Math.round(-0.5)` as negative zero, even though its
integer value equals zero. -/
@[simp] theorem roundSigned_negative_tie_value :
    (RasterRounding.nearest.roundSigned (-1 / 2)).value = 0 := by
  simp

@[simp] theorem roundSigned_negative_tie_sign :
    (RasterRounding.nearest.roundSigned (-1 / 2)).negativeZero = true := by
  simp only [RasterRounding.roundSigned, round_negative_tie]
  simp [show (-1 / 2 : ℚ) < 0 by norm_num]

@[simp] theorem roundSigned_positive_tie_sign :
    (RasterRounding.nearest.roundSigned (1 / 2)).negativeZero = false := by
  simp only [RasterRounding.roundSigned, round_positive_tie]
  simp

/-- Increasing and decreasing display axes. -/
inductive AxisDirection where
  | increasing
  | decreasing
  deriving DecidableEq, Repr

/-- Signed rational result used after normalized coordinate division. -/
structure SignedRational where
  value : ℚ
  negativeZero : Bool
  negativeZeroOnlyAtZero : negativeZero = true → value = 0

/-- Normalize an already-quantized signed integer. -/
def normalizeSignedInteger (direction : AxisDirection) (extent : Nat)
    (quantized : SignedInteger) : SignedRational :=
  match direction with
  | .increasing =>
      { value := (quantized.value : ℚ) / extent
        negativeZero := quantized.negativeZero
        negativeZeroOnlyAtZero := by
          intro negative
          have quantizedZero := quantized.negativeZeroOnlyAtZero negative
          simp [quantizedZero] }
  | .decreasing =>
      { value := 1 - (quantized.value : ℚ) / extent
        negativeZero := false
        negativeZeroOnlyAtZero := by simp }

/-- Normalize a signed quantized coordinate while retaining negative zero on
an increasing axis.  Axis reversal maps numeric zero to one and therefore
clears the zero sign. -/
def normalizeSignedRasterCoordinate (rounding : RasterRounding)
    (direction : AxisDirection) (extent : Nat) (coordinate : ℚ) :
    SignedRational :=
  normalizeSignedInteger direction extent (rounding.roundSigned coordinate)

@[simp] theorem normalizeSigned_negative_tie_value (extent : Nat) :
    (normalizeSignedRasterCoordinate .nearest .increasing extent (-1 / 2)).value =
  0 := by
  simp [normalizeSignedRasterCoordinate, normalizeSignedInteger]

@[simp] theorem normalizeSigned_negative_tie_sign (extent : Nat) :
    (normalizeSignedRasterCoordinate .nearest .increasing extent
      (-1 / 2)).negativeZero = true := by
  simp [normalizeSignedRasterCoordinate, normalizeSignedInteger]

@[simp] theorem normalizeSigned_negative_tie_decreasing (extent : Nat) :
    (normalizeSignedRasterCoordinate .nearest .decreasing extent
      (-1 / 2)).value = 1 ∧
    (normalizeSignedRasterCoordinate .nearest .decreasing extent
      (-1 / 2)).negativeZero = false := by
  constructor <;>
    simp [normalizeSignedRasterCoordinate, normalizeSignedInteger]

/-- Tagged foreign rounding mode before vocabulary validation. -/
inductive ForeignRoundingMode where
  | supported (mode : RasterRounding)
  | unsupported
  deriving DecidableEq, Repr

/-- Tagged foreign numeric input.  Nonfinite values and negative zero are not
collapsed into ordinary rationals. -/
inductive ForeignRational where
  | finite (value : ℚ)
  | negativeZero
  | nan
  | positiveInfinity
  | negativeInfinity
  deriving DecidableEq, Repr

/-- The distinguished signed integer zero produced by a foreign negative-zero
input.  Naming the value keeps its proof field out of runtime case analysis. -/
def negativeZeroInteger : SignedInteger where
  value := 0
  negativeZero := true
  negativeZeroOnlyAtZero := fun _ => rfl

/-- The distinguished signed rational zero retained by normalization on an
increasing axis. -/
def negativeZeroRational : SignedRational where
  value := 0
  negativeZero := true
  negativeZeroOnlyAtZero := fun _ => rfl

/-- Convert a tagged finite input to the exact rational policy layer.  The
sign of zero remains relevant to signed coordinate outputs but not to numeric
comparisons, so negative zero converts to rational zero. -/
def checkForeignRationalExact : ForeignRational → RuntimeResult ℚ
  | .finite value => .ok value
  | .negativeZero => .ok 0
  | .nan | .positiveInfinity | .negativeInfinity => .error .nonfiniteInput

@[simp] theorem checkForeignRationalExact_nan :
    checkForeignRationalExact .nan = .error .nonfiniteInput :=
  rfl

/-- Fail-closed raw rounding semantics. -/
def foreignRoundingResult (mode : ForeignRoundingMode)
    (input : ForeignRational) : RuntimeResult SignedInteger :=
  match input with
  | .nan | .positiveInfinity | .negativeInfinity => .error .nonfiniteInput
  | .finite value =>
      match mode with
      | .unsupported => .error .invalidRoundingMode
      | .supported rounding => .ok (rounding.roundSigned value)
  | .negativeZero =>
      match mode with
      | .unsupported => .error .invalidRoundingMode
      | .supported _ => .ok negativeZeroInteger

/-- Raw normalized-coordinate request with tagged mode and numeric input. -/
structure ForeignNormalizedCoordinateRequest where
  mode : ForeignRoundingMode
  direction : AxisDirection
  extent : Nat
  coordinate : ForeignRational

/-- Fail-closed signed normalized-coordinate semantics. -/
def foreignNormalizedCoordinateResult
    (request : ForeignNormalizedCoordinateRequest) :
    RuntimeResult SignedRational :=
  match checkForeignRationalExact request.coordinate with
  | .error failure => .error failure
  | .ok _ =>
      if _zeroExtent : request.extent = 0 then
        .error .invalidExtent
      else
        (foreignRoundingResult request.mode request.coordinate).map
          (normalizeSignedInteger request.direction request.extent)

@[simp] theorem foreignRoundingResult_nonfinite
    (mode : RasterRounding) :
    foreignRoundingResult (.supported mode) .nan = .error .nonfiniteInput :=
  rfl

@[simp] theorem foreignNormalizedCoordinate_negativeZero (extent : Nat)
    (nonzero : extent ≠ 0) :
    foreignNormalizedCoordinateResult
      ⟨.supported .nearest, .increasing, extent, .negativeZero⟩ =
        .ok negativeZeroRational := by
  simp only [foreignNormalizedCoordinateResult, nonzero, ↓reduceDIte,
    checkForeignRationalExact, foreignRoundingResult, Except.map]
  congr 1
  cases extent with
  | zero => contradiction
  | succ extent =>
      cases extent <;>
        simp [normalizeSignedInteger, negativeZeroInteger, negativeZeroRational]

/-- A rational point at the raster boundary. -/
structure RasterPoint where
  x : ℚ
  y : ℚ
  deriving DecidableEq, Repr

/-- Coordinate-swap reflection used by `reflectDiagonal`. -/
def RasterPoint.reflectDiagonal (point : RasterPoint) : RasterPoint :=
  { x := point.y, y := point.x }

@[simp] theorem RasterPoint.reflectDiagonal_involutive (point : RasterPoint) :
    point.reflectDiagonal.reflectDiagonal = point := by
  cases point
  rfl

/-- Exact reflection descriptors supported by the JavaScript carrier API. -/
inductive ReflectionDescriptor where
  | identity
  | xAxis (offset : ℚ)
  | yAxis (offset : ℚ)
  | diagonal (offset : ℚ)
  | antiDiagonal (offset : ℚ)
  | central (center : RasterPoint)
  | line (normal : RasterPoint) (offset : ℚ)
      (normalNonzero : normal.x ≠ 0 ∨ normal.y ≠ 0)

/-- Exact rational point reflection. -/
def reflectPoint (point : RasterPoint) : ReflectionDescriptor → RasterPoint
  | .identity => point
  | .xAxis offset => { x := point.x, y := 2 * offset - point.y }
  | .yAxis offset => { x := 2 * offset - point.x, y := point.y }
  | .diagonal offset => { x := point.y + offset, y := point.x - offset }
  | .antiDiagonal offset => { x := offset - point.y, y := offset - point.x }
  | .central center => { x := 2 * center.x - point.x, y := 2 * center.y - point.y }
  | .line normal offset _ =>
      let squaredNorm := normal.x ^ 2 + normal.y ^ 2
      let displacement :=
        (normal.x * point.x + normal.y * point.y - offset) / squaredNorm
      { x := point.x - 2 * displacement * normal.x
        y := point.y - 2 * displacement * normal.y }

/-- Reflect every point of a finite iterable without changing its order. -/
def reflectCarrierSpace (points : List RasterPoint)
    (descriptor : ReflectionDescriptor) : List RasterPoint :=
  points.map (fun point => reflectPoint point descriptor)

/-- Iterable specialization of coordinate-swap reflection. -/
def reflectCarrierDiagonal (points : List RasterPoint) : List RasterPoint :=
  points.map RasterPoint.reflectDiagonal

@[simp] theorem reflectCarrierSpace_length (points : List RasterPoint)
    (descriptor : ReflectionDescriptor) :
    (reflectCarrierSpace points descriptor).length = points.length := by
  simp [reflectCarrierSpace]

@[simp] theorem reflectPoint_diagonal_zero (point : RasterPoint) :
    reflectPoint point (.diagonal 0) = point.reflectDiagonal := by
  cases point
  simp [reflectPoint, RasterPoint.reflectDiagonal]

@[simp] theorem reflectCarrierDiagonal_involutive (points : List RasterPoint) :
    reflectCarrierDiagonal (reflectCarrierDiagonal points) = points := by
  simp [reflectCarrierDiagonal, List.map_map, Function.comp_def]

/-- Raw descriptor accepted before the nonzero-normal check. -/
inductive RawReflectionDescriptor where
  | identity
  | xAxis (offset : ℚ)
  | yAxis (offset : ℚ)
  | diagonal (offset : ℚ)
  | antiDiagonal (offset : ℚ)
  | central (center : RasterPoint)
  | line (normal : RasterPoint) (offset : ℚ)

/-- Validate a raw reflection descriptor; a zero line normal fails closed. -/
def checkReflectionDescriptor : RawReflectionDescriptor →
    RuntimeResult ReflectionDescriptor
  | .identity => .ok .identity
  | .xAxis offset => .ok (.xAxis offset)
  | .yAxis offset => .ok (.yAxis offset)
  | .diagonal offset => .ok (.diagonal offset)
  | .antiDiagonal offset => .ok (.antiDiagonal offset)
  | .central center => .ok (.central center)
  | .line normal offset =>
      if nonzero : normal.x ≠ 0 ∨ normal.y ≠ 0 then
        .ok (.line normal offset nonzero)
      else
        .error .invalidReflectionNormal

/-- Raw finite-iterable reflection semantics. -/
def reflectCarrierSpaceResult (points : List RasterPoint)
    (descriptor : RawReflectionDescriptor) : RuntimeResult (List RasterPoint) :=
  (checkReflectionDescriptor descriptor).map (reflectCarrierSpace points)

@[simp] theorem checkReflectionDescriptor_zero_normal (offset : ℚ) :
    checkReflectionDescriptor (.line ⟨0, 0⟩ offset) =
      .error .invalidReflectionNormal := by
  simp [checkReflectionDescriptor]

/-- A foreign reflection point is either an object with independently tagged
coordinates, null, or another non-point value. -/
inductive ForeignRasterPoint where
  | point (x y : ForeignRational)
  | null
  | invalid
  deriving DecidableEq, Repr

/-- Validate point shape before reflecting, retaining nonfinite coordinates as
a distinct numeric failure. -/
def checkForeignRasterPoint : ForeignRasterPoint → RuntimeResult RasterPoint
  | .null | .invalid => .error .invalidReflectionPoint
  | .point x y =>
      match checkForeignRationalExact x with
      | .error failure => .error failure
      | .ok checkedX =>
          match checkForeignRationalExact y with
          | .error failure => .error failure
          | .ok checkedY => .ok ⟨checkedX, checkedY⟩

/-- Validate every point of a foreign iterable in source order. -/
def checkForeignRasterPointList : List ForeignRasterPoint →
    RuntimeResult (List RasterPoint)
  | [] => .ok []
  | point :: remaining =>
      match checkForeignRasterPoint point with
      | .error failure => .error failure
      | .ok checked =>
          match checkForeignRasterPointList remaining with
          | .error failure => .error failure
          | .ok checkedRemaining => .ok (checked :: checkedRemaining)

/-- Checked foreign coordinate-swap reflection of one point. -/
def foreignDiagonalReflectionResult (point : ForeignRasterPoint) :
    RuntimeResult RasterPoint :=
  (checkForeignRasterPoint point).map RasterPoint.reflectDiagonal

/-- Checked foreign coordinate-swap reflection of an iterable. -/
def foreignCarrierDiagonalResult (points : List ForeignRasterPoint) :
    RuntimeResult (List RasterPoint) :=
  (checkForeignRasterPointList points).map reflectCarrierDiagonal

@[simp] theorem foreignDiagonalReflectionResult_null :
    foreignDiagonalReflectionResult .null = .error .invalidReflectionPoint :=
  rfl

@[simp] theorem foreignDiagonalReflectionResult_nonfinite (y : ForeignRational) :
    foreignDiagonalReflectionResult (.point .positiveInfinity y) =
      .error .nonfiniteInput :=
  rfl

@[simp] theorem foreignCarrierDiagonalResult_rejects_invalid_tail
    (y : ForeignRational) :
    foreignCarrierDiagonalResult
      [.point (.finite 0) (.finite 0), .point .nan y] =
        .error .nonfiniteInput :=
  rfl

/-- Quantize a pixel coordinate, normalize by a positive extent, and apply
the configured axis direction.  No clamping is performed. -/
def normalizeRasterCoordinate (rounding : RasterRounding)
    (direction : AxisDirection) (extent : Nat) (coordinate : ℚ) : ℚ :=
  let normalized := (rounding.round coordinate : ℚ) / extent
  match direction with
  | .increasing => normalized
  | .decreasing => 1 - normalized

@[simp] theorem normalizeRasterCoordinate_decreasing (rounding)
    (extent : Nat) (coordinate : ℚ) :
    normalizeRasterCoordinate rounding .decreasing extent coordinate =
      1 - normalizeRasterCoordinate rounding .increasing extent coordinate := by
  rfl

/-- Integer pixel address. -/
structure PixelCoordinate where
  x : ℤ
  y : ℤ
  deriving DecidableEq, Repr

/-- Half-open pixel support.  It is data distinct from a cell's barycentric
coordinate origin. -/
structure PixelSupport where
  minX : ℤ
  maxX : ℤ
  minY : ℤ
  maxY : ℤ
  xNondegenerate : minX < maxX
  yNondegenerate : minY < maxY

/-- One pixel retains both its coordinate and geometric support. -/
structure Pixel where
  coordinate : PixelCoordinate
  support : PixelSupport

/-- The nine offsets in the closed Moore neighborhood, including the center. -/
def mooreNeighborhood : List PixelCoordinate :=
  [⟨-1, -1⟩, ⟨0, -1⟩, ⟨1, -1⟩,
   ⟨-1, 0⟩,  ⟨0, 0⟩,  ⟨1, 0⟩,
   ⟨-1, 1⟩,  ⟨0, 1⟩,  ⟨1, 1⟩]

/-- Translate a pixel coordinate by an offset. -/
def PixelCoordinate.translate (point offset : PixelCoordinate) : PixelCoordinate :=
  ⟨point.x + offset.x, point.y + offset.y⟩

/-- Deterministic candidate stencil centered on a pixel. -/
def candidateStencil (center : PixelCoordinate) : List PixelCoordinate :=
  mooreNeighborhood.map center.translate

@[simp] theorem candidateStencil_card (center : PixelCoordinate) :
    (candidateStencil center).length = 9 := by
  simp [candidateStencil, mooreNeighborhood]

/-- A Boolean region-membership predicate over rational points. -/
abbrev PointInRegionPredicate := RasterPoint → Bool

/-- A nondegenerate normalized cell support. -/
structure CellSupport where
  minX : ℚ
  maxX : ℚ
  minY : ℚ
  maxY : ℚ
  xNondegenerate : minX < maxX
  yNondegenerate : minY < maxY

/-- The midpoint-quadrature sample associated with a row and column. -/
def cellSamplePoint (cell : CellSupport) (samples : Nat)
    (row column : Fin samples) : RasterPoint where
  x := cell.minX + ((column.val : ℚ) + 1 / 2) / samples *
    (cell.maxX - cell.minX)
  y := cell.minY + ((row.val : ℚ) + 1 / 2) / samples *
    (cell.maxY - cell.minY)

/-- Number of selected midpoint samples. -/
def coverageCount (region : PointInRegionPredicate) (cell : CellSupport)
    (samples : Nat) : Nat :=
  ((Finset.univ : Finset (Fin samples × Fin samples)).filter
    (fun index => region (cellSamplePoint cell samples index.1 index.2))).card

/-- Deterministic midpoint-quadrature coverage fraction.  `samples = 0`
denotes zero because there are no sample points; runtime validation excludes
that configuration before calling the operation. -/
def sampledCoverage (region : PointInRegionPredicate) (cell : CellSupport)
    (samples : Nat) : ℚ :=
  (coverageCount region cell samples : ℚ) / (samples * samples)

@[simp] theorem sampledCoverage_zero (region : PointInRegionPredicate)
    (cell : CellSupport) : sampledCoverage region cell 0 = 0 := by
  simp [sampledCoverage, coverageCount]

/-- Midpoint selection cannot exceed the complete sample grid. -/
theorem coverageCount_le_sampleCount (region : PointInRegionPredicate)
    (cell : CellSupport) (samples : Nat) :
    coverageCount region cell samples ≤ samples * samples := by
  unfold coverageCount
  calc
    ((Finset.univ : Finset (Fin samples × Fin samples)).filter
        (fun index => region
          (cellSamplePoint cell samples index.1 index.2))).card ≤
        (Finset.univ : Finset (Fin samples × Fin samples)).card :=
      Finset.card_filter_le _ _
    _ = samples * samples := by simp

/-- A positively sampled midpoint coverage is a genuine unit-interval
fraction. -/
theorem sampledCoverage_mem_unitInterval (region : PointInRegionPredicate)
    (cell : CellSupport) {samples : Nat} (samplesPositive : 0 < samples) :
    0 ≤ sampledCoverage region cell samples ∧
      sampledCoverage region cell samples ≤ 1 := by
  constructor
  · unfold sampledCoverage
    positivity
  · unfold sampledCoverage
    rw [div_le_one]
    · exact_mod_cast coverageCount_le_sampleCount region cell samples
    · positivity

/-- Runtime coverage evidence distinguishes an exact region-supplied area
ratio from deterministic midpoint quadrature. -/
inductive CoverageMethod where
  | exactAreaRatio
  | midpointQuadrature (samplesPerAxis : Nat)
  deriving DecidableEq, Repr

/-- A coverage result retains its authority method and unit-interval proof. -/
structure CoverageEvidence where
  value : ℚ
  method : CoverageMethod
  nonnegative : 0 ≤ value
  atMostOne : value ≤ 1

/-- An exact area ratio is supplied with its range evidence. -/
structure ExactCoverage where
  value : ℚ
  nonnegative : 0 ≤ value
  atMostOne : value ≤ 1

/-- Valid inputs to the two coverage branches. -/
structure CoverageRequest where
  region : PointInRegionPredicate
  cell : CellSupport
  samples : Nat
  samplesPositive : 0 < samples
  exactCoverage : Option ExactCoverage := none

/-- Formal counterpart of `cellCoverageDetailed`: an exact area ratio takes
precedence when supplied; otherwise the configured midpoint rule is used. -/
def cellCoverageDetailed (request : CoverageRequest) : CoverageEvidence :=
  match request.exactCoverage with
  | some exact =>
      { value := exact.value
        method := .exactAreaRatio
        nonnegative := exact.nonnegative
        atMostOne := exact.atMostOne }
  | none =>
      let bounds := sampledCoverage_mem_unitInterval request.region request.cell
        request.samplesPositive
      { value := sampledCoverage request.region request.cell request.samples
        method := .midpointQuadrature request.samples
        nonnegative := bounds.1
        atMostOne := bounds.2 }

@[simp] theorem cellCoverageDetailed_exact (request : CoverageRequest)
    (exact : ExactCoverage) (provided : request.exactCoverage = some exact) :
    (cellCoverageDetailed request).value = exact.value := by
  simp [cellCoverageDetailed, provided]

@[simp] theorem cellCoverageDetailed_sampled (request : CoverageRequest)
    (absent : request.exactCoverage = none) :
    (cellCoverageDetailed request).value =
      sampledCoverage request.region request.cell request.samples := by
  simp [cellCoverageDetailed, absent]

/-! ### Fail-closed raw coverage input -/

/-- A foreign containment callback may return a Boolean classification or an
invalid non-Boolean value. -/
inductive RawContainmentResult where
  | boolean (value : Bool)
  | nonBoolean
  deriving DecidableEq, Repr

/-- Cell support before strict nondegeneracy validation. -/
structure RawCellSupport where
  minX : ℚ
  maxX : ℚ
  minY : ℚ
  maxY : ℚ
  deriving DecidableEq, Repr

/-- Validate a raw cell support. -/
def checkRawCellSupport (support : RawCellSupport) : RuntimeResult CellSupport :=
  if xValid : support.minX < support.maxX then
    if yValid : support.minY < support.maxY then
      .ok
        { minX := support.minX
          maxX := support.maxX
          minY := support.minY
          maxY := support.maxY
          xNondegenerate := xValid
          yNondegenerate := yValid }
    else
      .error .degenerateCellSupport
  else
    .error .degenerateCellSupport

/-- Post-shape coverage request with exact rational support coordinates.  The
complete foreign boundary below retains invalid region objects, nonfinite
coordinates, and JavaScript sample-count shape separately. -/
structure RawCoverageRequest where
  contains : RasterPoint → RawContainmentResult
  support : RawCellSupport
  samples : Nat
  exactCoverage : Option ℚ := none

/-- Boolean projection used only after every sampled callback result has been
checked. -/
def rawContainmentPredicate
    (contains : RasterPoint → RawContainmentResult) : PointInRegionPredicate :=
  fun point =>
    match contains point with
    | .boolean value => value
    | .nonBoolean => false

/-- Checked post-shape coverage semantics: support, exact ratio when supplied,
then sampling count and sampled containment results. -/
def coverageResult (request : RawCoverageRequest) : RuntimeResult CoverageEvidence :=
  match checkRawCellSupport request.support with
  | .error failure => .error failure
  | .ok cell =>
      match request.exactCoverage with
      | some exact =>
          if exactNegative : exact < 0 then
            .error .invalidExactCoverage
          else if exactTooLarge : 1 < exact then
            .error .invalidExactCoverage
          else
            .ok
              { value := exact
                method := .exactAreaRatio
                nonnegative := le_of_not_gt exactNegative
                atMostOne := le_of_not_gt exactTooLarge }
      | none =>
          if samplesZero : request.samples = 0 then
            .error .invalidSampleCount
          else if _invalid : ∃ index : Fin request.samples × Fin request.samples,
              request.contains
                (cellSamplePoint cell request.samples index.1 index.2) =
                  .nonBoolean then
            .error .invalidContainment
          else
            .ok (cellCoverageDetailed
              { region := rawContainmentPredicate request.contains
                cell := cell
                samples := request.samples
                samplesPositive := Nat.pos_of_ne_zero samplesZero
                exactCoverage := none })

/-- Foreign region shape before `isContinuousRegion` succeeds.  A continuous
region retains both its containment callback and its optional exact-coverage
callback result. -/
inductive ForeignCoverageRegion where
  | invalid
  | continuous
      (contains : RasterPoint → RawContainmentResult)
      (exactCoverage : Option ForeignRational := none)

/-- Foreign cell support with each numeric coordinate retained until the
runtime's finite-support validation has run. -/
structure ForeignCellSupport where
  minX : ForeignRational
  maxX : ForeignRational
  minY : ForeignRational
  maxY : ForeignRational

/-- JavaScript sample-count shape.  `invalid` covers nonintegers, negative
numbers, and values outside the safe-integer range; `safeInteger` retains a
nonnegative safe integer for the subsequent positivity and square-count bound. -/
inductive ForeignSampleCount where
  | safeInteger (value : Nat)
  | invalid
  deriving DecidableEq, Repr

/-- `floor (sqrt Number.MAX_SAFE_INTEGER)` from the JavaScript implementation. -/
def maximumCoverageSamplesPerAxis : Nat := 94906265

/-- Complete foreign coverage request in JavaScript argument-validation shape. -/
structure ForeignCoverageRequest where
  region : ForeignCoverageRegion
  support : ForeignCellSupport
  samples : ForeignSampleCount

/-- Validate finite support coordinates in JavaScript field order, followed by
the two strict nondegeneracy checks. -/
def checkForeignCellSupport (support : ForeignCellSupport) :
    RuntimeResult CellSupport :=
  match checkForeignRationalExact support.minX with
  | .error failure => .error failure
  | .ok minX =>
      match checkForeignRationalExact support.maxX with
      | .error failure => .error failure
      | .ok maxX =>
          match checkForeignRationalExact support.minY with
          | .error failure => .error failure
          | .ok minY =>
              match checkForeignRationalExact support.maxY with
              | .error failure => .error failure
              | .ok maxY =>
                  checkRawCellSupport ⟨minX, maxX, minY, maxY⟩

/-- Complete fail-closed coverage boundary in the public JavaScript order:
region shape, finite/nondegenerate support, exact coverage when present, and
only otherwise sample-count shape/bounds followed by containment callbacks. -/
def foreignCoverageResult (request : ForeignCoverageRequest) :
    RuntimeResult CoverageEvidence :=
  match request.region with
  | .invalid => .error .invalidCoverage
  | .continuous contains exactCoverage =>
      match checkForeignCellSupport request.support with
      | .error failure => .error failure
      | .ok support =>
          match exactCoverage with
          | some exact =>
              match checkForeignRationalExact exact with
              | .error _ => .error .invalidExactCoverage
              | .ok checkedExact =>
                  coverageResult
                    { contains := contains
                      support :=
                        { minX := support.minX
                          maxX := support.maxX
                          minY := support.minY
                          maxY := support.maxY }
                      samples := 1
                      exactCoverage := some checkedExact }
          | none =>
              match request.samples with
              | .invalid => .error .invalidSampleCount
              | .safeInteger samples =>
                  if _zero : samples = 0 then
                    .error .invalidSampleCount
                  else if _tooLarge : maximumCoverageSamplesPerAxis < samples then
                    .error .invalidSampleCount
                  else
                    coverageResult
                      { contains := contains
                        support :=
                          { minX := support.minX
                            maxX := support.maxX
                            minY := support.minY
                            maxY := support.maxY }
                        samples := samples
                        exactCoverage := none }

@[simp] theorem foreignCoverageResult_invalid_region
    (support : ForeignCellSupport) (samples : ForeignSampleCount) :
    foreignCoverageResult ⟨.invalid, support, samples⟩ =
      .error .invalidCoverage :=
  rfl

@[simp] theorem foreignCoverageResult_invalid_sample
    (contains : RasterPoint → RawContainmentResult)
    (support : ForeignCellSupport) (checked : CellSupport)
    (validSupport : checkForeignCellSupport support = .ok checked) :
    foreignCoverageResult ⟨.continuous contains none, support, .invalid⟩ =
      .error .invalidSampleCount := by
  simp [foreignCoverageResult, validSupport]

@[simp] theorem foreignCoverageResult_sample_too_large
    (contains : RasterPoint → RawContainmentResult)
    (support : ForeignCellSupport) (checked : CellSupport)
    (validSupport : checkForeignCellSupport support = .ok checked)
    (samples : Nat) (tooLarge : maximumCoverageSamplesPerAxis < samples) :
    foreignCoverageResult
        ⟨.continuous contains none, support, .safeInteger samples⟩ =
      .error .invalidSampleCount := by
  have nonzero : samples ≠ 0 := by
    intro zero
    subst zero
    simp [maximumCoverageSamplesPerAxis] at tooLarge
  simp [foreignCoverageResult, validSupport, nonzero, tooLarge]

@[simp] theorem checkRawCellSupport_rejects_x
    (support : RawCellSupport) (invalid : ¬ support.minX < support.maxX) :
    checkRawCellSupport support = .error .degenerateCellSupport := by
  simp [checkRawCellSupport, invalid]

@[simp] theorem coverageResult_rejects_zero_samples
    (request : RawCoverageRequest) (cell : CellSupport)
    (support : checkRawCellSupport request.support = .ok cell)
    (sampled : request.exactCoverage = none)
    (zero : request.samples = 0) :
    coverageResult request = .error .invalidSampleCount := by
  simp [coverageResult, support, sampled, zero]

@[simp] theorem coverageResult_rejects_negative_exact
    (request : RawCoverageRequest) (cell : CellSupport) (exact : ℚ)
    (support : checkRawCellSupport request.support = .ok cell)
    (provided : request.exactCoverage = some exact)
    (negative : exact < 0) :
    coverageResult request = .error .invalidExactCoverage := by
  simp [coverageResult, support, provided, negative]

@[simp] theorem coverageResult_rejects_nonBoolean
    (request : RawCoverageRequest) (cell : CellSupport)
    (support : checkRawCellSupport request.support = .ok cell)
    (sampled : request.exactCoverage = none)
    (samplesPositive : request.samples ≠ 0)
    (invalid : ∃ index : Fin request.samples × Fin request.samples,
      request.contains (cellSamplePoint cell request.samples index.1 index.2) =
        .nonBoolean) :
    coverageResult request = .error .invalidContainment := by
  simp [coverageResult, support, sampled, samplesPositive, invalid]

/-- Occupancy classifies geometric inclusion and is independent of ownership. -/
abbrev OccupancyMask (count : Nat) := Fin count → Bool

/-- Every carrier under consideration is a claimant. -/
abbrev Claimant (count : Nat) := Fin count

/-- Directional ownership selection is intentionally a distinct type from
geometric occupancy, even though both have Boolean coordinates. -/
structure OwnershipSelectionMask (count : Nat) where
  selected : Fin count → Bool

instance ownershipSelectionMaskCoeFun {count : Nat} :
    CoeFun (OwnershipSelectionMask count)
    (fun _ => Fin count → Bool) :=
  ⟨OwnershipSelectionMask.selected⟩

/-- Owners are exactly the selected claimants. -/
abbrev Owner {count : Nat} (mask : OwnershipSelectionMask count) :=
  { claimant : Claimant count // mask claimant = true }

/-- Number of selected owners. -/
def selectedOwnerCount {count : Nat} (mask : OwnershipSelectionMask count) : Nat :=
  ((Finset.univ : Finset (Fin count)).filter (fun index => mask index)).card

/-- Exact normalized ownership weight.  A zero mask fails closed to all-zero
weights at the semantic level; the executable API rejects it. -/
def ownershipWeight {count : Nat} (mask : OwnershipSelectionMask count)
    (index : Fin count) : ℚ :=
  if mask index then 1 / selectedOwnerCount mask else 0

@[simp] theorem ownershipWeight_unselected {count : Nat}
    (mask : OwnershipSelectionMask count) (index : Fin count)
    (unselected : mask index = false) : ownershipWeight mask index = 0 := by
  simp [ownershipWeight, unselected]

@[simp] theorem ownershipWeight_selected {count : Nat}
    (mask : OwnershipSelectionMask count) (index : Fin count)
    (selected : mask index = true) :
    ownershipWeight mask index = 1 / selectedOwnerCount mask := by
  simp [ownershipWeight, selected]

/-- Every valid nonempty ownership mask normalizes to unit mass. -/
theorem ownershipWeight_sum {count : Nat} (mask : OwnershipSelectionMask count)
    (selected : selectedOwnerCount mask ≠ 0) :
    ∑ index, ownershipWeight mask index = 1 := by
  classical
  have distribute :
      (∑ index, ownershipWeight mask index) =
        (∑ index, if mask index then (1 : ℚ) else 0) /
          selectedOwnerCount mask := by
    rw [Finset.sum_div]
    apply Finset.sum_congr rfl
    intro index _
    by_cases chosen : mask index = true
    · simp [ownershipWeight, chosen]
    · have rejected : mask index = false := Bool.eq_false_of_not_eq_true chosen
      simp [ownershipWeight, rejected]
  rw [distribute]
  simp only [Finset.sum_boole]
  change (selectedOwnerCount mask : ℚ) / (selectedOwnerCount mask : ℚ) = 1
  exact div_self (Nat.cast_ne_zero.mpr selected)

/-- Pure ownership has exactly one selected owner. -/
def PureOwnership {count : Nat} (mask : OwnershipSelectionMask count) : Prop :=
  selectedOwnerCount mask = 1

/-- Mixed ownership has at least two selected owners. -/
def MixedOwnership {count : Nat} (mask : OwnershipSelectionMask count) : Prop :=
  1 < selectedOwnerCount mask

/-- Occupancy is geometric inclusion data.  It is deliberately a distinct
record from ownership, which additionally requires a nonempty selection. -/
structure OccupancyState (count : Nat) where
  mask : OccupancyMask count

/-- Ownership is a nonempty selection of claimants, not a synonym for
geometric occupancy. -/
structure OwnershipState (count : Nat) where
  mask : OwnershipSelectionMask count
  nonempty : selectedOwnerCount mask ≠ 0

/-- The two configured traversal directions used by exact-carrier ties. -/
inductive TraversalDirection where
  | clockwise
  | counterclockwise
  deriving DecidableEq, Repr

/-- Canonical physical corner order `TL, TR, BR, BL`. -/
inductive SquareCorner where
  | topLeft
  | topRight
  | bottomRight
  | bottomLeft
  deriving DecidableEq, Repr

/-- Clockwise quarter turns from the top-left reference corner. -/
def SquareCorner.quarterTurns : SquareCorner → Nat
  | .topLeft => 0
  | .topRight => 1
  | .bottomRight => 2
  | .bottomLeft => 3

/-- Rotate a canonical `TL, TR, BR, BL` mask clockwise.  Output coordinate
`j` reads reference coordinate `j - turns` modulo four, matching the runtime's
`rotated[(index + turns) % 4] = reference[index]`. -/
def rotateOwnershipMask4 (mask : OwnershipSelectionMask 4) (turns : Nat) :
    OwnershipSelectionMask 4 :=
  ⟨fun output =>
    mask ⟨(output.val + 4 - turns % 4) % 4,
      Nat.mod_lt _ (by decide)⟩⟩

/-- Validated ownership policy for the only exact carrier multiplicities that
the two-dimensional grid exposes in its supported profile.  Four-carrier
configuration stores one top-left reference mask per direction and derives
every physical corner by a checked rotation. -/
structure ConfiguredOwnership where
  twoMask : TraversalDirection → OwnershipSelectionMask 2
  fourReferenceMask : TraversalDirection → OwnershipSelectionMask 4
  twoSelectsOne : ∀ direction : TraversalDirection,
    selectedOwnerCount (twoMask direction) = 1
  fourReferenceSelectsTwo : ∀ direction : TraversalDirection,
    selectedOwnerCount (fourReferenceMask direction) = 2
  fourRotationsSelectTwo : ∀ (direction : TraversalDirection)
      (corner : SquareCorner),
    selectedOwnerCount
      (rotateOwnershipMask4 (fourReferenceMask direction) corner.quarterTurns) = 2

/-- Resolve the reference four-carrier mask at one physical corner. -/
def ConfiguredOwnership.fourMask (configuration : ConfiguredOwnership)
    (direction : TraversalDirection) (corner : SquareCorner) :
    OwnershipSelectionMask 4 :=
  rotateOwnershipMask4 (configuration.fourReferenceMask direction)
    corner.quarterTurns

/-- Repository schema profile: two-carrier direction masks and the two
top-left four-carrier reference masks, with every other corner derived by
clockwise rotation. -/
def schemaProfileConfiguredOwnership : ConfiguredOwnership where
  twoMask
    | .clockwise => ⟨fun index => decide (index.val = 0)⟩
    | .counterclockwise => ⟨fun index => decide (index.val = 1)⟩
  fourReferenceMask
    | .clockwise => ⟨fun index => decide (index.val < 2)⟩
    | .counterclockwise => ⟨fun index => decide (2 ≤ index.val)⟩
  twoSelectsOne := by
    intro direction
    cases direction <;> decide
  fourReferenceSelectsTwo := by
    intro direction
    cases direction <;> decide
  fourRotationsSelectTwo := by
    intro direction corner
    cases direction <;> cases corner <;> decide

/-- Raw configured ownership selection.  Unsupported arities fail closed
instead of receiving an arbitrary default mask. -/
def ownershipMaskResult (configuration : ConfiguredOwnership)
    (carrierCount : Nat) (direction : TraversalDirection)
    (corner : SquareCorner) : RuntimeResult (List Bool) :=
  if _one : carrierCount = 1 then
    .ok [true]
  else if _two : carrierCount = 2 then
    .ok (List.ofFn (configuration.twoMask direction))
  else if _four : carrierCount = 4 then
    .ok (List.ofFn (configuration.fourMask direction corner))
  else
    .error .invalidCarrierArity

@[simp] theorem ownershipMaskResult_one (configuration : ConfiguredOwnership)
    (direction : TraversalDirection) (corner : SquareCorner) :
    ownershipMaskResult configuration 1 direction corner = .ok [true] := by
  simp [ownershipMaskResult]

@[simp] theorem ownershipMaskResult_two (configuration : ConfiguredOwnership)
    (direction : TraversalDirection) (corner : SquareCorner) :
    ownershipMaskResult configuration 2 direction corner =
      .ok (List.ofFn (configuration.twoMask direction)) := by
  simp [ownershipMaskResult]

@[simp] theorem ownershipMaskResult_four (configuration : ConfiguredOwnership)
    (direction : TraversalDirection) (corner : SquareCorner) :
    ownershipMaskResult configuration 4 direction corner =
      .ok (List.ofFn (configuration.fourMask direction corner)) := by
  simp [ownershipMaskResult]

/-- Every carrier arity other than one, two, or four is rejected. -/
theorem ownershipMaskResult_invalid (configuration : ConfiguredOwnership)
    (carrierCount : Nat) (direction : TraversalDirection)
    (corner : SquareCorner) (invalid : carrierCount ≠ 1 ∧
      carrierCount ≠ 2 ∧ carrierCount ≠ 4) :
    ownershipMaskResult configuration carrierCount direction corner =
      .error .invalidCarrierArity := by
  simp [ownershipMaskResult, invalid.1, invalid.2.1, invalid.2.2]

/-- A successful configured mask is aligned with the requested candidate
arity. -/
theorem ownershipMaskResult_length (configuration : ConfiguredOwnership)
    (carrierCount : Nat) (direction : TraversalDirection)
    (corner : SquareCorner) (mask : List Bool)
    (success : ownershipMaskResult configuration carrierCount direction corner =
      .ok mask) :
    mask.length = carrierCount := by
  unfold ownershipMaskResult at success
  split at success
  · cases success
    simp_all
  · split at success
    · cases success
      simp_all
    · split at success
      · cases success
        simp_all
      · contradiction

/-- Normalize raw ownership only when at least one claimant is selected. -/
def normalizeOwnershipResult {count : Nat}
    (mask : OwnershipSelectionMask count) : RuntimeResult (Fin count → ℚ) :=
  if _empty : selectedOwnerCount mask = 0 then
    .error .zeroOwnershipMask
  else
    .ok (ownershipWeight mask)

@[simp] theorem normalizeOwnershipResult_empty {count : Nat}
    (mask : OwnershipSelectionMask count) (empty : selectedOwnerCount mask = 0) :
    normalizeOwnershipResult mask = .error .zeroOwnershipMask := by
  simp [normalizeOwnershipResult, empty]

@[simp] theorem normalizeOwnershipResult_nonempty {count : Nat}
    (mask : OwnershipSelectionMask count) (nonempty : selectedOwnerCount mask ≠ 0) :
    normalizeOwnershipResult mask = .ok (ownershipWeight mask) := by
  simp [normalizeOwnershipResult, nonempty]

/-- Every successful raw ownership normalization has unit total mass. -/
theorem normalizeOwnershipResult_sum {count : Nat}
    (mask : OwnershipSelectionMask count) (weights : Fin count → ℚ)
    (success : normalizeOwnershipResult mask = .ok weights) :
    ∑ index, weights index = 1 := by
  unfold normalizeOwnershipResult at success
  split at success
  · contradiction
  · cases success
    exact ownershipWeight_sum mask ‹selectedOwnerCount mask ≠ 0›

/-- Number of selected bits in a runtime-shaped ownership list. -/
def selectedMaskListCount (mask : List Bool) : Nat :=
  mask.foldl (fun count selected => if selected then count + 1 else count) 0

/-- Normalize a nonempty runtime-shaped ownership list. -/
def normalizedMaskListWeights (mask : List Bool) : List ℚ :=
  let selected := selectedMaskListCount mask
  mask.map (fun bit => if bit then 1 / selected else 0)

/-- Retain exactly those candidate carriers selected by the corresponding
mask coordinate. -/
def selectedCarrierOwners {Carrier : Type}
    (candidates : List Carrier) (mask : List Bool) : List Carrier :=
  (candidates.zip mask).filterMap fun entry =>
    if entry.2 then some entry.1 else none

/-- Composite result of `resolveCarrierOwnership`: candidate order, configured
mask, normalized weights, and the selected owners remain available together. -/
structure CarrierOwnershipResult (Carrier : Type) where
  candidates : List Carrier
  mask : List Bool
  normalizedWeights : List ℚ
  owners : List Carrier
  deriving DecidableEq, Repr

/-- Internal fields of a composite ownership result all arise from the same
candidate-aligned, nonempty mask. -/
def CarrierOwnershipResult.Coherent {Carrier : Type}
    (ownership : CarrierOwnershipResult Carrier) : Prop :=
  ownership.mask.length = ownership.candidates.length ∧
    selectedMaskListCount ownership.mask ≠ 0 ∧
    ownership.normalizedWeights = normalizedMaskListWeights ownership.mask ∧
    ownership.owners =
      selectedCarrierOwners ownership.candidates ownership.mask

instance carrierOwnershipResultCoherentDecidable
    {Carrier : Type} [DecidableEq Carrier]
    (ownership : CarrierOwnershipResult Carrier) :
    Decidable ownership.Coherent := by
  unfold CarrierOwnershipResult.Coherent
  infer_instance

/-- Look up the mask decision associated with one grid-cell identity.  A cell
outside the candidate list has no ownership override. -/
def CarrierOwnershipResult.ownerSelection {count : Nat}
    (ownership : CarrierOwnershipResult (Fin count))
    (cell : Fin count) : Option Bool :=
  (ownership.candidates.zip ownership.mask).findSome?
    (fun entry => if entry.1 = cell then some entry.2 else none)

/-- Full configured ownership operation over a runtime-shaped candidate list. -/
def resolveCarrierOwnership {Carrier : Type}
    (configuration : ConfiguredOwnership) (candidates : List Carrier)
    (direction : TraversalDirection) (corner : SquareCorner) :
    RuntimeResult (CarrierOwnershipResult Carrier) :=
  match ownershipMaskResult configuration candidates.length direction corner with
  | .error failure => .error failure
  | .ok mask =>
      if _empty : selectedMaskListCount mask = 0 then
        .error .zeroOwnershipMask
      else
        .ok
          { candidates := candidates
            mask := mask
            normalizedWeights := normalizedMaskListWeights mask
            owners := selectedCarrierOwners candidates mask }

/-- Every successful composite result exposes weights and owners derived from
the same returned mask; no field can be substituted independently. -/
theorem resolveCarrierOwnership_fields {Carrier : Type}
    (configuration : ConfiguredOwnership) (candidates : List Carrier)
    (direction : TraversalDirection) (corner : SquareCorner)
    (result : CarrierOwnershipResult Carrier)
    (success : resolveCarrierOwnership configuration candidates direction corner =
      .ok result) :
    ownershipMaskResult configuration candidates.length direction corner =
        .ok result.mask ∧
      result.candidates = candidates ∧
      result.normalizedWeights = normalizedMaskListWeights result.mask ∧
      result.owners = selectedCarrierOwners candidates result.mask ∧
      result.mask.length = candidates.length ∧
      result.normalizedWeights.length = candidates.length := by
  unfold resolveCarrierOwnership at success
  cases maskResult : ownershipMaskResult configuration candidates.length
      direction corner with
  | error failure =>
      rw [maskResult] at success
      contradiction
  | ok mask =>
      rw [maskResult] at success
      by_cases empty : selectedMaskListCount mask = 0
      · simp [empty] at success
      · simp only [empty] at success
        have equation :
            { candidates := candidates
              mask := mask
              normalizedWeights := normalizedMaskListWeights mask
              owners := selectedCarrierOwners candidates mask } = result :=
          Except.ok.inj success
        have maskLength : mask.length = candidates.length :=
          ownershipMaskResult_length configuration candidates.length direction
            corner mask maskResult
        cases equation
        refine ⟨?_, rfl, rfl, rfl, maskLength, ?_⟩
        · change Except.ok mask = Except.ok mask
          rfl
        · simp [normalizedMaskListWeights, maskLength]

/-- The smart resolver always constructs one coherent composite. -/
theorem resolveCarrierOwnership_coherent {Carrier : Type}
    (configuration : ConfiguredOwnership) (candidates : List Carrier)
    (direction : TraversalDirection) (corner : SquareCorner)
    (result : CarrierOwnershipResult Carrier)
    (success : resolveCarrierOwnership configuration candidates direction corner =
      .ok result) :
    result.Coherent := by
  unfold resolveCarrierOwnership at success
  cases maskResult : ownershipMaskResult configuration candidates.length
      direction corner with
  | error failure =>
      rw [maskResult] at success
      contradiction
  | ok mask =>
      rw [maskResult] at success
      by_cases empty : selectedMaskListCount mask = 0
      · simp [empty] at success
      · simp only [empty] at success
        have equation :
            { candidates := candidates
              mask := mask
              normalizedWeights := normalizedMaskListWeights mask
              owners := selectedCarrierOwners candidates mask } = result :=
          Except.ok.inj success
        have maskLength : mask.length = candidates.length :=
          ownershipMaskResult_length configuration candidates.length direction
            corner mask maskResult
        cases equation
        exact ⟨maskLength, empty, rfl, rfl⟩

@[simp] theorem schemaOwnership_two_clockwise :
    ownershipMaskResult schemaProfileConfiguredOwnership 2 .clockwise .topLeft =
      .ok [true, false] := by
  decide

@[simp] theorem schemaOwnership_two_counterclockwise :
    ownershipMaskResult schemaProfileConfiguredOwnership 2 .counterclockwise
      .topLeft = .ok [false, true] := by
  decide

@[simp] theorem schemaOwnership_four_clockwise_topLeft :
    ownershipMaskResult schemaProfileConfiguredOwnership 4 .clockwise .topLeft =
      .ok [true, true, false, false] := by
  decide

@[simp] theorem schemaOwnership_four_counterclockwise_topLeft :
    ownershipMaskResult schemaProfileConfiguredOwnership 4 .counterclockwise
      .topLeft = .ok [false, false, true, true] := by
  decide

@[simp] theorem schemaOwnership_four_clockwise_topRight :
    ownershipMaskResult schemaProfileConfiguredOwnership 4 .clockwise .topRight =
      .ok [false, true, true, false] := by
  decide

/-- A threshold tie either selects, rejects, or delegates to sign-sensitive
ownership policy. -/
inductive TiePolicy where
  | select
  | reject
  | ownership
  deriving DecidableEq, Repr

/-- Sign-sensitive ownership policies for exact threshold equality. -/
structure OwnershipTiePolicies where
  positive : Bool
  negative : Bool
  zero : Bool

/-- Exact threshold resolution, including positive, negative, and zero ties. -/
def resolveThreshold (coverage threshold scalar : ℚ) (policy : TiePolicy)
    (ownership : OwnershipTiePolicies) : Bool :=
  if coverage > threshold then true
  else if coverage < threshold then false
  else match policy with
    | .select => true
    | .reject => false
    | .ownership =>
        if scalar > 0 then ownership.positive
        else if scalar < 0 then ownership.negative
        else ownership.zero

@[simp] theorem resolveThreshold_positive_tie (threshold scalar : ℚ)
    (ownership : OwnershipTiePolicies) (positive : 0 < scalar) :
    resolveThreshold threshold threshold scalar .ownership ownership =
      ownership.positive := by
  simp [resolveThreshold, positive]

@[simp] theorem resolveThreshold_negative_tie (threshold scalar : ℚ)
    (ownership : OwnershipTiePolicies) (negative : scalar < 0) :
    resolveThreshold threshold threshold scalar .ownership ownership =
      ownership.negative := by
  simp [resolveThreshold, negative, not_lt.mpr negative.le]

@[simp] theorem resolveThreshold_zero_tie (threshold : ℚ)
    (ownership : OwnershipTiePolicies) :
    resolveThreshold threshold threshold 0 .ownership ownership =
      ownership.zero := by
  simp [resolveThreshold]

/-- Raw threshold input before unit-interval validation. -/
structure RawThresholdRequest where
  coverage : ℚ
  threshold : ℚ
  scalar : ℚ
  policy : TiePolicy
  ownership : OwnershipTiePolicies

/-- Fail-closed threshold semantics, including invalid coverage and policy
threshold values. -/
def thresholdResult (request : RawThresholdRequest) : RuntimeResult Bool :=
  if _coverageNegative : request.coverage < 0 then
    .error .invalidCoverage
  else if _coverageTooLarge : 1 < request.coverage then
    .error .invalidCoverage
  else if _thresholdNegative : request.threshold < 0 then
    .error .invalidThreshold
  else if _thresholdTooLarge : 1 < request.threshold then
    .error .invalidThreshold
  else
    .ok (resolveThreshold request.coverage request.threshold request.scalar
      request.policy request.ownership)

@[simp] theorem thresholdResult_rejects_negative_coverage
    (request : RawThresholdRequest) (negative : request.coverage < 0) :
    thresholdResult request = .error .invalidCoverage := by
  simp [thresholdResult, negative]

@[simp] theorem thresholdResult_rejects_large_coverage
    (request : RawThresholdRequest) (nonnegative : 0 ≤ request.coverage)
    (large : 1 < request.coverage) :
    thresholdResult request = .error .invalidCoverage := by
  simp [thresholdResult, not_lt_of_ge nonnegative, large]

/-- Tagged tie-policy vocabulary at the foreign configuration boundary. -/
inductive ForeignTiePolicy where
  | supported (policy : TiePolicy)
  | unsupported
  deriving DecidableEq, Repr

/-- Complete foreign threshold request before numeric and vocabulary checks. -/
structure ForeignThresholdRequest where
  coverage : ForeignRational
  threshold : ForeignRational
  scalar : ForeignRational
  policy : ForeignTiePolicy
  ownership : OwnershipTiePolicies

/-- Fail-closed threshold semantics in JavaScript validation order: coverage,
scalar, configured threshold, then the tie-policy vocabulary only when an
exact tie actually reaches it. -/
def foreignThresholdResult (request : ForeignThresholdRequest) :
    RuntimeResult Bool :=
  match checkForeignRationalExact request.coverage with
  | .error failure => .error failure
  | .ok coverage =>
      if _coverageNegative : coverage < 0 then
        .error .invalidCoverage
      else if _coverageTooLarge : 1 < coverage then
        .error .invalidCoverage
      else
        match checkForeignRationalExact request.scalar with
        | .error failure => .error failure
        | .ok scalar =>
            match checkForeignRationalExact request.threshold with
            | .error failure => .error failure
            | .ok threshold =>
                if _thresholdNegative : threshold < 0 then
                  .error .invalidThreshold
                else if _thresholdTooLarge : 1 < threshold then
                  .error .invalidThreshold
                else if _above : threshold < coverage then
                  .ok true
                else if _below : coverage < threshold then
                  .ok false
                else
                  match request.policy with
                  | .unsupported => .error .invalidTiePolicy
                  | .supported policy =>
                      .ok (resolveThreshold coverage threshold scalar policy
                        request.ownership)

@[simp] theorem foreignThresholdResult_nonfinite_scalar
    (ownership : OwnershipTiePolicies) :
    foreignThresholdResult
      ⟨.finite (1 / 2), .finite (1 / 2), .positiveInfinity,
        .supported .ownership, ownership⟩ = .error .nonfiniteInput :=
  by norm_num [foreignThresholdResult, checkForeignRationalExact]

@[simp] theorem foreignThresholdResult_unsupported_tie
    (ownership : OwnershipTiePolicies) :
    foreignThresholdResult
      ⟨.finite (1 / 2), .finite (1 / 2), .finite 1, .unsupported,
        ownership⟩ = .error .invalidTiePolicy := by
  norm_num [foreignThresholdResult, checkForeignRationalExact]

/-- Optional carrier ownership overrides an exact ownership-policy threshold
tie; all other cases use sign-sensitive threshold resolution. -/
def resolveRasterBit (coverage threshold scalar : ℚ) (policy : TiePolicy)
    (ownership : OwnershipTiePolicies) (ownerSelection : Option Bool) : Bool :=
  if policy = .ownership ∧ coverage = threshold then
    ownerSelection.getD
      (resolveThreshold coverage threshold scalar policy ownership)
  else resolveThreshold coverage threshold scalar policy ownership

@[simp] theorem resolveRasterBit_owner_tie (threshold scalar : ℚ)
    (ownership : OwnershipTiePolicies) (selected : Bool) :
    resolveRasterBit threshold threshold scalar .ownership ownership
      (some selected) = selected := by
  simp [resolveRasterBit]

@[simp] theorem resolveRasterBit_without_owner (coverage threshold scalar : ℚ)
    (policy : TiePolicy) (ownership : OwnershipTiePolicies) :
    resolveRasterBit coverage threshold scalar policy ownership none =
      resolveThreshold coverage threshold scalar policy ownership := by
  simp [resolveRasterBit]

/-- One valid formal rasterization input. -/
structure RasterCellRequest where
  coverage : CoverageRequest
  threshold : ℚ
  thresholdNonnegative : 0 ≤ threshold
  thresholdAtMostOne : threshold ≤ 1
  scalar : ℚ
  policy : TiePolicy
  ownershipPolicies : OwnershipTiePolicies
  ownerSelection : Option Bool := none

/-- Compose coverage evidence, ownership, and threshold resolution for one
cell.  A finite raster is the typed finite family of this operation. -/
def rasterizeCell (request : RasterCellRequest) : Bool :=
  resolveRasterBit (cellCoverageDetailed request.coverage).value
    request.threshold request.scalar request.policy request.ownershipPolicies
    request.ownerSelection

@[simp] theorem rasterizeCell_owner_tie (request : RasterCellRequest)
    (selected : Bool)
    (ownershipPolicy : request.policy = .ownership)
    (exactTie : (cellCoverageDetailed request.coverage).value = request.threshold)
    (selection : request.ownerSelection = some selected) :
    rasterizeCell request = selected := by
  simp [rasterizeCell, resolveRasterBit, ownershipPolicy, exactTie, selection]

/-- Rasterize every cell in a typed finite region request.  Construction of
the requests is where continuous-region combination and cell supports enter;
thresholding remains pointwise and occurs afterward. -/
def rasterizeRegion {count : Nat}
    (requests : Fin count → RasterCellRequest) : Fin count → Bool :=
  fun index => rasterizeCell (requests index)

@[simp] theorem rasterizeRegion_at {count : Nat}
    (requests : Fin count → RasterCellRequest) (index : Fin count) :
    rasterizeRegion requests index = rasterizeCell (requests index) :=
  rfl

/-! ### Prepared high-level carrier-geometry rasterization -/

/-- Boolean-predicate view of the canonical continuous set-operation
vocabulary. -/
abbrev RegionCombination := BitMatrix.Geometry.Stroke.SetOperation

/-- Pointwise semantics of a continuous-region combination. -/
def combineRegionPredicates (operation : RegionCombination)
    (left right : PointInRegionPredicate) : PointInRegionPredicate :=
  fun point =>
    match operation with
    | .union => left point || right point
    | .subtract => left point && !(right point)
    | .intersect => left point && right point
    | .exclude =>
        (left point && !(right point)) || (right point && !(left point))

/-- Combine every continuous region before any cell is sampled. -/
def combineRegionSequence (operation : RegionCombination)
    (first : PointInRegionPredicate)
    (remaining : List PointInRegionPredicate) : PointInRegionPredicate :=
  remaining.foldl (combineRegionPredicates operation) first

/-- Checked, prepared input to the public carrier-geometry raster pipeline.
The head/tail representation makes the region family nonempty, and every
validation obligation needed by coverage and thresholding is retained. -/
structure PreparedCarrierGeometry (count : Nat) where
  firstRegion : PointInRegionPredicate
  remainingRegions : List PointInRegionPredicate := []
  combination : RegionCombination := .union
  cells : Fin count → CellSupport
  samples : Nat
  samplesPositive : 0 < samples
  exactCoverage : Fin count → Option ExactCoverage := fun _ => none
  threshold : ℚ
  thresholdNonnegative : 0 ≤ threshold
  thresholdAtMostOne : threshold ≤ 1
  scalar : ℚ
  policy : TiePolicy
  ownershipPolicies : OwnershipTiePolicies
  ownership : Option (CarrierOwnershipResult (Fin count)) := none
  ownershipCoherent : ∀ ownershipValue,
    ownership = some ownershipValue → ownershipValue.Coherent := by simp

/-- Per-cell ownership is derived, never supplied independently. -/
def PreparedCarrierGeometry.ownerSelection {count : Nat}
    (request : PreparedCarrierGeometry count) (cell : Fin count) : Option Bool :=
  match request.ownership with
  | none => none
  | some ownership => ownership.ownerSelection cell

/-- Every ownership value retained by a prepared request is coherent by
construction. -/
theorem PreparedCarrierGeometry.ownership_coherent {count : Nat}
    (request : PreparedCarrierGeometry count)
    (ownership : CarrierOwnershipResult (Fin count))
    (provided : request.ownership = some ownership) :
    ownership.Coherent :=
  request.ownershipCoherent ownership provided

/-- The single combined region used by all cells of a prepared invocation. -/
def PreparedCarrierGeometry.combinedRegion {count : Nat}
    (request : PreparedCarrierGeometry count) : PointInRegionPredicate :=
  combineRegionSequence request.combination request.firstRegion
    request.remainingRegions

/-- Construct the checked one-cell request only after continuous combination. -/
def PreparedCarrierGeometry.cellRequest {count : Nat}
    (request : PreparedCarrierGeometry count) (index : Fin count) :
    RasterCellRequest where
  coverage :=
    { region := request.combinedRegion
      cell := request.cells index
      samples := request.samples
      samplesPositive := request.samplesPositive
      exactCoverage := request.exactCoverage index }
  threshold := request.threshold
  thresholdNonnegative := request.thresholdNonnegative
  thresholdAtMostOne := request.thresholdAtMostOne
  scalar := request.scalar
  policy := request.policy
  ownershipPolicies := request.ownershipPolicies
  ownerSelection := request.ownerSelection index

/-- Evidence retained by the high-level `rasterizeCarrierGeometryDetailed`
semantic operation. -/
structure CarrierGeometryResult (count : Nat) where
  coverageEvidence : Fin count → CoverageEvidence
  coverages : Fin count → ℚ
  bitField : Fin count → Bool
  ownerSelection : Fin count → Option Bool
  ownership : Option (CarrierOwnershipResult (Fin count))
  operationOrderLiteral : String
  beforeRasterization : operationOrderLiteral = "before-rasterization"
  operationOrder : List PipelineStage
  canonicalOrder : operationOrder = canonicalPipelineStages

/-- Complete prepared high-level rasterization. -/
def rasterizeCarrierGeometryDetailedSpec {count : Nat}
    (request : PreparedCarrierGeometry count) : CarrierGeometryResult count where
  coverageEvidence := fun index =>
    cellCoverageDetailed (request.cellRequest index).coverage
  coverages := fun index =>
    (cellCoverageDetailed (request.cellRequest index).coverage).value
  bitField := rasterizeRegion request.cellRequest
  ownerSelection := request.ownerSelection
  ownership := request.ownership
  operationOrderLiteral := "before-rasterization"
  beforeRasterization := rfl
  operationOrder := canonicalPipelineStages
  canonicalOrder := rfl

/-- Public façade: the high-level operation projects its immutable bit field. -/
def rasterizeCarrierGeometrySpec {count : Nat}
    (request : PreparedCarrierGeometry count) : Fin count → Bool :=
  (rasterizeCarrierGeometryDetailedSpec request).bitField

@[simp] theorem rasterizeCarrierGeometrySpec_at {count : Nat}
    (request : PreparedCarrierGeometry count) (index : Fin count) :
    rasterizeCarrierGeometrySpec request index =
      rasterizeCell (request.cellRequest index) :=
  rfl

/-- Every cell is sampled from the same region produced by continuous
combination; no raster threshold is applied to an uncombined source region. -/
@[simp] theorem carrierGeometry_combines_before_rasterization {count : Nat}
    (request : PreparedCarrierGeometry count) (index : Fin count) :
    (request.cellRequest index).coverage.region = request.combinedRegion :=
  rfl

@[simp] theorem rasterizeCarrierGeometry_operationOrder {count : Nat}
    (request : PreparedCarrierGeometry count) :
    (rasterizeCarrierGeometryDetailedSpec request).operationOrder =
      canonicalPipelineStages :=
  rfl

@[simp] theorem rasterizeCarrierGeometry_operationOrderLiteral {count : Nat}
    (request : PreparedCarrierGeometry count) :
    (rasterizeCarrierGeometryDetailedSpec request).operationOrderLiteral =
      "before-rasterization" :=
  rfl

@[simp] theorem rasterizeCarrierGeometry_ownerSelection {count : Nat}
    (request : PreparedCarrierGeometry count) :
    (rasterizeCarrierGeometryDetailedSpec request).ownerSelection =
      request.ownerSelection :=
  rfl

@[simp] theorem rasterizeCarrierGeometry_ownership {count : Nat}
    (request : PreparedCarrierGeometry count) :
    (rasterizeCarrierGeometryDetailedSpec request).ownership =
      request.ownership :=
  rfl

/-- When a complete composite ownership value is supplied coherently, the
per-cell tie override consumed by rasterization is exactly its mask lookup. -/
theorem rasterizeCarrierGeometry_ownerSelection_from_ownership {count : Nat}
    (request : PreparedCarrierGeometry count)
    (ownership : CarrierOwnershipResult (Fin count))
    (provided : request.ownership = some ownership) :
    (rasterizeCarrierGeometryDetailedSpec request).ownerSelection =
      ownership.ownerSelection := by
  rw [rasterizeCarrierGeometry_ownerSelection]
  funext index
  simp [PreparedCarrierGeometry.ownerSelection, provided]

/-- Concrete preparation path for an already-continuous region with a supplied
finite grid and supplied ownership decisions.  Unlike path stroking, this
preparation is completely formal and introduces no foreign constructor. -/
structure ContinuousRegionGridInput (count : Nat) where
  region : PointInRegionPredicate
  additionalRegions : List PointInRegionPredicate := []
  combination : RegionCombination := .union
  gridCells : Fin count → CellSupport
  samples : Nat
  samplesPositive : 0 < samples
  exactCoverage : Fin count → Option ExactCoverage := fun _ => none
  threshold : ℚ
  thresholdNonnegative : 0 ≤ threshold
  thresholdAtMostOne : threshold ≤ 1
  scalar : ℚ
  policy : TiePolicy
  ownershipPolicies : OwnershipTiePolicies
  ownership : Option (CarrierOwnershipResult (Fin count)) := none
  ownershipCoherent : ∀ ownershipValue,
    ownership = some ownershipValue → ownershipValue.Coherent := by simp

/-- Fully formal continuous-region/grid/ownership preparation. -/
def prepareContinuousRegionGrid {count : Nat}
    (input : ContinuousRegionGridInput count) : PreparedCarrierGeometry count :=
  { firstRegion := input.region
    remainingRegions := input.additionalRegions
    combination := input.combination
    cells := input.gridCells
    samples := input.samples
    samplesPositive := input.samplesPositive
    exactCoverage := input.exactCoverage
    threshold := input.threshold
    thresholdNonnegative := input.thresholdNonnegative
    thresholdAtMostOne := input.thresholdAtMostOne
    scalar := input.scalar
    policy := input.policy
    ownershipPolicies := input.ownershipPolicies
    ownership := input.ownership
    ownershipCoherent := input.ownershipCoherent }

@[simp] theorem prepareContinuousRegionGrid_region {count : Nat}
    (input : ContinuousRegionGridInput count) :
    (prepareContinuousRegionGrid input).combinedRegion =
      combineRegionSequence input.combination input.region
        input.additionalRegions :=
  rfl

@[simp] theorem prepareContinuousRegionGrid_ownership {count : Nat}
    (input : ContinuousRegionGridInput count) :
    (prepareContinuousRegionGrid input).ownership = input.ownership :=
  rfl

@[simp] theorem prepareContinuousRegionGrid_ownerSelection {count : Nat}
    (input : ContinuousRegionGridInput count) (index : Fin count) :
    (prepareContinuousRegionGrid input).ownerSelection index =
      match input.ownership with
      | none => none
      | some ownership => ownership.ownerSelection index :=
  rfl

/-- Raw *post-preparation* high-level input before positive-sampling and
unit-threshold checks.  Path stroking, grid construction, physical carrier
ordering, and ownership lookup occur in the foreign preparation layer and are
not silently identified with this record. -/
structure RawCarrierGeometry (count : Nat) where
  firstRegion : PointInRegionPredicate
  remainingRegions : List PointInRegionPredicate := []
  combination : RegionCombination := .union
  cells : Fin count → CellSupport
  samples : Nat
  exactCoverage : Fin count → Option ExactCoverage := fun _ => none
  threshold : ℚ
  scalar : ℚ
  policy : TiePolicy
  ownershipPolicies : OwnershipTiePolicies
  ownership : Option (CarrierOwnershipResult (Fin count)) := none

/-- Tagged set-operation order at the foreign geometry-preparation boundary. -/
inductive ForeignSetOperationOrder where
  | beforeRasterization
  | unsupported
  deriving DecidableEq, Repr

/-- Accept only the repository's continuous-before-rasterization profile. -/
def checkForeignSetOperationOrder : ForeignSetOperationOrder →
    RuntimeResult Unit
  | .beforeRasterization => .ok ()
  | .unsupported => .error .invalidSetOperationOrder

/-- A foreign high-level request retains its configured order next to the raw
post-stroke geometry record.  The latter is inspected only after order passes. -/
structure ForeignCarrierGeometryRequest (count : Nat) where
  setOperationOrder : ForeignSetOperationOrder
  raw : RawCarrierGeometry count

/-- Explicit boundary between a foreign public input (path, region object,
configuration, and options) and the checked post-preparation raster record.
Inhabiting this relation for JavaScript observations requires validation
evidence from the executable preparation layer. -/
structure GeometryPreparationRelation (ForeignInput : Type) (count : Nat) where
  prepares : ForeignInput → RawCarrierGeometry count → Prop

/-- Fail-closed validation of raw high-level raster input. -/
def prepareCarrierGeometryResult {count : Nat}
    (raw : RawCarrierGeometry count) :
    RuntimeResult (PreparedCarrierGeometry count) :=
  if samplesZero : raw.samples = 0 then
    .error .invalidSampleCount
  else if thresholdNegative : raw.threshold < 0 then
    .error .invalidThreshold
  else if thresholdTooLarge : 1 < raw.threshold then
    .error .invalidThreshold
  else
    match ownershipEquation : raw.ownership with
    | none =>
        .ok
          { firstRegion := raw.firstRegion
            remainingRegions := raw.remainingRegions
            combination := raw.combination
            cells := raw.cells
            samples := raw.samples
            samplesPositive := Nat.pos_of_ne_zero samplesZero
            exactCoverage := raw.exactCoverage
            threshold := raw.threshold
            thresholdNonnegative := le_of_not_gt thresholdNegative
            thresholdAtMostOne := le_of_not_gt thresholdTooLarge
            scalar := raw.scalar
            policy := raw.policy
            ownershipPolicies := raw.ownershipPolicies
            ownership := none
            ownershipCoherent := by simp }
    | some ownership =>
        if coherent : ownership.Coherent then
          .ok
            { firstRegion := raw.firstRegion
              remainingRegions := raw.remainingRegions
              combination := raw.combination
              cells := raw.cells
              samples := raw.samples
              samplesPositive := Nat.pos_of_ne_zero samplesZero
              exactCoverage := raw.exactCoverage
              threshold := raw.threshold
              thresholdNonnegative := le_of_not_gt thresholdNegative
              thresholdAtMostOne := le_of_not_gt thresholdTooLarge
              scalar := raw.scalar
              policy := raw.policy
              ownershipPolicies := raw.ownershipPolicies
              ownership := some ownership
              ownershipCoherent := by
                intro ownershipValue provided
                cases provided
                exact coherent }
        else
          .error .invalidOwnership

/-- Complete raw success-or-failure semantics of the high-level operation. -/
def rasterizeCarrierGeometryResult {count : Nat}
    (raw : RawCarrierGeometry count) : RuntimeResult (CarrierGeometryResult count) :=
  (prepareCarrierGeometryResult raw).map rasterizeCarrierGeometryDetailedSpec

/-- High-level checked result including the set-operation-order boundary. -/
def foreignCarrierGeometryResult {count : Nat}
    (request : ForeignCarrierGeometryRequest count) :
    RuntimeResult (CarrierGeometryResult count) :=
  match checkForeignSetOperationOrder request.setOperationOrder with
  | .error failure => .error failure
  | .ok _ => rasterizeCarrierGeometryResult request.raw

@[simp] theorem foreignCarrierGeometryResult_rejects_order {count : Nat}
    (raw : RawCarrierGeometry count) :
    foreignCarrierGeometryResult ⟨.unsupported, raw⟩ =
      .error .invalidSetOperationOrder :=
  rfl

@[simp] theorem prepareCarrierGeometryResult_zero_samples {count : Nat}
    (raw : RawCarrierGeometry count) (zero : raw.samples = 0) :
    prepareCarrierGeometryResult raw = .error .invalidSampleCount := by
  simp [prepareCarrierGeometryResult, zero]

@[simp] theorem prepareCarrierGeometryResult_negative_threshold {count : Nat}
    (raw : RawCarrierGeometry count) (samples : raw.samples ≠ 0)
    (negative : raw.threshold < 0) :
    prepareCarrierGeometryResult raw = .error .invalidThreshold := by
  simp [prepareCarrierGeometryResult, samples, negative]

/-- Exact finite weighted bit evaluation. -/
def weightedBitEvaluation {count : Nat} (mask : OwnershipSelectionMask count)
    (bits : Fin count → Bool) : ℚ :=
  ∑ index, ownershipWeight mask index * if bits index then 1 else 0

/-- Arbitrary nonnegative runtime weights with a positive total mass.  This is
the valid-input domain of `createFiniteRasterState`, which is broader than a
binary ownership mask. -/
structure NormalizableWeights (count : Nat) where
  rawWeight : Fin count → ℚ
  nonnegative : ∀ index, 0 ≤ rawWeight index
  positiveTotal : 0 < ∑ index, rawWeight index

/-- Normalize a valid finite weight vector exactly. -/
def normalizedWeight {count : Nat} (weights : NormalizableWeights count)
    (index : Fin count) : ℚ :=
  weights.rawWeight index / ∑ carrier, weights.rawWeight carrier

theorem normalizedWeight_nonnegative {count : Nat}
    (weights : NormalizableWeights count) (index : Fin count) :
    0 ≤ normalizedWeight weights index := by
  exact div_nonneg (weights.nonnegative index) weights.positiveTotal.le

/-- Normalization produces total mass exactly one. -/
theorem normalizedWeight_sum {count : Nat}
    (weights : NormalizableWeights count) :
    ∑ index, normalizedWeight weights index = 1 := by
  simp only [normalizedWeight, ← Finset.sum_div]
  exact div_self (ne_of_gt weights.positiveTotal)

/-- Exact finite evaluation used by `createFiniteRasterState`. -/
def normalizedWeightedEvaluation {count : Nat}
    (weights : NormalizableWeights count) (values : Fin count → ℚ) : ℚ :=
  ∑ index, normalizedWeight weights index * values index

/-- Boolean specialization used by `evaluateBitProjection`. -/
def normalizedBitProjection {count : Nat}
    (weights : NormalizableWeights count) (bits : Fin count → Bool) : ℚ :=
  normalizedWeightedEvaluation weights (fun index => if bits index then 1 else 0)

/-- Projecting the constant true bit field produces unit mass. -/
@[simp] theorem normalizedBitProjection_all_true {count : Nat}
    (weights : NormalizableWeights count) :
    normalizedBitProjection weights (fun _ => true) = 1 := by
  simpa [normalizedBitProjection, normalizedWeightedEvaluation] using
    normalizedWeight_sum weights

/-- Values on zero-weight coordinates cannot affect a finite raster state. -/
theorem normalizedWeightedEvaluation_congr_support {count : Nat}
    (weights : NormalizableWeights count) (left right : Fin count → ℚ)
    (agree : ∀ index, weights.rawWeight index ≠ 0 → left index = right index) :
    normalizedWeightedEvaluation weights left =
      normalizedWeightedEvaluation weights right := by
  unfold normalizedWeightedEvaluation
  apply Finset.sum_congr rfl
  intro index _
  by_cases selected : weights.rawWeight index = 0
  · simp [normalizedWeight, selected]
  · rw [agree index selected]

/-- Runtime normalization threshold.  JavaScript rejects a total mass equal to
the tolerance as well as one below it. -/
structure NormalizationPolicy where
  tolerance : ℚ
  toleranceNonnegative : 0 ≤ tolerance

/-- Raw finite weights before nonnegativity and total-mass validation. -/
structure RawFiniteWeights (count : Nat) where
  rawWeight : Fin count → ℚ

/-- Validate the complete raw domain of `createFiniteRasterState`. -/
def checkFiniteWeights {count : Nat} (policy : NormalizationPolicy)
    (raw : RawFiniteWeights count) : RuntimeResult (NormalizableWeights count) :=
  if negative : ∃ index, raw.rawWeight index < 0 then
    .error .negativeWeight
  else if insufficient : (∑ index, raw.rawWeight index) ≤ policy.tolerance then
    .error .insufficientWeightMass
  else
    .ok
      { rawWeight := raw.rawWeight
        nonnegative := fun index =>
          le_of_not_gt (fun below => negative ⟨index, below⟩)
        positiveTotal := lt_of_le_of_lt policy.toleranceNonnegative
          (lt_of_not_ge insufficient) }

/-- Successful raw finite-state normalization. -/
def finiteWeightsResult {count : Nat} (policy : NormalizationPolicy)
    (raw : RawFiniteWeights count) : RuntimeResult (Fin count → ℚ) :=
  (checkFiniteWeights policy raw).map normalizedWeight

/-- Foreign finite-state weights retain every entry in source order. -/
structure ForeignFiniteWeights (count : Nat) where
  rawWeight : Fin count → ForeignRational

/-- Numeric projection used only after the surrounding foreign-weight check
has established that no nonfinite constructor occurs. -/
def ForeignRational.rationalValue : ForeignRational → ℚ
  | .finite value => value
  | .negativeZero => 0
  | .nan | .positiveInfinity | .negativeInfinity => 0

/-- Validate weight entries from left to right.  A negative finite entry is
therefore reported before a later nonfinite entry, matching `Array.map`. -/
def checkForeignFiniteWeightEntries : List ForeignRational → RuntimeResult Unit
  | [] => .ok ()
  | entry :: remaining =>
      match checkForeignRationalExact entry with
      | .error failure => .error failure
      | .ok weight =>
          if _negative : weight < 0 then
            .error .negativeWeight
          else
            checkForeignFiniteWeightEntries remaining

/-- One foreign floating accumulation observation.  `accumulatedTotal` is the
actual binary64 reduction result supplied by executable evidence; Lean does not
pretend that exact rational addition universally verifies those foreign bytes. -/
structure ForeignFiniteWeightsObservation (count : Nat) where
  weights : ForeignFiniteWeights count
  accumulatedTotal : ForeignRational

/-- Complete checked finite-weight boundary for a supplied floating
accumulation observation: nonempty shape, source-order entry validation,
finite accumulated total, tolerance, then normalization by that total. -/
def foreignFiniteWeightsObservedResult {count : Nat}
    (policy : NormalizationPolicy)
    (observation : ForeignFiniteWeightsObservation count) :
    RuntimeResult (Fin count → ℚ) :=
  if _empty : count = 0 then
    .error .invalidWeightCollection
  else
    match checkForeignFiniteWeightEntries
        (List.ofFn observation.weights.rawWeight) with
    | .error failure => .error failure
    | .ok _ =>
        match checkForeignRationalExact observation.accumulatedTotal with
        | .error _ => .error .nonfiniteForeignResult
        | .ok total =>
            if _insufficient : total ≤ policy.tolerance then
              .error .insufficientWeightMass
            else
              .ok (fun index =>
                (observation.weights.rawWeight index).rationalValue / total)

/-- Exact-rational accumulation profile retained for callers that do not claim
to model binary64 overflow.  Foreign JavaScript observations should use
`foreignFiniteWeightsObservedResult` with their observed reduction total. -/
def foreignFiniteWeightsResult {count : Nat} (policy : NormalizationPolicy)
    (raw : ForeignFiniteWeights count) : RuntimeResult (Fin count → ℚ) :=
  foreignFiniteWeightsObservedResult policy
    { weights := raw
      accumulatedTotal := .finite
        (∑ index, (raw.rawWeight index).rationalValue) }

@[simp] theorem foreignFiniteWeightsObservedResult_empty
    (policy : NormalizationPolicy)
    (observation : ForeignFiniteWeightsObservation 0) :
    foreignFiniteWeightsObservedResult policy observation =
      .error .invalidWeightCollection := by
  simp [foreignFiniteWeightsObservedResult]

@[simp] theorem foreignFiniteWeightsObservedResult_nonfinite_total
    {count : Nat} (policy : NormalizationPolicy)
    (raw : ForeignFiniteWeights count) (nonempty : count ≠ 0)
    (entries : checkForeignFiniteWeightEntries (List.ofFn raw.rawWeight) =
      .ok ()) :
  foreignFiniteWeightsObservedResult policy
        ⟨raw, .positiveInfinity⟩ = .error .nonfiniteForeignResult := by
  simp [foreignFiniteWeightsObservedResult, nonempty, entries,
    checkForeignRationalExact]

/-- Tagged values accepted by `evaluateBitProjection`. -/
inductive ForeignBitValue where
  | boolean (value : Bool)
  | numericZero
  | numericOne
  | nonfinite
  | invalid
  deriving DecidableEq, Repr

/-- Validate the Boolean/zero/one projection vocabulary. -/
def checkForeignBitValue : ForeignBitValue → RuntimeResult Bool
  | .boolean value => .ok value
  | .numericZero => .ok false
  | .numericOne => .ok true
  | .nonfinite => .error .nonfiniteInput
  | .invalid => .error .invalidBitProjection

@[simp] theorem checkForeignBitValue_invalid :
    checkForeignBitValue .invalid = .error .invalidBitProjection :=
  rfl

@[simp] theorem checkForeignBitValue_nonfinite :
    checkForeignBitValue .nonfinite = .error .nonfiniteInput :=
  rfl

@[simp] theorem checkFiniteWeights_rejects_negative {count : Nat}
    (policy : NormalizationPolicy) (raw : RawFiniteWeights count)
    (negative : ∃ index, raw.rawWeight index < 0) :
    checkFiniteWeights policy raw = .error .negativeWeight := by
  simp [checkFiniteWeights, negative]

@[simp] theorem checkFiniteWeights_rejects_tolerance {count : Nat}
    (policy : NormalizationPolicy) (raw : RawFiniteWeights count)
    (nonnegative : ¬ ∃ index, raw.rawWeight index < 0)
    (insufficient : (∑ index, raw.rawWeight index) ≤ policy.tolerance) :
    checkFiniteWeights policy raw = .error .insufficientWeightMass := by
  simp [checkFiniteWeights, nonnegative, insufficient]

/-- Equality with the configured tolerance fails closed. -/
@[simp] theorem checkFiniteWeights_rejects_equal_tolerance {count : Nat}
    (policy : NormalizationPolicy) (raw : RawFiniteWeights count)
    (nonnegative : ¬ ∃ index, raw.rawWeight index < 0)
    (equal : (∑ index, raw.rawWeight index) = policy.tolerance) :
    checkFiniteWeights policy raw = .error .insufficientWeightMass := by
  apply checkFiniteWeights_rejects_tolerance policy raw nonnegative
  exact le_of_eq equal

/-- Every successful tolerance-aware normalization has total mass one. -/
theorem finiteWeightsResult_sum_of_success {count : Nat}
    (policy : NormalizationPolicy) (raw : RawFiniteWeights count)
    (weights : Fin count → ℚ)
    (success : finiteWeightsResult policy raw = .ok weights) :
    ∑ index, weights index = 1 := by
  unfold finiteWeightsResult at success
  cases checked : checkFiniteWeights policy raw with
  | error failure =>
      rw [checked] at success
      contradiction
  | ok valid =>
      rw [checked] at success
      have equation : normalizedWeight valid = weights := by
        exact Except.ok.inj success
      rw [← equation]
      exact normalizedWeight_sum valid

/-- Three-valued sign of the scalar used by exact-threshold ownership policy. -/
inductive RoundingScalarSign where
  | negative
  | zero
  | positive
  deriving DecidableEq, Repr

def roundingScalarSign (scalar : ℚ) : RoundingScalarSign :=
  if scalar > 0 then .positive else if scalar < 0 then .negative else .zero

@[simp] theorem roundingScalarSign_zero : roundingScalarSign 0 = .zero := by
  simp [roundingScalarSign]

/-- Convert a tagged finite foreign rational to the exact real model. -/
def checkForeignRational : ForeignRational → RuntimeResult ℝ
  | .finite value => .ok value
  | .negativeZero => .ok 0
  | .nan | .positiveInfinity | .negativeInfinity => .error .nonfiniteInput

/-- Branch selected by the real Lanczos profile. -/
inductive GammaBranch where
  | reflection
  | core
  | pole
  deriving DecidableEq, Repr

/-- The real Gamma domain excludes nonpositive integers. -/
def gammaDomain (value : ℝ) : Prop :=
  ¬ ∃ n : Nat, value = -(n : ℝ)

/-- Exact real constants corresponding to the runtime's nine decimal Lanczos
coefficients. -/
noncomputable def lanczosCoefficients : Fin 9 → ℝ
  | ⟨0, _⟩ => 99999999999980993 / 100000000000000000
  | ⟨1, _⟩ => 6765203681218851 / 10000000000000
  | ⟨2, _⟩ => -12591392167224028 / 10000000000000
  | ⟨3, _⟩ => 77132342877765313 / 100000000000000
  | ⟨4, _⟩ => -17661502916214059 / 100000000000000
  | ⟨5, _⟩ => 12507343278686905 / 1000000000000000
  | ⟨6, _⟩ => -13857109526572012 / 100000000000000000
  | ⟨7, _⟩ => 99843695780195716 / 10000000000000000000000
  | ⟨8, _⟩ => 15056327351493116 / 100000000000000000000000

/-- The nonreflection branch of the runtime Lanczos formula, over exact reals. -/
noncomputable def lanczosCore (value : ℝ) : ℝ :=
  let shifted := value - 1
  let series := lanczosCoefficients 0 +
    lanczosCoefficients 1 / (shifted + 1) +
    lanczosCoefficients 2 / (shifted + 2) +
    lanczosCoefficients 3 / (shifted + 3) +
    lanczosCoefficients 4 / (shifted + 4) +
    lanczosCoefficients 5 / (shifted + 5) +
    lanczosCoefficients 6 / (shifted + 6) +
    lanczosCoefficients 7 / (shifted + 7) +
    lanczosCoefficients 8 / (shifted + 8)
  let t := shifted + 15 / 2
  Real.sqrt (2 * Real.pi) * Real.rpow t (shifted + 1 / 2) *
    Real.exp (-t) * series

/-- Real-valued specification of the runtime's reflection and core branches. -/
noncomputable def lanczosGammaModel (value : ℝ) : ℝ :=
  if value < 1 / 2 then
    Real.pi / (Real.sin (Real.pi * value) * lanczosCore (1 - value))
  else lanczosCore value

/-- Decidable branch classifier used by shared conformance vectors. -/
def gammaBranch (value : ℚ) : GammaBranch :=
  if value ≤ 0 ∧ value = ((Rat.floor value : ℤ) : ℚ) then .pole
  else if value < 1 / 2 then .reflection else .core

/-- Fail-closed Gamma input validation for tagged foreign numbers. -/
def checkForeignGammaInput : ForeignRational → RuntimeResult ℝ
  | .finite value =>
      if gammaBranch value = .pole then .error .gammaPole else .ok value
  | .negativeZero => .error .gammaPole
  | .nan | .positiveInfinity | .negativeInfinity => .error .nonfiniteInput

@[simp] theorem checkForeignGammaInput_nan :
    checkForeignGammaInput .nan = .error .nonfiniteInput :=
  rfl

@[simp] theorem checkForeignGammaInput_zero :
    checkForeignGammaInput (.finite 0) = .error .gammaPole := by
  decide

/-- Fixed maximum error admitted by the JavaScript Lanczos profile. -/
noncomputable def gammaProfileMaximumError : ℝ := 1 / 10000000000

theorem gammaProfileMaximumError_nonnegative :
    0 ≤ gammaProfileMaximumError := by
  norm_num [gammaProfileMaximumError]

/-- Fixed maximum error admitted by the JavaScript precession profile. -/
noncomputable def precessionProfileMaximumError : ℝ := 1 / 1000000000000

theorem precessionProfileMaximumError_nonnegative :
    0 ≤ precessionProfileMaximumError := by
  norm_num [precessionProfileMaximumError]

/-- Exact largest finite binary64 magnitude `(2 - 2^-52) * 2^1023`. -/
noncomputable def binary64FiniteMagnitudeLimit : ℝ :=
  (2 - (2 : ℝ)⁻¹ ^ 52) * (2 : ℝ) ^ 1023

theorem binary64FiniteMagnitudeLimit_nonnegative :
    0 ≤ binary64FiniteMagnitudeLimit := by
  unfold binary64FiniteMagnitudeLimit
  positivity

/-- An explicit fixed-profile error certificate is required before a floating
Gamma result is promoted to an approximation statement. -/
structure GammaApproximationCertificate where
  input : ℝ
  runtimeOutput : ℝ
  domain : gammaDomain input
  withinProfileError :
    |runtimeOutput - lanczosGammaModel input| ≤ gammaProfileMaximumError

/-- Evidence that an exact real output lies outside an explicitly modeled
finite floating range.  Merely being in an operation's mathematical domain is
not evidence of executable overflow. -/
structure FloatingRangeFailureCertificate where
  exactOutput : ℝ
  exceedsBinary64FiniteRange :
    binary64FiniteMagnitudeLimit < |exactOutput|

/-- A foreign Gamma result is accepted only with a proof-bearing error
certificate.  Pole rejection and finite-range rejection remain distinct. -/
def GammaResultRelation (input : ℝ) : RuntimeResult ℝ → Prop
  | .ok output =>
      ∃ certificate : GammaApproximationCertificate,
        certificate.input = input ∧ certificate.runtimeOutput = output
  | .error .gammaPole => ¬ gammaDomain input
  | .error .nonfiniteForeignResult =>
      gammaDomain input ∧
        ∃ certificate : FloatingRangeFailureCertificate,
          certificate.exactOutput = lanczosGammaModel input
  | .error _ => False

/-- Any supplied approximation certificate induces a successful Gamma result
relation; the theorem does not manufacture a certificate for foreign bytes. -/
theorem gammaResultRelation_of_certificate
    (certificate : GammaApproximationCertificate) :
    GammaResultRelation certificate.input (.ok certificate.runtimeOutput) := by
  exact ⟨certificate, rfl, rfl⟩

theorem gammaResultRelation_nonfinite_of_certificate (input : ℝ)
    (domain : gammaDomain input)
    (certificate : FloatingRangeFailureCertificate)
    (output : certificate.exactOutput = lanczosGammaModel input) :
    GammaResultRelation input (.error .nonfiniteForeignResult) :=
  ⟨domain, certificate, output⟩

/-- Nonpositive integers are classified as Gamma poles. -/
theorem gammaResultRelation_pole (index : Nat) :
    GammaResultRelation (-(index : ℝ)) (.error .gammaPole) := by
  intro domain
  exact domain ⟨index, rfl⟩

/-- Real-valued semantic model of the configured precession power. -/
noncomputable def precessionPhaseModel (phase exponent : ℝ) : ℝ :=
  Real.rpow phase exponent

/-- Exact finite-input domain of JavaScript exponentiation after its explicit
nonnegative-phase check.  In particular, `0` to a negative exponent is
excluded because JavaScript produces infinity and the API rejects it. -/
def PrecessionAdmissible (phase exponent : ℝ) : Prop :=
  0 ≤ phase ∧ (phase ≠ 0 ∨ 0 ≤ exponent)

/-- Fail-closed precession semantics for finite real inputs.  Overflow of an
otherwise admissible IEEE-754 computation remains a foreign finite-range
obligation represented by `nonfiniteForeignResult`. -/
noncomputable def precessionResult (phase exponent : ℝ) : RuntimeResult ℝ :=
  if _negative : phase < 0 then
    .error .negativePhase
  else if _zeroNegative : phase = 0 ∧ exponent < 0 then
    .error .zeroToNegativePower
  else
    .ok (precessionPhaseModel phase exponent)

/-- Tagged foreign precession input validation followed by the exact-domain
result semantics. -/
noncomputable def foreignPrecessionResult (phase exponent : ForeignRational) :
    RuntimeResult ℝ :=
  match checkForeignRational phase with
  | .error failure => .error failure
  | .ok checkedPhase =>
      match checkForeignRational exponent with
      | .error failure => .error failure
      | .ok checkedExponent => precessionResult checkedPhase checkedExponent

@[simp] theorem foreignPrecessionResult_nonfinite_phase
    (exponent : ForeignRational) :
    foreignPrecessionResult .nan exponent = .error .nonfiniteInput :=
  rfl

@[simp] theorem foreignPrecessionResult_nonfinite_exponent (phase : ℚ) :
    foreignPrecessionResult (.finite phase) .positiveInfinity =
      .error .nonfiniteInput :=
  rfl

/-- Honest relation for an observed precession result.  An executable
finite-range rejection requires a certificate about the modeled real output;
it cannot be inferred solely from domain membership. -/
def PrecessionResultRelation (phase exponent : ℝ) : RuntimeResult ℝ → Prop
  | .ok output =>
      PrecessionAdmissible phase exponent ∧
        |output - precessionPhaseModel phase exponent| ≤
          precessionProfileMaximumError
  | .error .negativePhase => phase < 0
  | .error .zeroToNegativePower => phase = 0 ∧ exponent < 0
  | .error .nonfiniteForeignResult =>
      PrecessionAdmissible phase exponent ∧
        ∃ certificate : FloatingRangeFailureCertificate,
          certificate.exactOutput = precessionPhaseModel phase exponent
  | .error _ => False

@[simp] theorem precessionResult_negative {phase exponent : ℝ}
    (negative : phase < 0) :
    precessionResult phase exponent = .error .negativePhase := by
  simp [precessionResult, negative]

@[simp] theorem precessionResult_zero_negative {exponent : ℝ}
    (negative : exponent < 0) :
    precessionResult 0 exponent = .error .zeroToNegativePower := by
  simp [precessionResult, negative]

theorem precessionResult_of_admissible {phase exponent : ℝ}
    (admissible : PrecessionAdmissible phase exponent) :
    precessionResult phase exponent =
      .ok (precessionPhaseModel phase exponent) := by
  have phaseNotNegative : ¬ phase < 0 := not_lt_of_ge admissible.1
  have zeroNotNegative : ¬ (phase = 0 ∧ exponent < 0) := by
    rintro ⟨phaseZero, exponentNegative⟩
    rcases admissible.2 with phaseNonzero | exponentNonnegative
    · exact phaseNonzero phaseZero
    · exact (not_lt_of_ge exponentNonnegative) exponentNegative
  simp [precessionResult, phaseNotNegative, zeroNotNegative]

@[simp] theorem precessionResult_zero_zero :
    precessionResult 0 0 = .ok 1 := by
  have admissible : PrecessionAdmissible 0 0 := by
    exact ⟨le_rfl, Or.inr le_rfl⟩
  rw [precessionResult_of_admissible admissible]
  simp [precessionPhaseModel]

theorem precessionPhaseModel_nonnegative {phase : ℝ} (nonnegative : 0 ≤ phase)
    (exponent : ℝ) : 0 ≤ precessionPhaseModel phase exponent :=
  Real.rpow_nonneg nonnegative exponent

/-! ## Elementary graph--diagonal fixed-point semantics -/

/-- The doubled carrier used to compare a map's graph with the diagonal. -/
abbrev CarrierProduct (Point : Type*) := Point × Point

/-- Forget the second coordinate of a doubled carrier. -/
def firstProjection {Point : Type*} : CarrierProduct Point → Point :=
  Prod.fst

/-- Embed one carrier point on the diagonal of the doubled carrier.

This is a section `p ↦ (p, p)` of `firstProjection`.  It must not be confused
with the JavaScript operation named `reflectDiagonal`: that runtime operation
is coordinate reflection `(x, y) ↦ (y, x)` and has a different type.  Its
separate semantic object and involution theorem are `RasterPoint.reflectDiagonal`
and `RasterPoint.reflectDiagonal_involutive` above.
-/
def diagonalSection {Point : Type*} (point : Point) : CarrierProduct Point :=
  (point, point)

/-- The canonical point on the graph of an endomap above `point`. -/
def graphPoint {Point : Type*}
    (dynamics : Point → Point) (point : Point) : CarrierProduct Point :=
  (point, dynamics point)

/-- A doubled point lies on the diagonal when its coordinates agree. -/
def LiesOnDiagonal {Point : Type*} (point : CarrierProduct Point) : Prop :=
  point.1 = point.2

/-- A doubled point lies on the graph of `dynamics`. -/
def LiesOnGraph {Point : Type*}
    (dynamics : Point → Point) (point : CarrierProduct Point) : Prop :=
  point.2 = dynamics point.1

/-- The fixed set of an endomap, represented as a set of carrier points. -/
def FixedSet {Point : Type*} (dynamics : Point → Point) : Set Point :=
  { point | dynamics point = point }

/-- A fixed point packaged with its defining equality. -/
abbrev FixedPoint {Point : Type*} (dynamics : Point → Point) :=
  { point // point ∈ FixedSet dynamics }

/-- A graph point packaged with evidence that it also lies on the diagonal. -/
abbrev GraphDiagonalIntersection {Point : Type*} (dynamics : Point → Point) :=
  { point : CarrierProduct Point //
      LiesOnGraph dynamics point ∧ LiesOnDiagonal point }

@[simp]
theorem firstProjection_diagonalSection {Point : Type*} (point : Point) :
    firstProjection (diagonalSection point) = point :=
  rfl

/-- The diagonal embedding is a section of the first projection. -/
theorem firstProjection_comp_diagonalSection {Point : Type*} :
    (firstProjection : CarrierProduct Point → Point) ∘ diagonalSection = id := by
  funext point
  rfl

@[simp]
theorem graphPoint_liesOnGraph {Point : Type*}
    (dynamics : Point → Point) (point : Point) :
    LiesOnGraph dynamics (graphPoint dynamics point) :=
  rfl

/-- A point is fixed exactly when its graph point lies on the diagonal. -/
theorem mem_fixedSet_iff_graphPoint_liesOnDiagonal {Point : Type*}
    (dynamics : Point → Point) (point : Point) :
    point ∈ FixedSet dynamics ↔
      LiesOnDiagonal (graphPoint dynamics point) := by
  simp only [FixedSet, Set.mem_setOf_eq, LiesOnDiagonal, graphPoint]
  exact eq_comm

/-- Fixed points are canonically the intersection of the graph and diagonal.

This is a plain type equivalence.  No topological, smooth, or spectral
structure is assumed or inferred.
-/
def fixedPointEquivGraphDiagonalIntersection {Point : Type*}
    (dynamics : Point → Point) :
    FixedPoint dynamics ≃ GraphDiagonalIntersection dynamics where
  toFun point :=
    ⟨diagonalSection point.1, point.2.symm, rfl⟩
  invFun point :=
    ⟨point.1.1, point.2.1.symm.trans point.2.2.symm⟩
  left_inv point := by
    apply Subtype.ext
    rfl
  right_inv point := by
    apply Subtype.ext
    apply Prod.ext
    · rfl
    · exact point.2.2

/-- Every point is fixed by the identity endomap. -/
@[simp]
theorem fixedSet_identity {Point : Type*} :
    FixedSet (id : Point → Point) = Set.univ := by
  ext point
  simp [FixedSet]

/-- If the fixed set is the singleton `{equilibrium}`, every fixed point is
that equilibrium.  This statement does not imply global attraction.
-/
theorem fixedPoint_eq_of_fixedSet_eq_singleton {Point : Type*}
    {dynamics : Point → Point} {equilibrium point : Point}
    (hfixedSet : FixedSet dynamics = {equilibrium})
    (hpoint : point ∈ FixedSet dynamics) :
    point = equilibrium := by
  have : point ∈ ({equilibrium} : Set Point) := by
    rw [← hfixedSet]
    exact hpoint
  simpa using this

/-! ## Linear fixed sets -/

/-- For a linear endomorphism, the fixed set is exactly the kernel of
`id - T`.  This is an equality of predicates and does not assert attraction,
hyperbolicity, or uniqueness of a fixed point. -/
theorem mem_fixedSet_linear_iff_mem_ker_id_sub
    {R V : Type*} [Ring R] [AddCommGroup V] [Module R V]
    (transformation : V →ₗ[R] V) (point : V) :
    point ∈ FixedSet transformation ↔
      point ∈ LinearMap.ker (LinearMap.id - transformation) := by
  change transformation point = point ↔ point - transformation point = 0
  rw [sub_eq_zero]
  exact eq_comm

/-- A runtime representation relation with an explicit abstraction function. -/
structure RepresentationRelation (Semantic Runtime : Type) where
  abstract : Runtime → Semantic
  represents : Runtime → Semantic → Prop
  represents_iff : ∀ runtime semantic,
    represents runtime semantic ↔ abstract runtime = semantic

/-- Evidence levels used by the formal–runtime correspondence ledger. -/
inductive CorrespondenceStatus where
  | specified
  | executableTested
  | theoremBacked
  | conditional
  deriving DecidableEq, Repr

end BitMatrix.Runtime.Semantics
```
