# EuclideanShadedTubeFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a76ee6ba9ff7bf7ba200dc3a5cf430b0cf3b0bf797d51ed6924459c82b0109f",
  "kind": "structure",
  "lexical_name": "EuclideanShadedTubeFamily",
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
  "slug": "euclideanshadedtubefamily--ee73b9b7db19dfab12095521",
  "source": {
    "blob": "23251cc423e48e620cb1957f021588124e3c974d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 109,
    "path": "GRWTSK/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee73b9b7db19dfab12095521976ac46d245525a1045ff493835978ca945e93b2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a76ee6ba9ff7bf7ba200dc3a5cf430b0cf3b0bf797d51ed6924459c82b0109f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure EuclideanShadedTubeFamily
    (Tube : Type*) [DecidableEq Tube] where
  tubes : Finset Tube
  delta : ℝ
  lambda : ℝ
  delta_pos : 0 < delta
  lambda_pos : 0 < lambda
  tube : Tube → UnitTube3
  common_thickness : ∀ T ∈ tubes, (tube T).thickness = delta
  shading : Tube → Set SpatialPoint
  shading_measurable : ∀ T ∈ tubes, MeasurableSet (shading T)
  shading_subset : ∀ T ∈ tubes, shading T ⊆ (tube T).carrier
  contained_unitBall : ∀ T ∈ tubes,
    (tube T).carrier ⊆ Metric.closedBall 0 1
  tubeVolume : ℝ≥0∞
  tubeVolume_ne_zero : tubeVolume ≠ 0
  tubeVolume_ne_top : tubeVolume ≠ ∞
  carrier_volume : ∀ T ∈ tubes, volume (tube T).carrier = tubeVolume
  essentiallyDistinct : ∀ T₁ ∈ tubes, ∀ T₂ ∈ tubes, T₁ ≠ T₂ →
    volume ((tube T₁).carrier ∩ (tube T₂).carrier) ≤
      (1 / 2 : ℝ≥0∞) *
        max (volume (tube T₁).carrier) (volume (tube T₂).carrier)
  lambda_dense :
    ENNReal.ofReal lambda *
        (∑ T ∈ tubes, volume (tube T).carrier) ≤
      ∑ T ∈ tubes, volume (shading T)

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PrimeWalkWangZahlGeometry/Variant18d214d69b4583c97128e2f1c6af2b9da5307146db63c0f0387b5de424bb4961.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23251cc423e48e620cb1957f021588124e3c974d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
