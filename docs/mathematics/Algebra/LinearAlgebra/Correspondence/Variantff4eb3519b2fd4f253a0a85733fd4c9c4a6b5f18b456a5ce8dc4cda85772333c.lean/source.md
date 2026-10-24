# Complete source: GRWTSK.Algebra.LinearAlgebra.Correspondence.Variantff4eb3519b2fd4f253a0a85733fd4c9c4a6b5f18b456a5ce8dc4cda85772333c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d166e769594453cba6158b99ee78dd2cf5c4fe25` · SHA-256 `1c6a7511f4db550548e57f065963069047546d5c20d3deb5f3e126d1e3335b96`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.IdentityCantor.Variantff1c4d5be5dcb39c8ee06bf780d84a10ab53e8a67dadbfecaf50b98a6caf6431","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ff1c4d5be5dcb39c8ee06bf780d84a10ab53e8a67dadbfecaf50b98a6caf6431","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.IdentityCantor.Variantff1c4d5be5dcb39c8ee06bf780d84a10ab53e8a67dadbfecaf50b98a6caf6431","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"ff1c4d5be5dcb39c8ee06bf780d84a10ab53e8a67dadbfecaf50b98a6caf6431","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Tests/Correspondence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Formal
import BitMatrix.Codec.Profiles
import BitMatrix.Geometry.CarrierGrid
import BitMatrix.Runtime.Correspondence
import BitMatrix.Runtime.Semantics
import Mathlib.Tactic


namespace GRWTSK.Algebra.LinearAlgebra.IdentityCantor.Variantff1c4d5be5dcb39c8ee06bf780d84a10ab53e8a67dadbfecaf50b98a6caf6431

namespace BitMatrix.Tests.Correspondence

open BitMatrix.Carrier

private def identityCantor : DesignatedCantorRepresentation where
  Scalar := BitStream
  theta := Equiv.refl BitStream

private def falseBaseline : BooleanState Nat := fun _ => false

private def natAddressEnumeration : AddressEnumeration Nat where
  enumerate := Equiv.refl Nat
  code := id
  codeInjective := Function.injective_id
  canonicalOrder := by
    intro left right
    rfl

example (target : BooleanState Nat) :
    baselineEquiv natAddressEnumeration.enumerate identityCantor falseBaseline
      ((baselineEquiv natAddressEnumeration.enumerate
        identityCantor falseBaseline).symm target) =
        target :=
  (baselineEquiv natAddressEnumeration.enumerate
    identityCantor falseBaseline).apply_symm_apply target

example (scalar : identityCantor.Scalar) :
    distinguishedInterpreter natAddressEnumeration.enumerate
      identityCantor falseBaseline scalar = falseBaseline ↔
        scalar = zeroScalar identityCantor :=
  distinguishedInterpreter_eq_baseline_iff
    natAddressEnumeration.enumerate identityCantor falseBaseline scalar

example : BitMatrix.Codec.lengthPrefixDigits 4 5 =
    [true, false, true, false] := by
  native_decide

example : BitMatrix.Codec.byteDigitsMSB 128 =
    [true, false, false, false, false, false, false, false] := by
  native_decide

example :
    BitMatrix.Codec.Profiles.normalizeLineEndings
        ['A', '\r', '\n', 'B', '\r', 'C'] =
      ['A', '\n', 'B', '\n', 'C'] := by
  native_decide

example :
    BitMatrix.Codec.Profiles.encodeRustProfile 8 ['A', '\n', 'B'] =
      BitMatrix.Codec.Profiles.encodeJavaScriptProfile 8 ['A', '\n', 'B'] := by
  native_decide

example :
    BitMatrix.Codec.Profiles.encodeRustProfile 8 ['A', '\r', '\n', 'B'] ≠
      BitMatrix.Codec.Profiles.encodeJavaScriptProfile 8
        ['A', '\r', '\n', 'B'] := by
  native_decide

example : ¬ BitMatrix.Codec.RepresentableLength 1
    (BitMatrix.Codec.Profiles.profilePayload
      .rustBytePreserving ['A', 'A']).bytes.size := by
  native_decide

example {size : Nat} {coordinate : ℚ} {cell : Fin size}
    (origin : BitMatrix.Geometry.CarrierGrid.AxisOriginMatches
      size coordinate cell) :
    BitMatrix.Geometry.CarrierGrid.AxisSupports size coordinate cell :=
  BitMatrix.Geometry.CarrierGrid.axisOriginMatches_implies_support origin

