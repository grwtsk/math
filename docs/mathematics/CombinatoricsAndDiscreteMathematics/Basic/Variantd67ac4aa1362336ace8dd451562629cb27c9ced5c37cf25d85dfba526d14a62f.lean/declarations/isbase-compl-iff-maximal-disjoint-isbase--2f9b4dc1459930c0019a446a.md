# isBase_compl_iff_maximal_disjoint_isBase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a0cf43b78f80eb1c6a60c70283009a88078d44b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 511,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d67ac4aa1362336ace8dd451562629cb27c9ced5c37cf25d85dfba526d14a62f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62248326-0077-9055-a8ce-4f87b6d18c7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71297bca-7dd9-8b01-36e6-73cad39d71b6",
  "kind": "theorem",
  "lexical_name": "isBase_compl_iff_maximal_disjoint_isBase",
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
  "slug": "isbase-compl-iff-maximal-disjoint-isbase--2f9b4dc1459930c0019a446a",
  "source": {
    "blob": "a0cf43b78f80eb1c6a60c70283009a88078d44b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 528,
    "line": 511,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd67ac4aa1362336ace8dd451562629cb27c9ced5c37cf25d85dfba526d14a62f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f9b4dc1459930c0019a446a45faf17f5c57eddebe0978a97cbdb5455db02361",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantd67ac4aa1362336ace8dd451562629cb27c9ced5c37cf25d85dfba526d14a62f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71297bca-7dd9-8b01-36e6-73cad39d71b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 511–528.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBase_compl_iff_maximal_disjoint_isBase (hB : B ⊆ M.E := by aesop_mat) :
    M.IsBase (M.E \ B) ↔ Maximal (fun I ↦ I ⊆ M.E ∧ ∃ B, M.IsBase B ∧ Disjoint I B) B := by
  simp_rw [maximal_iff, and_iff_right hB, and_imp, forall_exists_index]
  refine ⟨fun h ↦ ⟨⟨_, h, disjoint_sdiff_right⟩,
    fun I hI B' ⟨hB', hIB'⟩ hBI ↦ hBI.antisymm ?_⟩, fun ⟨⟨B', hB', hBB'⟩,h⟩ ↦ ?_⟩
  · rw [hB'.eq_of_subset_isBase h, ← subset_compl_iff_disjoint_right, sdiff_eq, compl_inter,
      compl_compl] at hIB'
    · exact fun e he ↦ (hIB' he).elim (fun h' ↦ (h' (hI he)).elim) id
    rw [subset_sdiff, and_iff_right hB'.subset_ground, disjoint_comm]
    exact disjoint_of_subset_left hBI hIB'
  rw [h sdiff_subset B' ⟨hB', disjoint_sdiff_left⟩]
  · simpa [hB'.subset_ground]
  simp [subset_sdiff, hB, hBB']

end IsBase
section dep_indep

/-- A subset of `M.E` is `Dep`endent if it is not `Indep`endent . -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantd67ac4aa1362336ace8dd451562629cb27c9ced5c37cf25d85dfba526d14a62f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd67ac4aa1362336ace8dd451562629cb27c9ced5c37cf25d85dfba526d14a62f.lean#L511).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0cf43b78f80eb1c6a60c70283009a88078d44b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
