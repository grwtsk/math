# dist_anti_left_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40327c8af06406407534adbce71a2fe2d6af0b9e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f579372c-f417-ff02-bbf3-ceb00df60b8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:959e1ee1-fa5d-2de5-e160-5ee305881ac3",
  "kind": "lemma",
  "lexical_name": "dist_anti_left_pi",
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
  "slug": "dist-anti-left-pi--98b113f32c6f4bc3173a2549",
  "source": {
    "blob": "40327c8af06406407534adbce71a2fe2d6af0b9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 134,
    "path": "GRWTSK/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98b113f32c6f4bc3173a2549564a4506ac8a75c4e304370383aaf41a48169aef",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:959e1ee1-fa5d-2de5-e160-5ee305881ac3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dist_anti_left_pi : AntitoneOn (dist · y) (Iic y) := by
  refine fun y₁ hy₁ y₂ hy₂ hy ↦ NNReal.coe_le_coe.2 (Finset.sup_mono_fun fun i _ ↦ ?_)
  rw [Real.nndist_eq', Real.nnabs_of_nonneg (sub_nonneg_of_le (‹_ ≤ y› i : y₂ i ≤ y i)),
    Real.nndist_eq', Real.nnabs_of_nonneg (sub_nonneg_of_le (‹_ ≤ y› i : y₁ i ≤ y i))]
  exact Real.toNNReal_mono (sub_le_sub_left (hy _) _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40327c8af06406407534adbce71a2fe2d6af0b9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
