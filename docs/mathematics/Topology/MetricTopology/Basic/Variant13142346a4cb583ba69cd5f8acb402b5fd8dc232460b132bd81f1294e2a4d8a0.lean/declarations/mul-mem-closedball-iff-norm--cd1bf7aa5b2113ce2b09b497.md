# mul_mem_closedBall_iff_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac48e0d3-a3db-0a29-955e-4c64d41712f1",
  "kind": "theorem",
  "lexical_name": "mul_mem_closedBall_iff_norm",
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
  "slug": "mul-mem-closedball-iff-norm--cd1bf7aa5b2113ce2b09b497",
  "source": {
    "blob": "ca7fdf53fd50b36ad7edb15ea216403ff521f16e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 920,
    "line": 915,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant13142346a4cb583ba69cd5f8acb402b5fd8dc232460b132bd81f1294e2a4d8a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd1bf7aa5b2113ce2b09b497ab6626d6bdbb8dd7a71a898b191280c351042ff3",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant13142346a4cb583ba69cd5f8acb402b5fd8dc232460b132bd81f1294e2a4d8a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac48e0d3-a3db-0a29-955e-4c64d41712f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 915–920.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_mem_closedBall_iff_norm : a * b ∈ closedBall a r ↔ ‖b‖ ≤ r := by
  rw [mem_closedBall_iff_norm'']
  simp

-- Higher priority to apply this before the equivalent lemma `Metric.preimage_mul_left_ball`.
@[to_additive (attr := simp high)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant13142346a4cb583ba69cd5f8acb402b5fd8dc232460b132bd81f1294e2a4d8a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant13142346a4cb583ba69cd5f8acb402b5fd8dc232460b132bd81f1294e2a4d8a0.lean#L915).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca7fdf53fd50b36ad7edb15ea216403ff521f16e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
