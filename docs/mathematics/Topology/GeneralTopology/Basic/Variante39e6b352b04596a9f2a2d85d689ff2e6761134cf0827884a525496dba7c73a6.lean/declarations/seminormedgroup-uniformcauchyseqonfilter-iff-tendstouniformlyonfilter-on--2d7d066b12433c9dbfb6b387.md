# SeminormedGroup.uniformCauchySeqOnFilter_iff_tendstoUniformlyOnFilter_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e982fe72-3df5-e35f-4ac1-83d629a1a3a3",
  "kind": "theorem",
  "lexical_name": "SeminormedGroup.uniformCauchySeqOnFilter_iff_tendstoUniformlyOnFilter_one",
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
  "slug": "seminormedgroup-uniformcauchyseqonfilter-iff-tendstouniformlyonfilter-on--2d7d066b12433c9dbfb6b387",
  "source": {
    "blob": "c700082d1a0bf4ea8779800957d94d938ec63c17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1363,
    "line": 1345,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante39e6b352b04596a9f2a2d85d689ff2e6761134cf0827884a525496dba7c73a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d7d066b12433c9dbfb6b387b4a004c69e0e5094a3e34c8dc808b62ab2836875",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante39e6b352b04596a9f2a2d85d689ff2e6761134cf0827884a525496dba7c73a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e982fe72-3df5-e35f-4ac1-83d629a1a3a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1345–1363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SeminormedGroup.uniformCauchySeqOnFilter_iff_tendstoUniformlyOnFilter_one {f : ι → κ → G}
    {l : Filter ι} {l' : Filter κ} :
    UniformCauchySeqOnFilter f l l' ↔
      TendstoUniformlyOnFilter (fun n : ι × ι => fun z => f n.fst z / f n.snd z) 1 (l ×ˢ l) l' := by
  refine' ⟨fun hf u hu => _, fun hf u hu => _⟩
  · obtain ⟨ε, hε, H⟩ := uniformity_basis_dist.mem_uniformity_iff.mp hu
    refine'
      (hf { p : G × G | dist p.fst p.snd < ε } <| dist_mem_uniformity hε).mono fun x hx =>
        H 1 (f x.fst.fst x.snd / f x.fst.snd x.snd) _
    simpa [dist_eq_norm_div, norm_div_rev] using hx
  · obtain ⟨ε, hε, H⟩ := uniformity_basis_dist.mem_uniformity_iff.mp hu
    refine'
      (hf { p : G × G | dist p.fst p.snd < ε } <| dist_mem_uniformity hε).mono fun x hx =>
        H (f x.fst.fst x.snd) (f x.fst.snd x.snd) _
    simpa [dist_eq_norm_div, norm_div_rev] using hx
#align seminormed_group.uniform_cauchy_seq_on_filter_iff_tendsto_uniformly_on_filter_one SeminormedGroup.uniformCauchySeqOnFilter_iff_tendstoUniformlyOnFilter_one
#align seminormed_add_group.uniform_cauchy_seq_on_filter_iff_tendsto_uniformly_on_filter_zero SeminormedAddGroup.uniformCauchySeqOnFilter_iff_tendstoUniformlyOnFilter_zero

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante39e6b352b04596a9f2a2d85d689ff2e6761134cf0827884a525496dba7c73a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante39e6b352b04596a9f2a2d85d689ff2e6761134cf0827884a525496dba7c73a6.lean#L1345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c700082d1a0bf4ea8779800957d94d938ec63c17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
