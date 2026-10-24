# IsLowerSet.exists_subset_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d8befb203d9b458e9dd5bac7aa7f864ecc2d021",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e356266-ff67-4d62-2d57-e28b127c5c64",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd610c0f-8778-0181-5d8b-e366e05aced4",
  "kind": "theorem",
  "lexical_name": "IsLowerSet.exists_subset_ball",
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
  "slug": "islowerset-exists-subset-ball--e0e19c0f139483a1fae65275",
  "source": {
    "blob": "9d8befb203d9b458e9dd5bac7aa7f864ecc2d021",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 169,
    "path": "GRWTSK/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0e19c0f139483a1fae65275bce51d2a07c4e63393fc073ac3b5814a8f15b7c2",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd610c0f-8778-0181-5d8b-e366e05aced4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLowerSet.exists_subset_ball (hs : IsLowerSet s) (hx : x ∈ closure s) (hδ : 0 < δ) :
    ∃ y, closedBall y (δ / 4) ⊆ closedBall x δ ∧ closedBall y (δ / 4) ⊆ interior s := by
  refine ⟨x - const _ (3 / 4 * δ), closedBall_subset_closedBall' ?_, ?_⟩
  · grw [dist_self_sub_left, ← const_def, pi_norm_const_le]
    apply le_of_eq
    simp [abs_of_nonneg, hδ.le]
    ring
  obtain ⟨y, hy, hxy⟩ := Metric.mem_closure_iff.1 hx _ (div_pos hδ zero_lt_four)
  refine fun z hz => hs.mem_interior_of_forall_lt (subset_closure hy) fun i => ?_
  rw [mem_closedBall, dist_eq_norm'] at hz
  rw [dist_eq_norm] at hxy
  replace hxy := (norm_le_pi_norm _ i).trans hxy.le
  replace hz := (norm_le_pi_norm _ i).trans hz
  dsimp at hxy hz
  rw [abs_sub_le_iff] at hxy hz
  linarith

end Fintype

section Finite
variable [Finite ι] {s : Set (ι → ℝ)}

/-!
#### Note

The closure and frontier of an antichain might not be antichains. Take for example the union
of the open segments from `(0, 2)` to `(1, 1)` and from `(2, 1)` to `(3, 0)`. `(1, 1)` and `(2, 1)`
are comparable and both in the closure/frontier.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d8befb203d9b458e9dd5bac7aa7f864ecc2d021` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
