# diam_range_toFun_comp_weights_subset_closedBall_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c11a4236306a1c479876b4c8a21904b63b06b4c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d08795de8787d3cc96642b90f8a5d7fca0fc8b5fa56c68558b6e81037762e042.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ecf74389-a883-76fa-4c92-b131c95f9edb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2ba57be-95b6-6d74-9394-e47c03a29462",
  "kind": "lemma",
  "lexical_name": "diam_range_toFun_comp_weights_subset_closedBall_eq_one",
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
  "slug": "diam-range-tofun-comp-weights-subset-closedball-eq-one--76d1c5f66d09edcc2ac5246b",
  "source": {
    "blob": "2c11a4236306a1c479876b4c8a21904b63b06b4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 54,
    "path": "GRWTSK/Topology/MetricTopology/CompactSpaceStdSimplex/Variantd08795de8787d3cc96642b90f8a5d7fca0fc8b5fa56c68558b6e81037762e042.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76d1c5f66d09edcc2ac5246ba6974bed024a48af1a0897a039bc56bb9e96c767",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/CompactSpaceStdSimplex/Variantd08795de8787d3cc96642b90f8a5d7fca0fc8b5fa56c68558b6e81037762e042.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2ba57be-95b6-6d74-9394-e47c03a29462`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma diam_range_toFun_comp_weights_subset_closedBall_eq_one
    [Fintype M] [Nontrivial M] :
    Metric.diam (Set.range (fun t ↦ t.weights : StdSimplex ℝ M → M → ℝ)) = 1 := by
  obtain ⟨x, y, h⟩ := exists_pair_ne M
  refine le_antisymm (diam_range_toFun_comp_weights_subset_closedBall M)
    (le_of_eq_of_le ((dist_pi_eq_iff (by simp)).mpr ⟨?_, fun z ↦ ?_⟩).symm
      (Metric.dist_le_diam_of_mem
        (isBounded_range_toFun_comp_weights _) (x := Pi.single x 1) (y := Pi.single y 1)
          ⟨.single x, by aesop⟩ ⟨.single y, by aesop⟩))
  · exact ⟨x, by simp [Pi.single_eq_of_ne h, Real.dist_eq]⟩
  · grind [Real.dist_eq]

end Real

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/CompactSpaceStdSimplex/Variantd08795de8787d3cc96642b90f8a5d7fca0fc8b5fa56c68558b6e81037762e042.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/CompactSpaceStdSimplex/Variantd08795de8787d3cc96642b90f8a5d7fca0fc8b5fa56c68558b6e81037762e042.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c11a4236306a1c479876b4c8a21904b63b06b4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