example {size : Nat}
    {point : BitMatrix.Geometry.CarrierGrid.NormalizedPoint}
    {cell : BitMatrix.Runtime.Semantics.GridCell size size}
    (origin : BitMatrix.Geometry.CarrierGrid.OriginMatches size point cell) :
    BitMatrix.Geometry.CarrierGrid.ExactCarrier size point cell :=
  BitMatrix.Geometry.CarrierGrid.originMatches_implies_exactCarrier origin

example :
    BitMatrix.Geometry.CarrierGrid.carrierMultiplicity 5
      { x := BitMatrix.Geometry.CarrierGrid.center,
        y := BitMatrix.Geometry.CarrierGrid.center } = 1 := by
  simpa using
    BitMatrix.Geometry.CarrierGrid.odd_center_carrierMultiplicity 2

example :
    BitMatrix.Geometry.CarrierGrid.carrierMultiplicity 4
      { x := BitMatrix.Geometry.CarrierGrid.center,
        y := BitMatrix.Geometry.CarrierGrid.center } = 4 := by
  simpa using
    BitMatrix.Geometry.CarrierGrid.even_center_carrierMultiplicity 1

example (vertex : BitMatrix.Runtime.Semantics.TriangleVertex) :
    (BitMatrix.Runtime.Semantics.triangleSuccessor ^ 3) vertex = vertex :=
  BitMatrix.Runtime.Semantics.triangleSuccessor_third_power vertex

example (point : Nat) :
    BitMatrix.Runtime.Semantics.firstProjection
      (BitMatrix.Runtime.Semantics.diagonalSection point) = point :=
  BitMatrix.Runtime.Semantics.firstProjection_diagonalSection point

example :
    (BitMatrix.Runtime.Semantics.firstProjection :
      BitMatrix.Runtime.Semantics.CarrierProduct Nat → Nat) ∘
        BitMatrix.Runtime.Semantics.diagonalSection = id :=
  BitMatrix.Runtime.Semantics.firstProjection_comp_diagonalSection

example (dynamics : Nat → Nat) (point : Nat) :
    point ∈ BitMatrix.Runtime.Semantics.FixedSet dynamics ↔
      BitMatrix.Runtime.Semantics.LiesOnDiagonal
        (BitMatrix.Runtime.Semantics.graphPoint dynamics point) :=
  BitMatrix.Runtime.Semantics.mem_fixedSet_iff_graphPoint_liesOnDiagonal
    dynamics point

example (dynamics : Nat → Nat) :
    BitMatrix.Runtime.Semantics.FixedPoint dynamics ≃
      BitMatrix.Runtime.Semantics.GraphDiagonalIntersection dynamics :=
  BitMatrix.Runtime.Semantics.fixedPointEquivGraphDiagonalIntersection dynamics

example :
    BitMatrix.Runtime.Semantics.FixedSet (id : Nat → Nat) = Set.univ :=
  BitMatrix.Runtime.Semantics.fixedSet_identity

example (dynamics : Nat → Nat) (equilibrium point : Nat)
    (hfixedSet :
      BitMatrix.Runtime.Semantics.FixedSet dynamics = {equilibrium})
    (hpoint :
      point ∈ BitMatrix.Runtime.Semantics.FixedSet dynamics) :
    point = equilibrium :=
  BitMatrix.Runtime.Semantics.fixedPoint_eq_of_fixedSet_eq_singleton
    hfixedSet hpoint

example {R V : Type*} [Ring R] [AddCommGroup V] [Module R V]
    (transformation : V →ₗ[R] V) (point : V) :
    point ∈ BitMatrix.Runtime.Semantics.FixedSet transformation ↔
      point ∈ LinearMap.ker (LinearMap.id - transformation) :=
  BitMatrix.Runtime.Semantics.mem_fixedSet_linear_iff_mem_ker_id_sub
    transformation point

example {rows columns : Nat}
    (record : BitMatrix.Runtime.Correspondence.GridCellRecord rows columns) :
    (BitMatrix.Runtime.Correspondence.abstractGridCell record).rowMajorIndex =
      record.index :=
  BitMatrix.Runtime.Correspondence.abstractGridCell_rowMajorIndex record

example {size carrierCount : Nat}
    (record : BitMatrix.Runtime.Correspondence.CarrierStateRecord
      size carrierCount) :
    carrierCount = BitMatrix.Geometry.CarrierGrid.carrierMultiplicity
      size record.point :=
  BitMatrix.Runtime.Correspondence.carrierStateRecord_count_eq_carrierMultiplicity
    record

