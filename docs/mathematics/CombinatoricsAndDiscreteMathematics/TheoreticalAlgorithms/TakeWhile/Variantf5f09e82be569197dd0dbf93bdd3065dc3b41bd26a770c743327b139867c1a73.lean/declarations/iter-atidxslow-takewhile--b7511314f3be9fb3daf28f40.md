# Iter.atIdxSlow?_takeWhile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0431b9f406d3335675586f503c7aea45d025c16e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5f09e82be569197dd0dbf93bdd3065dc3b41bd26a770c743327b139867c1a73.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cab0c7f6-6c36-5cad-5a79-9f57276a852e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e16d36b4-4402-f8b0-113e-5a99e44d8e45",
  "kind": "theorem",
  "lexical_name": "Iter.atIdxSlow?_takeWhile",
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
  "slug": "iter-atidxslow-takewhile--b7511314f3be9fb3daf28f40",
  "source": {
    "blob": "0431b9f406d3335675586f503c7aea45d025c16e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 60,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantf5f09e82be569197dd0dbf93bdd3065dc3b41bd26a770c743327b139867c1a73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7511314f3be9fb3daf28f40de579d3c2a37e8ac2e3f605a824ab32e29d477ef",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantf5f09e82be569197dd0dbf93bdd3065dc3b41bd26a770c743327b139867c1a73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e16d36b4-4402-f8b0-113e-5a99e44d8e45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.atIdxSlow?_takeWhile {α β}
    [Iterator α Id β] [Productive α Id] {l : Nat}
    {it : Iter (α := α) β} {P} :
    (it.takeWhile P).atIdxSlow? l = if ∀ k, k ≤ l → (it.atIdxSlow? k).any P then it.atIdxSlow? l else none := by
  induction l, it using atIdxSlow?.induct_unfolding
  case yield_zero it it' out h h' =>
    rw [atIdxSlow?_eq_match]
    simp only [val_step_takeWhile, h', Nat.le_zero_eq, forall_eq]
    rw [atIdxSlow?_eq_match, h']
    simp only [Option.any_some]
    apply Eq.symm
    split
    · cases h' : P out
      · exfalso; simp_all
      · simp
    · cases h' : P out
      · simp
      · exfalso; simp_all
  case yield_succ it it' out h h' l ih =>
    rw [atIdxSlow?_eq_match]
    simp only [Nat.succ_eq_add_one, val_step_takeWhile, h']
    simp only [atIdxSlow?_eq_match (it := it), h']
    cases hP : P out
    · simp
      intro h
      specialize h 0 (Nat.zero_le _)
      simp at h
      exfalso; simp_all
    · simp [ih]
      split
      · rename_i h
        rw [if_pos]
        intro k hk
        split
        · exact hP
        · simp at hk
          exact h _ hk
      · rename_i hl
        rw [if_neg]
        intro hl'
        apply hl
        intro k hk
        exact hl' (k + 1) (Nat.succ_le_succ hk)
  case skip_case l it it' h h' ih =>
    simp only [atIdxSlow?_eq_match (it := it.takeWhile P), step_takeWhile, h', ih]
    simp only [atIdxSlow?_eq_match (it := it), h']
  case done_case l it h h' =>
    simp only [atIdxSlow?_eq_match (it := it), atIdxSlow?_eq_match (it := it.takeWhile P), h',
      step_takeWhile]
    split <;> rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantf5f09e82be569197dd0dbf93bdd3065dc3b41bd26a770c743327b139867c1a73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variantf5f09e82be569197dd0dbf93bdd3065dc3b41bd26a770c743327b139867c1a73.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0431b9f406d3335675586f503c7aea45d025c16e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
