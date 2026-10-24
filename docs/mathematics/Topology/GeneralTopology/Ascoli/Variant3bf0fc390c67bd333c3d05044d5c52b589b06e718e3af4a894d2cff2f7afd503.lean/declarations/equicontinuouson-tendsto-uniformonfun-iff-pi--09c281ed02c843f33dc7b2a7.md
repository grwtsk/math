# EquicontinuousOn.tendsto_uniformOnFun_iff_pi'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f145894de7f09e3804d0e70c3bd402867e616593",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 334,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3bf0fc390c67bd333c3d05044d5c52b589b06e718e3af4a894d2cff2f7afd503.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ce7c26e-e877-58fb-af6a-4ee16b331fc0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28c72e01-8067-c8a1-4ec8-d9838d25397a",
  "kind": "theorem",
  "lexical_name": "EquicontinuousOn.tendsto_uniformOnFun_iff_pi'",
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
  "slug": "equicontinuouson-tendsto-uniformonfun-iff-pi--09c281ed02c843f33dc7b2a7",
  "source": {
    "blob": "f145894de7f09e3804d0e70c3bd402867e616593",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 334,
    "path": "GRWTSK/Topology/GeneralTopology/Ascoli/Variant3bf0fc390c67bd333c3d05044d5c52b589b06e718e3af4a894d2cff2f7afd503.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09c281ed02c843f33dc7b2a721e027e768cf5abc36028a05df58a2040048b225",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ascoli/Variant3bf0fc390c67bd333c3d05044d5c52b589b06e718e3af4a894d2cff2f7afd503.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28c72e01-8067-c8a1-4ec8-d9838d25397a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EquicontinuousOn.tendsto_uniformOnFun_iff_pi'
    {𝔖 : Set (Set X)} (𝔖_compact : ∀ K ∈ 𝔖, IsCompact K)
    (F_eqcont : ∀ K ∈ 𝔖, EquicontinuousOn F K) (ℱ : Filter ι) (f : X → α) :
    Tendsto (UniformOnFun.ofFun 𝔖 ∘ F) ℱ (𝓝 <| UniformOnFun.ofFun 𝔖 f) ↔
    Tendsto ((⋃₀ 𝔖).domRestrict ∘ F) ℱ (𝓝 <| (⋃₀ 𝔖).domRestrict f) := by
  -- Recall that the uniform structure on `X →ᵤ[𝔖] α` is the one induced by all the maps
  -- `K.domRestrict : (X →ᵤ[𝔖] α) → (K →ᵤ α)` for `K ∈ 𝔖`.
  -- Similarly, the uniform structure on `X → α` induced by the map
  -- `(⋃₀ 𝔖).domRestrict : (X → α) → ((⋃₀ 𝔖) → α)` is equal to the one induced by
  -- all maps `K.domRestrict : (X → α) → (K → α)` for `K ∈ 𝔖`
  -- Thus, we just have to compare the two sides of our goal when restricted to some
  -- `K ∈ 𝔖`, where we can apply `Equicontinuous.tendsto_uniformFun_iff_pi`.
  rw [← Filter.tendsto_comap_iff (g := (⋃₀ 𝔖).domRestrict), ← nhds_induced]
  simp_rw +instances [UniformOnFun.topologicalSpace_eq,
    Pi.induced_domRestrict_sUnion 𝔖 (A := fun _ ↦ α), _root_.nhds_iInf, nhds_induced, tendsto_iInf,
    tendsto_comap_iff]
  congrm ∀ K (hK : K ∈ 𝔖), ?_
  have : CompactSpace K := isCompact_iff_compactSpace.mp (𝔖_compact K hK)
  rw [← (equicontinuous_restrict_iff _ |>.mpr <| F_eqcont K hK).tendsto_uniformFun_iff_pi]
  rfl

/-- Let `X` be a topological space, `𝔖` a covering of `X` by compact subsets,
`α` a uniform space, `F : ι → (X → α)` a family equicontinuous on each `K ∈ 𝔖`, and `ℱ` a filter
on `ι`. Then, `F` tends to `f : X → α` along `ℱ` *uniformly on each `K ∈ 𝔖`* iff it tends to `f`
*pointwise* along `ℱ`.

This is a specialization of `EquicontinuousOn.tendsto_uniformOnFun_iff_pi'` to the case
where `𝔖` covers `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ascoli/Variant3bf0fc390c67bd333c3d05044d5c52b589b06e718e3af4a894d2cff2f7afd503.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ascoli/Variant3bf0fc390c67bd333c3d05044d5c52b589b06e718e3af4a894d2cff2f7afd503.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f145894de7f09e3804d0e70c3bd402867e616593` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
