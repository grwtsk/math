# EquicontinuousOn.isClosed_range_uniformOnFun_iff_pi

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
      "line": 399,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3bf0fc390c67bd333c3d05044d5c52b589b06e718e3af4a894d2cff2f7afd503.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68b5febb-dd81-15de-f6d2-827a273d86b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b742aff-4be1-5b8a-992d-e89bc76208fa",
  "kind": "theorem",
  "lexical_name": "EquicontinuousOn.isClosed_range_uniformOnFun_iff_pi",
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
  "slug": "equicontinuouson-isclosed-range-uniformonfun-iff-pi--77935a5651b02d40cd402765",
  "source": {
    "blob": "f145894de7f09e3804d0e70c3bd402867e616593",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 399,
    "path": "GRWTSK/Topology/GeneralTopology/Ascoli/Variant3bf0fc390c67bd333c3d05044d5c52b589b06e718e3af4a894d2cff2f7afd503.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77935a5651b02d40cd402765fbc66254ae0a0b074fcb9adf3f7994f4b0884123",
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

Occurrence: `result:2b742aff-4be1-5b8a-992d-e89bc76208fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EquicontinuousOn.isClosed_range_uniformOnFun_iff_pi
    {𝔖 : Set (Set X)} (𝔖_compact : ∀ K ∈ 𝔖, IsCompact K) (𝔖_covers : ⋃₀ 𝔖 = univ)
    (F_eqcont : ∀ K ∈ 𝔖, EquicontinuousOn F K) :
    IsClosed (range <| UniformOnFun.ofFun 𝔖 ∘ F) ↔
    IsClosed (range F) := by
  -- This follows from the previous lemmas and the characterization of the closure using filters.
  simp_rw [isClosed_iff_clusterPt, ← Filter.map_top, ← mapClusterPt_def,
    mapClusterPt_iff_ultrafilter, range_comp, (UniformOnFun.ofFun 𝔖).surjective.forall,
    ← EquicontinuousOn.tendsto_uniformOnFun_iff_pi 𝔖_compact 𝔖_covers F_eqcont,
    (UniformOnFun.ofFun 𝔖).injective.mem_set_image]

alias ⟨EquicontinuousOn.isClosed_range_pi_of_uniformOnFun, _⟩ :=
  EquicontinuousOn.isClosed_range_uniformOnFun_iff_pi

/-- A version of the **Arzela-Ascoli theorem**.

Let `X` be a topological space, `𝔖` a family of compact subsets of `X`, `α` a uniform space,
and `F : ι → (X → α)`. Assume that:
* `F`, viewed as a function `ι → (X →ᵤ[𝔖] α)`, is closed and inducing
* `F` is equicontinuous on each `K ∈ 𝔖`
* For all `x ∈ ⋃₀ 𝔖`, the range of `i ↦ F i x` is contained in some fixed compact subset.

Then `ι` is compact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ascoli/Variant3bf0fc390c67bd333c3d05044d5c52b589b06e718e3af4a894d2cff2f7afd503.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ascoli/Variant3bf0fc390c67bd333c3d05044d5c52b589b06e718e3af4a894d2cff2f7afd503.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f145894de7f09e3804d0e70c3bd402867e616593` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
