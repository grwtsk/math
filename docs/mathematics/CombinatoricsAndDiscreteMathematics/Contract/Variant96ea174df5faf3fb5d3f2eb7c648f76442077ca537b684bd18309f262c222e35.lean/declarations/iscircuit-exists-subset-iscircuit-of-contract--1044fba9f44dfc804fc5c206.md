# IsCircuit.exists_subset_isCircuit_of_contract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7eebb258ff1a858db4d643c0458a98390dc5dea6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 497,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/96ea174df5faf3fb5d3f2eb7c648f76442077ca537b684bd18309f262c222e35.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:161dc4cb-9c39-a388-7e7c-05c20fa0cdf2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:37e095d3-e827-cfd8-68c1-27c8e7052eb5",
  "kind": "lemma",
  "lexical_name": "IsCircuit.exists_subset_isCircuit_of_contract",
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
  "slug": "iscircuit-exists-subset-iscircuit-of-contract--1044fba9f44dfc804fc5c206",
  "source": {
    "blob": "7eebb258ff1a858db4d643c0458a98390dc5dea6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 497,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Contract/Variant96ea174df5faf3fb5d3f2eb7c648f76442077ca537b684bd18309f262c222e35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1044fba9f44dfc804fc5c2065d83255391ff385b64cd3b7e333767ee1144647c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Contract/Variant96ea174df5faf3fb5d3f2eb7c648f76442077ca537b684bd18309f262c222e35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37e095d3-e827-cfd8-68c1-27c8e7052eb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 497–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCircuit.exists_subset_isCircuit_of_contract (hC : (M ／ K).IsCircuit C) :
    ∃ C', M.IsCircuit C' ∧ C ⊆ C' ∧ C' ⊆ C ∪ K := by
  wlog hKi : M.Indep K generalizing K with aux
  · obtain ⟨I, hI⟩ := M.exists_isBasis' K
    rw [hI.contract_eq_contract_delete, delete_isCircuit_iff] at hC
    obtain ⟨C', hC', hCC', hC'ss⟩ := aux hC.1 hI.indep
    exact ⟨C', hC', hCC', hC'ss.trans (union_subset_union_right _ hI.subset)⟩
  obtain ⟨hCE : C ⊆ M.E, hCK : Disjoint C K⟩ := subset_sdiff.1 hC.subset_ground
  obtain ⟨C', hC'ss, hC'⟩ := (hKi.contract_dep_iff.1 hC.dep).2.exists_isCircuit_subset
  refine ⟨C', hC', ?_, hC'ss⟩
  have hdep2 : (M ／ K).Dep (C' \ K) := by
    rw [hKi.contract_dep_iff, and_iff_right disjoint_sdiff_left]
    refine hC'.dep.superset (by simp)
  rw [← (hC.eq_of_dep_subset hdep2 (sdiff_subset_iff.2 (union_comm _ _ ▸ hC'ss)))]
  exact sdiff_subset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Contract/Variant96ea174df5faf3fb5d3f2eb7c648f76442077ca537b684bd18309f262c222e35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Contract/Variant96ea174df5faf3fb5d3f2eb7c648f76442077ca537b684bd18309f262c222e35.lean#L497).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7eebb258ff1a858db4d643c0458a98390dc5dea6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
