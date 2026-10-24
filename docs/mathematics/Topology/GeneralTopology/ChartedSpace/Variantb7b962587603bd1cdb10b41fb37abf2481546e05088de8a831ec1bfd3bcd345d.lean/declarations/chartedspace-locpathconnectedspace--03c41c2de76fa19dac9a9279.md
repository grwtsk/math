# ChartedSpace.locPathConnectedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "74c23f180d2dede9651863f616ffa757b9c3dd0b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 681,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7b962587603bd1cdb10b41fb37abf2481546e05088de8a831ec1bfd3bcd345d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb529ba9-8bc1-0119-b28a-7c125d376a72",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad6bcf93-d696-149f-bc46-a232246bb435",
  "kind": "theorem",
  "lexical_name": "ChartedSpace.locPathConnectedSpace",
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
  "slug": "chartedspace-locpathconnectedspace--03c41c2de76fa19dac9a9279",
  "source": {
    "blob": "74c23f180d2dede9651863f616ffa757b9c3dd0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 697,
    "line": 681,
    "path": "GRWTSK/Topology/GeneralTopology/ChartedSpace/Variantb7b962587603bd1cdb10b41fb37abf2481546e05088de8a831ec1bfd3bcd345d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03c41c2de76fa19dac9a92795ce9f6736c57be8456d2e2df2335c3d52196b6ac",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ChartedSpace/Variantb7b962587603bd1cdb10b41fb37abf2481546e05088de8a831ec1bfd3bcd345d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad6bcf93-d696-149f-bc46-a232246bb435`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 681–697.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ChartedSpace.locPathConnectedSpace [LocPathConnectedSpace H] : LocPathConnectedSpace M := by
  refine ⟨fun x ↦ ⟨fun s ↦ ⟨fun hs ↦ ?_, fun ⟨u, hu⟩ ↦ Filter.mem_of_superset hu.1.1 hu.2⟩⟩⟩
  let e := chartAt H x
  let t := s ∩ e.source
  have ht : t ∈ 𝓝 x := Filter.inter_mem hs (chart_source_mem_nhds _ _)
  refine ⟨e.symm '' pathComponentIn (e x) (e '' t), ⟨?_, ?_⟩, (?_ : _ ⊆ t).trans inter_subset_left⟩
  · nth_rewrite 1 [← e.left_inv (mem_chart_source _ _)]
    apply e.symm.image_mem_nhds (by simp [e])
    exact pathComponentIn_mem_nhds <| e.image_mem_nhds (mem_chart_source _ _) ht
  · refine (isPathConnected_pathComponentIn <| mem_image_of_mem e (mem_of_mem_nhds ht)).image' ?_
    refine e.continuousOn_symm.mono <| subset_trans ?_ e.map_source''
    exact (pathComponentIn_mono <| image_mono inter_subset_right).trans pathComponentIn_subset
  · exact (image_mono pathComponentIn_subset).trans
      (PartialEquiv.symm_image_image_of_subset_source _ inter_subset_right).subset

/-- If `M` is modelled on `H'` and `H'` is itself modelled on `H`, then we can consider `M` as being
modelled on `H`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ChartedSpace/Variantb7b962587603bd1cdb10b41fb37abf2481546e05088de8a831ec1bfd3bcd345d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ChartedSpace/Variantb7b962587603bd1cdb10b41fb37abf2481546e05088de8a831ec1bfd3bcd345d.lean#L681).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74c23f180d2dede9651863f616ffa757b9c3dd0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
