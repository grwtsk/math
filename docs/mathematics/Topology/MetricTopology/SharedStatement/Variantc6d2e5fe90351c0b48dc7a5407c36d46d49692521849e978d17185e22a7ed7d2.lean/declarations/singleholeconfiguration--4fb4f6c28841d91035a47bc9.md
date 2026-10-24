# SingleHoleConfiguration

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b89f571c359771c0c26dddc2b521f49338c7eb7f9ad9ed9a2c4ae24574e6ca52",
  "kind": "structure",
  "lexical_name": "SingleHoleConfiguration",
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
  "slug": "singleholeconfiguration--4fb4f6c28841d91035a47bc9",
  "source": {
    "blob": "44edc4163e976ed91371f28b5870131ed4bc5137",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 45,
    "path": "GRWTSK/Topology/MetricTopology/SharedStatement/Variantc6d2e5fe90351c0b48dc7a5407c36d46d49692521849e978d17185e22a7ed7d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4fb4f6c28841d91035a47bc92d52e64705797f6209b95df667dfc00c7f5de2f4",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/SharedStatement/Variantc6d2e5fe90351c0b48dc7a5407c36d46d49692521849e978d17185e22a7ed7d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b89f571c359771c0c26dddc2b521f49338c7eb7f9ad9ed9a2c4ae24574e6ca52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SingleHoleConfiguration (R : OrderedComplexRectangle) where
  center : ℂ
  radius : ℝ
  radius_pos : 0 < radius
  closedBall_subset_open : Metric.closedBall center radius ⊆ R.openRect

namespace SingleHoleConfiguration

variable {R : OrderedComplexRectangle}

/-- Closed excised region, including the outer rectangle and inner circle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/SharedStatement/Variantc6d2e5fe90351c0b48dc7a5407c36d46d49692521849e978d17185e22a7ed7d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/SharedStatement/Variantc6d2e5fe90351c0b48dc7a5407c36d46d49692521849e978d17185e22a7ed7d2.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44edc4163e976ed91371f28b5870131ed4bc5137` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
