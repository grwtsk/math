# mkMetric'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74986d7c96d8f9aa3ca133d1d4f2f3ef5078e79f8d5fb58ade5e70870443c86e",
  "kind": "def",
  "lexical_name": "mkMetric'",
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
  "slug": "mkmetric--02a1edc020414bd208c40f3c",
  "source": {
    "blob": "53256e89e379be77f46fd241327ac4308c66161e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 455,
    "path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant7a0798cfa95b65021460528f535d98da9fb8f7cf52a495eb2cd26b818c923675.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:02a1edc020414bd208c40f3cff927aea961c487582977032d1acacac558c6ee5",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hausdorff/Variant7a0798cfa95b65021460528f535d98da9fb8f7cf52a495eb2cd26b818c923675.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74986d7c96d8f9aa3ca133d1d4f2f3ef5078e79f8d5fb58ade5e70870443c86e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 455–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkMetric' (m : Set X → ℝ≥0∞) : Measure X :=
  (OuterMeasure.mkMetric' m).toMeasure (OuterMeasure.mkMetric'_isMetric _).le_caratheodory
#align measure_theory.measure.mk_metric' MeasureTheory.Measure.mkMetric'

/-- Given a function `m : ℝ≥0∞ → ℝ≥0∞`, `mkMetric m` is the supremum of `μ r` over `r > 0`, where
`μ r` is the maximal outer measure `μ` such that `μ s ≤ m s` for all sets `s` that contain at least
two points. While each `mkMetric'.pre` is an *outer* measure, the supremum is a measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hausdorff/Variant7a0798cfa95b65021460528f535d98da9fb8f7cf52a495eb2cd26b818c923675.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hausdorff/Variant7a0798cfa95b65021460528f535d98da9fb8f7cf52a495eb2cd26b818c923675.lean#L455).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53256e89e379be77f46fd241327ac4308c66161e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
