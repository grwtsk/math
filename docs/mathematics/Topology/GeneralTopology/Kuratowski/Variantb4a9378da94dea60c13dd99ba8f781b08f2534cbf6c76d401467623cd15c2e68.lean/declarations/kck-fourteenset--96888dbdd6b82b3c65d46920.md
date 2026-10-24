# kck_fourteenSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c502d976b5ece215992f9f26cb8f0b3825b37327",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4a9378da94dea60c13dd99ba8f781b08f2534cbf6c76d401467623cd15c2e68.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0c621a7-a43c-7d0a-6c56-6895fbd74d80",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f27f11a2-2c60-e2f7-dcc8-7d116589c0d2",
  "kind": "theorem",
  "lexical_name": "kck_fourteenSet",
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
  "slug": "kck-fourteenset--96888dbdd6b82b3c65d46920",
  "source": {
    "blob": "c502d976b5ece215992f9f26cb8f0b3825b37327",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 195,
    "path": "GRWTSK/Topology/GeneralTopology/Kuratowski/Variantb4a9378da94dea60c13dd99ba8f781b08f2534cbf6c76d401467623cd15c2e68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96888dbdd6b82b3c65d469204adb2777720edbbc1ee1d7c666e39aac1f632502",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Kuratowski/Variantb4a9378da94dea60c13dd99ba8f781b08f2534cbf6c76d401467623cd15c2e68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f27f11a2-2c60-e2f7-dcc8-7d116589c0d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kck_fourteenSet : k (k fourteenSet)ᶜ = (Ioo 0 2 ∪ Ioo 4 5)ᶜ := by
  rw [closure_compl, k_fourteenSet,
    interior_union_of_disjoint_closure, interior_union_of_disjoint_closure]
  all_goals
     simp [-union_singleton, disjoint_iff_inter_eq_empty, union_inter_distrib_right, Icc_inter_Icc]
  all_goals norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Kuratowski/Variantb4a9378da94dea60c13dd99ba8f781b08f2534cbf6c76d401467623cd15c2e68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Kuratowski/Variantb4a9378da94dea60c13dd99ba8f781b08f2534cbf6c76d401467623cd15c2e68.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c502d976b5ece215992f9f26cb8f0b3825b37327` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
