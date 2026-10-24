# mem_tangentConeAt_of_frequently

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5433d91-ab19-7d58-f1e7-6017c24b9c08",
  "kind": "theorem",
  "lexical_name": "mem_tangentConeAt_of_frequently",
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
  "slug": "mem-tangentconeat-of-frequently--cbe191c0a5eadf8d7e394fb1",
  "source": {
    "blob": "5e67d6350787edced44b423a811321babdf6dbba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantf82409d0b5381fbc99049d3b430abeb1e82d6741266bb97eff17491461741f17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbe191c0a5eadf8d7e394fb16edd8f68694a78a9a7845c514b2ba3483208e6f1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantf82409d0b5381fbc99049d3b430abeb1e82d6741266bb97eff17491461741f17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5433d91-ab19-7d58-f1e7-6017c24b9c08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_tangentConeAt_of_frequently {α : Type*} (l : Filter α) (c : α → R) (d : α → E)
    (hd₀ : Tendsto d l (𝓝 0)) (hds : ∃ᶠ n in l, x + d n ∈ s)
    (hcd : Tendsto (fun n ↦ c n • d n) l (𝓝 y)) : y ∈ tangentConeAt R s x := by
  suffices Tendsto (fun n ↦ c n • d n) (l ⊓ 𝓟 {y | x + d y ∈ s}) (⊤ • 𝓝[(x + ·) ⁻¹' s] 0) by
    rw [frequently_iff_neBot] at hds
    rw [tangentConeAt_def]
    exact ClusterPt.mono (hcd.mono_left inf_le_left).mapClusterPt this
  rw [← map₂_smul, ← map_prod_eq_map₂]
  refine tendsto_map.comp (tendsto_top.prodMk (tendsto_nhdsWithin_iff.mpr ⟨?_, ?_⟩))
  · exact hd₀.mono_left inf_le_left
  · simp [eventually_inf_principal]

/-- A special case of `mem_tangentConeAt_of_frequently`, which avoids `Filter.Frequently`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantf82409d0b5381fbc99049d3b430abeb1e82d6741266bb97eff17491461741f17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantf82409d0b5381fbc99049d3b430abeb1e82d6741266bb97eff17491461741f17.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e67d6350787edced44b423a811321babdf6dbba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
