# strictMonoOn_of_lt_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "23e44baa40f9e48c7a1c591de5d026a08c6f0638",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 358,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0fdd41efd9c50d3dfaef4088423b4b11de2d9c40952d42b11fe13095f70813d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd6ea6f2-d616-3de3-5ede-143f6e0aabf1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf890929-401e-7540-9b0e-af53c034c2b5",
  "kind": "lemma",
  "lexical_name": "strictMonoOn_of_lt_succ",
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
  "slug": "strictmonoon-of-lt-succ--07897d6e265e3e08e7e91b30",
  "source": {
    "blob": "23e44baa40f9e48c7a1c591de5d026a08c6f0638",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 358,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant0fdd41efd9c50d3dfaef4088423b4b11de2d9c40952d42b11fe13095f70813d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07897d6e265e3e08e7e91b30921137b02a066e54f3b86649e882af8df8ed9199",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant0fdd41efd9c50d3dfaef4088423b4b11de2d9c40952d42b11fe13095f70813d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf890929-401e-7540-9b0e-af53c034c2b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma strictMonoOn_of_lt_succ (hs : s.OrdConnected)
    (hf : ∀ a, ¬ IsMax a → a ∈ s → succ a ∈ s → f a < f (succ a)) : StrictMonoOn f s := by
  rintro a ha b hb hab
  obtain ⟨n, rfl⟩ := exists_succ_iterate_of_le hab.le
  obtain _ | n := n
  · simp at hab
  apply not_isMax_of_lt at hab
  induction n with
  | zero => simpa using hf _ hab ha hb
  | succ n hn =>
    rw [Function.iterate_succ_apply'] at hb ⊢
    have : succ^[n + 1] a ∈ s := hs.1 ha hb ⟨le_succ_iterate .., le_succ _⟩
    by_cases hb' : IsMax (succ^[n + 1] a)
    · rw [succ_eq_iff_isMax.2 hb']
      exact hn this
    · exact (hn this).trans (hf _ hb' this hb)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant0fdd41efd9c50d3dfaef4088423b4b11de2d9c40952d42b11fe13095f70813d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant0fdd41efd9c50d3dfaef4088423b4b11de2d9c40952d42b11fe13095f70813d3.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23e44baa40f9e48c7a1c591de5d026a08c6f0638` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