example (profile : BitMatrix.Codec.Profiles.RuntimeCodecProfile)
    (prefixWidth : Nat) (source : List Char)
    (representable : BitMatrix.Codec.RepresentableLength prefixWidth
      (BitMatrix.Codec.Profiles.profilePayload profile source).bytes.size) :
    BitMatrix.Runtime.Correspondence.codecDocumentRepresentation.represents
      (BitMatrix.Runtime.Correspondence.executeCodecInvocation
        profile prefixWidth source representable)
      (BitMatrix.Codec.Profiles.encodeWithProfile
        profile prefixWidth source) :=
  BitMatrix.Runtime.Correspondence.executeCodecInvocation_represents
    profile prefixWidth source representable

example : BitMatrix.Configuration.Schema003.Valid
    BitMatrix.Configuration.Schema003.policy :=
  BitMatrix.Configuration.Schema003.policy_valid

example (theory : BitMatrix.Rhetorical.InvariantTheory) :
    let presentations := BitMatrix.Rhetorical.fourModePresentation theory
    presentations.formalHypotactic.semanticValue =
      presentations.formalParatactic.semanticValue := by
  simpa using
    (BitMatrix.Rhetorical.FourModePresentation.semantic_invariance
      (BitMatrix.Rhetorical.fourModePresentation theory)).1

example (theory : BitMatrix.Rhetorical.InvariantTheory) :
    let presentations := BitMatrix.Rhetorical.fourModePresentation theory
    BitMatrix.Rhetorical.classify BitMatrix.Rhetorical.origin
        presentations.formalHypotactic.coordinate =
      .formalHypotaxis ∧
    BitMatrix.Rhetorical.classify BitMatrix.Rhetorical.origin
        presentations.formalParatactic.coordinate =
      .formalParataxis ∧
    BitMatrix.Rhetorical.classify BitMatrix.Rhetorical.origin
        presentations.pragmaticParatactic.coordinate =
      .pragmaticParataxis ∧
    BitMatrix.Rhetorical.classify BitMatrix.Rhetorical.origin
        presentations.pragmaticHypotactic.coordinate =
      .pragmaticHypotaxis := by
  rcases BitMatrix.Rhetorical.four_mode_coverage theory with
    ⟨_, _, _, _, formalHypotactic, formalParatactic,
      pragmaticParatactic, pragmaticHypotactic, _⟩
  exact ⟨formalHypotactic, formalParatactic,
    pragmaticParatactic, pragmaticHypotactic⟩

/-! The examples below are the kernel-checked side of
`client/test/runtimeSemanticsVectors.test.js`.  They deliberately state the
same discrete policies without claiming that matching examples alone verify
foreign JavaScript execution. -/

example :
    BitMatrix.Runtime.Semantics.RasterRounding.nearest.round (1 / 2) = 1 :=
  BitMatrix.Runtime.Semantics.round_positive_tie

example :
    BitMatrix.Runtime.Semantics.RasterRounding.nearest.round (-1 / 2) = 0 :=
  BitMatrix.Runtime.Semantics.round_negative_tie

example :
    BitMatrix.Runtime.Semantics.normalizeRasterCoordinate
        .nearest .increasing 4 (-1) = -1 / 4 := by
  have floorNegativeHalf : Rat.floor (-1 / 2 : ℚ) = -1 := by
    change ⌊(-1 / 2 : ℚ)⌋ = -1
    rw [Int.floor_eq_iff]
    norm_num
  unfold BitMatrix.Runtime.Semantics.normalizeRasterCoordinate
  simp only [BitMatrix.Runtime.Semantics.RasterRounding.round]
  rw [show (-1 : ℚ) + 1 / 2 = -1 / 2 by norm_num, floorNegativeHalf]
  norm_num

example :
    BitMatrix.Runtime.Semantics.normalizeRasterCoordinate
        .nearest .decreasing 4 5 = -1 / 4 := by
  have floorElevenHalves : Rat.floor (11 / 2 : ℚ) = 5 := by
    change ⌊(11 / 2 : ℚ)⌋ = 5
    rw [Int.floor_eq_iff]
    norm_num
  unfold BitMatrix.Runtime.Semantics.normalizeRasterCoordinate
  simp only [BitMatrix.Runtime.Semantics.RasterRounding.round]
  rw [show (5 : ℚ) + 1 / 2 = 11 / 2 by norm_num, floorElevenHalves]
  norm_num

example (threshold : ℚ)
    (ownership : BitMatrix.Runtime.Semantics.OwnershipTiePolicies) :
    BitMatrix.Runtime.Semantics.resolveThreshold
        threshold threshold 1 .ownership ownership = ownership.positive :=
  BitMatrix.Runtime.Semantics.resolveThreshold_positive_tie
    threshold 1 ownership (by norm_num)

