# compact_unshifted_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6788ac9850a5f144c42092513babeef38d9a377",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 525,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c2914a5-83cf-31c7-af4c-95fa48f7b4c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6dd3d39a-b501-7dd7-999c-5dce64cbb3e5",
  "kind": "theorem",
  "lexical_name": "compact_unshifted_bound",
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
  "slug": "compact-unshifted-bound--4eca884165df0f1660cf8e5c",
  "source": {
    "blob": "b6788ac9850a5f144c42092513babeef38d9a377",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 562,
    "line": 525,
    "path": "GRWTSK/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4eca884165df0f1660cf8e5c84f278e35444cdddc28acae398caadb599f9a2ad",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dd3d39a-b501-7dd7-999c-5dce64cbb3e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 525–562.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compact_unshifted_bound
    (K : Set ℂ) (hK : IsCompact K)
    (hzero : 0 ∉ K) :
    ∃ B : ℝ, 0 ≤ B ∧
      ∀ s ∈ K, ∀ k ≤ 8, ‖J k s‖ ≤ B := by
  have hc (k : ℕ) :
      ContinuousOn (J k) K := by
    intro s hs
    exact
      (J_analytic k s
        (fun h ↦ hzero (h ▸ hs))).continuousAt.continuousWithinAt
  have hsum :
      ContinuousOn
        (fun s ↦
          ∑ k ∈ Finset.range 9, ‖J k s‖) K := by
    exact continuousOn_finsetSum _
      (fun k _ ↦ (hc k).norm)
  obtain ⟨B, hB⟩ :=
    hK.exists_bound_of_continuousOn hsum
  refine ⟨max B 0, le_max_right _ _, ?_⟩
  intro s hs k hk
  have hsumnonneg :
      0 ≤ ∑ j ∈ Finset.range 9, ‖J j s‖ :=
    Finset.sum_nonneg (fun _ _ ↦ norm_nonneg _)
  have hsingle :
      ‖J k s‖ ≤
        ∑ j ∈ Finset.range 9, ‖J j s‖ :=
    Finset.single_le_sum
      (s := Finset.range 9)
      (f := fun j ↦ ‖J j s‖)
      (fun _ _ ↦ norm_nonneg _)
      (Finset.mem_range.mpr (by omega))
  have hbound := hB s hs
  rw [Real.norm_eq_abs,
    abs_of_nonneg hsumnonneg] at hbound
  exact hsingle.trans
    (hbound.trans (le_max_left _ _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuation/Variant856d02c88a0f5a83b684fc20f64fd0e9831d5bc8c443c97a97ed9e61a3558a22.lean#L525).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6788ac9850a5f144c42092513babeef38d9a377` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
