# exists_isOpen_bounded_image_inter_of_isCompact_of_forall_continuousWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6189e97e-4f26-9c7d-8297-31e1f004f2d5",
  "kind": "theorem",
  "lexical_name": "exists_isOpen_bounded_image_inter_of_isCompact_of_forall_continuousWithinAt",
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
  "slug": "exists-isopen-bounded-image-inter-of-iscompact-of-forall-continuouswithi--26939adaccc3efef4c3bae66",
  "source": {
    "blob": "5ba8c647f38ac8be65be37d8efb559c9d2788fca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2559,
    "line": 2535,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant06b423f09ff5de6236a24088ad540b6f30950ea655e4c0dc8da71419ee2cf286.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26939adaccc3efef4c3bae66931581e55d23701149b7b82f2f3edd03b03a8591",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant06b423f09ff5de6236a24088ad540b6f30950ea655e4c0dc8da71419ee2cf286.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6189e97e-4f26-9c7d-8297-31e1f004f2d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2535–2559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isOpen_bounded_image_inter_of_isCompact_of_forall_continuousWithinAt
    [TopologicalSpace β] {k s : Set β} {f : β → α} (hk : IsCompact k)
    (hf : ∀ x ∈ k, ContinuousWithinAt f s x) : ∃ t, k ⊆ t ∧ IsOpen t ∧ Bounded (f '' (t ∩ s)) := by
  refine hk.induction_on ?_ ?_ ?_ ?_
  · exact ⟨∅, Subset.rfl, isOpen_empty, by simp only [image_empty, bounded_empty, empty_inter]⟩
  · rintro s s' hss' ⟨t, s't, t_open, t_bounded⟩
    exact ⟨t, hss'.trans s't, t_open, t_bounded⟩
  · rintro s s' ⟨t, st, t_open, t_bounded⟩ ⟨t', s't', t'_open, t'_bounded⟩
    refine' ⟨t ∪ t', union_subset_union st s't', t_open.union t'_open, _⟩
    rw [union_inter_distrib_right, image_union]
    exact t_bounded.union t'_bounded
  · intro x hx
    have A : ball (f x) 1 ∈ 𝓝 (f x) := ball_mem_nhds _ zero_lt_one
    have B : f ⁻¹' ball (f x) 1 ∈ 𝓝[s] x := hf x hx A
    obtain ⟨u, u_open, xu, uf⟩ : ∃ u : Set β, IsOpen u ∧ x ∈ u ∧ u ∩ s ⊆ f ⁻¹' ball (f x) 1
    exact _root_.mem_nhdsWithin.1 B
    refine' ⟨u, _, u, Subset.rfl, u_open, _⟩
    · apply nhdsWithin_le_nhds
      exact u_open.mem_nhds xu
    · apply Bounded.mono (image_subset _ uf)
      exact bounded_ball.mono (image_preimage_subset _ _)
#align metric.exists_is_open_bounded_image_inter_of_is_compact_of_forall_continuous_within_at Metric.exists_isOpen_bounded_image_inter_of_isCompact_of_forall_continuousWithinAt

/-- If a function is continuous at every point of a compact set `k`, then it is bounded on
some open neighborhood of `k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant06b423f09ff5de6236a24088ad540b6f30950ea655e4c0dc8da71419ee2cf286.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant06b423f09ff5de6236a24088ad540b6f30950ea655e4c0dc8da71419ee2cf286.lean#L2535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ba8c647f38ac8be65be37d8efb559c9d2788fca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
