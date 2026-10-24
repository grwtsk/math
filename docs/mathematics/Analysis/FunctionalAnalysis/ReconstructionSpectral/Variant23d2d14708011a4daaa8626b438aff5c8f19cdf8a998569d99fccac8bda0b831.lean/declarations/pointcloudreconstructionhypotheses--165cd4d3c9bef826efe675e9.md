# PointCloudReconstructionHypotheses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c12f7cbd8b674645de0acde9bd12c0211764ebe5a69d0d63752c0f6a2318b7b8",
  "kind": "structure",
  "lexical_name": "PointCloudReconstructionHypotheses",
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
  "slug": "pointcloudreconstructionhypotheses--165cd4d3c9bef826efe675e9",
  "source": {
    "blob": "452831ef1d438d27730a63a5b96ddbe403353550",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 168,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant23d2d14708011a4daaa8626b438aff5c8f19cdf8a998569d99fccac8bda0b831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:165cd4d3c9bef826efe675e91a6a33d7193783119d863af324a029f2de6af05e",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant23d2d14708011a4daaa8626b438aff5c8f19cdf8a998569d99fccac8bda0b831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c12f7cbd8b674645de0acde9bd12c0211764ebe5a69d0d63752c0f6a2318b7b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PointCloudReconstructionHypotheses
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    (O : PostSurgeryPointCloud T embedding sampleSize)
    (G : PointCloudGeometricSemantics O) where
  reachLowerBound : ℝ
  coverageRadius : ℝ
  noiseRadius : ℝ
  reconstructionRadius : ℝ
  coreFeatureScale : ℝ
  framingFeatureScale : ℝ
  exteriorSeparationScale : ℝ
  collarWidth : ℝ
  coreCorrespondence : G.CoreCorrespondenceData
  framingCorrespondence : G.FramingCorrespondenceData
  exteriorCorrespondence : G.ExteriorCorrespondenceData
  collarCorrespondence : G.CollarCorrespondenceData
  manifold_covered :
    ∀ x : O.Point, ∃ i : Fin sampleSize,
      O.ambientDistanceInUnits (O.embed x) (O.sample i) ≤ coverageRadius
  sample_near_manifold :
    ∀ i : Fin sampleSize, ∃ x : O.Point,
      O.ambientDistanceInUnits (O.sample i) (O.embed x) ≤ noiseRadius
  reach_certified :
    G.HasReachAtLeast O.manifoldImage reachLowerBound
  core_separation_certified :
    G.CoreSeparatedAt embedding (T.surgery embedding) coreFeatureScale
  framing_separation_certified :
    G.FramingSeparatedAt embedding (T.surgery embedding) framingFeatureScale
  exterior_separation_certified :
    G.ExteriorSeparatedAt M (T.surgery embedding) exteriorSeparationScale
  collar_width_certified :
    G.CollarWidthAtLeast (T.surgery embedding) collarWidth
  core_identifiable :
    G.CoreIdentifiableAt
      embedding (T.surgery embedding) coreFeatureScale coreCorrespondence
  framing_identifiable :
    G.FramingIdentifiableAt
      embedding (T.surgery embedding) framingFeatureScale framingCorrespondence
  exterior_identifiable :
    G.ExteriorIdentifiableAt
      M (T.surgery embedding) exteriorSeparationScale exteriorCorrespondence
  collar_identifiable :
    G.CollarIdentifiableAt
      (T.surgery embedding) collarWidth collarCorrespondence

namespace PointCloudReconstructionHypotheses

/--
The complete numerical corridor required by the abstract reconstruction
capability.  No one inequality is silently inferred from another.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant23d2d14708011a4daaa8626b438aff5c8f19cdf8a998569d99fccac8bda0b831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant23d2d14708011a4daaa8626b438aff5c8f19cdf8a998569d99fccac8bda0b831.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `452831ef1d438d27730a63a5b96ddbe403353550` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
