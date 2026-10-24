# RegularCenteredAffineFourMobiusCollisionSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05a512e90a554b96abc5167a5515b5cdf082ed9b3126a80a081fc660cca0740b",
  "kind": "def",
  "lexical_name": "RegularCenteredAffineFourMobiusCollisionSource",
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
  "slug": "regularcenteredaffinefourmobiuscollisionsource--6864f3cd2fbe98067c008318",
  "source": {
    "blob": "89d59347cd27a63b922befb696755575f6796bc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 179,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6864f3cd2fbe98067c00831836a3aa123702c2ce9fd83291c1614d07c56daa74",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05a512e90a554b96abc5167a5515b5cdf082ed9b3126a80a081fc660cca0740b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RegularCenteredAffineFourMobiusCollisionSource
    (d : RegularCenteredAffineFourMobiusCollisionSourceData) : Prop :=
  d.theoremStatement ∧
  d.withinPairCollisionsExcluded ∧
  d.crossPairCollisionClassificationMatched ∧
  d.sumCollisionMatched ∧
  d.differenceCollisionMatched ∧
  d.degenerateShiftPairsDefined ∧
  d.fourDistinctShiftPairsDefined ∧
  d.exactPartitionMatched ∧
  d.centerLagAggregationMatched ∧
  d.separateAnalyticInterfacesRequired

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.crossPairCollision_implies_degenerate
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityCenteredAffineFourMobiusAtCenterLag_eq_degenerate_add_distinct
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89d59347cd27a63b922befb696755575f6796bc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
