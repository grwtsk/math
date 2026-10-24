# TendstoUniformlyOn.lowerHemicontinuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39a92240-2a8a-cbe9-bb69-64226137eab7",
  "kind": "theorem",
  "lexical_name": "TendstoUniformlyOn.lowerHemicontinuousOn",
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
  "slug": "tendstouniformlyon-lowerhemicontinuouson--980c428bfb2919653d845f5d",
  "source": {
    "blob": "ee84c9d5f5382fab06ddb8d836d53157701446cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 556,
    "line": 526,
    "path": "GRWTSK/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:980c428bfb2919653d845f5dc43ebd78d08e5325654b3991eafffe359f73bfab",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39a92240-2a8a-cbe9-bb69-64226137eab7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 526–556.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TendstoUniformlyOn.lowerHemicontinuousOn (htendsto : TendstoUniformlyOn F f l s)
    (hF : ∀ n, LowerHemicontinuousOn (F n) s) : LowerHemicontinuousOn f s := by
  rw [lowerHemicontinuousOn_iff]
  intro x₀ hx₀s
  rw [lowerHemicontinuousWithinAt_iff]
  intro V hV ⟨y₀, hy₀f, hy₀V⟩
  -- Obtain entourages W, U ∈ 𝓤 β with U ○ U ○ U ⊆ W
  obtain ⟨W, hW, hWsub⟩ := UniformSpace.mem_nhds_iff.mp (hV.mem_nhds hy₀V)
  obtain ⟨U₁, hU₁, hU₁sym, hU₁comp⟩ := comp_symm_mem_uniformity_sets hW
  obtain ⟨U, hU, hUsym, hUcomp⟩ := comp_symm_mem_uniformity_sets hU₁
  have hU_le_U₁ : U ⊆ U₁ := fun _p hp => hUcomp ⟨_, refl_mem_uniformity hU, hp⟩
  -- Eventually, ⟨f x, F N x⟩ ∈ hausdorffEntourage U for all x ∈ s
  have hHU : hausdorffEntourage U ∈ @uniformity (Set β) (UniformSpace.hausdorff (α := β)) :=
    (mem_lift'_sets monotone_hausdorffEntourage).mpr ⟨U, hU, le_refl _⟩
  obtain ⟨N, hN⟩ := (htendsto (hausdorffEntourage U) hHU).exists
  -- In which case, ⟨y₀, z₀⟩ ∈ U for some z₀ ∈ F N x₀
  obtain ⟨z₀, hz₀FN, hz₀y₀⟩ :=
    ((mem_hausdorffEntourage U (f x₀) (F N x₀)).mp (hN x₀ hx₀s)).1 hy₀f
  -- By lower hemicontinuity, a ball around z₀ intersects all x in a neighborhood of x₀
  obtain ⟨U', ⟨hU'mem, hU'open⟩, hU'sub⟩ := uniformity_hasBasis_open.mem_iff.mp hU
  have hmeet₀ : (F N x₀ ∩ ball z₀ U').Nonempty := ⟨z₀, hz₀FN, mem_ball_self z₀ hU'mem⟩
  have hSmeet : ∀ᶠ x in 𝓝[s] x₀, (F N x ∩ ball z₀ U').Nonempty :=
    lowerHemicontinuousWithinAt_iff.mp (hF _ _ hx₀s) _ (isOpen_ball _ hU'open) hmeet₀
  filter_upwards [hSmeet, self_mem_nhdsWithin] with x ⟨w, hwFN, hwball⟩ hx_s
  obtain ⟨v, hvf, hvw⟩ := ((mem_hausdorffEntourage U (f x) (F N x)).mp (hN x hx_s)).2 hwFN
  exact ⟨v, hvf, hWsub <| hU₁comp
    ⟨w, hUcomp ⟨z₀, hz₀y₀, hU'sub hwball⟩, hU_le_U₁ (hUsym.symm _ _ hvw)⟩⟩

/-- If a net of upper hemicontinuous set-valued functions converges uniformly
(along a filter `l`) in the Hausdorff uniformity to a set-valued function `f` with
compact values, then `f` is upper hemicontinuous -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean#L526).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee84c9d5f5382fab06ddb8d836d53157701446cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
