# isCountablyCompact_iff_infinite_subset_has_accPt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f4cdc13a20ff46bf5d1b40f165842b5c73b398d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 327,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2299c12a-a66d-9dab-928d-382856bceca7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:898e7cf6-1f93-184a-169a-cbe9ac28aba8",
  "kind": "theorem",
  "lexical_name": "isCountablyCompact_iff_infinite_subset_has_accPt",
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
  "slug": "iscountablycompact-iff-infinite-subset-has-accpt--b6cc73948e701bc1b65a9558",
  "source": {
    "blob": "5f4cdc13a20ff46bf5d1b40f165842b5c73b398d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 327,
    "path": "GRWTSK/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6cc73948e701bc1b65a9558f0ac8e830c51badbb081a32295ec3dc49a3034e3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:898e7cf6-1f93-184a-169a-cbe9ac28aba8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCountablyCompact_iff_infinite_subset_has_accPt [T1Space E] {A : Set E} :
    IsCountablyCompact A ↔ ∀ B ⊆ A, B.Infinite → ∃ a ∈ A, AccPt a (𝓟 B) where
  mp hA _ hBA hB := hA.exists_accPt_of_infinite hBA hB
  mpr h := by
    refine IsCountablyCompact.of_seq_clusterPt fun x hx => ?_
    rw [← Nat.cofinite_eq_atTop] at hx ⊢
    by_cases! hfin : (Set.range x).Finite
    · -- Case 1: Finite range
      suffices ∃ a ∈ range x ∩ A, MapClusterPt a cofinite x by aesop
      exact hfin.inter_of_left A |>.isCompact.exists_mapClusterPt_of_frequently <|
        hx.frequently.mp (by simp)
    · -- Case 2: Infinite range
      obtain ⟨a, haA, hacc⟩ := h (Set.range x ∩ A) inter_subset_right <| by
        rw [eventually_iff, mem_cofinite, compl_ofPred] at hx
        exact hfin.inter_of_finite_sdiff (hx.image x |>.subset (by grind))
      refine ⟨a, haA, ?_⟩
      simp_rw [mapClusterPt_iff_frequently, frequently_cofinite_iff_infinite]
      exact fun s hs ↦ Infinite.of_accPt (hacc.nhds_inter hs) |>.mono (by grind) |>.of_image x

/-- A countably compact Lindelöf set is compact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CountablyCompact/Variantb9d38c17fe9331004db553f5109508f8513be50edc792f7d73bb9518f69b7ff1.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f4cdc13a20ff46bf5d1b40f165842b5c73b398d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
