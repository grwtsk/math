# edist_eq_two_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:440e3565-c55a-418e-97d9-b0b649b6cc11",
  "kind": "lemma",
  "lexical_name": "edist_eq_two_iff",
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
  "slug": "edist-eq-two-iff--75a667ec142184a12de4bfa1",
  "source": {
    "blob": "8eec0431ee26d4a62eeb50e181c4be24f4f0290f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 154,
    "path": "GRWTSK/Topology/MetricTopology/Metric/Variant8e28804d1a41cdabef02addc7fa49a356e5bf5a5eb2e73f2bcb7367562e35ef6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75a667ec142184a12de4bfa17132cdee3b7c9af84e13810866c38e9627c3aef1",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Metric/Variant8e28804d1a41cdabef02addc7fa49a356e5bf5a5eb2e73f2bcb7367562e35ef6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:440e3565-c55a-418e-97d9-b0b649b6cc11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma edist_eq_two_iff {u v : V} :
    G.edist u v = 2 ↔ u ≠ v ∧ ¬ G.Adj u v ∧ (G.commonNeighbors u v).Nonempty := by
  refine ⟨fun h ↦ ⟨?_, ?_, ?_⟩, fun h ↦ le_antisymm ?_ ?_⟩
  · simp +decide [← G.edist_eq_zero_iff.not (b := u = v), h]
  · simp +decide [← edist_eq_one_iff_adj, h]
  · obtain ⟨w, hw⟩ := exists_walk_of_edist_eq_coe h
    use w.getVert 1
    suffices w.getVert 1 ∈ G.commonNeighbors (w.getVert 0) (w.getVert w.length) by simpa
    refine hw ▸ G.mem_commonNeighbors.mp ?_
    exact ⟨w.adj_getVert_succ (by simp [hw]), (w.adj_getVert_succ (by simp [hw])).symm⟩
  · obtain ⟨w, hw⟩ := h.2.2
    rw [mem_commonNeighbors] at hw
    have := (Walk.cons hw.1 <| .cons hw.2.symm .nil).edist_le
    simp_all
  · by_contra
    simp_all [Order.le_one_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Metric/Variant8e28804d1a41cdabef02addc7fa49a356e5bf5a5eb2e73f2bcb7367562e35ef6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Metric/Variant8e28804d1a41cdabef02addc7fa49a356e5bf5a5eb2e73f2bcb7367562e35ef6.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8eec0431ee26d4a62eeb50e181c4be24f4f0290f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