example (threshold : ℚ)
    (ownership : BitMatrix.Runtime.Semantics.OwnershipTiePolicies) :
    BitMatrix.Runtime.Semantics.resolveThreshold
        threshold threshold (-1) .ownership ownership = ownership.negative :=
  BitMatrix.Runtime.Semantics.resolveThreshold_negative_tie
    threshold (-1) ownership (by norm_num)

example (threshold : ℚ)
    (ownership : BitMatrix.Runtime.Semantics.OwnershipTiePolicies) :
    BitMatrix.Runtime.Semantics.resolveThreshold
        threshold threshold 0 .ownership ownership = ownership.zero :=
  BitMatrix.Runtime.Semantics.resolveThreshold_zero_tie threshold ownership

example (point : BitMatrix.Runtime.Semantics.RasterPoint) :
    point.reflectDiagonal.reflectDiagonal = point :=
  BitMatrix.Runtime.Semantics.RasterPoint.reflectDiagonal_involutive point

example (invocation : BitMatrix.Runtime.Correspondence.RoundingInvocation) :
    BitMatrix.Runtime.Correspondence.roundingResultRepresentation.represents
      invocation (invocation.mode.round invocation.input) :=
  BitMatrix.Runtime.Correspondence.executeRounding_represents invocation

example {count : Nat}
    (invocation : BitMatrix.Runtime.Correspondence.OwnershipInvocation count) :
    (BitMatrix.Runtime.Correspondence.ownershipRepresentation count).represents
      invocation
      (BitMatrix.Runtime.Semantics.ownershipWeight invocation.mask) :=
  BitMatrix.Runtime.Correspondence.executeOwnership_represents invocation

example {count : Nat}
    (invocation : BitMatrix.Runtime.Correspondence.WeightedBitInvocation count) :
    (BitMatrix.Runtime.Correspondence.weightedBitRepresentation count).represents
      invocation
      (BitMatrix.Runtime.Semantics.weightedBitEvaluation
        invocation.mask invocation.bits) :=
  BitMatrix.Runtime.Correspondence.executeWeightedBit_represents invocation

example (invocation : BitMatrix.Runtime.Correspondence.CoverageInvocation) :
    0 ≤ (BitMatrix.Runtime.Correspondence.executeCoverage invocation).value ∧
      (BitMatrix.Runtime.Correspondence.executeCoverage invocation).value ≤ 1 :=
  BitMatrix.Runtime.Correspondence.executeCoverage_mem_unitInterval invocation

example {count : Nat}
    (invocation : BitMatrix.Runtime.Correspondence.FiniteWeightsInvocation count) :
    ∑ index, BitMatrix.Runtime.Correspondence.executeFiniteWeights
      invocation index = 1 :=
  BitMatrix.Runtime.Correspondence.executeFiniteWeights_sum invocation

example {count : Nat}
    (weights : BitMatrix.Runtime.Semantics.NormalizableWeights count) :
    BitMatrix.Runtime.Correspondence.executeFiniteBitProjection
      ⟨weights, fun _ => true⟩ = 1 :=
  BitMatrix.Runtime.Correspondence.executeFiniteBitProjection_all_true weights

example (invocation :
    BitMatrix.Runtime.Correspondence.DiagonalReflectionInvocation) :
    BitMatrix.Runtime.Correspondence.diagonalReflectionRepresentation.represents
      invocation invocation.point.reflectDiagonal :=
  BitMatrix.Runtime.Correspondence.executeDiagonalReflection_represents invocation

example (invocation : BitMatrix.Runtime.Correspondence.GammaBranchInvocation) :
    BitMatrix.Runtime.Correspondence.gammaBranchRepresentation.represents
      invocation
      (BitMatrix.Runtime.Semantics.gammaBranch invocation.input) :=
  BitMatrix.Runtime.Correspondence.executeGammaBranch_represents invocation

example (invocation : BitMatrix.Runtime.Correspondence.PrecessionInvocation) :
    BitMatrix.Runtime.Correspondence.precessionRepresentation.represents
      invocation
      (BitMatrix.Runtime.Semantics.precessionPhaseModel
        invocation.phase invocation.exponent) :=
  BitMatrix.Runtime.Correspondence.executePrecession_represents invocation

example (invocation : BitMatrix.Runtime.Correspondence.PrecessionInvocation) :
    0 ≤ BitMatrix.Runtime.Correspondence.executePrecession invocation :=
  BitMatrix.Runtime.Correspondence.executePrecession_nonnegative invocation

