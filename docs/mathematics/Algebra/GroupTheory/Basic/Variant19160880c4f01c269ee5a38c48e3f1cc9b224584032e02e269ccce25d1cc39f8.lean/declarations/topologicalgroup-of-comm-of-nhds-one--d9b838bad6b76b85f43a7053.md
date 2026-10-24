# TopologicalGroup.of_comm_of_nhds_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c57a280e7f399390f3ff1a54e1c573e98a615ae5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 949,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/19160880c4f01c269ee5a38c48e3f1cc9b224584032e02e269ccce25d1cc39f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dad01509-6be7-d3ce-c7a5-dfc0aedf0105",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64742db4-9ec8-6c7b-ac35-932ce0e60c9f",
  "kind": "theorem",
  "lexical_name": "TopologicalGroup.of_comm_of_nhds_one",
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
  "slug": "topologicalgroup-of-comm-of-nhds-one--d9b838bad6b76b85f43a7053",
  "source": {
    "blob": "c57a280e7f399390f3ff1a54e1c573e98a615ae5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 963,
    "line": 949,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant19160880c4f01c269ee5a38c48e3f1cc9b224584032e02e269ccce25d1cc39f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9b838bad6b76b85f43a705321793c8a0b0f46e930562b9f8bcda6388ea037b9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant19160880c4f01c269ee5a38c48e3f1cc9b224584032e02e269ccce25d1cc39f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64742db4-9ec8-6c7b-ac35-932ce0e60c9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 949–963.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TopologicalGroup.of_comm_of_nhds_one {G : Type u} [CommGroup G] [TopologicalSpace G]
    (hmul : Tendsto (uncurry ((· * ·) : G → G → G)) (𝓝 1 ×ˢ 𝓝 1) (𝓝 1))
    (hinv : Tendsto (fun x : G => x⁻¹) (𝓝 1) (𝓝 1))
    (hleft : ∀ x₀ : G, 𝓝 x₀ = map (fun x => x₀ * x) (𝓝 1)) : TopologicalGroup G :=
  TopologicalGroup.of_nhds_one hmul hinv hleft (by simpa using tendsto_id)
#align topological_group.of_comm_of_nhds_one TopologicalGroup.of_comm_of_nhds_one
#align topological_add_group.of_comm_of_nhds_zero TopologicalAddGroup.of_comm_of_nhds_zero

end TopologicalGroup

section QuotientTopologicalGroup

variable [TopologicalSpace G] [Group G] [TopologicalGroup G] (N : Subgroup G) (n : N.Normal)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant19160880c4f01c269ee5a38c48e3f1cc9b224584032e02e269ccce25d1cc39f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant19160880c4f01c269ee5a38c48e3f1cc9b224584032e02e269ccce25d1cc39f8.lean#L949).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c57a280e7f399390f3ff1a54e1c573e98a615ae5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
