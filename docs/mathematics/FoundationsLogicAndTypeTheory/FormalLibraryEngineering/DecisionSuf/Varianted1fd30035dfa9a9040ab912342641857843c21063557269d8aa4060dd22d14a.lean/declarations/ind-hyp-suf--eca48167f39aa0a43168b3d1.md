# ind_hyp_suf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e87eba259d459822b63689c0fa036ef9a38ee612",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 304,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed1fd30035dfa9a9040ab912342641857843c21063557269d8aa4060dd22d14a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:700a0bba-3320-38e7-d5dd-8e2251f2bc2e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46e7d9eb-9cca-076d-e9e2-6268de44245d",
  "kind": "theorem",
  "lexical_name": "ind_hyp_suf",
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
  "slug": "ind-hyp-suf--eca48167f39aa0a43168b3d1",
  "source": {
    "blob": "e87eba259d459822b63689c0fa036ef9a38ee612",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 304,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Varianted1fd30035dfa9a9040ab912342641857843c21063557269d8aa4060dd22d14a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eca48167f39aa0a43168b3d11c9562beb5e4454654de572f53f5ebb1db446821",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Varianted1fd30035dfa9a9040ab912342641857843c21063557269d8aa4060dd22d14a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46e7d9eb-9cca-076d-e9e2-6268de44245d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ind_hyp_suf (k : ℕ) (ys : Miustr) (hu : count U ys = succ k) (hdec : Decstr ys) :
    ∃ as bs : Miustr,
      ys = M :: as ++ U :: bs ∧
      count U (↑(M :: as) ++ ↑[I, I, I] ++ bs : Miustr) = k ∧
      Decstr (↑(M :: as) ++ ↑[I, I, I] ++ bs) := by
  rcases hdec with ⟨⟨mhead, nmtail⟩, hic⟩
  have : ys ≠ nil := by rintro rfl; contradiction
  rcases exists_cons_of_ne_nil this with ⟨z, zs, rfl⟩
  rcases mhead
  simp only [count_cons] at hu
  rcases eq_append_cons_U_of_count_U_pos hu with ⟨as, bs, rfl⟩
  use as, bs
  refine ⟨rfl, ?_, ?_, ?_⟩
  · simp_rw [count_append, count_cons, beq_self_eq_true, ite_true, add_succ, beq_iff_eq,
      reduceCtorEq, reduceIte, add_zero, succ_inj] at hu
    rwa [count_append, count_append]
  · apply And.intro rfl
    rw [cons_append, cons_append]
    dsimp [tail] at nmtail ⊢
    rw [mem_append] at nmtail
    simpa only [append_assoc, cons_append, nil_append, mem_append, mem_cons, reduceCtorEq,
      false_or] using nmtail
  · rw [count_append, count_append]; rw [← cons_append, count_append] at hic
    simp only [count_cons_self, count_nil, count_cons] at hic ⊢
    rw [add_right_comm, add_mod_right]; exact hic

/-- `der_of_decstr` states that `Derivable en` follows from `Decstr en`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Varianted1fd30035dfa9a9040ab912342641857843c21063557269d8aa4060dd22d14a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Varianted1fd30035dfa9a9040ab912342641857843c21063557269d8aa4060dd22d14a.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e87eba259d459822b63689c0fa036ef9a38ee612` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
