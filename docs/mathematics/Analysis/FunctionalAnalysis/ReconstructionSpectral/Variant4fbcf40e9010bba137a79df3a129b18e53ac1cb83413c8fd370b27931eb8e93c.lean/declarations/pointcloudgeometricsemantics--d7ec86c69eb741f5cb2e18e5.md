# PointCloudGeometricSemantics

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aeeb8c3ebe7c1060dbf75402390edb59647fc9e120c0e299b6d36fb43286d30b",
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
  "slug": "pointcloudgeometricsemantics--d7ec86c69eb741f5cb2e18e5",
  "source": {
    "blob": "7fa68aec1ca6b87549c76394c1db963d802ed455",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 140,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant4fbcf40e9010bba137a79df3a129b18e53ac1cb83413c8fd370b27931eb8e93c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d7ec86c69eb741f5cb2e18e57049f2165a2659af1c0d898302d18af9ebfb8a75",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant4fbcf40e9010bba137a79df3a129b18e53ac1cb83413c8fd370b27931eb8e93c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aeeb8c3ebe7c1060dbf75402390edb59647fc9e120c0e299b6d36fb43286d30b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–175.

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

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant4fbcf40e9010bba137a79df3a129b18e53ac1cb83413c8fd370b27931eb8e93c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant4fbcf40e9010bba137a79df3a129b18e53ac1cb83413c8fd370b27931eb8e93c.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fa68aec1ca6b87549c76394c1db963d802ed455` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
