# PointCloudGeometricSemantics

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d8b623f00786964d3c506c409c22a0692d04b6e297c69aae4943b5e3e1954f9",
  "kind": "structure",
  "lexical_name": "PointCloudGeometricSemantics",
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
  "slug": "pointcloudgeometricsemantics--cfb76925ee1367a5078ad6a0",
  "source": {
    "blob": "452831ef1d438d27730a63a5b96ddbe403353550",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 132,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant23d2d14708011a4daaa8626b438aff5c8f19cdf8a998569d99fccac8bda0b831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cfb76925ee1367a5078ad6a0a1d03135c25d794c527e001450ce36cdb4492153",
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

Occurrence: `declaration:1d8b623f00786964d3c506c409c22a0692d04b6e297c69aae4943b5e3e1954f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PointCloudGeometricSemantics
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    (O : PostSurgeryPointCloud T embedding sampleSize) where
  CoreCorrespondenceData : Type uRecovery
  FramingCorrespondenceData : Type uRecovery
  ExteriorCorrespondenceData : Type uRecovery
  CollarCorrespondenceData : Type uRecovery
  HasReachAtLeast : Set O.Ambient → ℝ → Prop
  CoreSeparatedAt :
    T.FramedEmbedding p q M → T.Manifold → ℝ → Prop
  FramingSeparatedAt :
    T.FramedEmbedding p q M → T.Manifold → ℝ → Prop
  ExteriorSeparatedAt : T.Manifold → T.Manifold → ℝ → Prop
  CollarWidthAtLeast : T.Manifold → ℝ → Prop
  CoreIdentifiableAt :
    T.FramedEmbedding p q M → T.Manifold → ℝ →
      CoreCorrespondenceData → Prop
  FramingIdentifiableAt :
    T.FramedEmbedding p q M → T.Manifold → ℝ →
      FramingCorrespondenceData → Prop
  ExteriorIdentifiableAt :
    T.Manifold → T.Manifold → ℝ →
      ExteriorCorrespondenceData → Prop
  CollarIdentifiableAt :
    T.Manifold → ℝ → CollarCorrespondenceData → Prop

/--
Quantitative hypotheses for one reconstruction scale.  The two directed
closeness conditions distinguish coverage from observation noise.  The strict
inequalities in `Admissible` keep the chosen radius below the reach and keep
the geometric features separated at the reconstruction resolution.  Separate
proof fields certify that each numeric scale has its intended geometry.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant23d2d14708011a4daaa8626b438aff5c8f19cdf8a998569d99fccac8bda0b831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant23d2d14708011a4daaa8626b438aff5c8f19cdf8a998569d99fccac8bda0b831.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `452831ef1d438d27730a63a5b96ddbe403353550` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
