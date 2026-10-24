# Filter.HasBasis.hasBasis_of_denseInducing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8379ad59570f5caa5b4910890bf7b10599da31f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 367,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c38b9cf-b4df-96c0-56e8-e20b8d8d4dc8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ae16c20-9466-10d0-9aa9-a8f2f59cb1a2",
  "kind": "theorem",
  "lexical_name": "Filter.HasBasis.hasBasis_of_denseInducing",
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
  "slug": "filter-hasbasis-hasbasis-of-denseinducing--b6adb6f9eac9ba62592c363c",
  "source": {
    "blob": "8379ad59570f5caa5b4910890bf7b10599da31f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 367,
    "path": "GRWTSK/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6adb6f9eac9ba62592c363c00b27a5a5b699fb1a57e77f6473b72232e9e1fe2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ae16c20-9466-10d0-9aa9-a8f2f59cb1a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.HasBasis.hasBasis_of_denseInducing [TopologicalSpace α] [TopologicalSpace β]
    [T3Space β] {ι : Type*} {s : ι → Set α} {p : ι → Prop} {x : α} (h : (𝓝 x).HasBasis p s)
    {f : α → β} (hf : DenseInducing f) : (𝓝 (f x)).HasBasis p fun i => closure <| f '' s i := by
  rw [Filter.hasBasis_iff] at h ⊢
  intro T
  refine' ⟨fun hT => _, fun hT => _⟩
  · obtain ⟨T', hT₁, hT₂, hT₃⟩ := exists_mem_nhds_isClosed_subset hT
    have hT₄ : f ⁻¹' T' ∈ 𝓝 x := by
      rw [hf.toInducing.nhds_eq_comap x]
      exact ⟨T', hT₁, Subset.rfl⟩
    obtain ⟨i, hi, hi'⟩ := (h _).mp hT₄
    exact
      ⟨i, hi,
        (closure_mono (image_subset f hi')).trans
          (Subset.trans (closure_minimal (image_preimage_subset _ _) hT₂) hT₃)⟩
  · obtain ⟨i, hi, hi'⟩ := hT
    suffices closure (f '' s i) ∈ 𝓝 (f x) by filter_upwards [this]using hi'
    replace h := (h (s i)).mpr ⟨i, hi, Subset.rfl⟩
    exact hf.closure_image_mem_nhds h
#align filter.has_basis.has_basis_of_dense_inducing Filter.HasBasis.hasBasis_of_denseInducing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8379ad59570f5caa5b4910890bf7b10599da31f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
