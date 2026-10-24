# dispositions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b474ade2dc269c0b393cb966b9bb7e89cfcaa25becb54b42f5874d5a41b991d5",
  "kind": "def",
  "lexical_name": "dispositions",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "dispositions--882554694dde57af443e33c5",
  "source": {
    "blob": "6fa1f2792dfe4b14d401786d40b3cf9b1d505797",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 773,
    "line": 105,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuntimeSemanticsVectorsGenerated/Variant00091735b71ec6267617dcb73bf2ab18e99611c95e4ba41aec502f705dc23efe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:882554694dde57af443e33c53b5c7482ef84baaca619119547ab6f8dfd0fa4e9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuntimeSemanticsVectorsGenerated/Variant00091735b71ec6267617dcb73bf2ab18e99611c95e4ba41aec502f705dc23efe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b474ade2dc269c0b393cb966b9bb7e89cfcaa25becb54b42f5874d5a41b991d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–773.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dispositions : List Disposition := [
  .checked {
    id := "round-nearest-below-half"
    claim := (let result := RasterRounding.nearest.roundSigned (49 / 100 : ℚ)
      result.value = 0 ∧ result.negativeZero = false)
    proof := by native_decide },
  .checked {
    id := "round-nearest-positive-half"
    claim := (let result := RasterRounding.nearest.roundSigned (1 / 2 : ℚ)
      result.value = 1 ∧ result.negativeZero = false)
    proof := by native_decide },
  .checked {
    id := "round-nearest-negative-half-negative-zero"
    claim := (let result := RasterRounding.nearest.roundSigned (-1 / 2 : ℚ)
      result.value = 0 ∧ result.negativeZero = true)
    proof := by native_decide },
  .checked {
    id := "round-nearest-below-negative-half"
    claim := (let result := RasterRounding.nearest.roundSigned (-51 / 100 : ℚ)
      result.value = -1 ∧ result.negativeZero = false)
    proof := by native_decide },
  .checked {
    id := "round-floor-positive"
    claim := (let result := RasterRounding.floor.roundSigned (19 / 10 : ℚ)
      result.value = 1 ∧ result.negativeZero = false)
    proof := by native_decide },
  .checked {
    id := "round-floor-negative"
    claim := (let result := RasterRounding.floor.roundSigned (-11 / 10 : ℚ)
      result.value = -2 ∧ result.negativeZero = false)
    proof := by native_decide },
  .checked {
    id := "round-ceil-positive"
    claim := (let result := RasterRounding.ceil.roundSigned (11 / 10 : ℚ)
      result.value = 2 ∧ result.negativeZero = false)
    proof := by native_decide },
  .checked {
    id := "round-ceil-negative"
    claim := (let result := RasterRounding.ceil.roundSigned (-19 / 10 : ℚ)
      result.value = -1 ∧ result.negativeZero = false)
    proof := by native_decide },
  .checked {
    id := "round-reject-nonfinite"
    claim := ((match foreignRoundingResult (ForeignRoundingMode.supported RasterRounding.nearest) ForeignRational.nan with
      | .error observed => decide (observed = .nonfiniteInput)
      | .ok _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "round-reject-unknown-mode"
    claim := ((match foreignRoundingResult ForeignRoundingMode.unsupported (ForeignRational.finite (1 / 1 : ℚ)) with
      | .error observed => decide (observed = .invalidRoundingMode)
      | .ok _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "round-nonfinite-precedes-unknown-mode"
    claim := ((match foreignRoundingResult ForeignRoundingMode.unsupported ForeignRational.nan with
      | .error observed => decide (observed = .nonfiniteInput)
      | .ok _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "coordinates-out-of-range-increasing"
    claim := ((match foreignNormalizedCoordinateResult ({ mode := (ForeignRoundingMode.supported RasterRounding.nearest), direction := .increasing, extent := 4, coordinate := (ForeignRational.finite (-1 / 1 : ℚ)) } : ForeignNormalizedCoordinateRequest), foreignNormalizedCoordinateResult ({ mode := (ForeignRoundingMode.supported RasterRounding.nearest), direction := .increasing, extent := 4, coordinate := (ForeignRational.finite (5 / 1 : ℚ)) } : ForeignNormalizedCoordinateRequest) with
      | .ok x, .ok y =>
          decide (x.value = (-1 / 4 : ℚ) ∧
          y.value = (5 / 4 : ℚ) ∧
          x.negativeZero = false ∧
          y.negativeZero = false)
      | _, _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "coordinates-out-of-range-decreasing"
    claim := ((match foreignNormalizedCoordinateResult ({ mode := (ForeignRoundingMode.supported RasterRounding.nearest), direction := .decreasing, extent := 4, coordinate := (ForeignRational.finite (-1 / 1 : ℚ)) } : ForeignNormalizedCoordinateRequest), foreignNormalizedCoordinateResult ({ mode := (ForeignRoundingMode.supported RasterRounding.nearest), direction := .decreasing, extent := 4, coordinate := (ForeignRational.finite (5 / 1 : ℚ)) } : ForeignNormalizedCoordinateRequest) with
      | .ok x, .ok y =>
          decide (x.value = (5 / 4 : ℚ) ∧
          y.value = (-1 / 4 : ℚ) ∧
          x.negativeZero = false ∧
          y.negativeZero = false)
      | _, _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "coordinates-floor-negative"
    claim := ((match foreignNormalizedCoordinateResult ({ mode := (ForeignRoundingMode.supported RasterRounding.floor), direction := .increasing, extent := 2, coordinate := (ForeignRational.finite (-11 / 10 : ℚ)) } : ForeignNormalizedCoordinateRequest), foreignNormalizedCoordinateResult ({ mode := (ForeignRoundingMode.supported RasterRounding.floor), direction := .increasing, extent := 2, coordinate := (ForeignRational.finite (19 / 10 : ℚ)) } : ForeignNormalizedCoordinateRequest) with
      | .ok x, .ok y =>
          decide (x.value = (-1 / 1 : ℚ) ∧
          y.value = (1 / 2 : ℚ) ∧
          x.negativeZero = false ∧
          y.negativeZero = false)
      | _, _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "coordinates-preserve-negative-zero"
    claim := ((match foreignNormalizedCoordinateResult ({ mode := (ForeignRoundingMode.supported RasterRounding.nearest), direction := .increasing, extent := 4, coordinate := (ForeignRational.finite (-1 / 2 : ℚ)) } : ForeignNormalizedCoordinateRequest), foreignNormalizedCoordinateResult ({ mode := (ForeignRoundingMode.supported RasterRounding.nearest), direction := .increasing, extent := 4, coordinate := (ForeignRational.finite (0 / 1 : ℚ)) } : ForeignNormalizedCoordinateRequest) with
      | .ok x, .ok y =>
          decide (x.value = (0 / 1 : ℚ) ∧
          y.value = (0 / 1 : ℚ) ∧
          x.negativeZero = true ∧
          y.negativeZero = false)
      | _, _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "coordinates-reject-nonfinite-point"
    claim := ((match foreignNormalizedCoordinateResult ({ mode := (ForeignRoundingMode.supported RasterRounding.nearest), direction := .increasing, extent := 4, coordinate := ForeignRational.nan } : ForeignNormalizedCoordinateRequest) with
      | .error observed => decide (observed = .nonfiniteInput)
      | .ok _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "coordinates-reject-zero-extent"
    claim := ((match foreignNormalizedCoordinateResult ({ mode := (ForeignRoundingMode.supported RasterRounding.nearest), direction := .increasing, extent := 0, coordinate := (ForeignRational.finite (0 / 1 : ℚ)) } : ForeignNormalizedCoordinateRequest) with
      | .error observed => decide (observed = .invalidExtent)
      | .ok _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "coordinates-reject-rounding-mode"
    claim := ((match foreignNormalizedCoordinateResult ({ mode := ForeignRoundingMode.unsupported, direction := .increasing, extent := 4, coordinate := (ForeignRational.finite (0 / 1 : ℚ)) } : ForeignNormalizedCoordinateRequest) with
      | .error observed => decide (observed = .invalidRoundingMode)
      | .ok _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "coordinates-point-precedes-extent-and-mode"
    claim := ((match foreignNormalizedCoordinateResult ({ mode := ForeignRoundingMode.unsupported, direction := .increasing, extent := 0, coordinate := ForeignRational.nan } : ForeignNormalizedCoordinateRequest) with
      | .error observed => decide (observed = .nonfiniteInput)
      | .ok _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "coverage-sampled-left-half"
    claim := ((match foreignCoverageResult ({ region := (ForeignCoverageRegion.continuous (fun point => .boolean ((fun point => decide (point.x < (1 / 2 : ℚ))) point)) (none)), support := ({ minX := (ForeignRational.finite (0 / 1 : ℚ)), maxX := (ForeignRational.finite (1 / 1 : ℚ)), minY := (ForeignRational.finite (0 / 1 : ℚ)), maxY := (ForeignRational.finite (1 / 1 : ℚ)) } : ForeignCellSupport), samples := ForeignSampleCount.safeInteger 2 } : ForeignCoverageRequest) with
      | .error _ => false
      | .ok evidence =>
          decide (evidence.value = (1 / 2 : ℚ) ∧
          evidence.method = .midpointQuadrature 2)) = true)
    proof := by native_decide },
  .checked {
    id := "coverage-sampled-full"
    claim := ((match foreignCoverageResult ({ region := (ForeignCoverageRegion.continuous (fun point => .boolean ((fun _ => true) point)) (none)), support := ({ minX := (ForeignRational.finite (0 / 1 : ℚ)), maxX := (ForeignRational.finite (1 / 1 : ℚ)), minY := (ForeignRational.finite (0 / 1 : ℚ)), maxY := (ForeignRational.finite (1 / 1 : ℚ)) } : ForeignCellSupport), samples := ForeignSampleCount.safeInteger 3 } : ForeignCoverageRequest) with
      | .error _ => false
      | .ok evidence =>
          decide (evidence.value = (1 / 1 : ℚ) ∧
          evidence.method = .midpointQuadrature 3)) = true)
    proof := by native_decide },
  .checked {
    id := "coverage-exact-quarter"
    claim := ((match foreignCoverageResult ({ region := (ForeignCoverageRegion.continuous (fun point => .boolean ((fun _ => false) point)) (some (ForeignRational.finite (1 / 4 : ℚ)))), support := ({ minX := (ForeignRational.finite (0 / 1 : ℚ)), maxX := (ForeignRational.finite (1 / 1 : ℚ)), minY := (ForeignRational.finite (0 / 1 : ℚ)), maxY := (ForeignRational.finite (1 / 1 : ℚ)) } : ForeignCellSupport), samples := ForeignSampleCount.safeInteger 2 } : ForeignCoverageRequest) with
      | .error _ => false
      | .ok evidence =>
          decide (evidence.value = (1 / 4 : ℚ) ∧
          evidence.method = .exactAreaRatio)) = true)
    proof := by native_decide },
  .checked {
    id := "coverage-reject-zero-samples"
    claim := ((match foreignCoverageResult ({ region := (ForeignCoverageRegion.continuous (fun point => .boolean ((fun _ => true) point)) (none)), support := ({ minX := (ForeignRational.finite (0 / 1 : ℚ)), maxX := (ForeignRational.finite (1 / 1 : ℚ)), minY := (ForeignRational.finite (0 / 1 : ℚ)), maxY := (ForeignRational.finite (1 / 1 : ℚ)) } : ForeignCellSupport), samples := ForeignSampleCount.safeInteger 0 } : ForeignCoverageRequest) with
      | .error observed => decide (observed = .invalidSampleCount)
      | .ok _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "coverage-reject-exact-out-of-range"
    claim := ((match foreignCoverageResult ({ region := (ForeignCoverageRegion.continuous (fun point => .boolean ((fun _ => false) point)) (some (ForeignRational.finite (11 / 10 : ℚ)))), support := ({ minX := (ForeignRational.finite (0 / 1 : ℚ)), maxX := (ForeignRational.finite (1 / 1 : ℚ)), minY := (ForeignRational.finite (0 / 1 : ℚ)), maxY := (ForeignRational.finite (1 / 1 : ℚ)) } : ForeignCellSupport), samples := ForeignSampleCount.safeInteger 2 } : ForeignCoverageRequest) with
      | .error observed => decide (observed = .invalidExactCoverage)
      | .ok _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "coverage-reject-degenerate-cell"
    claim := ((match foreignCoverageResult ({ region := (ForeignCoverageRegion.continuous (fun point => .boolean ((fun _ => true) point)) (none)), support := ({ minX := (ForeignRational.finite (0 / 1 : ℚ)), maxX := (ForeignRational.finite (0 / 1 : ℚ)), minY := (ForeignRational.finite (0 / 1 : ℚ)), maxY := (ForeignRational.finite (1 / 1 : ℚ)) } : ForeignCellSupport), samples := ForeignSampleCount.safeInteger 2 } : ForeignCoverageRequest) with
      | .error observed => decide (observed = .degenerateCellSupport)
      | .ok _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "coverage-reject-nonboolean-containment"
    claim := ((match foreignCoverageResult ({ region := (ForeignCoverageRegion.continuous (fun _ => RawContainmentResult.nonBoolean) (none)), support := ({ minX := (ForeignRational.finite (0 / 1 : ℚ)), maxX := (ForeignRational.finite (1 / 1 : ℚ)), minY := (ForeignRational.finite (0 / 1 : ℚ)), maxY := (ForeignRational.finite (1 / 1 : ℚ)) } : ForeignCellSupport), samples := ForeignSampleCount.safeInteger 2 } : ForeignCoverageRequest) with
      | .error observed => decide (observed = .invalidContainment)
      | .ok _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "coverage-region-shape-precedes-support-and-samples"
    claim := ((match foreignCoverageResult ({ region := ForeignCoverageRegion.invalid, support := ({ minX := ForeignRational.nan, maxX := (ForeignRational.finite (1 / 1 : ℚ)), minY := (ForeignRational.finite (0 / 1 : ℚ)), maxY := (ForeignRational.finite (1 / 1 : ℚ)) } : ForeignCellSupport), samples := ForeignSampleCount.invalid } : ForeignCoverageRequest) with
      | .error observed => decide (observed = .invalidCoverage)
      | .ok _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "coverage-reject-nonfinite-support"
    claim := ((match foreignCoverageResult ({ region := (ForeignCoverageRegion.continuous (fun point => .boolean ((fun _ => true) point)) (none)), support := ({ minX := ForeignRational.nan, maxX := (ForeignRational.finite (1 / 1 : ℚ)), minY := (ForeignRational.finite (0 / 1 : ℚ)), maxY := (ForeignRational.finite (1 / 1 : ℚ)) } : ForeignCellSupport), samples := ForeignSampleCount.safeInteger 2 } : ForeignCoverageRequest) with
      | .error observed => decide (observed = .nonfiniteInput)
      | .ok _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "coverage-reject-nonfinite-exact-result"
    claim := ((match foreignCoverageResult ({ region := (ForeignCoverageRegion.continuous (fun point => .boolean ((fun _ => false) point)) (some ForeignRational.positiveInfinity)), support := ({ minX := (ForeignRational.finite (0 / 1 : ℚ)), maxX := (ForeignRational.finite (1 / 1 : ℚ)), minY := (ForeignRational.finite (0 / 1 : ℚ)), maxY := (ForeignRational.finite (1 / 1 : ℚ)) } : ForeignCellSupport), samples := ForeignSampleCount.safeInteger 2 } : ForeignCoverageRequest) with
      | .error observed => decide (observed = .invalidExactCoverage)
      | .ok _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "coverage-reject-fractional-sample-count"
    claim := ((match foreignCoverageResult ({ region := (ForeignCoverageRegion.continuous (fun point => .boolean ((fun _ => true) point)) (none)), support := ({ minX := (ForeignRational.finite (0 / 1 : ℚ)), maxX := (ForeignRational.finite (1 / 1 : ℚ)), minY := (ForeignRational.finite (0 / 1 : ℚ)), maxY := (ForeignRational.finite (1 / 1 : ℚ)) } : ForeignCellSupport), samples := ForeignSampleCount.invalid } : ForeignCoverageRequest) with
      | .error observed => decide (observed = .invalidSampleCount)
      | .ok _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "coverage-reject-safe-square-bound"
    claim := ((match foreignCoverageResult ({ region := (ForeignCoverageRegion.continuous (fun point => .boolean ((fun _ => true) point)) (none)), support := ({ minX := (ForeignRational.finite (0 / 1 : ℚ)), maxX := (ForeignRational.finite (1 / 1 : ℚ)), minY := (ForeignRational.finite (0 / 1 : ℚ)), maxY := (ForeignRational.finite (1 / 1 : ℚ)) } : ForeignCellSupport), samples := ForeignSampleCount.safeInteger 94906266 } : ForeignCoverageRequest) with
      | .error observed => decide (observed = .invalidSampleCount)
      | .ok _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "carrier-geometry-grid-wide-bit-field"
    claim := (let raw := ({
        firstRegion := (fun point => decide (point.x < (1 / 2 : ℚ))),
        remainingRegions := [],
        combination := .union,
        cells := gridCells,
        samples := 4,
        exactCoverage := fun _ => none,
        threshold := (1 / 2 : ℚ),
        scalar := (0 / 1 : ℚ),
        policy := .ownership,
        ownershipPolicies := canonicalTiePolicies,
        ownership := none
      } : RawCarrierGeometry 4)
      (match rasterizeCarrierGeometryResult raw with
      | .error _ => false
      | .ok result =>
          decide (List.ofFn result.bitField = [true, false, true, false] ∧
            result.operationOrderLiteral = "before-rasterization" ∧
            result.operationOrder = canonicalPipelineStages)) = true)
    proof := by native_decide },
  .checked {
    id := "carrier-geometry-combine-before-rasterize"
    claim := (let raw := ({
        firstRegion := (fun point => decide ((0 / 1 : ℚ) ≤ point.x ∧ point.x < (1 / 8 : ℚ) ∧ (0 / 1 : ℚ) ≤ point.y ∧ point.y < (1 / 2 : ℚ))),
        remainingRegions := [(fun point => decide ((1 / 8 : ℚ) ≤ point.x ∧ point.x < (1 / 4 : ℚ) ∧ (0 / 1 : ℚ) ≤ point.y ∧ point.y < (1 / 2 : ℚ)))],
        combination := .union,
        cells := gridCells,
        samples := 8,
        exactCoverage := fun _ => none,
        threshold := (1 / 2 : ℚ),
        scalar := (1 / 1 : ℚ),
        policy := .ownership,
        ownershipPolicies := canonicalTiePolicies,
        ownership := none
      } : RawCarrierGeometry 4)
      (match rasterizeCarrierGeometryResult raw with
      | .error _ => false
      | .ok result =>
          decide (List.ofFn result.bitField = [true, false, false, false] ∧
            List.ofFn result.coverages = [(1 / 2 : ℚ), (0 / 1 : ℚ), (0 / 1 : ℚ), (0 / 1 : ℚ)] ∧
            List.ofFn (fun index => (result.coverageEvidence index).method) = [.midpointQuadrature 8, .midpointQuadrature 8, .midpointQuadrature 8, .midpointQuadrature 8] ∧
            List.ofFn result.ownerSelection = [none, none, none, none] ∧
            (match result.ownership with | none => true | some _ => false) = true ∧
            result.operationOrderLiteral = "before-rasterization" ∧
            result.operationOrder = canonicalPipelineStages)) = true)
    proof := by native_decide },
  .checked {
    id := "carrier-geometry-exact-tie-ownership-override"
    claim := (let raw := ({
        firstRegion := (fun _ => false),
        remainingRegions := [],
        combination := .union,
        cells := gridCells,
        samples := 4,
        exactCoverage := fun _ => some (⟨(1 / 2 : ℚ), by norm_num, by norm_num⟩ : ExactCoverage),
        threshold := (1 / 2 : ℚ),
        scalar := (-1 / 1 : ℚ),
        policy := .ownership,
        ownershipPolicies := canonicalTiePolicies,
        ownership := some ({ candidates := [(0 : Fin 4), (1 : Fin 4), (3 : Fin 4), (2 : Fin 4)], mask := [true, true, false, false], normalizedWeights := [(1 / 2 : ℚ), (1 / 2 : ℚ), (0 / 1 : ℚ), (0 / 1 : ℚ)], owners := [(0 : Fin 4), (1 : Fin 4)] } : CarrierOwnershipResult (Fin 4))
      } : RawCarrierGeometry 4)
      (match rasterizeCarrierGeometryResult raw with
      | .error _ => false
      | .ok result =>
          decide (List.ofFn result.bitField = [true, true, false, false] ∧
            List.ofFn result.coverages = [(1 / 2 : ℚ), (1 / 2 : ℚ), (1 / 2 : ℚ), (1 / 2 : ℚ)] ∧
            List.ofFn (fun index => (result.coverageEvidence index).method) = [.exactAreaRatio, .exactAreaRatio, .exactAreaRatio, .exactAreaRatio] ∧
            List.ofFn result.ownerSelection = [some true, some true, some false, some false] ∧
            (match result.ownership with
            | none => false
            | some ownership => decide (ownership.candidates = [(0 : Fin 4), (1 : Fin 4), (3 : Fin 4), (2 : Fin 4)] ∧
                ownership.mask = [true, true, false, false] ∧
                ownership.normalizedWeights = [(1 / 2 : ℚ), (1 / 2 : ℚ), (0 / 1 : ℚ), (0 / 1 : ℚ)] ∧
                ownership.owners = [(0 : Fin 4), (1 : Fin 4)])) = true ∧
            result.operationOrderLiteral = "before-rasterization" ∧
            result.operationOrder = canonicalPipelineStages)) = true)
    proof := by native_decide },
  .checked {
    id := "carrier-geometry-reject-after-rasterization-order"
    claim := (foreignCarrierGeometryResult (⟨.unsupported, ({
        firstRegion := (fun _ => true),
        remainingRegions := [],
        combination := .union,
        cells := gridCells,
        samples := 4,
        exactCoverage := fun _ => none,
        threshold := (1 / 2 : ℚ),
        scalar := (1 / 1 : ℚ),
        policy := .ownership,
        ownershipPolicies := canonicalTiePolicies,
        ownership := none
      } : RawCarrierGeometry 4)⟩ : ForeignCarrierGeometryRequest 4) = .error .invalidSetOperationOrder)
    proof := by rfl },
  .checked {
    id := "threshold-above"
    claim := (thresholdResult (⟨(3 / 4 : ℚ), (1 / 2 : ℚ), (-1 / 1 : ℚ), .ownership, ⟨true, false, false⟩⟩ : RawThresholdRequest) = .ok true)
    proof := by native_decide },
  .checked {
    id := "threshold-below"
    claim := (thresholdResult (⟨(1 / 4 : ℚ), (1 / 2 : ℚ), (1 / 1 : ℚ), .ownership, ⟨true, false, false⟩⟩ : RawThresholdRequest) = .ok false)
    proof := by native_decide },
  .checked {
    id := "threshold-positive-tie"
    claim := (thresholdResult (⟨(1 / 2 : ℚ), (1 / 2 : ℚ), (1 / 1 : ℚ), .ownership, ⟨true, false, false⟩⟩ : RawThresholdRequest) = .ok true)
    proof := by native_decide },
  .checked {
    id := "threshold-negative-tie"
    claim := (thresholdResult (⟨(1 / 2 : ℚ), (1 / 2 : ℚ), (-1 / 1 : ℚ), .ownership, ⟨true, false, false⟩⟩ : RawThresholdRequest) = .ok false)
    proof := by native_decide },
  .checked {
    id := "threshold-zero-tie"
    claim := (thresholdResult (⟨(1 / 2 : ℚ), (1 / 2 : ℚ), (0 / 1 : ℚ), .ownership, ⟨true, false, false⟩⟩ : RawThresholdRequest) = .ok false)
    proof := by native_decide },
  .checked {
    id := "threshold-select-tie"
    claim := (thresholdResult (⟨(1 / 2 : ℚ), (1 / 2 : ℚ), (0 / 1 : ℚ), .select, ⟨true, false, false⟩⟩ : RawThresholdRequest) = .ok true)
    proof := by native_decide },
  .checked {
    id := "threshold-reject-coverage-range"
    claim := (thresholdResult (⟨(11 / 10 : ℚ), (1 / 2 : ℚ), (1 / 1 : ℚ), .ownership, ⟨true, false, false⟩⟩ : RawThresholdRequest) = .error .invalidCoverage)
    proof := by native_decide },
  .checked {
    id := "threshold-reject-nonfinite-scalar"
    claim := (foreignThresholdResult ({ coverage := (ForeignRational.finite (1 / 2 : ℚ)), threshold := (ForeignRational.finite (1 / 2 : ℚ)), scalar := ForeignRational.positiveInfinity, policy := .supported .ownership, ownership := canonicalTiePolicies } : ForeignThresholdRequest) = .error .nonfiniteInput)
    proof := by native_decide },
  .checked {
    id := "threshold-coverage-range-precedes-nonfinite-scalar"
    claim := (foreignThresholdResult ({ coverage := (ForeignRational.finite (11 / 10 : ℚ)), threshold := (ForeignRational.finite (1 / 2 : ℚ)), scalar := ForeignRational.positiveInfinity, policy := .supported .ownership, ownership := canonicalTiePolicies } : ForeignThresholdRequest) = .error .invalidCoverage)
    proof := by native_decide },
  .checked {
    id := "threshold-reject-configured-range"
    claim := (thresholdResult (⟨(1 / 2 : ℚ), (11 / 10 : ℚ), (1 / 1 : ℚ), .ownership, ⟨true, false, false⟩⟩ : RawThresholdRequest) = .error .invalidThreshold)
    proof := by native_decide },
  .checked {
    id := "threshold-reject-unknown-tie-policy"
    claim := (foreignThresholdResult ({ coverage := (ForeignRational.finite (1 / 2 : ℚ)), threshold := (ForeignRational.finite (1 / 2 : ℚ)), scalar := (ForeignRational.finite (1 / 1 : ℚ)), policy := .unsupported, ownership := canonicalTiePolicies } : ForeignThresholdRequest) = .error .invalidTiePolicy)
    proof := by native_decide },
  .checked {
    id := "ownership-one-carrier"
    claim := (ownershipMaskResult configuredOwnership 1 .clockwise .topLeft = .ok [true])
    proof := by native_decide },
  .checked {
    id := "ownership-two-carrier-clockwise"
    claim := (ownershipMaskResult configuredOwnership 2 .clockwise .topLeft = .ok [true, false])
    proof := by native_decide },
  .checked {
    id := "ownership-two-carrier-counterclockwise"
    claim := (ownershipMaskResult configuredOwnership 2 .counterclockwise .topLeft = .ok [false, true])
    proof := by native_decide },
  .checked {
    id := "ownership-four-carrier-clockwise"
    claim := (ownershipMaskResult configuredOwnership 4 .clockwise .topLeft = .ok [true, true, false, false])
    proof := by native_decide },
  .checked {
    id := "ownership-four-carrier-clockwise-top-right"
    claim := (ownershipMaskResult configuredOwnership 4 .clockwise .topRight = .ok [false, true, true, false])
    proof := by native_decide },
  .checked {
    id := "ownership-four-carrier-clockwise-bottom-right"
    claim := (ownershipMaskResult configuredOwnership 4 .clockwise .bottomRight = .ok [false, false, true, true])
    proof := by native_decide },
  .checked {
    id := "ownership-four-carrier-clockwise-bottom-left"
    claim := (ownershipMaskResult configuredOwnership 4 .clockwise .bottomLeft = .ok [true, false, false, true])
    proof := by native_decide },
  .checked {
    id := "ownership-four-carrier-counterclockwise-top-left"
    claim := (ownershipMaskResult configuredOwnership 4 .counterclockwise .topLeft = .ok [false, false, true, true])
    proof := by native_decide },
  .checked {
    id := "ownership-four-carrier-counterclockwise-top-right"
    claim := (ownershipMaskResult configuredOwnership 4 .counterclockwise .topRight = .ok [true, false, false, true])
    proof := by native_decide },
  .checked {
    id := "ownership-four-carrier-counterclockwise-bottom-right"
    claim := (ownershipMaskResult configuredOwnership 4 .counterclockwise .bottomRight = .ok [true, true, false, false])
    proof := by native_decide },
  .checked {
    id := "ownership-four-carrier-counterclockwise-bottom-left"
    claim := (ownershipMaskResult configuredOwnership 4 .counterclockwise .bottomLeft = .ok [false, true, true, false])
    proof := by native_decide },
  .checked {
    id := "ownership-resolve-one-carrier"
    claim := ((match resolveCarrierOwnership configuredOwnership [7] .clockwise .topLeft with
      | .error _ => false
      | .ok result => decide (result.candidates = [7] ∧ result.mask = [true] ∧
          result.normalizedWeights = [(1 / 1 : ℚ)] ∧ result.owners = [7])) = true)
    proof := by native_decide },
  .checked {
    id := "ownership-resolve-two-carriers"
    claim := ((match resolveCarrierOwnership configuredOwnership [7, 11] .clockwise .topLeft with
      | .error _ => false
      | .ok result => decide (result.candidates = [7, 11] ∧ result.mask = [true, false] ∧
          result.normalizedWeights = [(1 / 1 : ℚ), (0 / 1 : ℚ)] ∧ result.owners = [7])) = true)
    proof := by native_decide },
  .checked {
    id := "ownership-resolve-four-carriers"
    claim := ((match resolveCarrierOwnership configuredOwnership [7, 11, 13, 17] .clockwise .topLeft with
      | .error _ => false
      | .ok result => decide (result.candidates = [7, 11, 13, 17] ∧ result.mask = [true, true, false, false] ∧
          result.normalizedWeights = [(1 / 2 : ℚ), (1 / 2 : ℚ), (0 / 1 : ℚ), (0 / 1 : ℚ)] ∧ result.owners = [7, 11])) = true)
    proof := by native_decide },
  .checked {
    id := "ownership-resolve-four-carriers-clockwise-top-right"
    claim := ((match resolveCarrierOwnership configuredOwnership [7, 11, 13, 17] .clockwise .topRight with
      | .error _ => false
      | .ok result => decide (result.candidates = [7, 11, 13, 17] ∧ result.mask = [false, true, true, false] ∧
          result.normalizedWeights = [(0 / 1 : ℚ), (1 / 2 : ℚ), (1 / 2 : ℚ), (0 / 1 : ℚ)] ∧ result.owners = [11, 13])) = true)
    proof := by native_decide },
  .checked {
    id := "ownership-resolve-four-carriers-clockwise-bottom-right"
    claim := ((match resolveCarrierOwnership configuredOwnership [7, 11, 13, 17] .clockwise .bottomRight with
      | .error _ => false
      | .ok result => decide (result.candidates = [7, 11, 13, 17] ∧ result.mask = [false, false, true, true] ∧
          result.normalizedWeights = [(0 / 1 : ℚ), (0 / 1 : ℚ), (1 / 2 : ℚ), (1 / 2 : ℚ)] ∧ result.owners = [13, 17])) = true)
    proof := by native_decide },
  .checked {
    id := "ownership-resolve-four-carriers-clockwise-bottom-left"
    claim := ((match resolveCarrierOwnership configuredOwnership [7, 11, 13, 17] .clockwise .bottomLeft with
      | .error _ => false
      | .ok result => decide (result.candidates = [7, 11, 13, 17] ∧ result.mask = [true, false, false, true] ∧
          result.normalizedWeights = [(1 / 2 : ℚ), (0 / 1 : ℚ), (0 / 1 : ℚ), (1 / 2 : ℚ)] ∧ result.owners = [7, 17])) = true)
    proof := by native_decide },
  .checked {
    id := "ownership-resolve-four-carriers-counterclockwise-top-left"
    claim := ((match resolveCarrierOwnership configuredOwnership [7, 11, 13, 17] .counterclockwise .topLeft with
      | .error _ => false
      | .ok result => decide (result.candidates = [7, 11, 13, 17] ∧ result.mask = [false, false, true, true] ∧
          result.normalizedWeights = [(0 / 1 : ℚ), (0 / 1 : ℚ), (1 / 2 : ℚ), (1 / 2 : ℚ)] ∧ result.owners = [13, 17])) = true)
    proof := by native_decide },
  .checked {
    id := "ownership-resolve-four-carriers-counterclockwise-top-right"
    claim := ((match resolveCarrierOwnership configuredOwnership [7, 11, 13, 17] .counterclockwise .topRight with
      | .error _ => false
      | .ok result => decide (result.candidates = [7, 11, 13, 17] ∧ result.mask = [true, false, false, true] ∧
          result.normalizedWeights = [(1 / 2 : ℚ), (0 / 1 : ℚ), (0 / 1 : ℚ), (1 / 2 : ℚ)] ∧ result.owners = [7, 17])) = true)
    proof := by native_decide },
  .checked {
    id := "ownership-resolve-four-carriers-counterclockwise-bottom-right"
    claim := ((match resolveCarrierOwnership configuredOwnership [7, 11, 13, 17] .counterclockwise .bottomRight with
      | .error _ => false
      | .ok result => decide (result.candidates = [7, 11, 13, 17] ∧ result.mask = [true, true, false, false] ∧
          result.normalizedWeights = [(1 / 2 : ℚ), (1 / 2 : ℚ), (0 / 1 : ℚ), (0 / 1 : ℚ)] ∧ result.owners = [7, 11])) = true)
    proof := by native_decide },
  .checked {
    id := "ownership-resolve-four-carriers-counterclockwise-bottom-left"
    claim := ((match resolveCarrierOwnership configuredOwnership [7, 11, 13, 17] .counterclockwise .bottomLeft with
      | .error _ => false
      | .ok result => decide (result.candidates = [7, 11, 13, 17] ∧ result.mask = [false, true, true, false] ∧
          result.normalizedWeights = [(0 / 1 : ℚ), (1 / 2 : ℚ), (1 / 2 : ℚ), (0 / 1 : ℚ)] ∧ result.owners = [11, 13])) = true)
    proof := by native_decide },
  .checked {
    id := "ownership-normalize-pure"
    claim := ((match normalizeOwnershipResult ({ selected := ![true, false] } : OwnershipSelectionMask 2) with
      | .error _ => false
      | .ok weights => decide (∀ index, |weights index - ![(1 / 1 : ℚ), (0 / 1 : ℚ)] index| ≤ (0 / 1 : ℚ))) = true)
    proof := by native_decide },
  .checked {
    id := "ownership-normalize-mixed"
    claim := ((match normalizeOwnershipResult ({ selected := ![true, false, true, true] } : OwnershipSelectionMask 4) with
      | .error _ => false
      | .ok weights => decide (∀ index, |weights index - ![(3333333333333333 / 10000000000000000 : ℚ), (0 / 1 : ℚ), (3333333333333333 / 10000000000000000 : ℚ), (3333333333333333 / 10000000000000000 : ℚ)] index| ≤ (1 / 1000000000000000 : ℚ))) = true)
    proof := by native_decide },
  .checked {
    id := "ownership-reject-zero-mask"
    claim := ((match normalizeOwnershipResult ({ selected := ![false, false] } : OwnershipSelectionMask 2) with
      | .error failure => decide (failure = .zeroOwnershipMask)
      | .ok _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "ownership-reject-unsupported-arity"
    claim := (ownershipMaskResult configuredOwnership 3 .clockwise .topLeft = .error .invalidCarrierArity)
    proof := by native_decide },
  .checked {
    id := "ownership-reject-zero-arity"
    claim := (ownershipMaskResult configuredOwnership 0 .clockwise .topLeft = .error .invalidCarrierArity)
    proof := by native_decide },
  .checked {
    id := "finite-weights-equal-projection"
    claim := ((match foreignFiniteWeightsObservedResult (⟨(1 / 1000000000000 : ℚ), by norm_num⟩ : NormalizationPolicy) ({ weights := (⟨![(ForeignRational.finite (1 / 1 : ℚ)), (ForeignRational.finite (1 / 1 : ℚ))]⟩ : ForeignFiniteWeights 2), accumulatedTotal := ForeignRational.finite (2 / 1 : ℚ) } : ForeignFiniteWeightsObservation 2) with
      | .error _ => false
      | .ok weights =>
          decide ((∀ index, |weights index - ![(1 / 2 : ℚ), (1 / 2 : ℚ)] index| ≤ (1 / 1000000000000000 : ℚ)) ∧
          |(∑ index, weights index * if ![true, false] index then 1 else 0) - (1 / 2 : ℚ)| ≤ (1 / 1000000000000000 : ℚ))) = true)
    proof := by native_decide },
  .checked {
    id := "finite-weights-carrier-key-projection"
    claim := ((match foreignFiniteWeightsObservedResult (⟨(1 / 1000000000000 : ℚ), by norm_num⟩ : NormalizationPolicy) ({ weights := (⟨![(ForeignRational.finite (1 / 1 : ℚ)), (ForeignRational.finite (3 / 1 : ℚ))]⟩ : ForeignFiniteWeights 2), accumulatedTotal := ForeignRational.finite (4 / 1 : ℚ) } : ForeignFiniteWeightsObservation 2) with
      | .error _ => false
      | .ok weights =>
          decide ((∀ index, |weights index - ![(1 / 4 : ℚ), (3 / 4 : ℚ)] index| ≤ (1 / 1000000000000000 : ℚ)) ∧
          |(∑ index, weights index * if ![false, true] index then 1 else 0) - (3 / 4 : ℚ)| ≤ (1 / 1000000000000000 : ℚ))) = true)
    proof := by native_decide },
  .checked {
    id := "finite-weights-normalize-arbitrary"
    claim := ((match foreignFiniteWeightsObservedResult (⟨(0 / 1 : ℚ), by norm_num⟩ : NormalizationPolicy) ({ weights := (⟨![(ForeignRational.finite (1 / 1 : ℚ)), (ForeignRational.finite (3 / 1 : ℚ))]⟩ : ForeignFiniteWeights 2), accumulatedTotal := ForeignRational.finite (4 / 1 : ℚ) } : ForeignFiniteWeightsObservation 2) with
      | .error _ => false
      | .ok weights =>
          decide ((∀ index, |weights index - ![(1 / 4 : ℚ), (3 / 4 : ℚ)] index| ≤ (1 / 1000000000000000 : ℚ)) ∧
          |(∑ index, weights index * if ![false, true] index then 1 else 0) - (3 / 4 : ℚ)| ≤ (1 / 1000000000000000 : ℚ))) = true)
    proof := by native_decide },
  .checked {
    id := "finite-weights-reject-tolerance-boundary"
    claim := ((match foreignFiniteWeightsObservedResult (⟨(1 / 1000000000000 : ℚ), by norm_num⟩ : NormalizationPolicy) ({ weights := (⟨![(ForeignRational.finite (1 / 1000000000000 : ℚ)), (ForeignRational.finite (0 / 1 : ℚ))]⟩ : ForeignFiniteWeights 2), accumulatedTotal := ForeignRational.finite (1 / 1000000000000 : ℚ) } : ForeignFiniteWeightsObservation 2) with
      | .error observed => decide (observed = .insufficientWeightMass)
      | .ok _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "finite-weights-reject-zero"
    claim := ((match foreignFiniteWeightsObservedResult (⟨(0 / 1 : ℚ), by norm_num⟩ : NormalizationPolicy) ({ weights := (⟨![(ForeignRational.finite (0 / 1 : ℚ)), (ForeignRational.finite (0 / 1 : ℚ))]⟩ : ForeignFiniteWeights 2), accumulatedTotal := ForeignRational.finite (0 / 1 : ℚ) } : ForeignFiniteWeightsObservation 2) with
      | .error observed => decide (observed = .insufficientWeightMass)
      | .ok _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "finite-weights-reject-negative"
    claim := ((match foreignFiniteWeightsObservedResult (⟨(0 / 1 : ℚ), by norm_num⟩ : NormalizationPolicy) ({ weights := (⟨![(ForeignRational.finite (1 / 1 : ℚ)), (ForeignRational.finite (-1 / 1 : ℚ))]⟩ : ForeignFiniteWeights 2), accumulatedTotal := ForeignRational.finite (0 / 1 : ℚ) } : ForeignFiniteWeightsObservation 2) with
      | .error observed => decide (observed = .negativeWeight)
      | .ok _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "finite-weights-reject-nonfinite"
    claim := ((match foreignFiniteWeightsObservedResult (⟨(0 / 1 : ℚ), by norm_num⟩ : NormalizationPolicy) ({ weights := (⟨![(ForeignRational.finite (1 / 1 : ℚ)), ForeignRational.nan]⟩ : ForeignFiniteWeights 2), accumulatedTotal := ForeignRational.nan } : ForeignFiniteWeightsObservation 2) with
      | .error observed => decide (observed = .nonfiniteInput)
      | .ok _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "finite-weights-reject-invalid-bit"
    claim := (checkForeignBitValue .invalid = .error .invalidBitProjection)
    proof := by native_decide },
  .checked {
    id := "finite-weights-reject-empty-input"
    claim := ((match foreignFiniteWeightsObservedResult (⟨(0 / 1 : ℚ), by norm_num⟩ : NormalizationPolicy) ({ weights := (⟨![]⟩ : ForeignFiniteWeights 0), accumulatedTotal := ForeignRational.finite (0 / 1 : ℚ) } : ForeignFiniteWeightsObservation 0) with
      | .error observed => decide (observed = .invalidWeightCollection)
      | .ok _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "finite-weights-negative-precedes-later-nonfinite"
    claim := ((match foreignFiniteWeightsObservedResult (⟨(0 / 1 : ℚ), by norm_num⟩ : NormalizationPolicy) ({ weights := (⟨![(ForeignRational.finite (-1 / 1 : ℚ)), ForeignRational.nan]⟩ : ForeignFiniteWeights 2), accumulatedTotal := ForeignRational.nan } : ForeignFiniteWeightsObservation 2) with
      | .error observed => decide (observed = .negativeWeight)
      | .ok _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "finite-weights-reject-overflowing-total"
    claim := ((match foreignFiniteWeightsObservedResult (⟨(0 / 1 : ℚ), by norm_num⟩ : NormalizationPolicy) ({ weights := (⟨![(ForeignRational.finite (179769313486231570000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 / 1 : ℚ)), (ForeignRational.finite (179769313486231570000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 / 1 : ℚ))]⟩ : ForeignFiniteWeights 2), accumulatedTotal := ForeignRational.positiveInfinity } : ForeignFiniteWeightsObservation 2) with
      | .error observed => decide (observed = .nonfiniteForeignResult)
      | .ok _ => false) = true)
    proof := by native_decide },
  .checked {
    id := "reflection-diagonal-point"
    claim := ((({ x := (-3 / 1 : ℚ), y := (5 / 1 : ℚ) } : RasterPoint)).reflectDiagonal = ({ x := (5 / 1 : ℚ), y := (-3 / 1 : ℚ) } : RasterPoint))
    proof := by native_decide },
  .checked {
    id := "reflection-diagonal-point-list"
    claim := (reflectCarrierDiagonal [({ x := (-3 / 1 : ℚ), y := (5 / 1 : ℚ) } : RasterPoint), ({ x := (1 / 1 : ℚ), y := (2 / 1 : ℚ) } : RasterPoint)] = [({ x := (5 / 1 : ℚ), y := (-3 / 1 : ℚ) } : RasterPoint), ({ x := (2 / 1 : ℚ), y := (1 / 1 : ℚ) } : RasterPoint)])
    proof := by native_decide },
  .checked {
    id := "reflection-diagonal-involutive"
    claim := ((({ x := (-3 / 1 : ℚ), y := (5 / 1 : ℚ) } : RasterPoint)).reflectDiagonal.reflectDiagonal = ({ x := (-3 / 1 : ℚ), y := (5 / 1 : ℚ) } : RasterPoint))
    proof := by native_decide },
  .checked {
    id := "reflection-reject-null-point"
    claim := (foreignDiagonalReflectionResult .null = .error .invalidReflectionPoint)
    proof := by native_decide },
  .checked {
    id := "reflection-reject-nonfinite-coordinate"
    claim := (foreignDiagonalReflectionResult (.point ForeignRational.positiveInfinity (ForeignRational.finite (0 / 1 : ℚ))) = .error .nonfiniteInput)
    proof := by native_decide },
  .checked {
    id := "reflection-reject-invalid-list-point"
    claim := (foreignCarrierDiagonalResult [(.point (ForeignRational.finite (0 / 1 : ℚ)) (ForeignRational.finite (0 / 1 : ℚ))), (.point ForeignRational.nan (ForeignRational.finite (1 / 1 : ℚ)))] = .error .nonfiniteInput)
    proof := by native_decide },
  .checked {
    id := "gamma-pole-zero"
    claim := (gammaBranch (0 / 1 : ℚ) = .pole ∧ GammaResultRelation (((0 / 1 : ℚ) : ℚ) : ℝ) (.error .gammaPole))
    proof := by
      constructor
      · native_decide
      · simpa using gammaResultRelation_pole 0 },
  .checked {
    id := "gamma-pole-negative-integer"
    claim := (gammaBranch (-1 / 1 : ℚ) = .pole ∧ GammaResultRelation (((-1 / 1 : ℚ) : ℚ) : ℝ) (.error .gammaPole))
    proof := by
      constructor
      · native_decide
      · simpa using gammaResultRelation_pole 1 },
  .boundary {
    id := "gamma-reflection-negative-half"
    classification := .floatingApproximationCertificate
    rationale := "The decimal Lanczos observation requires a GammaApproximationCertificate; the exact branch is checked here."
    formalTag := (gammaBranch (-1 / 2 : ℚ) = .reflection)
    formalTagProof := by native_decide },
  .boundary {
    id := "gamma-reflection-quarter"
    classification := .floatingApproximationCertificate
    rationale := "The decimal Lanczos observation requires a GammaApproximationCertificate; the exact branch is checked here."
    formalTag := (gammaBranch (1 / 4 : ℚ) = .reflection)
    formalTagProof := by native_decide },
  .boundary {
    id := "gamma-core-half"
    classification := .floatingApproximationCertificate
    rationale := "The decimal Lanczos observation requires a GammaApproximationCertificate; the exact branch is checked here."
    formalTag := (gammaBranch (1 / 2 : ℚ) = .core)
    formalTagProof := by native_decide },
  .boundary {
    id := "gamma-core-five"
    classification := .floatingApproximationCertificate
    rationale := "The decimal Lanczos observation requires a GammaApproximationCertificate; the exact branch is checked here."
    formalTag := (gammaBranch (5 / 1 : ℚ) = .core)
    formalTagProof := by native_decide },
  .boundary {
    id := "gamma-runtime-finite-boundary"
    classification := .floatingApproximationCertificate
    rationale := "The decimal Lanczos observation requires a GammaApproximationCertificate; the exact branch is checked here."
    formalTag := (gammaBranch (142 / 1 : ℚ) = .core)
    formalTagProof := by native_decide },
  .boundary {
    id := "gamma-runtime-overflow-boundary"
    classification := .floatingRangeCertificate
    rationale := "The IEEE-754 overflow observation requires a FloatingRangeFailureCertificate; the exact branch is checked here."
    formalTag := (gammaBranch (143 / 1 : ℚ) = .core)
    formalTagProof := by native_decide },
  .checked {
    id := "gamma-reject-nonfinite-input"
    claim := (checkForeignGammaInput ForeignRational.positiveInfinity = .error .nonfiniteInput)
    proof := by rfl },
  .boundary {
    id := "precession-positive-square-root"
    classification := .foreignFloatingProfile
    rationale := "The exact precession domain is checked, while foreign floating evaluation remains executable evidence."
    formalTag := (PrecessionAdmissible (((4 / 1 : ℚ) : ℚ) : ℝ) (((1 / 2 : ℚ) : ℚ) : ℝ))
    formalTagProof := by norm_num [PrecessionAdmissible] },
  .checked {
    id := "precession-zero-positive"
    claim := (precessionResult (((0 / 1 : ℚ) : ℚ) : ℝ) (((1 / 2 : ℚ) : ℚ) : ℝ) = .ok 0)
    proof := by
      rw [precessionResult_of_admissible]
      · simp [precessionPhaseModel]
      · norm_num [PrecessionAdmissible] },
  .checked {
    id := "precession-zero-zero"
    claim := (precessionResult 0 0 = .ok 1)
    proof := by exact precessionResult_zero_zero },
  .checked {
    id := "precession-zero-negative-overflow"
    claim := (precessionResult (((0 / 1 : ℚ) : ℚ) : ℝ) (((-1 / 1 : ℚ) : ℚ) : ℝ) = .error .zeroToNegativePower)
    proof := by norm_num [precessionResult] },
  .checked {
    id := "precession-reject-negative-phase"
    claim := (precessionResult (((-1 / 1 : ℚ) : ℚ) : ℝ) (((1 / 2 : ℚ) : ℚ) : ℝ) = .error .negativePhase)
    proof := by norm_num [precessionResult] },
  .checked {
    id := "precession-reject-nonfinite-phase"
    claim := (foreignPrecessionResult ForeignRational.positiveInfinity (ForeignRational.finite (1 / 1 : ℚ)) = .error .nonfiniteInput)
    proof := by rfl },
  .checked {
    id := "precession-reject-nonfinite-exponent"
    claim := (foreignPrecessionResult (ForeignRational.finite (4 / 1 : ℚ)) ForeignRational.positiveInfinity = .error .nonfiniteInput)
    proof := by rfl },
  .boundary {
    id := "precession-runtime-overflow"
    classification := .floatingRangeCertificate
    rationale := "The admissible exact power requires a FloatingRangeFailureCertificate before an IEEE overflow rejection is related."
    formalTag := (PrecessionAdmissible (((100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 / 1 : ℚ) : ℚ) : ℝ) (((2 / 1 : ℚ) : ℚ) : ℝ))
    formalTagProof := by norm_num [PrecessionAdmissible] }
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuntimeSemanticsVectorsGenerated/Variant00091735b71ec6267617dcb73bf2ab18e99611c95e4ba41aec502f705dc23efe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuntimeSemanticsVectorsGenerated/Variant00091735b71ec6267617dcb73bf2ab18e99611c95e4ba41aec502f705dc23efe.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fa1f2792dfe4b14d401786d40b3cf9b1d505797` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