/-! Fail-closed and operation-specific runtime vectors. -/

private abbrev configuredOwnershipFixture :
    BitMatrix.Runtime.Semantics.ConfiguredOwnership :=
  BitMatrix.Runtime.Semantics.schemaProfileConfiguredOwnership

example :
    BitMatrix.Runtime.Semantics.ownershipMaskResult configuredOwnershipFixture
      1 .clockwise .topLeft = .ok [true] := by
  native_decide

example :
    BitMatrix.Runtime.Semantics.ownershipMaskResult configuredOwnershipFixture
      2 .counterclockwise .topLeft = .ok [false, true] := by
  native_decide

example :
    BitMatrix.Runtime.Semantics.ownershipMaskResult configuredOwnershipFixture
      4 .clockwise .bottomRight = .ok [false, false, true, true] := by
  native_decide

example :
    [BitMatrix.Runtime.Semantics.ownershipMaskResult
        configuredOwnershipFixture 4 .clockwise .topLeft,
      BitMatrix.Runtime.Semantics.ownershipMaskResult
        configuredOwnershipFixture 4 .clockwise .topRight,
      BitMatrix.Runtime.Semantics.ownershipMaskResult
        configuredOwnershipFixture 4 .clockwise .bottomRight,
      BitMatrix.Runtime.Semantics.ownershipMaskResult
        configuredOwnershipFixture 4 .clockwise .bottomLeft] =
      [.ok [true, true, false, false],
       .ok [false, true, true, false],
       .ok [false, false, true, true],
       .ok [true, false, false, true]] := by
  native_decide

example :
    [BitMatrix.Runtime.Semantics.ownershipMaskResult
        configuredOwnershipFixture 4 .counterclockwise .topLeft,
      BitMatrix.Runtime.Semantics.ownershipMaskResult
        configuredOwnershipFixture 4 .counterclockwise .topRight,
      BitMatrix.Runtime.Semantics.ownershipMaskResult
        configuredOwnershipFixture 4 .counterclockwise .bottomRight,
      BitMatrix.Runtime.Semantics.ownershipMaskResult
        configuredOwnershipFixture 4 .counterclockwise .bottomLeft] =
      [.ok [false, false, true, true],
       .ok [true, false, false, true],
       .ok [true, true, false, false],
       .ok [false, true, true, false]] := by
  native_decide

example :
    BitMatrix.Runtime.Semantics.resolveCarrierOwnership
        configuredOwnershipFixture ([7, 11, 13, 17] : List Nat)
        .clockwise .topRight = .ok
      { candidates := [7, 11, 13, 17]
        mask := [false, true, true, false]
        normalizedWeights := [0, 1 / 2, 1 / 2, 0]
        owners := [11, 13] } := by
  native_decide

example :
    BitMatrix.Runtime.Semantics.resolveCarrierOwnership
        configuredOwnershipFixture ([7, 11, 13, 17] : List Nat)
        .counterclockwise .bottomLeft = .ok
      { candidates := [7, 11, 13, 17]
        mask := [false, true, true, false]
        normalizedWeights := [0, 1 / 2, 1 / 2, 0]
        owners := [11, 13] } := by
  native_decide

example :
    BitMatrix.Runtime.Semantics.ownershipMaskResult configuredOwnershipFixture
      3 .clockwise .topLeft =
        .error .invalidCarrierArity := by
  native_decide

private def emptyOwnershipTwo :
    BitMatrix.Runtime.Semantics.OwnershipSelectionMask 2 :=
  ⟨fun _ => false⟩

example :
    BitMatrix.Runtime.Semantics.normalizeOwnershipResult emptyOwnershipTwo =
      .error .zeroOwnershipMask := by
  native_decide

example :
    (BitMatrix.Runtime.Correspondence.executeSignedRounding
      ⟨.nearest, -1 / 2⟩).value = 0 ∧
    (BitMatrix.Runtime.Correspondence.executeSignedRounding
      ⟨.nearest, -1 / 2⟩).negativeZero = true := by
  constructor <;> simp [BitMatrix.Runtime.Correspondence.executeSignedRounding]

example :
    BitMatrix.Runtime.Semantics.foreignNormalizedCoordinateResult
      ⟨.supported .nearest, .increasing, 4, .negativeZero⟩ =
        .ok BitMatrix.Runtime.Semantics.negativeZeroRational := by
  exact BitMatrix.Runtime.Semantics.foreignNormalizedCoordinate_negativeZero
    4 (by decide)

