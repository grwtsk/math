# IsVisible.mem_convexHull_isVisible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:caf4edd9-c2e5-050b-ae77-0da9d44370f6",
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
  "slug": "isvisible-mem-convexhull-isvisible--057117469668495b548dd6e7",
  "source": {
    "blob": "d86b78dd0bf6e48e07ab6c7d6af9b317bc3e20f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 151,
    "path": "GRWTSK/Topology/GeneralTopology/Visible/Variantb9aceea59f4d3f06af54612f1400d2cd9ffdb7818905136b82e94bfd3065c7d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:057117469668495b548dd6e73dd1b7f675b6e62ff3f9011b7af91884a31c445c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Visible/Variantb9aceea59f4d3f06af54612f1400d2cd9ffdb7818905136b82e94bfd3065c7d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:caf4edd9-c2e5-050b-ae77-0da9d44370f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsVisible.mem_convexHull_isVisible (hx : x ∉ convexHull ℝ s) (hy : y ∈ convexHull ℝ s)
    (hxy : IsVisible ℝ (convexHull ℝ s) x y) :
    y ∈ convexHull ℝ {z ∈ s | IsVisible ℝ (convexHull ℝ s) x z} := by
  classical
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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Visible/Variantb9aceea59f4d3f06af54612f1400d2cd9ffdb7818905136b82e94bfd3065c7d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Visible/Variantb9aceea59f4d3f06af54612f1400d2cd9ffdb7818905136b82e94bfd3065c7d9.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d86b78dd0bf6e48e07ab6c7d6af9b317bc3e20f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
