# EquicontinuousOn.tendsto_uniformOnFun_iff_pi

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
      "line": 362,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3bf0fc390c67bd333c3d05044d5c52b589b06e718e3af4a894d2cff2f7afd503.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03abba91-22bc-2801-114a-7c17faac91a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec2c5ea3-1ffa-9866-40fb-98d2538c15bd",
  "kind": "theorem",
  "lexical_name": "EquicontinuousOn.tendsto_uniformOnFun_iff_pi",
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
  "slug": "equicontinuouson-tendsto-uniformonfun-iff-pi--b7729ebd91a290731dd78a02",
  "source": {
    "blob": "f145894de7f09e3804d0e70c3bd402867e616593",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 362,
    "path": "GRWTSK/Topology/GeneralTopology/Ascoli/Variant3bf0fc390c67bd333c3d05044d5c52b589b06e718e3af4a894d2cff2f7afd503.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7729ebd91a290731dd78a024ed707521344f20bb5ceb9ea3c9fb3b514495287",
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

Occurrence: `result:ec2c5ea3-1ffa-9866-40fb-98d2538c15bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EquicontinuousOn.tendsto_uniformOnFun_iff_pi
    {𝔖 : Set (Set X)} (𝔖_compact : ∀ K ∈ 𝔖, IsCompact K) (𝔖_covers : ⋃₀ 𝔖 = univ)
    (F_eqcont : ∀ K ∈ 𝔖, EquicontinuousOn F K) (ℱ : Filter ι) (f : X → α) :
    Tendsto (UniformOnFun.ofFun 𝔖 ∘ F) ℱ (𝓝 <| UniformOnFun.ofFun 𝔖 f) ↔
    Tendsto F ℱ (𝓝 f) := by
  rw [eq_univ_iff_forall] at 𝔖_covers
  let φ : ((⋃₀ 𝔖) → α) ≃ₜ (X → α) := Homeomorph.piCongrLeft (Y := fun _ ↦ α)
    (Equiv.subtypeUnivEquiv 𝔖_covers)
  rw [EquicontinuousOn.tendsto_uniformOnFun_iff_pi' 𝔖_compact F_eqcont,
      show domRestrict (⋃₀ 𝔖) ∘ F = φ.symm ∘ F by rfl,
      show domRestrict (⋃₀ 𝔖) f = φ.symm f by rfl,
      φ.symm.isInducing.tendsto_nhds_iff]

/-- Let `X` be a topological space, `𝔖` a family of compact subsets of `X` and
`α` a uniform space. An equicontinuous subset of `X → α` is closed in the topology of uniform
convergence on all `K ∈ 𝔖` iff it is closed in the topology of pointwise convergence on `⋃₀ 𝔖`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ascoli/Variant3bf0fc390c67bd333c3d05044d5c52b589b06e718e3af4a894d2cff2f7afd503.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ascoli/Variant3bf0fc390c67bd333c3d05044d5c52b589b06e718e3af4a894d2cff2f7afd503.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f145894de7f09e3804d0e70c3bd402867e616593` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
