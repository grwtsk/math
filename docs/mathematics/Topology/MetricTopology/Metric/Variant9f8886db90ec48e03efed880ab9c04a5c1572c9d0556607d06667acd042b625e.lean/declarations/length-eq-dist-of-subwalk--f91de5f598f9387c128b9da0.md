# length_eq_dist_of_subwalk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf02b832e4fb39af9fb93dd5bd13e31963cc8975",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 356,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f8886db90ec48e03efed880ab9c04a5c1572c9d0556607d06667acd042b625e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08ffcf90-1043-5179-0d3d-0dd637cdc3be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4ff0bde-4137-ef0b-21b8-ace5b8b0e370",
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
  "slug": "length-eq-dist-of-subwalk--f91de5f598f9387c128b9da0",
  "source": {
    "blob": "bf02b832e4fb39af9fb93dd5bd13e31963cc8975",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 356,
    "path": "GRWTSK/Topology/MetricTopology/Metric/Variant9f8886db90ec48e03efed880ab9c04a5c1572c9d0556607d06667acd042b625e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f91de5f598f9387c128b9da0d262e70389b00ae9c8febf7e5f16677a47f78330",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Metric/Variant9f8886db90ec48e03efed880ab9c04a5c1572c9d0556607d06667acd042b625e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4ff0bde-4137-ef0b-21b8-ace5b8b0e370`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–368.

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

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Metric/Variant9f8886db90ec48e03efed880ab9c04a5c1572c9d0556607d06667acd042b625e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Metric/Variant9f8886db90ec48e03efed880ab9c04a5c1572c9d0556607d06667acd042b625e.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf02b832e4fb39af9fb93dd5bd13e31963cc8975` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
