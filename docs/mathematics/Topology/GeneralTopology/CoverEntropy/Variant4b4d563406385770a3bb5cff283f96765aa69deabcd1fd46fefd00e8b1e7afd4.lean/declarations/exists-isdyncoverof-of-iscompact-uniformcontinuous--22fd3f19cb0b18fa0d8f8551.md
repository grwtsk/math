# exists_isDynCoverOf_of_isCompact_uniformContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "834bf0bd416196ee5f7f4bfeeaaa8b6ee6ef3f58",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4b4d563406385770a3bb5cff283f96765aa69deabcd1fd46fefd00e8b1e7afd4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a61c8f2-87f4-78e1-810a-16691afe4488",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d33089ac-ba4e-3763-16cd-e717f8d40330",
  "kind": "lemma",
  "lexical_name": "exists_isDynCoverOf_of_isCompact_uniformContinuous",
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
  "slug": "exists-isdyncoverof-of-iscompact-uniformcontinuous--22fd3f19cb0b18fa0d8f8551",
  "source": {
    "blob": "834bf0bd416196ee5f7f4bfeeaaa8b6ee6ef3f58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 183,
    "path": "GRWTSK/Topology/GeneralTopology/CoverEntropy/Variant4b4d563406385770a3bb5cff283f96765aa69deabcd1fd46fefd00e8b1e7afd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22fd3f19cb0b18fa0d8f85517ad6d342b0ef211e835d656a65445fc396a3cf6c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CoverEntropy/Variant4b4d563406385770a3bb5cff283f96765aa69deabcd1fd46fefd00e8b1e7afd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d33089ac-ba4e-3763-16cd-e717f8d40330`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isDynCoverOf_of_isCompact_uniformContinuous [UniformSpace X]
    (F_comp : IsCompact F) (h : UniformContinuous T) (U_uni : U ∈ 𝓤 X) (n : ℕ) :
    ∃ s : Finset X, IsDynCoverOf T F U n s := by
  obtain ⟨(V : SetRel X X), hV, hVsymm, hVU⟩ := symm_of_uniformity U_uni
  have uni_ite := dynEntourage_mem_uniformity h hV n
  let openCover x := ball x (dynEntourage T V n)
  obtain ⟨s, _, s_cover⟩ := F_comp.elim_nhds_subcover openCover fun x _ ↦ ball_mem_nhds x uni_ite
  exact ⟨s, .of_entourage_subset hVU <| .of_subset_iUnion_ball s_cover⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CoverEntropy/Variant4b4d563406385770a3bb5cff283f96765aa69deabcd1fd46fefd00e8b1e7afd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CoverEntropy/Variant4b4d563406385770a3bb5cff283f96765aa69deabcd1fd46fefd00e8b1e7afd4.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `834bf0bd416196ee5f7f4bfeeaaa8b6ee6ef3f58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
