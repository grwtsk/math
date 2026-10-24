# RobustTwoScaleGrains

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3251bb86701a631eae3c78cd1343f965c4ff6226b6d661799f53a9e63bdebe8c",
  "kind": "structure",
  "lexical_name": "RobustTwoScaleGrains",
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
  "slug": "robusttwoscalegrains--8027fedef40a532ac2f5381d",
  "source": {
    "blob": "d4333173e4d8df399f1452162cb6df346a8b71a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 170,
    "path": "GRWTSK/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant37ac6c93081094260521f5fa258fda57339b8c358006ad34247e3e7bffaece5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8027fedef40a532ac2f5381d569c8a4b0a47d79c67c378850b60f582b7839cf2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant37ac6c93081094260521f5fa258fda57339b8c358006ad34247e3e7bffaece5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3251bb86701a631eae3c78cd1343f965c4ff6226b6d661799f53a9e63bdebe8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RobustTwoScaleGrains
    (Point FineTube CoarseTube Grain : Type*)
    [MeasurableSpace Point]
    [DecidableEq FineTube] [DecidableEq CoarseTube] [DecidableEq Grain]
    (volume : Measure Point) where
  parameters : TwoScaleParameters
  geometry : TubeGrainGeometry Point FineTube CoarseTube Grain
  fineTubes : Finset FineTube
  coarseTubes : Finset CoarseTube
  grains : Finset Grain
  fineShading : FineTube → Set Point
  grainShading : Grain → Set Point
  fineToCoarse : FineTube → CoarseTube
  grainToCoarse : Grain → CoarseTube
  fineToCoarse_mem : ∀ tube ∈ fineTubes, fineToCoarse tube ∈ coarseTubes
  grainToCoarse_mem : ∀ grain ∈ grains, grainToCoarse grain ∈ coarseTubes
  fineShading_subset : ∀ tube ∈ fineTubes,
    fineShading tube ⊆ geometry.fineCarrier tube
  grainShading_subset : ∀ grain ∈ grains,
    grainShading grain ⊆ geometry.grainCarrier grain
  fineCarrier_subset_assigned : ∀ tube ∈ fineTubes,
    geometry.fineCarrier tube ⊆ geometry.coarseCarrier (fineToCoarse tube)
  fine_assigned_unique : ∀ tube ∈ fineTubes, ∀ coarse ∈ coarseTubes,
    geometry.fineCarrier tube ⊆ geometry.coarseCarrier coarse →
      coarse = fineToCoarse tube
  balanced_cover : ∀ coarse₁ ∈ coarseTubes, ∀ coarse₂ ∈ coarseTubes,
    (∑ tube ∈ objectsAt fineTubes fineToCoarse coarse₁,
      volume (geometry.fineCarrier tube)) ≤
      2 * (∑ tube ∈ objectsAt fineTubes fineToCoarse coarse₂,
        volume (geometry.fineCarrier tube))
  grainCarrier_subset_assigned : ∀ grain ∈ grains,
    geometry.grainCarrier grain ⊆ geometry.coarseCarrier (grainToCoarse grain)
  grain_direction_close : ∀ grain ∈ grains,
    geometry.directionAngle grain (grainToCoarse grain) ≤ 2 * parameters.rho
  grain_assigned_unique : ∀ grain ∈ grains, ∀ coarse ∈ coarseTubes,
    geometry.grainCarrier grain ⊆ geometry.coarseCarrier coarse →
    geometry.directionAngle grain coarse ≤ 2 * parameters.rho →
      coarse = grainToCoarse grain
  grainShading_pairwiseDisjoint : ∀ coarse ∈ coarseTubes,
    (objectsAt grains grainToCoarse coarse : Set Grain).PairwiseDisjoint grainShading
  shading_partition : ∀ coarse ∈ coarseTubes,
    fiberShadingUnion fineTubes fineToCoarse fineShading coarse =
      fiberShadingUnion grains grainToCoarse grainShading coarse
  lambda_dense :
    ENNReal.ofReal parameters.lambda *
        (∑ grain ∈ grains, volume (geometry.grainCarrier grain)) ≤
      ∑ grain ∈ grains, volume (grainShading grain)
  multiplicity : ℕ
  multiplicity_pos : 0 < multiplicity
  uniform_multiplicity : ∀ coarse ∈ coarseTubes, ∀ point,
    point ∈ fiberShadingUnion fineTubes fineToCoarse fineShading coarse →
      multiplicity ≤
          shadingMultiplicity (objectsAt fineTubes fineToCoarse coarse)
            fineShading point ∧
        shadingMultiplicity (objectsAt fineTubes fineToCoarse coarse)
            fineShading point ≤
          2 * multiplicity
  long_end_exit : ∀ coarse ∈ coarseTubes,
    ∀ tube ∈ objectsAt fineTubes fineToCoarse coarse,
    ∀ grain ∈ objectsAt grains grainToCoarse coarse,
      (fineShading tube ∩ grainShading grain).Nonempty →
        geometry.exitsLongEnd tube grain ∧
          fineShading tube ∩ geometry.grainCarrier grain ⊆ grainShading grain

/-! ## Checked consequences of the certificate -/

variable
    {Point FineTube CoarseTube Grain : Type*}
    [MeasurableSpace Point]
    [DecidableEq FineTube] [DecidableEq CoarseTube] [DecidableEq Grain]
    {volume : Measure Point}

/-- The two local shading partitions assemble into one exact global
fine-tube/grain partition. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant37ac6c93081094260521f5fa258fda57339b8c358006ad34247e3e7bffaece5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant37ac6c93081094260521f5fa258fda57339b8c358006ad34247e3e7bffaece5d.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4333173e4d8df399f1452162cb6df346a8b71a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
