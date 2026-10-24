# Sum.locallyPathConnectedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b82efcd798c3c79620029f08e5064ce4cce531c0673f233408a1994ec799d50",
  "kind": "instance",
  "lexical_name": "Sum.locallyPathConnectedSpace",
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
  "slug": "sum-locallypathconnectedspace--9fe82d3a5ac5569bc616c97a",
  "source": {
    "blob": "529d2b347e5e986184d9f08eb1ee17f4994a220e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 273,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9fe82d3a5ac5569bc616c97ac33762f554a5bf3965fc3412492c81da34b30a90",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b82efcd798c3c79620029f08e5064ce4cce531c0673f233408a1994ec799d50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Sum.locallyPathConnectedSpace [LocallyPathConnectedSpace Y] :
    LocallyPathConnectedSpace (X ⊕ Y) := by
  rw [locallyPathConnectedSpace_iff_pathComponentIn_mem_nhds]; intro x u hu hxu; rw [mem_nhds_iff]
  obtain x | y := x
  · refine ⟨Sum.inl '' pathComponentIn (Sum.inl ⁻¹' u) x, ?_, ?_, ?_⟩
    · apply IsPathConnected.subset_pathComponentIn
      · exact (isPathConnected_pathComponentIn (by exact hxu)).image continuous_inl
      · exact ⟨x, mem_pathComponentIn_self hxu, rfl⟩
      · exact (image_mono pathComponentIn_subset).trans (u.image_preimage_subset _)
    · exact isOpenMap_inl _ <| (hu.preimage continuous_inl).pathComponentIn _
    · exact ⟨x, mem_pathComponentIn_self hxu, rfl⟩
  · refine ⟨Sum.inr '' pathComponentIn (Sum.inr ⁻¹' u) y, ?_, ?_, ?_⟩
    · apply IsPathConnected.subset_pathComponentIn
      · exact (isPathConnected_pathComponentIn (by exact hxu)).image continuous_inr
      · exact ⟨y, mem_pathComponentIn_self hxu, rfl⟩
      · exact (image_mono pathComponentIn_subset).trans (u.image_preimage_subset _)
    · exact isOpenMap_inr _ <| (hu.preimage continuous_inr).pathComponentIn _
    · exact ⟨y, mem_pathComponentIn_self hxu, rfl⟩

@[deprecated (since := "2026-06-21")]
alias Sum.locPathConnectedSpace := Sum.locallyPathConnectedSpace

/-- Disjoint unions of locally path-connected spaces are locally path-connected. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyPathConnected/Variantdd55e708bf89e40f8eb6999505e40fd7aeee3df1ca05de5a4f12e6c125015dee.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `529d2b347e5e986184d9f08eb1ee17f4994a220e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
