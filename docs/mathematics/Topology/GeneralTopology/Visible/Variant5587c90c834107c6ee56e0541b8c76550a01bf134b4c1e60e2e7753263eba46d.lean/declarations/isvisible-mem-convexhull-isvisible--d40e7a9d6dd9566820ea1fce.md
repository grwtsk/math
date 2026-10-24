# IsVisible.mem_convexHull_isVisible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d475f297a2126b3e48a4bd14aa076a12e6906bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/5587c90c834107c6ee56e0541b8c76550a01bf134b4c1e60e2e7753263eba46d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89ed47c5-61d6-820a-8843-2d182712894d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a844216e-5d6f-e7b1-c270-86d7a3f2cc38",
  "kind": "lemma",
  "lexical_name": "IsVisible.mem_convexHull_isVisible",
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
  "slug": "isvisible-mem-convexhull-isvisible--d40e7a9d6dd9566820ea1fce",
  "source": {
    "blob": "9d475f297a2126b3e48a4bd14aa076a12e6906bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 146,
    "path": "GRWTSK/Topology/GeneralTopology/Visible/Variant5587c90c834107c6ee56e0541b8c76550a01bf134b4c1e60e2e7753263eba46d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d40e7a9d6dd9566820ea1fce21a90d8332f6c66f5ac720818f3de4cf87b56885",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Visible/Variant5587c90c834107c6ee56e0541b8c76550a01bf134b4c1e60e2e7753263eba46d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a844216e-5d6f-e7b1-c270-86d7a3f2cc38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsVisible.mem_convexHull_isVisible (hx : x ∉ convexHull ℝ s) (hy : y ∈ convexHull ℝ s)
    (hxy : IsVisible ℝ (convexHull ℝ s) x y) :
    y ∈ convexHull ℝ {z ∈ s | IsVisible ℝ (convexHull ℝ s) x z} := by
  obtain ⟨ι, _, w, a, hw₀, hw₁, ha, rfl⟩ := mem_convexHull_iff_exists_fintype.1 hy
  rw [← Fintype.sum_subset (s := {i | w i ≠ 0})
    fun i hi ↦ mem_filter.2 ⟨mem_univ _, left_ne_zero_of_smul hi⟩]
  exact (convex_convexHull ..).sum_mem (fun i _ ↦ hw₀ _) (by rwa [sum_filter_ne_zero])
    fun i hi ↦ subset_convexHull _ _ ⟨ha _, IsVisible.of_convexHull_of_pos (fun _ _ ↦ hw₀ _) hw₁
      (by simpa) hx hxy (mem_univ _) <| (hw₀ _).lt_of_ne' (mem_filter.1 hi).2⟩

variable [TopologicalSpace V] [IsTopologicalAddGroup V] [ContinuousSMul ℝ V]

/-- If `s` is a closed set, then any point `x` sees some point of `s` in any direction where there
is something to see. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Visible/Variant5587c90c834107c6ee56e0541b8c76550a01bf134b4c1e60e2e7753263eba46d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Visible/Variant5587c90c834107c6ee56e0541b8c76550a01bf134b4c1e60e2e7753263eba46d.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d475f297a2126b3e48a4bd14aa076a12e6906bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
