# TopIsDiscrete'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "36cb59bd12e925e0ecb775566bb819dc2f52ca77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 280,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5806279c-51d0-1e54-462b-0dc303c838b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9591bfd7-120e-65c5-dfba-6853c9cdb5df",
  "kind": "theorem",
  "lexical_name": "TopIsDiscrete'",
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
  "slug": "topisdiscrete--7a52c9c87cefa29220c0efb3",
  "source": {
    "blob": "36cb59bd12e925e0ecb775566bb819dc2f52ca77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 280,
    "path": "GRWTSK/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a52c9c87cefa29220c0efb33e3232872bbd572e57b062c584c0f13140f1d36a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9591bfd7-120e-65c5-dfba-6853c9cdb5df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TopIsDiscrete' : DiscreteTopology ℕ := by
  rw [discreteTopology_iff_nhds]
  intro n
  rw [nhds_eq_comap_uniformity']
  apply Filter.ext
  intro S
  simp only [Filter.mem_comap, Filter.mem_pure]
  have := @Filter.HasBasis.mem_uniformity_iff _ _ _ _ _ HasBasis_counterUniformity
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · simp_rw [this] at h
    obtain ⟨T, ⟨⟨i, ⟨-, h1⟩⟩, h2⟩⟩ := h
    apply h2 (h1 _ _ _)
    rw [mem_fundamentalEntourage]
    aesop
  · refine ⟨fundamentalEntourage (n + 1), ?_, ?_⟩
    · show fundamentalEntourage (n + 1) ∈ counterCoreUniformity.uniformity
      exact @Filter.HasBasis.mem_of_mem (ℕ × ℕ) ℕ counterCoreUniformity.uniformity (fun _ ↦ True)
        fundamentalEntourage (n + 1) HasBasis_counterUniformity trivial
    · simp only [preimage_subset_iff, mem_fundamentalEntourage, add_le_iff_nonpos_right,
        nonpos_iff_eq_zero, one_ne_zero, and_false, false_or]
      exact fun _ a ↦ mem_of_eq_of_mem a h

/- With respect to the above uniformity, the `atTop` filter is Cauchy; in particular, it is not of
the form `𝓟 {x}` for any `x`, although the topology is discrete. This implies in passing that this
uniformity is not discrete. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/DiscreteTopologyNonDiscreteUniformity/Variant4e571328b1517be5cd11f8cfdb76979ee4af011515ab67f89bc75cc77d57185e.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36cb59bd12e925e0ecb775566bb819dc2f52ca77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
