# uniformContinuous_uniformly_extend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87136fe0-df5b-8c73-ee1b-bc8169d8ed65",
  "kind": "theorem",
  "lexical_name": "uniformContinuous_uniformly_extend",
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
  "slug": "uniformcontinuous-uniformly-extend--3c66015db60116e0b13a9ba3",
  "source": {
    "blob": "525c5aab94ef608eafc2c73d11eb2e92229a3d71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 484,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variantb891e2e1befc2b392d8e9f234550fe39841f8cc01dc5372c8e8e9d56d36298c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c66015db60116e0b13a9ba329019feaeecaa6d932a365348f9ef309f57ea076",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variantb891e2e1befc2b392d8e9f234550fe39841f8cc01dc5372c8e8e9d56d36298c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87136fe0-df5b-8c73-ee1b-bc8169d8ed65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformContinuous_uniformly_extend [CompleteSpace γ] : UniformContinuous ψ := fun d hd =>
  let ⟨s, hs, hs_comp⟩ := comp3_mem_uniformity hd
  have h_pnt : ∀ {a m}, m ∈ 𝓝 a → ∃ c ∈ f '' (e ⁻¹' m), (c, ψ a) ∈ s ∧ (ψ a, c) ∈ s :=
    fun {a m} hm =>
    have nb : NeBot (map f (comap e (𝓝 a))) :=
      ((h_e.isDenseInducing h_dense).comap_nhds_neBot _).map _
    have :
      f '' (e ⁻¹' m) ∩ ({ c | (c, ψ a) ∈ s } ∩ { c | (ψ a, c) ∈ s }) ∈ map f (comap e (𝓝 a)) :=
      inter_mem (image_mem_map <| preimage_mem_comap <| hm)
        (uniformly_extend_spec h_e h_dense h_f _
          (inter_mem (mem_nhds_right _ hs) (mem_nhds_left _ hs)))
    nb.nonempty_of_mem this
  have : (Prod.map f f) ⁻¹' s ∈ 𝓤 β := h_f hs
  have : (Prod.map f f) ⁻¹' s ∈ comap (Prod.map e e) (𝓤 α) := by
    rwa [← h_e.comap_uniformity] at this
  let ⟨t, ht, ts⟩ := this
  show (Prod.map ψ ψ) ⁻¹' d ∈ 𝓤 α from
    mem_of_superset (interior_mem_uniformity ht) fun ⟨x₁, x₂⟩ hx_t => by
      have : interior t ∈ 𝓝 (x₁, x₂) := isOpen_interior.mem_nhds hx_t
      let ⟨m₁, hm₁, m₂, hm₂, (hm : m₁ ×ˢ m₂ ⊆ interior t)⟩ := mem_nhds_prod_iff.mp this
      obtain ⟨_, ⟨a, ha₁, rfl⟩, _, ha₂⟩ := h_pnt hm₁
      obtain ⟨_, ⟨b, hb₁, rfl⟩, hb₂, _⟩ := h_pnt hm₂
      have : Prod.map f f (a, b) ∈ s :=
        ts <| mem_preimage.2 <| interior_subset (@hm (e a, e b) ⟨ha₁, hb₁⟩)
      exact hs_comp ⟨f a, ha₂, ⟨f b, this, hb₂⟩⟩

variable [T0Space γ]

include h_f in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variantb891e2e1befc2b392d8e9f234550fe39841f8cc01dc5372c8e8e9d56d36298c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variantb891e2e1befc2b392d8e9f234550fe39841f8cc01dc5372c8e8e9d56d36298c7.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `525c5aab94ef608eafc2c73d11eb2e92229a3d71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
