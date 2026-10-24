# Filter.HasBasis.hasBasis_of_isDenseInducing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f53248911aebd2f41301f950b54bf30b28721a06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 374,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4b815f6cfc355effc243376ce2f3cf3f5cbdd263084fc257633364f9500812c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a83c77d7-4eaa-be79-2158-b455b513ee86",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9fc3d320-1d74-5e21-68a5-7bb44d7e18ef",
  "kind": "theorem",
  "lexical_name": "Filter.HasBasis.hasBasis_of_isDenseInducing",
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
  "slug": "filter-hasbasis-hasbasis-of-isdenseinducing--6dcc159540197cbd9dd34194",
  "source": {
    "blob": "f53248911aebd2f41301f950b54bf30b28721a06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 374,
    "path": "GRWTSK/Topology/GeneralTopology/DenseEmbedding/Variant4b815f6cfc355effc243376ce2f3cf3f5cbdd263084fc257633364f9500812c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6dcc159540197cbd9dd3419492ed4b36c9a05d28a051b1db027adba05b40d5e5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DenseEmbedding/Variant4b815f6cfc355effc243376ce2f3cf3f5cbdd263084fc257633364f9500812c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fc3d320-1d74-5e21-68a5-7bb44d7e18ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.HasBasis.hasBasis_of_isDenseInducing [TopologicalSpace α] [TopologicalSpace β]
    [RegularSpace β] {ι : Type*} {s : ι → Set α} {p : ι → Prop} {x : α} (h : (𝓝 x).HasBasis p s)
    {f : α → β} (hf : IsDenseInducing f) : (𝓝 (f x)).HasBasis p fun i => closure <| f '' s i := by
  rw [Filter.hasBasis_iff] at h ⊢
  intro T
  refine ⟨fun hT => ?_, fun hT => ?_⟩
  · obtain ⟨T', hT₁, hT₂, hT₃⟩ := exists_mem_nhds_isClosed_subset hT
    have hT₄ : f ⁻¹' T' ∈ 𝓝 x := by
      rw [hf.isInducing.nhds_eq_comap x]
      exact ⟨T', hT₁, Subset.rfl⟩
    obtain ⟨i, hi, hi'⟩ := (h _).mp hT₄
    exact
      ⟨i, hi,
        (closure_mono (image_subset f hi')).trans
          (Subset.trans (closure_minimal (image_preimage_subset _ _) hT₂) hT₃)⟩
  · obtain ⟨i, hi, hi'⟩ := hT
    suffices closure (f '' s i) ∈ 𝓝 (f x) by filter_upwards [this] using hi'
    replace h := (h (s i)).mpr ⟨i, hi, Subset.rfl⟩
    exact hf.closure_image_mem_nhds h
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DenseEmbedding/Variant4b815f6cfc355effc243376ce2f3cf3f5cbdd263084fc257633364f9500812c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DenseEmbedding/Variant4b815f6cfc355effc243376ce2f3cf3f5cbdd263084fc257633364f9500812c7.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f53248911aebd2f41301f950b54bf30b28721a06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
