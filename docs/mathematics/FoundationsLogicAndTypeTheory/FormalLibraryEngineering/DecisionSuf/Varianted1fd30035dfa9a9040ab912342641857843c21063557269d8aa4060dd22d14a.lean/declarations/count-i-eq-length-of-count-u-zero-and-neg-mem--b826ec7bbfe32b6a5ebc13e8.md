# count_I_eq_length_of_count_U_zero_and_neg_mem

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
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed1fd30035dfa9a9040ab912342641857843c21063557269d8aa4060dd22d14a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:945e8950-a14f-e2b7-2272-cc1b408de786",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df02bfc9-b672-27a9-c6f6-9228f37e7bac",
  "kind": "theorem",
  "lexical_name": "count_I_eq_length_of_count_U_zero_and_neg_mem",
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
  "slug": "count-i-eq-length-of-count-u-zero-and-neg-mem--b826ec7bbfe32b6a5ebc13e8",
  "source": {
    "blob": "e87eba259d459822b63689c0fa036ef9a38ee612",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 251,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Varianted1fd30035dfa9a9040ab912342641857843c21063557269d8aa4060dd22d14a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b826ec7bbfe32b6a5ebc13e81d4b8eb375f11f4ef76083508e31ef15f3dc7bb9",
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

Occurrence: `result:df02bfc9-b672-27a9-c6f6-9228f37e7bac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_I_eq_length_of_count_U_zero_and_neg_mem {ys : Miustr} (hu : count U ys = 0)
    (hm : M ∉ ys) : count I ys = length ys := by
  induction ys with
  | nil => rfl
  | cons x xs hxs =>
    cases x
    · -- case `x = M` gives a contradiction.
      exfalso; exact hm mem_cons_self
    · -- case `x = I`
      rw [count_cons, beq_self_eq_true, ite_eq_left rfl, length, succ_inj]
      apply hxs
      · simpa only [count]
      · rw [mem_cons, not_or] at hm; exact hm.2
    · -- case `x = U` gives a contradiction.
      simp_all

/-- `base_case_suf` is the base case of the sufficiency result.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Varianted1fd30035dfa9a9040ab912342641857843c21063557269d8aa4060dd22d14a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Varianted1fd30035dfa9a9040ab912342641857843c21063557269d8aa4060dd22d14a.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e87eba259d459822b63689c0fa036ef9a38ee612` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
