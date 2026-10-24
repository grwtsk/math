# length_eq_dist_of_subwalk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45855b0a-5cef-dbe9-14f8-a841582ec6c2",
  "kind": "lemma",
  "lexical_name": "length_eq_dist_of_subwalk",
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
  "slug": "length-eq-dist-of-subwalk--bb3d21a1e3540b840b4e6e66",
  "source": {
    "blob": "8eec0431ee26d4a62eeb50e181c4be24f4f0290f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 364,
    "path": "GRWTSK/Topology/MetricTopology/Metric/Variant8e28804d1a41cdabef02addc7fa49a356e5bf5a5eb2e73f2bcb7367562e35ef6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb3d21a1e3540b840b4e6e66a2f9312bb6bb88adfd9c4497ab4d191dc5248131",
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

Occurrence: `result:45855b0a-5cef-dbe9-14f8-a841582ec6c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma length_eq_dist_of_subwalk {u' v' : V} {p₁ : G.Walk u v} {p₂ : G.Walk u' v'}
    (h₁ : p₁.length = G.dist u v) (h₂ : p₂.IsSubwalk p₁) : p₂.length = G.dist u' v' := by
  refine (dist_le _).eq_of_not_lt' fun hh ↦ ?_
  obtain ⟨ru, rv, h⟩ := h₂
  obtain ⟨s, _⟩ := p₂.reachable.exists_path_of_dist
  let r := ru.append s |>.append rv
  have : p₁.length = ru.length + p₂.length + rv.length := by simp [h]
  have : r.length = ru.length + s.length + rv.length := by simp [r]
  have := dist_le r
  lia

/-- Supergraphs have smaller or equal distances to their subgraphs. -/
@[gcongr]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Metric/Variant8e28804d1a41cdabef02addc7fa49a356e5bf5a5eb2e73f2bcb7367562e35ef6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Metric/Variant8e28804d1a41cdabef02addc7fa49a356e5bf5a5eb2e73f2bcb7367562e35ef6.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8eec0431ee26d4a62eeb50e181c4be24f4f0290f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
