# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4eaa179d6332d1f854ce6374cbc8b1b3571a1dd6d5e70f07f4666ef1292969c1",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--b44a4bfd74567bb7d493b8a1",
  "source": {
    "blob": "737c576a2b9e772a3a55fe754bc70fbe2a89686b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 514,
    "line": 496,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tests/Variant3ac00ecaafc7e303ae413b3696c53c0551f8429f72fcadf1e864d00ef02633f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b44a4bfd74567bb7d493b8a158f4aafa277e86e9d6bdf38f71cdbd6a9df18ab0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tests/Variant3ac00ecaafc7e303ae413b3696c53c0551f8429f72fcadf1e864d00ef02633f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4eaa179d6332d1f854ce6374cbc8b1b3571a1dd6d5e70f07f4666ef1292969c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–514.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example
    {T : SmoothFramedSurgeryTheory}
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {sampleSize : Nat}
    {O : PostSurgeryPointCloud T embedding sampleSize}
    {G : PointCloudGeometricSemantics O}
    {H : PointCloudReconstructionHypotheses O G}
    {S : PointCloudRecoverySemantics T embedding}
    (C : PointCloudReconstructionCapability O G H S)
    (h : H.Admissible) :
    S.manifoldMatches (C.reconstruct h).manifold (T.surgery embedding) ∧
      S.coreMatches (C.reconstruct h).core S.targetCore ∧
      S.framingMatches (C.reconstruct h).framing S.targetFraming ∧
      S.exteriorMatches (C.reconstruct h).exterior S.targetExterior ∧
      S.collarMatches (C.reconstruct h).collar S.targetCollar :=
  C.all_recovered h

/-- Input correspondence labels are mapped to the exact recovery targets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tests/Variant3ac00ecaafc7e303ae413b3696c53c0551f8429f72fcadf1e864d00ef02633f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tests/Variant3ac00ecaafc7e303ae413b3696c53c0551f8429f72fcadf1e864d00ef02633f0.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `737c576a2b9e772a3a55fe754bc70fbe2a89686b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
