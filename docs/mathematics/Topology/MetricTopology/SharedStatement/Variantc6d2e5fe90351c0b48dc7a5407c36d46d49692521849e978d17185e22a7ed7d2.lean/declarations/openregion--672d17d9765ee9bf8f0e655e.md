# openRegion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6bb5e130f762f546e2da92ba2acdbd1ab7559fc0a3fc252f6b0c6f87384530d7",
  "kind": "def",
  "lexical_name": "openRegion",
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
  "slug": "openregion--672d17d9765ee9bf8f0e655e",
  "source": {
    "blob": "44edc4163e976ed91371f28b5870131ed4bc5137",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 60,
    "path": "GRWTSK/Topology/MetricTopology/SharedStatement/Variantc6d2e5fe90351c0b48dc7a5407c36d46d49692521849e978d17185e22a7ed7d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:672d17d9765ee9bf8f0e655ecdec31c057c15c9718150861ff90bd0b853a986d",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/SharedStatement/Variantc6d2e5fe90351c0b48dc7a5407c36d46d49692521849e978d17185e22a7ed7d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6bb5e130f762f546e2da92ba2acdbd1ab7559fc0a3fc252f6b0c6f87384530d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def openRegion (H : SingleHoleConfiguration R) : Set ℂ :=
  R.openRect \ Metric.closedBall H.center H.radius

end SingleHoleConfiguration

/-- The positively oriented outer boundary minus the positively oriented circle.
The subtraction records the clockwise orientation of the inner boundary as a
component of the punctured domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/SharedStatement/Variantc6d2e5fe90351c0b48dc7a5407c36d46d49692521849e978d17185e22a7ed7d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/SharedStatement/Variantc6d2e5fe90351c0b48dc7a5407c36d46d49692521849e978d17185e22a7ed7d2.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44edc4163e976ed91371f28b5870131ed4bc5137` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
