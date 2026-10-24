# exists_finite_cover_balls_of_isCompact_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5cb725b1cf3d27266a6c5b51392ffe0cfcd6a7ea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 263,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6021960d-df80-5f27-85de-ae83ecf06c14",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:033a38e6-0057-e105-9b00-ecd98f1173b2",
  "kind": "lemma",
  "lexical_name": "exists_finite_cover_balls_of_isCompact_closure",
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
  "slug": "exists-finite-cover-balls-of-iscompact-closure--ec95ba6cb43e79a580f6fadb",
  "source": {
    "blob": "5cb725b1cf3d27266a6c5b51392ffe0cfcd6a7ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 263,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec95ba6cb43e79a580f6fadb7971d861cc0dc9f36b61fb3dd85976fd6b743c43",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:033a38e6-0057-e105-9b00-ecd98f1173b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_finite_cover_balls_of_isCompact_closure (hs : IsCompact (closure s)) (hε : 0 < ε) :
    ∃ t ⊆ s, t.Finite ∧ s ⊆ ⋃ x ∈ t, ball x ε := by
  obtain ⟨t, hst⟩ := hs.elim_finite_subcover (fun x : s ↦ ball x ε) (fun _ ↦ isOpen_ball) fun x hx ↦
    let ⟨y, hy, hxy⟩ := Metric.mem_closure_iff.1 hx _ hε; mem_iUnion.2 ⟨⟨y, hy⟩, hxy⟩
  refine ⟨t.map ⟨Subtype.val, Subtype.val_injective⟩, by simp, Finset.finite_toSet _, ?_⟩
  simpa using subset_closure.trans hst

end Compact

/-- If a map is continuous on a separable set `s`, then the image of `s` is also separable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cb725b1cf3d27266a6c5b51392ffe0cfcd6a7ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