example :
    BitMatrix.Runtime.Semantics.foreignNormalizedCoordinateResult
      ⟨.supported .nearest, .increasing, 0, .finite 1⟩ =
        .error .invalidExtent := by
  rfl

example :
    BitMatrix.Runtime.Semantics.foreignThresholdResult
      ⟨.finite (1 / 2), .finite (1 / 2), .positiveInfinity,
        .supported .ownership, ⟨true, false, false⟩⟩ =
          .error .nonfiniteInput := by
  native_decide

example :
    BitMatrix.Runtime.Semantics.foreignThresholdResult
      ⟨.finite (1 / 2), .finite (1 / 2), .finite 1, .unsupported,
        ⟨true, false, false⟩⟩ = .error .invalidTiePolicy := by
  native_decide

private def normalizationPolicyFixture :
    BitMatrix.Runtime.Semantics.NormalizationPolicy where
  tolerance := 1 / 1000
  toleranceNonnegative := by norm_num

private def equalToleranceWeight :
    BitMatrix.Runtime.Semantics.RawFiniteWeights 1 where
  rawWeight := fun _ => 1 / 1000

example :
    BitMatrix.Runtime.Semantics.checkFiniteWeights normalizationPolicyFixture
      equalToleranceWeight = .error .insufficientWeightMass := by
  apply BitMatrix.Runtime.Semantics.checkFiniteWeights_rejects_equal_tolerance
  · rintro ⟨index, negative⟩
    fin_cases index
    norm_num [equalToleranceWeight] at negative
  · simp [equalToleranceWeight, normalizationPolicyFixture]

private def nonfiniteWeightFixture :
    BitMatrix.Runtime.Semantics.ForeignFiniteWeights 2 where
  rawWeight := ![.finite 1, .nan]

example :
    BitMatrix.Runtime.Semantics.foreignFiniteWeightsObservedResult
      normalizationPolicyFixture
      ⟨nonfiniteWeightFixture, .nan⟩ =
        .error .nonfiniteInput := by
  native_decide

example :
    BitMatrix.Runtime.Semantics.checkForeignBitValue .invalid =
      .error .invalidBitProjection :=
  rfl

example :
    BitMatrix.Runtime.Semantics.foreignDiagonalReflectionResult .null =
      .error .invalidReflectionPoint :=
  rfl

example :
    BitMatrix.Runtime.Semantics.foreignCarrierDiagonalResult
      [.point (.finite 0) (.finite 0), .point .nan (.finite 1)] =
        .error .nonfiniteInput :=
  rfl

example (certificate :
    BitMatrix.Runtime.Semantics.GammaApproximationCertificate) :
    BitMatrix.Runtime.Correspondence.GammaRuntimeResultRefines
      ⟨certificate.input, .ok certificate.runtimeOutput⟩ :=
  BitMatrix.Runtime.Correspondence.gammaRuntimeSuccess_refines certificate

example (certificate :
    BitMatrix.Runtime.Semantics.GammaApproximationCertificate) :
    BitMatrix.Runtime.Semantics.gammaDomain certificate.input ∧
      |certificate.runtimeOutput -
        BitMatrix.Runtime.Semantics.lanczosGammaModel certificate.input| ≤
          BitMatrix.Runtime.Semantics.gammaProfileMaximumError :=
  ⟨certificate.domain, certificate.withinProfileError⟩

example (certificate :
    BitMatrix.Runtime.Semantics.FloatingRangeFailureCertificate) :
    BitMatrix.Runtime.Semantics.binary64FiniteMagnitudeLimit <
      |certificate.exactOutput| :=
  certificate.exceedsBinary64FiniteRange

example :
    BitMatrix.Runtime.Correspondence.GammaRuntimeResultRefines
      ⟨0, .error .gammaPole⟩ := by
  simpa using BitMatrix.Runtime.Correspondence.gammaRuntimePole_refines 0

example :
    BitMatrix.Runtime.Semantics.checkForeignGammaInput .nan =
      .error .nonfiniteInput :=
  rfl

example :
    BitMatrix.Runtime.Correspondence.executeRawPrecession
      ⟨0, -1⟩ = .error .zeroToNegativePower := by
  exact BitMatrix.Runtime.Correspondence.executeRawPrecession_rejects_zero_negative
    (by norm_num)

example :
    BitMatrix.Runtime.Correspondence.executeRawPrecession
      ⟨-1, 2⟩ = .error .negativePhase := by
  exact BitMatrix.Runtime.Correspondence.executeRawPrecession_rejects_negative
    (by norm_num)

