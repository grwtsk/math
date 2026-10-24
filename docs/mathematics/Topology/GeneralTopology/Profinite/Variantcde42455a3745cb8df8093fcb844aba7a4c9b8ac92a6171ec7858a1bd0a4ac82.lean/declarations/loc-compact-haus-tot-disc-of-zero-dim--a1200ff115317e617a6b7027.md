# loc_compact_Haus_tot_disc_of_zero_dim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e8cc51d-fa32-45be-ca6b-6b39b896b308",
  "kind": "theorem",
  "lexical_name": "loc_compact_Haus_tot_disc_of_zero_dim",
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
  "slug": "loc-compact-haus-tot-disc-of-zero-dim--a1200ff115317e617a6b7027",
  "source": {
    "blob": "9c5533255509f8c895e8776c928cecebf3620b0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 95,
    "path": "GRWTSK/Topology/GeneralTopology/Profinite/Variantcde42455a3745cb8df8093fcb844aba7a4c9b8ac92a6171ec7858a1bd0a4ac82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1200ff115317e617a6b70270ec6bea85fdfc3e495ada21e8e55e58ca2b02f58",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Profinite/Variantcde42455a3745cb8df8093fcb844aba7a4c9b8ac92a6171ec7858a1bd0a4ac82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e8cc51d-fa32-45be-ca6b-6b39b896b308`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem loc_compact_Haus_tot_disc_of_zero_dim [TotallyDisconnectedSpace H] :
    IsTopologicalBasis { s : Set H | IsClopen s } := by
  refine isTopologicalBasis_of_isOpen_of_nhds (fun u hu => hu.2) fun x U memU hU => ?_
  obtain ⟨s, comp, xs, sU⟩ := exists_compact_subset hU memU
  let u : Set s := ((↑) : s → H) ⁻¹' interior s
  have u_open_in_s : IsOpen u := isOpen_interior.preimage continuous_subtype_val
  lift x to s using interior_subset xs
  have : CompactSpace s := isCompact_iff_compactSpace.1 comp
  obtain ⟨V : Set s, VisClopen, Vx, V_sub⟩ := compact_exists_isClopen_in_isOpen u_open_in_s xs
  have VisClopen' : IsClopen (((↑) : s → H) '' V) := by
    refine ⟨comp.isClosed.isClosedEmbedding_subtypeVal.isClosed_iff_image_isClosed.1 VisClopen.1,
      ?_⟩
    let v : Set u := ((↑) : u → s) ⁻¹' V
    have : ((↑) : u → H) = ((↑) : s → H) ∘ ((↑) : u → s) := rfl
    have f0 : IsEmbedding ((↑) : u → H) := IsEmbedding.subtypeVal.comp IsEmbedding.subtypeVal
    have f1 : IsOpenEmbedding ((↑) : u → H) := by
      refine ⟨f0, ?_⟩
      · have : Set.range ((↑) : u → H) = interior s := by
          rw [this, Set.range_comp, Subtype.range_coe, Subtype.image_preimage_coe]
          apply Set.inter_eq_self_of_subset_right interior_subset
        rw [this]
        apply isOpen_interior
    have f2 : IsOpen v := VisClopen.2.preimage continuous_subtype_val
    have f3 : ((↑) : s → H) '' V = ((↑) : u → H) '' v := by
      rw [this, image_comp, Subtype.image_preimage_coe, inter_eq_self_of_subset_right V_sub]
    rw [f3]
    apply f1.isOpenMap v f2
  use (↑) '' V, VisClopen', by simp [Vx], Subset.trans (by simp) sU

/-- A locally compact Hausdorff space is totally disconnected
  if and only if it is totally separated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Profinite/Variantcde42455a3745cb8df8093fcb844aba7a4c9b8ac92a6171ec7858a1bd0a4ac82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Profinite/Variantcde42455a3745cb8df8093fcb844aba7a4c9b8ac92a6171ec7858a1bd0a4ac82.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c5533255509f8c895e8776c928cecebf3620b0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
