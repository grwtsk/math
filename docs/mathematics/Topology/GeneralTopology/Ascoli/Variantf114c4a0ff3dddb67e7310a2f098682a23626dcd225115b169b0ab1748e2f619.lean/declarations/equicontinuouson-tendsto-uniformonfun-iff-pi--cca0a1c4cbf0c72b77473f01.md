# EquicontinuousOn.tendsto_uniformOnFun_iff_pi'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bc10911-820f-9a2a-a8a8-063bd2f75a35",
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
  "slug": "equicontinuouson-tendsto-uniformonfun-iff-pi--cca0a1c4cbf0c72b77473f01",
  "source": {
    "blob": "3d4ac426343fe4ca59e27c59cb5a9cb2df6c83c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 342,
    "path": "GRWTSK/Topology/GeneralTopology/Ascoli/Variantf114c4a0ff3dddb67e7310a2f098682a23626dcd225115b169b0ab1748e2f619.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cca0a1c4cbf0c72b77473f019c96210314c99be033124d8d0b47bb9e1444aeb6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ascoli/Variantf114c4a0ff3dddb67e7310a2f098682a23626dcd225115b169b0ab1748e2f619.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bc10911-820f-9a2a-a8a8-063bd2f75a35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–369.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ascoli/Variantf114c4a0ff3dddb67e7310a2f098682a23626dcd225115b169b0ab1748e2f619.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ascoli/Variantf114c4a0ff3dddb67e7310a2f098682a23626dcd225115b169b0ab1748e2f619.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d4ac426343fe4ca59e27c59cb5a9cb2df6c83c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
