# IsCompact.exists_thickening_image_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81cf52111bfa540144e44b1b090fa9420c004b15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 695,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/918ff2b3d9fea77663a278056d1d9dc7b6db3c966d826e154317313867d98ba9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:288b782a-846a-fe13-624b-5cc5fbc0ce41",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e8d3609-dbad-a9e1-94d4-707a0879a65a",
  "kind": "theorem",
  "lexical_name": "IsCompact.exists_thickening_image_subset",
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
  "slug": "iscompact-exists-thickening-image-subset--cf4626e555a2fa7b88cd21ec",
  "source": {
    "blob": "81cf52111bfa540144e44b1b090fa9420c004b15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 725,
    "line": 695,
    "path": "GRWTSK/Topology/MetricTopology/Thickening/Variant918ff2b3d9fea77663a278056d1d9dc7b6db3c966d826e154317313867d98ba9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf4626e555a2fa7b88cd21ec1920a13eeb7be0fb402b2f97c5d81bd0258ecfe1",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Thickening/Variant918ff2b3d9fea77663a278056d1d9dc7b6db3c966d826e154317313867d98ba9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e8d3609-dbad-a9e1-94d4-707a0879a65a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 695–725.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCompact.exists_thickening_image_subset
    [PseudoEMetricSpace α] {β : Type*} [PseudoEMetricSpace β]
    {f : α → β} {K : Set α} {U : Set β} (hK : IsCompact K) (ho : IsOpen U)
    (hf : ∀ x ∈ K, ContinuousAt f x) (hKU : MapsTo f K U) :
    ∃ ε > 0, ∃ V ∈ 𝓝ˢ K, thickening ε (f '' V) ⊆ U := by
  apply hK.induction_on (p := fun K ↦ ∃ ε > 0, ∃ V ∈ 𝓝ˢ K, thickening ε (f '' V) ⊆ U)
  · use 1, by positivity, ∅, by simp, by simp
  · exact fun s t hst ⟨ε, hε, V, hV, hthickening⟩ ↦ ⟨ε, hε, V, nhdsSet_mono hst hV, hthickening⟩
  · rintro s t ⟨ε₁, hε₁, V₁, hV₁, hV₁thickening⟩ ⟨ε₂, hε₂, V₂, hV₂, hV₂thickening⟩
    refine ⟨min ε₁ ε₂, by positivity, V₁ ∪ V₂, union_mem_nhdsSet hV₁ hV₂, ?_⟩
    rw [image_union, thickening_union]
    calc thickening (ε₁ ⊓ ε₂) (f '' V₁) ∪ thickening (ε₁ ⊓ ε₂) (f '' V₂)
      _ ⊆ thickening ε₁ (f '' V₁) ∪ thickening ε₂ (f '' V₂) := by gcongr <;> norm_num
      _ ⊆ U ∪ U := by gcongr
      _ = U := union_self _
  · intro x hx
    have : {f x} ⊆ U := by rw [singleton_subset_iff]; exact hKU hx
    obtain ⟨δ, hδ, hthick⟩ := (isCompact_singleton (x := f x)).exists_thickening_subset_open ho this
    let V := f ⁻¹' (thickening (δ / 2) {f x})
    have : V ∈ 𝓝 x := by
      apply hf x hx
      apply isOpen_thickening.mem_nhds
      exact (self_subset_thickening (by positivity) _) rfl
    refine ⟨K ∩ (interior V), inter_mem_nhdsWithin K (interior_mem_nhds.mpr this),
      δ / 2, by positivity, V, by rw [← subset_interior_iff_mem_nhdsSet]; simp, ?_⟩
    calc thickening (δ / 2) (f '' V)
      _ ⊆ thickening (δ / 2) (thickening (δ / 2) {f x}) :=
        thickening_subset_of_subset _ (image_preimage_subset f _)
      _ ⊆ thickening ((δ / 2) + (δ / 2)) ({f x}) :=
        thickening_thickening_subset (δ / 2) (δ / 2) {f x}
      _ ⊆ U := by simp [hthick]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Thickening/Variant918ff2b3d9fea77663a278056d1d9dc7b6db3c966d826e154317313867d98ba9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Thickening/Variant918ff2b3d9fea77663a278056d1d9dc7b6db3c966d826e154317313867d98ba9.lean#L695).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81cf52111bfa540144e44b1b090fa9420c004b15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
