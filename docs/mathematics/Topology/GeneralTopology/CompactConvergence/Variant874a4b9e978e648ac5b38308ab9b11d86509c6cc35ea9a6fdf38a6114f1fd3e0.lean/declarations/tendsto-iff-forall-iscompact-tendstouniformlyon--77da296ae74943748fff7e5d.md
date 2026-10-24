# tendsto_iff_forall_isCompact_tendstoUniformlyOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5dcd7b0-22ee-a519-c11d-8b6a33fd5658",
  "kind": "theorem",
  "lexical_name": "tendsto_iff_forall_isCompact_tendstoUniformlyOn",
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
  "slug": "tendsto-iff-forall-iscompact-tendstouniformlyon--77da296ae74943748fff7e5d",
  "source": {
    "blob": "158e3b258505957369d11e6c01e7e4979aa586bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 107,
    "path": "GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant874a4b9e978e648ac5b38308ab9b11d86509c6cc35ea9a6fdf38a6114f1fd3e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77da296ae74943748fff7e5d045b64da44f05cd3e9484b33e390aa2d2cb414fd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactConvergence/Variant874a4b9e978e648ac5b38308ab9b11d86509c6cc35ea9a6fdf38a6114f1fd3e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5dcd7b0-22ee-a519-c11d-8b6a33fd5658`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_iff_forall_isCompact_tendstoUniformlyOn
    {ι : Type u₃} {p : Filter ι} {F : ι → C(α, β)} {f} :
    Tendsto F p (𝓝 f) ↔ ∀ K, IsCompact K → TendstoUniformlyOn (fun i a => F i a) f p K := by
  rw [tendsto_nhds_compactOpen]
  constructor
  · -- Let us prove that convergence in the compact-open topology
    -- implies uniform convergence on compacts.
    -- Consider a compact set `K`
    intro h K hK
    -- Since `K` is compact, it suffices to prove locally uniform convergence
    rw [← tendstoLocallyUniformlyOn_iff_tendstoUniformlyOn_of_compact hK]
    -- Now choose an entourage `U` in the codomain and a point `x ∈ K`.
    intro U hU x _
    -- Choose an open symmetric entourage `V` such that `V ○ V ⊆ U`.
    rcases comp_open_symm_mem_uniformity_sets hU with ⟨V, hV, hVo, hVsymm, hVU⟩
    -- Then choose a closed entourage `W ⊆ V`
    rcases mem_uniformity_isClosed hV with ⟨W, hW, hWc, hWU⟩
    -- Consider `s = {y ∈ K | (f x, f y) ∈ W}`
    set s := K ∩ f ⁻¹' ball (f x) W
    -- This is a neighbourhood of `x` within `K`, because `W` is an entourage.
    have hnhds : s ∈ 𝓝[K] x := inter_mem_nhdsWithin _ <| f.continuousAt _ (ball_mem_nhds _ hW)
    -- This set is compact because it is an intersection of `K`
    -- with a closed set `{y | (f x, f y) ∈ W} = f ⁻¹' UniformSpace.ball (f x) W`
    have hcomp : IsCompact s := hK.inter_right <| (isClosed_ball _ hWc).preimage f.continuous
    -- `f` maps `s` to the open set `ball (f x) V = {z | (f x, z) ∈ V}`
    have hmaps : MapsTo f s (ball (f x) V) := fun x hx ↦ hWU hx.2
    use s, hnhds
    -- Continuous maps `F i` in a neighbourhood of `f` map `s` to `ball (f x) V` as well.
    refine (h s hcomp _ (isOpen_ball _ hVo) hmaps).mono fun g hg y hy ↦ ?_
    -- Then for `y ∈ s` we have `(f y, f x) ∈ V` and `(f x, F i y) ∈ V`, thus `(f y, F i y) ∈ U`
    exact hVU ⟨f x, hVsymm.mk_mem_comm.2 <| hmaps hy, hg hy⟩
  · -- Now we prove that uniform convergence on compacts
    -- implies convergence in the compact-open topology
    -- Consider a compact set `K`, an open set `U`, and a continuous map `f` that maps `K` to `U`
    intro h K hK U hU hf
    -- Due to Lebesgue number lemma, there exists an entourage `V`
    -- such that `U` includes the `V`-thickening of `f '' K`.
    rcases lebesgue_number_of_compact_open (hK.image (map_continuous f)) hU hf.image_subset
        with ⟨V, hV, -, hVf⟩
    -- Then any continuous map that is uniformly `V`-close to `f` on `K`
    -- maps `K` to `U` as well
    filter_upwards [h K hK V hV] with g hg x hx using hVf _ (mem_image_of_mem f hx) (hg x hx)

@[deprecated (since := "2024-11-19")] alias
tendsto_iff_forall_compact_tendstoUniformlyOn := tendsto_iff_forall_isCompact_tendstoUniformlyOn

/-- Interpret a bundled continuous map as an element of `α →ᵤ[{K | IsCompact K}] β`.

We use this map to induce the `UniformSpace` structure on `C(α, β)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactConvergence/Variant874a4b9e978e648ac5b38308ab9b11d86509c6cc35ea9a6fdf38a6114f1fd3e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant874a4b9e978e648ac5b38308ab9b11d86509c6cc35ea9a6fdf38a6114f1fd3e0.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `158e3b258505957369d11e6c01e7e4979aa586bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
