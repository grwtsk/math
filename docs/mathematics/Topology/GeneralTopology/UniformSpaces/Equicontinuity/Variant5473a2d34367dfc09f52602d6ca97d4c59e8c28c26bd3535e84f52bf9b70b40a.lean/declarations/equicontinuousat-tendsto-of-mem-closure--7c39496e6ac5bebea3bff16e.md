# EquicontinuousAt.tendsto_of_mem_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48fa4eba65d381f5e61ad0a9e10d755c06d02b2d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 965,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/5473a2d34367dfc09f52602d6ca97d4c59e8c28c26bd3535e84f52bf9b70b40a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:00bda54c-27fd-89b1-aeaa-a7860657860c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cb18276a-68eb-f0a1-7ed6-51d4a3ed8fd9",
  "kind": "theorem",
  "lexical_name": "EquicontinuousAt.tendsto_of_mem_closure",
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
  "slug": "equicontinuousat-tendsto-of-mem-closure--7c39496e6ac5bebea3bff16e",
  "source": {
    "blob": "48fa4eba65d381f5e61ad0a9e10d755c06d02b2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 981,
    "line": 965,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant5473a2d34367dfc09f52602d6ca97d4c59e8c28c26bd3535e84f52bf9b70b40a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c39496e6ac5bebea3bff16e68bcae80f3b0f43d205503a40db6083abf2eaa85",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant5473a2d34367dfc09f52602d6ca97d4c59e8c28c26bd3535e84f52bf9b70b40a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb18276a-68eb-f0a1-7ed6-51d4a3ed8fd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 965–981.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EquicontinuousAt.tendsto_of_mem_closure {l : Filter ι} {F : ι → X → α} {f : X → α}
    {s : Set X} {x : X} {z : α} (hF : EquicontinuousAt F x) (hf : Tendsto f (𝓝[s] x) (𝓝 z))
    (hs : ∀ y ∈ s, Tendsto (F · y) l (𝓝 (f y))) (hx : x ∈ closure s) :
    Tendsto (F · x) l (𝓝 z) := by
  rw [(nhds_basis_uniformity (𝓤 α).basis_sets).tendsto_right_iff] at hf ⊢
  intro U hU
  rcases comp_comp_symm_mem_uniformity_sets hU with ⟨V, hV, hVs, hVU⟩
  rw [mem_closure_iff_nhdsWithin_neBot] at hx
  have : ∀ᶠ y in 𝓝[s] x, y ∈ s ∧ (∀ i, (F i x, F i y) ∈ V) ∧ (f y, z) ∈ V :=
    eventually_mem_nhdsWithin.and <| ((hF V hV).filter_mono nhdsWithin_le_nhds).and (hf V hV)
  rcases this.exists with ⟨y, hys, hFy, hfy⟩
  filter_upwards [hs y hys (ball_mem_nhds _ hV)] with i hi
  exact hVU ⟨_, ⟨_, hFy i, mem_ball_symmetry.2 hi⟩, hfy⟩

/-- If `F : ι → X → α` is an equicontinuous family of functions,
`f : X → α` is a continuous function, and `l` is a filter on `ι`,
then `{x | Filter.Tendsto (F · x) l (𝓝 (f x))}` is a closed set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant5473a2d34367dfc09f52602d6ca97d4c59e8c28c26bd3535e84f52bf9b70b40a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant5473a2d34367dfc09f52602d6ca97d4c59e8c28c26bd3535e84f52bf9b70b40a.lean#L965).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48fa4eba65d381f5e61ad0a9e10d755c06d02b2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
