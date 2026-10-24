# interchangeDefect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cedc787c2ef1dcc46d6d68219507dee06fd44dccf1fdfbaa2cf332992ed95fc3",
  "kind": "def",
  "lexical_name": "interchangeDefect",
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
  "slug": "interchangedefect--83da0382f29517a215f0756b",
  "source": {
    "blob": "3b7697ce0750c0577f5cd3962abbd83d0c22931a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 174,
    "path": "GRWTSK/Topology/MetricTopology/Interchange/Variant3b86ecb65f51e337c107021c5f3a2ae00355e9f7a26bfbb3db1c21e13229e717.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83da0382f29517a215f0756b758d5644f1305060c289072c83a31184614f4e7d",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Interchange/Variant3b86ecb65f51e337c107021c5f3a2ae00355e9f7a26bfbb3db1c21e13229e717.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cedc787c2ef1dcc46d6d68219507dee06fd44dccf1fdfbaa2cf332992ed95fc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def interchangeDefect
    {PrevSources : Type uX}
    {PrevAggregate : Type uPrev}
    {NowSources : Type uNow}
    {Compare : Type uY} [PseudoMetricSpace Compare]
    (square : InterchangeSquare PrevSources PrevAggregate NowSources Compare)
    (input : PrevSources) : ℝ≥0 :=
  InterchangeSquare.metricDefect square input

/-- Public architecture name for a bounded interchange certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Interchange/Variant3b86ecb65f51e337c107021c5f3a2ae00355e9f7a26bfbb3db1c21e13229e717.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Interchange/Variant3b86ecb65f51e337c107021c5f3a2ae00355e9f7a26bfbb3db1c21e13229e717.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b7697ce0750c0577f5cd3962abbd83d0c22931a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
