# Sum.isConnected_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f35ac061-26d1-f7b5-7c79-7b8163fe2446",
  "kind": "theorem",
  "lexical_name": "Sum.isConnected_iff",
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
  "slug": "sum-isconnected-iff--79bb0e4a9c399e425fc90125",
  "source": {
    "blob": "0acb126ddce701c465d18d0c453d10d1b335b311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 73,
    "path": "GRWTSK/Topology/GeneralTopology/Clopen/Varianteb475d463d47795bd0011975395ecd01d734809db15fc5b35662e7bc36012db0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79bb0e4a9c399e425fc901254d1df760f12f450754725de0c7f33e87df723ad5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Clopen/Varianteb475d463d47795bd0011975395ecd01d734809db15fc5b35662e7bc36012db0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f35ac061-26d1-f7b5-7c79-7b8163fe2446`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sum.isConnected_iff [TopologicalSpace β] {s : Set (α ⊕ β)} :
    IsConnected s ↔
      (∃ t, IsConnected t ∧ s = Sum.inl '' t) ∨ ∃ t, IsConnected t ∧ s = Sum.inr '' t := by
  refine ⟨fun hs => ?_, ?_⟩
  · obtain ⟨x | x, hx⟩ := hs.nonempty
    · have h : s ⊆ range Sum.inl :=
        hs.isPreconnected.subset_isClopen isClopen_range_inl ⟨.inl x, hx, x, rfl⟩
      refine Or.inl ⟨Sum.inl ⁻¹' s, ?_, ?_⟩
      · exact hs.preimage_of_isOpenMap Sum.inl_injective isOpenMap_inl h
      · exact (image_preimage_eq_of_subset h).symm
    · have h : s ⊆ range Sum.inr :=
        hs.isPreconnected.subset_isClopen isClopen_range_inr ⟨.inr x, hx, x, rfl⟩
      refine Or.inr ⟨Sum.inr ⁻¹' s, ?_, ?_⟩
      · exact hs.preimage_of_isOpenMap Sum.inr_injective isOpenMap_inr h
      · exact (image_preimage_eq_of_subset h).symm
  · rintro (⟨t, ht, rfl⟩ | ⟨t, ht, rfl⟩)
    · exact ht.image _ continuous_inl.continuousOn
    · exact ht.image _ continuous_inr.continuousOn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Clopen/Varianteb475d463d47795bd0011975395ecd01d734809db15fc5b35662e7bc36012db0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Clopen/Varianteb475d463d47795bd0011975395ecd01d734809db15fc5b35662e7bc36012db0.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0acb126ddce701c465d18d0c453d10d1b335b311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
