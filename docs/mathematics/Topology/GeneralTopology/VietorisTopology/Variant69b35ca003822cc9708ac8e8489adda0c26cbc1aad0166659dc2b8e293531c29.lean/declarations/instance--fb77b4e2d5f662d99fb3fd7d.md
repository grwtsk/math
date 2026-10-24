# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c22b7dad59805027fdd036b88bce89bfb4e20d6f507fa89765d35d89ed3cf2f",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--fb77b4e2d5f662d99fb3fd7d",
  "source": {
    "blob": "524bba0218c9cea79b453a081dfae042d893f368",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 657,
    "line": 634,
    "path": "GRWTSK/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb77b4e2d5f662d99fb3fd7de5aca16fc1b832aac45c4bbc98e491d55e128b19",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c22b7dad59805027fdd036b88bce89bfb4e20d6f507fa89765d35d89ed3cf2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 634–657.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [RegularSpace α] : RegularSpace (Compacts α) := by
  simp_rw [regularSpace_generateFrom induced_generateFrom_eq, image_union, image_image, powerset,
    preimage_ofPred_eq, Filter.disjoint_iff]
  rintro _ (⟨U, hU, rfl⟩ | ⟨U, hU, rfl⟩) K hK
  · obtain ⟨V, W, hV, hW, hKV, hUW, hVW⟩ :=
      SeparatedNhds.of_isCompact_isClosed K.isCompact hU.isClosed_compl
        (disjoint_compl_right_iff_subset.mpr hK)
    refine ⟨{K | (↑K ∩ W).Nonempty}, ?_, {K | ↑K ⊆ V},
      (isOpen_subsets_of_isOpen hV).mem_nhds_iff.mpr hKV, by grind [Set.Nonempty]⟩
    simp_rw [(isOpen_inter_nonempty_of_isOpen hW).mem_nhdsSet, compl_ofPred,
      ← inter_compl_nonempty_iff]
    grw [hUW]
  · obtain ⟨x, hx₁, hx₂⟩ := hK
    obtain ⟨V, W, hV, hW, hxV, hUW, hVW⟩ :=
      SeparatedNhds.of_isCompact_isClosed (isCompact_singleton (x := x)) hU.isClosed_compl
        (by simpa)
    refine ⟨{K | ↑K ⊆ W}, ?_, {K | (↑K ∩ V).Nonempty}, ?_, by grind [Set.Nonempty]⟩
    · simp_rw [(isOpen_subsets_of_isOpen hW).mem_nhdsSet, compl_ofPred, not_nonempty_iff_eq_empty,
        ← disjoint_iff_inter_eq_empty, ← subset_compl_iff_disjoint_right]
      gcongr
    · rw [(isOpen_inter_nonempty_of_isOpen hV).mem_nhds_iff]
      exact ⟨x, hx₁, hxV <| Set.mem_singleton x⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean#L634).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `524bba0218c9cea79b453a081dfae042d893f368` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