example :
    BitMatrix.Runtime.Semantics.foreignPrecessionResult
      (.finite 1) .positiveInfinity = .error .nonfiniteInput :=
  rfl

example {phase exponent : ℝ}
    (admissible : BitMatrix.Runtime.Semantics.PrecessionAdmissible
      phase exponent) :
    BitMatrix.Runtime.Semantics.PrecessionResultRelation phase exponent
      (.ok (BitMatrix.Runtime.Semantics.precessionPhaseModel phase exponent)) :=
  BitMatrix.Runtime.Correspondence.precessionRuntimeSuccess_refines admissible

example (points : List BitMatrix.Runtime.Semantics.RasterPoint) :
    BitMatrix.Runtime.Semantics.reflectCarrierDiagonal
      (BitMatrix.Runtime.Semantics.reflectCarrierDiagonal points) = points :=
  BitMatrix.Runtime.Semantics.reflectCarrierDiagonal_involutive points

private def unitCellSupport : BitMatrix.Runtime.Semantics.CellSupport where
  minX := 0
  maxX := 1
  minY := 0
  maxY := 1
  xNondegenerate := by norm_num
  yNondegenerate := by norm_num

private def rawUnitCellSupport : BitMatrix.Runtime.Semantics.RawCellSupport :=
  ⟨0, 1, 0, 1⟩

private theorem rawUnitCellSupport_checked :
    BitMatrix.Runtime.Semantics.checkRawCellSupport rawUnitCellSupport =
      .ok unitCellSupport := by
  simp [BitMatrix.Runtime.Semantics.checkRawCellSupport, rawUnitCellSupport,
    unitCellSupport]

private def zeroCoverageRequest :
    BitMatrix.Runtime.Semantics.RawCoverageRequest :=
  ⟨fun _ => .boolean true, rawUnitCellSupport, 0, none⟩

private def negativeExactCoverageRequest :
    BitMatrix.Runtime.Semantics.RawCoverageRequest :=
  ⟨fun _ => .boolean true, rawUnitCellSupport, 4, some (-1 / 10)⟩

private def nonBooleanCoverageRequest :
    BitMatrix.Runtime.Semantics.RawCoverageRequest :=
  ⟨fun _ => .nonBoolean, rawUnitCellSupport, 2, none⟩

example :
    BitMatrix.Runtime.Semantics.checkRawCellSupport ⟨0, 0, 0, 1⟩ =
      .error .degenerateCellSupport := by
  apply BitMatrix.Runtime.Semantics.checkRawCellSupport_rejects_x
  norm_num

example :
    BitMatrix.Runtime.Semantics.coverageResult zeroCoverageRequest =
        .error .invalidSampleCount := by
  exact BitMatrix.Runtime.Semantics.coverageResult_rejects_zero_samples
    zeroCoverageRequest unitCellSupport rawUnitCellSupport_checked rfl rfl

example :
    BitMatrix.Runtime.Semantics.coverageResult negativeExactCoverageRequest =
        .error .invalidExactCoverage := by
  exact BitMatrix.Runtime.Semantics.coverageResult_rejects_negative_exact
    negativeExactCoverageRequest unitCellSupport (-1 / 10)
      rawUnitCellSupport_checked rfl (by norm_num)

example :
    BitMatrix.Runtime.Semantics.coverageResult nonBooleanCoverageRequest =
        .error .invalidContainment := by
  apply BitMatrix.Runtime.Semantics.coverageResult_rejects_nonBoolean
    nonBooleanCoverageRequest unitCellSupport rawUnitCellSupport_checked rfl
    (by decide)
  exact ⟨
    ⟨⟨0, by native_decide⟩, ⟨0, by native_decide⟩⟩,
    rfl⟩

private def rawCarrierGeometryFixture (samples : Nat) :
    BitMatrix.Runtime.Semantics.RawCarrierGeometry 1 where
  firstRegion := fun _ => true
  cells := fun _ => unitCellSupport
  samples := samples
  threshold := 1 / 2
  scalar := 1
  policy := .ownership
  ownershipPolicies := ⟨true, false, false⟩

private def oneCarrierOwnership :
    BitMatrix.Runtime.Semantics.CarrierOwnershipResult (Fin 1) where
  candidates := [0]
  mask := [true]
  normalizedWeights := [1]
  owners := [0]

private def incoherentOneCarrierOwnership :
    BitMatrix.Runtime.Semantics.CarrierOwnershipResult (Fin 1) where
  candidates := [0]
  mask := [false]
  normalizedWeights := [1]
  owners := [0]

