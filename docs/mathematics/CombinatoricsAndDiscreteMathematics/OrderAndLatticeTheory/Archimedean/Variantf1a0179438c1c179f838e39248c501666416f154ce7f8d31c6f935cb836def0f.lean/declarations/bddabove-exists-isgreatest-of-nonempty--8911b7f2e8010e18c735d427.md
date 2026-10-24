# BddAbove.exists_isGreatest_of_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7fa5aec14e0857d443c087e5b3c3cc5a98c77286",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 291,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f1a0179438c1c179f838e39248c501666416f154ce7f8d31c6f935cb836def0f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a88209c-0ee8-bc4a-1db4-17dc9bfa8fce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2584c13a-c4ed-8e1a-a85a-143d0d0269e0",
  "kind": "lemma",
  "lexical_name": "BddAbove.exists_isGreatest_of_nonempty",
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
  "slug": "bddabove-exists-isgreatest-of-nonempty--8911b7f2e8010e18c735d427",
  "source": {
    "blob": "7fa5aec14e0857d443c087e5b3c3cc5a98c77286",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 291,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variantf1a0179438c1c179f838e39248c501666416f154ce7f8d31c6f935cb836def0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8911b7f2e8010e18c735d42729181c470bfb86fb1b449921b74724401f6b555b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variantf1a0179438c1c179f838e39248c501666416f154ce7f8d31c6f935cb836def0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2584c13a-c4ed-8e1a-a85a-143d0d0269e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma BddAbove.exists_isGreatest_of_nonempty {X : Type*} [LinearOrder X] [SuccOrder X]
    [IsSuccArchimedean X] {S : Set X} (hS : BddAbove S) (hS' : S.Nonempty) :
    ∃ x, IsGreatest S x := by
  obtain ⟨m, hm⟩ := hS
  obtain ⟨n, hn⟩ := hS'
  by_cases hm' : m ∈ S
  · exact ⟨_, hm', hm⟩
  have hn' := hm hn
  revert hn hm hm'
  refine Succ.rec ?_ ?_ hn'
  · simp +contextual
  intro m _ IH hm hn hm'
  rw [mem_upperBounds] at IH hm
  simp_rw [Order.le_succ_iff_eq_or_le] at hm
  replace hm : ∀ x ∈ S, x ≤ m := by
    intro x hx
    refine (hm x hx).resolve_left ?_
    rintro rfl
    exact hm' hx
  by_cases hmS : m ∈ S
  · exact ⟨m, hmS, hm⟩
  · exact IH hm hn hmS

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variantf1a0179438c1c179f838e39248c501666416f154ce7f8d31c6f935cb836def0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variantf1a0179438c1c179f838e39248c501666416f154ce7f8d31c6f935cb836def0f.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fa5aec14e0857d443c087e5b3c3cc5a98c77286` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
