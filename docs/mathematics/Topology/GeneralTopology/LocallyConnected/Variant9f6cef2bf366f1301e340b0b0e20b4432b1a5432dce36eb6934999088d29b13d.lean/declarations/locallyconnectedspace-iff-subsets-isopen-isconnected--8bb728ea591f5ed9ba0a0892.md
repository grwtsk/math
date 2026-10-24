# locallyConnectedSpace_iff_subsets_isOpen_isConnected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:942d2f5a-c149-7f79-6f04-a9be76c0746b",
  "kind": "theorem",
  "lexical_name": "locallyConnectedSpace_iff_subsets_isOpen_isConnected",
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
  "slug": "locallyconnectedspace-iff-subsets-isopen-isconnected--8bb728ea591f5ed9ba0a0892",
  "source": {
    "blob": "07b954b72a3d4803de34da77d27d87ac5a74eb76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 50,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyConnected/Variant9f6cef2bf366f1301e340b0b0e20b4432b1a5432dce36eb6934999088d29b13d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bb728ea591f5ed9ba0a0892f7c647542caa473e2a68cd5bc907ddc08dd12346",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyConnected/Variant9f6cef2bf366f1301e340b0b0e20b4432b1a5432dce36eb6934999088d29b13d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:942d2f5a-c149-7f79-6f04-a9be76c0746b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem locallyConnectedSpace_iff_subsets_isOpen_isConnected :
    LocallyConnectedSpace α ↔
      ∀ x, ∀ U ∈ 𝓝 x, ∃ V : Set α, V ⊆ U ∧ IsOpen V ∧ x ∈ V ∧ IsConnected V := by
  simp_rw [locallyConnectedSpace_iff_hasBasis_isOpen_isConnected]
  refine forall_congr' fun _ => ?_
  constructor
  · intro h U hU
    rcases h.mem_iff.mp hU with ⟨V, hV, hVU⟩
    exact ⟨V, hVU, hV⟩
  · exact fun h => ⟨fun U => ⟨fun hU =>
      let ⟨V, hVU, hV⟩ := h U hU
      ⟨V, hV, hVU⟩, fun ⟨V, ⟨hV, hxV, _⟩, hVU⟩ => mem_nhds_iff.mpr ⟨V, hVU, hV, hxV⟩⟩⟩

@[deprecated (since := "2024-11-18")] alias locallyConnectedSpace_iff_open_connected_subsets :=
  locallyConnectedSpace_iff_subsets_isOpen_isConnected

/-- A space with discrete topology is a locally connected space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyConnected/Variant9f6cef2bf366f1301e340b0b0e20b4432b1a5432dce36eb6934999088d29b13d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyConnected/Variant9f6cef2bf366f1301e340b0b0e20b4432b1a5432dce36eb6934999088d29b13d.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07b954b72a3d4803de34da77d27d87ac5a74eb76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
