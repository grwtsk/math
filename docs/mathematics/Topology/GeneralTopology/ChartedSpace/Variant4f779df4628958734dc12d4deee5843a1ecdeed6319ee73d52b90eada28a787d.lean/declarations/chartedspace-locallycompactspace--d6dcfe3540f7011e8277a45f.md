# ChartedSpace.locallyCompactSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "809ef539879eabdf0907b06ac7bee0b3a65d22ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 244,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4f779df4628958734dc12d4deee5843a1ecdeed6319ee73d52b90eada28a787d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2cf7a7f9-407e-9db6-2879-632a4f91a251",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7365e44f-98a2-8cb9-2983-af9f5e2acb3b",
  "kind": "theorem",
  "lexical_name": "ChartedSpace.locallyCompactSpace",
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
  "slug": "chartedspace-locallycompactspace--d6dcfe3540f7011e8277a45f",
  "source": {
    "blob": "809ef539879eabdf0907b06ac7bee0b3a65d22ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 244,
    "path": "GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant4f779df4628958734dc12d4deee5843a1ecdeed6319ee73d52b90eada28a787d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6dcfe3540f7011e8277a45fe17a399f657ad52b4ca6bfb4b4dbbd1f44c5c075",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ChartedSpace/Variant4f779df4628958734dc12d4deee5843a1ecdeed6319ee73d52b90eada28a787d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7365e44f-98a2-8cb9-2983-af9f5e2acb3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ChartedSpace.locallyCompactSpace [LocallyCompactSpace H] : LocallyCompactSpace M := by
  have : ∀ x : M, (𝓝 x).HasBasis
      (fun s ↦ s ∈ 𝓝 (chartAt H x x) ∧ IsCompact s ∧ s ⊆ (chartAt H x).target)
      fun s ↦ (chartAt H x).symm '' s := fun x ↦ by
    rw [← (chartAt H x).symm_map_nhds_eq (mem_chart_source H x)]
    exact ((compact_basis_nhds (chartAt H x x)).hasBasis_self_subset
      (chart_target_mem_nhds H x)).map _
  refine .of_hasBasis this ?_
  rintro x s ⟨_, h₂, h₃⟩
  exact h₂.image_of_continuousOn ((chartAt H x).continuousOn_symm.mono h₃)

/-- If a topological space admits an atlas with locally connected charts, then the space itself is
locally connected. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ChartedSpace/Variant4f779df4628958734dc12d4deee5843a1ecdeed6319ee73d52b90eada28a787d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant4f779df4628958734dc12d4deee5843a1ecdeed6319ee73d52b90eada28a787d.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `809ef539879eabdf0907b06ac7bee0b3a65d22ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
