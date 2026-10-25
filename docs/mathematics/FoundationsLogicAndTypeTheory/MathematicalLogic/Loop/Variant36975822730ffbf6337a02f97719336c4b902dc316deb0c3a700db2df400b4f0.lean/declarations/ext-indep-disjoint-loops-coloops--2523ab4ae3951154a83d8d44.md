# ext_indep_disjoint_loops_coloops

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fcf7e9059d809d4e63a545cea5365fcaf9c4bd9f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 758,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/36975822730ffbf6337a02f97719336c4b902dc316deb0c3a700db2df400b4f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b28150d-c9e9-b94b-22ca-8c77cdb81352",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:174aa7dc-9cfe-4cf0-52a3-543c66feeba4",
  "kind": "lemma",
  "lexical_name": "ext_indep_disjoint_loops_coloops",
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
  "slug": "ext-indep-disjoint-loops-coloops--2523ab4ae3951154a83d8d44",
  "source": {
    "blob": "fcf7e9059d809d4e63a545cea5365fcaf9c4bd9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 779,
    "line": 758,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant36975822730ffbf6337a02f97719336c4b902dc316deb0c3a700db2df400b4f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2523ab4ae3951154a83d8d444a2d35e4012a22e45622a7aacb060b5a484b6063",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant36975822730ffbf6337a02f97719336c4b902dc316deb0c3a700db2df400b4f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:174aa7dc-9cfe-4cf0-52a3-543c66feeba4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 758–779.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ext_indep_disjoint_loops_coloops {M₁ M₂ : Matroid α} (hE : M₁.E = M₂.E)
    (hl : M₁.loops = M₂.loops) (hc : M₁.coloops = M₂.coloops)
    (h : ∀ I, I ⊆ M₁.E → Disjoint I (M₁.loops ∪ M₁.coloops) → (M₁.Indep I ↔ M₂.Indep I)) :
    M₁ = M₂ := by
  refine ext_indep hE fun I hI ↦ ?_
  rw [← diff_coloops_indep_iff, ← @diff_coloops_indep_iff _ M₂, ← hc]
  obtain hdj | hndj := em (Disjoint I (M₁.loops))
  · rw [h _ (diff_subset.trans hI)]
    rw [disjoint_union_right]
    exact ⟨disjoint_of_subset_left diff_subset hdj, disjoint_sdiff_left⟩
  obtain ⟨e, heI, hel : M₁.IsLoop e⟩ := not_disjoint_iff_nonempty_inter.mp hndj
  refine iff_of_false (hel.not_indep_of_mem ⟨heI, hel.not_isColoop⟩) ?_
  rw [isLoop_iff, hl, ← isLoop_iff] at hel
  rw [hc]
  exact hel.not_indep_of_mem ⟨heI, hel.not_isColoop⟩

end IsColoop

section Loopless

/-- A Matroid is `Loopless` if it has no loop -/
@[mk_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant36975822730ffbf6337a02f97719336c4b902dc316deb0c3a700db2df400b4f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant36975822730ffbf6337a02f97719336c4b902dc316deb0c3a700db2df400b4f0.lean#L758).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcf7e9059d809d4e63a545cea5365fcaf9c4bd9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
