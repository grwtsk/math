# radon_partition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d524ec0082946efc805e7f60082d26201a17a034",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/668e1df3d5b05b012f81bdecf5818083bb9716d121a8a68963b5064076135540.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:10e54cb9-5ad3-0ace-3edc-04be2382df7e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:348a56d8-f2df-fe85-bc7d-0eb18c5c15cc",
  "kind": "theorem",
  "lexical_name": "radon_partition",
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
  "slug": "radon-partition--1afd1ccaffaff2ad751a3e15",
  "source": {
    "blob": "d524ec0082946efc805e7f60082d26201a17a034",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 42,
    "path": "GRWTSK/Topology/GeneralTopology/Radon/Variant668e1df3d5b05b012f81bdecf5818083bb9716d121a8a68963b5064076135540.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1afd1ccaffaff2ad751a3e15aba5cb48389a5923097b9b889586198c59e004e4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Radon/Variant668e1df3d5b05b012f81bdecf5818083bb9716d121a8a68963b5064076135540.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:348a56d8-f2df-fe85-bc7d-0eb18c5c15cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem radon_partition {f : ι → E} (h : ¬ AffineIndependent 𝕜 f) :
    ∃ I, (convexHull 𝕜 (f '' I) ∩ convexHull 𝕜 (f '' Iᶜ)).Nonempty := by
  rw [affineIndependent_iff] at h
  push_neg at h
  obtain ⟨s, w, h_wsum, h_vsum, nonzero_w_index, h1, h2⟩ := h
  let I : Finset ι := {i ∈ s | 0 ≤ w i}
  let J : Finset ι := {i ∈ s | w i < 0}
  let p : E := centerMass I w f -- point of intersection
  have hJI : ∑ j ∈ J, w j + ∑ i ∈ I, w i = 0 := by
    simpa only [h_wsum, not_lt] using sum_filter_add_sum_filter_not s (fun i ↦ w i < 0) w
  have hI : 0 < ∑ i ∈ I, w i := by
    rcases exists_pos_of_sum_zero_of_exists_nonzero _ h_wsum ⟨nonzero_w_index, h1, h2⟩
      with ⟨pos_w_index, h1', h2'⟩
    exact sum_pos' (fun _i hi ↦ (mem_filter.1 hi).2)
      ⟨pos_w_index, by simp only [I, mem_filter, h1', h2'.le, and_self, h2']⟩
  have hp : centerMass J w f = p := centerMass_of_sum_add_sum_eq_zero hJI <| by
    simpa only [← h_vsum, not_lt] using sum_filter_add_sum_filter_not s (fun i ↦ w i < 0) _
  refine ⟨I, p, ?_, ?_⟩
  · exact centerMass_mem_convexHull _ (fun _i hi ↦ (mem_filter.mp hi).2) hI
      (fun _i hi ↦ mem_image_of_mem _ hi)
  rw [← hp]
  refine centerMass_mem_convexHull_of_nonpos _ (fun _ hi ↦ (mem_filter.mp hi).2.le) ?_
    (fun _i hi ↦ mem_image_of_mem _ fun hi' ↦ ?_)
  · linarith only [hI, hJI]
  · exact (mem_filter.mp hi').2.not_lt (mem_filter.mp hi).2

open Module

omit [LinearOrder 𝕜] [IsStrictOrderedRing 𝕜] in
/-- Corner case for `helly_theorem'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Radon/Variant668e1df3d5b05b012f81bdecf5818083bb9716d121a8a68963b5064076135540.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Radon/Variant668e1df3d5b05b012f81bdecf5818083bb9716d121a8a68963b5064076135540.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d524ec0082946efc805e7f60082d26201a17a034` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
