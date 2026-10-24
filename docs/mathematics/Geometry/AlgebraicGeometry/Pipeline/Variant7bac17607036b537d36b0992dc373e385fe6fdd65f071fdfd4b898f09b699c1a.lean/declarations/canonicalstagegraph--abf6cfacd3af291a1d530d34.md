# canonicalStageGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a56b5594ffc2a6be19a5ab4296521426d13688c8fbf19ab031c21aea30902ea",
  "kind": "def",
  "lexical_name": "canonicalStageGraph",
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
  "slug": "canonicalstagegraph--abf6cfacd3af291a1d530d34",
  "source": {
    "blob": "389822aa4c510dbb371aed0ae0e6b0e552d47ecc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 142,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Pipeline/Variant7bac17607036b537d36b0992dc373e385fe6fdd65f071fdfd4b898f09b699c1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abf6cfacd3af291a1d530d34f7515dd5c30c060f489982f6d7ed1f1d716b1617",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Pipeline/Variant7bac17607036b537d36b0992dc373e385fe6fdd65f071fdfd4b898f09b699c1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a56b5594ffc2a6be19a5ab4296521426d13688c8fbf19ab031c21aea30902ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def canonicalStageGraph : DependencyGraph PipelineStage where
  direct := CanonicalStageDepends
  rank := canonicalStageRank
  dependencyRankLt := by
    intro component dependency edge
    cases edge <;> decide

/--
One abstract lifecycle transition for each canonical stage.  Marker strings
are model-level output names, not filesystem observations.  The evidence marker
is data with no theorem authority and every unclassified gate is deferred.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Pipeline/Variant7bac17607036b537d36b0992dc373e385fe6fdd65f071fdfd4b898f09b699c1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Pipeline/Variant7bac17607036b537d36b0992dc373e385fe6fdd65f071fdfd4b898f09b699c1a.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `389822aa4c510dbb371aed0ae0e6b0e552d47ecc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
