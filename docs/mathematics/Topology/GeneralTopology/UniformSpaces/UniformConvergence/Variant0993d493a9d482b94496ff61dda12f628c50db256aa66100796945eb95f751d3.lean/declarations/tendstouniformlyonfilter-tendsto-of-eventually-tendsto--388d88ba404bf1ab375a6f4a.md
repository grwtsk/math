# TendstoUniformlyOnFilter.tendsto_of_eventually_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f98f56c79a806af72290ec5f7605a92f191e5ad3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 540,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/0993d493a9d482b94496ff61dda12f628c50db256aa66100796945eb95f751d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8fc3600-9c0c-c22a-3240-232d0396094e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:babdb48b-7733-210f-cb9f-32a8319628e5",
  "kind": "theorem",
  "lexical_name": "TendstoUniformlyOnFilter.tendsto_of_eventually_tendsto",
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
  "slug": "tendstouniformlyonfilter-tendsto-of-eventually-tendsto--388d88ba404bf1ab375a6f4a",
  "source": {
    "blob": "f98f56c79a806af72290ec5f7605a92f191e5ad3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 553,
    "line": 540,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant0993d493a9d482b94496ff61dda12f628c50db256aa66100796945eb95f751d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:388d88ba404bf1ab375a6f4a8997933d8c6a9d330223863510844b37cea4ad86",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant0993d493a9d482b94496ff61dda12f628c50db256aa66100796945eb95f751d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:babdb48b-7733-210f-cb9f-32a8319628e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 540–553.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TendstoUniformlyOnFilter.tendsto_of_eventually_tendsto
    (h1 : TendstoUniformlyOnFilter F f p p') (h2 : ∀ᶠ i in p, Tendsto (F i) p' (𝓝 (L i)))
    (h3 : Tendsto L p (𝓝 ℓ)) : Tendsto f p' (𝓝 ℓ) := by
  rw [tendsto_nhds_left]
  intro s hs
  rw [mem_map, Set.preimage, ← eventually_iff]
  obtain ⟨t, ht, hts⟩ := comp3_mem_uniformity hs
  have p1 : ∀ᶠ i in p, (L i, ℓ) ∈ t := tendsto_nhds_left.mp h3 ht
  have p2 : ∀ᶠ i in p, ∀ᶠ x in p', (F i x, L i) ∈ t := by
    filter_upwards [h2] with i h2 using tendsto_nhds_left.mp h2 ht
  have p3 : ∀ᶠ i in p, ∀ᶠ x in p', (f x, F i x) ∈ t := (h1 t ht).curry
  obtain ⟨i, p4, p5, p6⟩ := (p1.and (p2.and p3)).exists
  filter_upwards [p5, p6] with x p5 p6 using hts ⟨F i x, p6, L i, p5, p4⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant0993d493a9d482b94496ff61dda12f628c50db256aa66100796945eb95f751d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant0993d493a9d482b94496ff61dda12f628c50db256aa66100796945eb95f751d3.lean#L540).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f98f56c79a806af72290ec5f7605a92f191e5ad3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
