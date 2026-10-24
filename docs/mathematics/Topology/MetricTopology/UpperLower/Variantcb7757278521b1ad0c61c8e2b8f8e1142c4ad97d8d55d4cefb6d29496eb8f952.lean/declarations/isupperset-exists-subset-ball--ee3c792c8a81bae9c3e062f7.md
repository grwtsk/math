# IsUpperSet.exists_subset_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7196a77596cfbb093e46d72701ec038fc8c1c658",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb7757278521b1ad0c61c8e2b8f8e1142c4ad97d8d55d4cefb6d29496eb8f952.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c12762a0-d6cd-9552-b6e0-39754779e73d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:afc8fcee-2d56-098c-fd9f-f60089d46df9",
  "kind": "theorem",
  "lexical_name": "IsUpperSet.exists_subset_ball",
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
  "slug": "isupperset-exists-subset-ball--ee3c792c8a81bae9c3e062f7",
  "source": {
    "blob": "7196a77596cfbb093e46d72701ec038fc8c1c658",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 117,
    "path": "GRWTSK/Topology/MetricTopology/UpperLower/Variantcb7757278521b1ad0c61c8e2b8f8e1142c4ad97d8d55d4cefb6d29496eb8f952.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee3c792c8a81bae9c3e062f7bae980798f77794661b118a525a309ba2e7c1147",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/UpperLower/Variantcb7757278521b1ad0c61c8e2b8f8e1142c4ad97d8d55d4cefb6d29496eb8f952.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afc8fcee-2d56-098c-fd9f-f60089d46df9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsUpperSet.exists_subset_ball (hs : IsUpperSet s) (hx : x ∈ closure s) (hδ : 0 < δ) :
    ∃ y, closedBall y (δ / 4) ⊆ closedBall x δ ∧ closedBall y (δ / 4) ⊆ interior s := by
  refine' ⟨x + const _ (3 / 4 * δ), closedBall_subset_closedBall' _, _⟩
  · rw [dist_self_add_left]
    refine' (add_le_add_left (pi_norm_const_le <| 3 / 4 * δ) _).trans_eq _
    simp [Real.norm_of_nonneg, hδ.le, zero_le_three]
    simp [abs_of_pos, abs_of_pos hδ]
    ring
  obtain ⟨y, hy, hxy⟩ := Metric.mem_closure_iff.1 hx _ (div_pos hδ zero_lt_four)
  refine' fun z hz => hs.mem_interior_of_forall_lt (subset_closure hy) fun i => _
  rw [mem_closedBall, dist_eq_norm'] at hz
  rw [dist_eq_norm] at hxy
  replace hxy := (norm_le_pi_norm _ i).trans hxy.le
  replace hz := (norm_le_pi_norm _ i).trans hz
  dsimp at hxy hz
  rw [abs_sub_le_iff] at hxy hz
  linarith
#align is_upper_set.exists_subset_ball IsUpperSet.exists_subset_ball

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/UpperLower/Variantcb7757278521b1ad0c61c8e2b8f8e1142c4ad97d8d55d4cefb6d29496eb8f952.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/UpperLower/Variantcb7757278521b1ad0c61c8e2b8f8e1142c4ad97d8d55d4cefb6d29496eb8f952.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7196a77596cfbb093e46d72701ec038fc8c1c658` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
