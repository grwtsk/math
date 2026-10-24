# TotallyBounded.isVonNBounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a06b90e9-5232-7eaf-8192-3dba8aba9061",
  "kind": "theorem",
  "lexical_name": "TotallyBounded.isVonNBounded",
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
  "slug": "totallybounded-isvonnbounded--f0e96e3e5a4bbf95067a24a5",
  "source": {
    "blob": "40fc4b6693f7a9f0253bd04c13407b8c9c32e634",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 380,
    "path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0e96e3e5a4bbf95067a24a5adfba45b86465c7aba8e97b6b0e372386774993e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a06b90e9-5232-7eaf-8192-3dba8aba9061`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TotallyBounded.isVonNBounded {s : Set E} (hs : TotallyBounded s) :
    Bornology.IsVonNBounded 𝕜 s := by
  if h : ∃ x : 𝕜, 1 < ‖x‖ then
    letI : NontriviallyNormedField 𝕜 := ⟨h⟩
    rw [totallyBounded_iff_subset_finite_iUnion_nhds_zero] at hs
    intro U hU
    have h : Filter.Tendsto (fun x : E × E => x.fst + x.snd) (𝓝 0) (𝓝 0) :=
      continuous_add.tendsto' _ _ (zero_add _)
    have h' := (nhds_basis_balanced 𝕜 E).prod (nhds_basis_balanced 𝕜 E)
    simp_rw [← nhds_prod_eq, id] at h'
    rcases h.basis_left h' U hU with ⟨x, hx, h''⟩
    rcases hs x.snd hx.2.1 with ⟨t, ht, hs⟩
    refine Absorbs.mono_right ?_ hs
    rw [ht.absorbs_biUnion]
    have hx_fstsnd : x.fst + x.snd ⊆ U := add_subset_iff.mpr fun z1 hz1 z2 hz2 ↦
      h'' <| mk_mem_prod hz1 hz2
    refine fun y _ => Absorbs.mono_left ?_ hx_fstsnd
    -- TODO: with dot notation, Lean timeouts on the next line. Why?
    exact Absorbent.vadd_absorbs (absorbent_nhds_zero hx.1.1) hx.2.2.absorbs_self
  else
    haveI : BoundedSpace 𝕜 := ⟨Metric.isBounded_iff.2 ⟨1, by simp_all [dist_eq_norm]⟩⟩
    exact Bornology.IsVonNBounded.of_boundedSpace

end IsUniformAddGroup

variable (𝕜) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bounded/Variant33f8b8d67b7d7519a0e0be79982ecfeb28e6bfef04e87434e02a3735d719c275.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40fc4b6693f7a9f0253bd04c13407b8c9c32e634` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
