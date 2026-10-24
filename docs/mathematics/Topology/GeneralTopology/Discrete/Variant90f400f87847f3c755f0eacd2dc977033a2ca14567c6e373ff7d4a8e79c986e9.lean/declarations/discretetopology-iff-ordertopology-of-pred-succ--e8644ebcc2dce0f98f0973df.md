# discreteTopology_iff_orderTopology_of_pred_succ'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d936bc9-ac62-3799-84e4-51824016b185",
  "kind": "theorem",
  "lexical_name": "discreteTopology_iff_orderTopology_of_pred_succ'",
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
  "slug": "discretetopology-iff-ordertopology-of-pred-succ--e8644ebcc2dce0f98f0973df",
  "source": {
    "blob": "78cd887693d5aa55cc26a253cc4bdb9f4e157f61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 68,
    "path": "GRWTSK/Topology/GeneralTopology/Discrete/Variant90f400f87847f3c755f0eacd2dc977033a2ca14567c6e373ff7d4a8e79c986e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8644ebcc2dce0f98f0973df28360c100ca6b8951f801a798d645f48415b70b6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Discrete/Variant90f400f87847f3c755f0eacd2dc977033a2ca14567c6e373ff7d4a8e79c986e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d936bc9-ac62-3799-84e4-51824016b185`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discreteTopology_iff_orderTopology_of_pred_succ' [PartialOrder α] [PredOrder α]
    [SuccOrder α] [NoMinOrder α] [NoMaxOrder α] : DiscreteTopology α ↔ OrderTopology α := by
  refine' ⟨fun h => ⟨_⟩, fun h => ⟨_⟩⟩
  · rw [h.eq_bot]
    exact bot_topologicalSpace_eq_generateFrom_of_pred_succOrder
  · rw [h.topology_eq_generate_intervals]
    exact bot_topologicalSpace_eq_generateFrom_of_pred_succOrder.symm
#align discrete_topology_iff_order_topology_of_pred_succ' discreteTopology_iff_orderTopology_of_pred_succ'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Discrete/Variant90f400f87847f3c755f0eacd2dc977033a2ca14567c6e373ff7d4a8e79c986e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Discrete/Variant90f400f87847f3c755f0eacd2dc977033a2ca14567c6e373ff7d4a8e79c986e9.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78cd887693d5aa55cc26a253cc4bdb9f4e157f61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
