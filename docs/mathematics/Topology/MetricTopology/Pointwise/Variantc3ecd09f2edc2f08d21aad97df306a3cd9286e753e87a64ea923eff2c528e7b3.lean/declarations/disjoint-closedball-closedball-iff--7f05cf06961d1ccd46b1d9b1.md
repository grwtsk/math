# disjoint_closedBall_closedBall_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30612e88-60b7-0744-a919-09804e682e2e",
  "kind": "theorem",
  "lexical_name": "disjoint_closedBall_closedBall_iff",
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
  "slug": "disjoint-closedball-closedball-iff--7f05cf06961d1ccd46b1d9b1",
  "source": {
    "blob": "e64bf1cbb27bf509b67efb78dcc67513a933188e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 228,
    "path": "GRWTSK/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f05cf06961d1ccd46b1d9b17240b9bc0140a4b6caed9c41d1532274024a3b09",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30612e88-60b7-0744-a919-09804e682e2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_closedBall_closedBall_iff (hδ : 0 ≤ δ) (hε : 0 ≤ ε) :
    Disjoint (closedBall x δ) (closedBall y ε) ↔ δ + ε < dist x y := by
  refine ⟨fun h => lt_of_not_ge fun hxy => ?_, closedBall_disjoint_closedBall⟩
  rw [add_comm] at hxy
  obtain ⟨z, hxz, hzy⟩ := exists_dist_le_le hδ hε hxy
  rw [dist_comm] at hxz
  exact h.le_bot ⟨hxz, hzy⟩

open EMetric ENNReal

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Pointwise/Variantc3ecd09f2edc2f08d21aad97df306a3cd9286e753e87a64ea923eff2c528e7b3.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e64bf1cbb27bf509b67efb78dcc67513a933188e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
