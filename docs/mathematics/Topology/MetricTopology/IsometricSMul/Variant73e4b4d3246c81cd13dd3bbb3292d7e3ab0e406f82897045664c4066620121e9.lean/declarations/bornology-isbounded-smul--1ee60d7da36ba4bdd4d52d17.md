# Bornology.IsBounded.smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e7744f2-dbc4-0aa2-e459-317b21936d58",
  "kind": "theorem",
  "lexical_name": "Bornology.IsBounded.smul",
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
  "slug": "bornology-isbounded-smul--1ee60d7da36ba4bdd4d52d17",
  "source": {
    "blob": "7499bd80c7349444561b8d730b3fbf168afd10c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 324,
    "path": "GRWTSK/Topology/MetricTopology/IsometricSMul/Variant73e4b4d3246c81cd13dd3bbb3292d7e3ab0e406f82897045664c4066620121e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ee60d7da36ba4bdd4d52d1769ca7f590778d792847d34d3be30654ab04857c9",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/IsometricSMul/Variant73e4b4d3246c81cd13dd3bbb3292d7e3ab0e406f82897045664c4066620121e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e7744f2-dbc4-0aa2-e459-317b21936d58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Bornology.IsBounded.smul [PseudoMetricSpace X] [SMul G X] [IsIsometricSMul G X] {s : Set X}
    (hs : IsBounded s) (c : G) : IsBounded (c • s) :=
  (isometry_smul X c).lipschitz.isBounded_image hs

namespace Metric

variable [PseudoMetricSpace X] [Group G] [MulAction G X] [IsIsometricSMul G X]

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/IsometricSMul/Variant73e4b4d3246c81cd13dd3bbb3292d7e3ab0e406f82897045664c4066620121e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/IsometricSMul/Variant73e4b4d3246c81cd13dd3bbb3292d7e3ab0e406f82897045664c4066620121e9.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7499bd80c7349444561b8d730b3fbf168afd10c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
