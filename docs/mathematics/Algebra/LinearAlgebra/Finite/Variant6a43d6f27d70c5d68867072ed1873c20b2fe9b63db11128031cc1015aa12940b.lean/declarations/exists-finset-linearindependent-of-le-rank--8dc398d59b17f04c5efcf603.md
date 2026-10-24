# exists_finset_linearIndependent_of_le_rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95945b016c4ab559c482b5ab8632e4fa9e8d17ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a43d6f27d70c5d68867072ed1873c20b2fe9b63db11128031cc1015aa12940b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:250bdda9-18cb-32bf-3543-425556021319",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:994192be-1ab6-e60f-3dea-9da4f30124fd",
  "kind": "lemma",
  "lexical_name": "exists_finset_linearIndependent_of_le_rank",
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
  "slug": "exists-finset-linearindependent-of-le-rank--8dc398d59b17f04c5efcf603",
  "source": {
    "blob": "95945b016c4ab559c482b5ab8632e4fa9e8d17ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 190,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finite/Variant6a43d6f27d70c5d68867072ed1873c20b2fe9b63db11128031cc1015aa12940b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dc398d59b17f04c5efcf603b0107d161d44ce99b9b11bf9c3cc240aac146690",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finite/Variant6a43d6f27d70c5d68867072ed1873c20b2fe9b63db11128031cc1015aa12940b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:994192be-1ab6-e60f-3dea-9da4f30124fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_finset_linearIndependent_of_le_rank {n : ℕ} (hn : n ≤ Module.rank R M) :
    ∃ s : Finset M, s.card = n ∧ LinearIndepOn R id (s : Set M) := by
  rcases hn.eq_or_lt with h | h
  · obtain ⟨⟨s, hs⟩, hs'⟩ := exists_eq_ciSup_of_not_isSuccLimit
      Cardinal.bddAbove_of_small (h.trans (Module.rank_def R M) ▸ not_isSuccLimit_natCast n)
    rw [← Module.rank_def, ← h] at hs'
    have : Finite s := lt_aleph0_iff_finite.mp (hs' ▸ natCast_lt_aleph0)
    cases nonempty_fintype s
    refine ⟨s.toFinset, by simpa using hs', by simpa⟩
  · obtain ⟨s, hs, hs'⟩ := exists_set_linearIndependent_of_lt_rank h
    have : Finite s := lt_aleph0_iff_finite.mp (hs ▸ natCast_lt_aleph0)
    cases nonempty_fintype s
    exact ⟨s.toFinset, by simpa using hs, by simpa⟩

@[deprecated (since := "2026-04-13")]
alias exists_set_linearIndependent_of_lt_rank := Module.exists_set_linearIndependent_of_lt_rank

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finite/Variant6a43d6f27d70c5d68867072ed1873c20b2fe9b63db11128031cc1015aa12940b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finite/Variant6a43d6f27d70c5d68867072ed1873c20b2fe9b63db11128031cc1015aa12940b.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95945b016c4ab559c482b5ab8632e4fa9e8d17ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