example :
    (match BitMatrix.Runtime.Semantics.prepareCarrierGeometryResult
      { rawCarrierGeometryFixture 1 with
        ownership := some incoherentOneCarrierOwnership } with
      | .error failure => decide (failure = .invalidOwnership)
      | .ok _ => false) = true := by
  native_decide

private def preparedCarrierGeometryOwnershipFixture :
    BitMatrix.Runtime.Semantics.PreparedCarrierGeometry 1 where
  firstRegion := fun _ => true
  cells := fun _ => unitCellSupport
  samples := 1
  samplesPositive := by decide
  threshold := 1 / 2
  thresholdNonnegative := by norm_num
  thresholdAtMostOne := by norm_num
  scalar := 1
  policy := .ownership
  ownershipPolicies := ⟨true, false, false⟩
  ownership := some oneCarrierOwnership
  ownershipCoherent := by
    intro ownershipValue provided
    cases provided
    native_decide

private def continuousRegionGridFixture :
    BitMatrix.Runtime.Semantics.ContinuousRegionGridInput 1 where
  region := fun _ => true
  gridCells := fun _ => unitCellSupport
  samples := 1
  samplesPositive := by decide
  threshold := 1 / 2
  thresholdNonnegative := by norm_num
  thresholdAtMostOne := by norm_num
  scalar := 1
  policy := .ownership
  ownershipPolicies := ⟨true, false, false⟩
  ownership := some oneCarrierOwnership
  ownershipCoherent := by
    intro ownershipValue provided
    cases provided
    native_decide

example :
    oneCarrierOwnership.Coherent :=
  BitMatrix.Runtime.Semantics.PreparedCarrierGeometry.ownership_coherent
    preparedCarrierGeometryOwnershipFixture oneCarrierOwnership rfl

example :
    BitMatrix.Runtime.Semantics.rasterizeCarrierGeometryResult
      (rawCarrierGeometryFixture 0) = .error .invalidSampleCount := by
  unfold BitMatrix.Runtime.Semantics.rasterizeCarrierGeometryResult
  rw [BitMatrix.Runtime.Semantics.prepareCarrierGeometryResult_zero_samples
    (rawCarrierGeometryFixture 0) rfl]
  rfl

example :
    BitMatrix.Runtime.Semantics.foreignCarrierGeometryResult
      ⟨.unsupported, rawCarrierGeometryFixture 1⟩ =
        .error .invalidSetOperationOrder :=
  rfl

example :
    (BitMatrix.Runtime.Semantics.rasterizeCarrierGeometryDetailedSpec
      preparedCarrierGeometryOwnershipFixture).ownership =
        some oneCarrierOwnership ∧
    (BitMatrix.Runtime.Semantics.rasterizeCarrierGeometryDetailedSpec
      preparedCarrierGeometryOwnershipFixture).ownerSelection 0 = some true ∧
    (BitMatrix.Runtime.Semantics.rasterizeCarrierGeometryDetailedSpec
      preparedCarrierGeometryOwnershipFixture).operationOrderLiteral =
        "before-rasterization" :=
  ⟨rfl, rfl, rfl⟩

example :
    (BitMatrix.Runtime.Correspondence.executeContinuousRegionGrid
      ⟨continuousRegionGridFixture⟩).ownership =
        some oneCarrierOwnership ∧
    (BitMatrix.Runtime.Correspondence.executeContinuousRegionGrid
      ⟨continuousRegionGridFixture⟩).ownerSelection 0 = some true ∧
    (BitMatrix.Runtime.Correspondence.executeContinuousRegionGrid
      ⟨continuousRegionGridFixture⟩).operationOrderLiteral =
        "before-rasterization" :=
  ⟨rfl, rfl, rfl⟩

example {ForeignInput : Type}
    (preparation : BitMatrix.Runtime.Semantics.GeometryPreparationRelation
      ForeignInput 1)
    (input : ForeignInput)
    (validated : preparation.prepares input (rawCarrierGeometryFixture 1)) :
    BitMatrix.Runtime.Correspondence.ForeignCarrierGeometryResultRefines
      preparation
      ⟨input, rawCarrierGeometryFixture 1,
        BitMatrix.Runtime.Semantics.rasterizeCarrierGeometryResult
          (rawCarrierGeometryFixture 1)⟩ :=
  BitMatrix.Runtime.Correspondence.foreignCarrierGeometryObservation_refines
    preparation input (rawCarrierGeometryFixture 1) validated

end BitMatrix.Tests.Correspondence
```
