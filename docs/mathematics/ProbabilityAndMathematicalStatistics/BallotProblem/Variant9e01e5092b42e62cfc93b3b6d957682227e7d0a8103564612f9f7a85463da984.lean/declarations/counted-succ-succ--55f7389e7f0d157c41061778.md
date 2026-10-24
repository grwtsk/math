# counted_succ_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "37ae5cb89a7433435ce02af1512f2196b7cbc7fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:14127ff6-08b5-b63e-0ae7-da6dc202edf5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c61d4dab-10c8-cc1b-30ee-243529454c52",
  "kind": "theorem",
  "lexical_name": "counted_succ_succ",
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
  "slug": "counted-succ-succ--55f7389e7f0d157c41061778",
  "source": {
    "blob": "37ae5cb89a7433435ce02af1512f2196b7cbc7fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 107,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55f7389e7f0d157c4106177883db3cc0ccc4be7a1d66e0eeadb025d5a4949294",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c61d4dab-10c8-cc1b-30ee-243529454c52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem counted_succ_succ (p q : ℕ) :
    countedSequence (p + 1) (q + 1) =
      List.cons 1 '' countedSequence p (q + 1) ∪ List.cons (-1) '' countedSequence (p + 1) q := by
  ext l
  rw [countedSequence, countedSequence, countedSequence]
  constructor
  · intro hl
    have hlnil := counted_ne_nil_left (Nat.succ_ne_zero p) hl
    obtain ⟨hl₀, hl₁, hl₂⟩ := hl
    obtain hlast | hlast := hl₂ (l.head hlnil) (List.head_mem hlnil)
    · refine Or.inl ⟨l.tail, ⟨?_, ?_, ?_⟩, ?_⟩
      · rw [List.count_tail hlnil, hl₀, hlast, beq_self_eq_true, if_pos rfl, Nat.add_sub_cancel]
      · rw [List.count_tail hlnil, hl₁, hlast, if_neg (by decide), Nat.sub_zero]
      · exact fun x hx => hl₂ x (List.mem_of_mem_tail hx)
      · rw [← hlast, List.head_cons_tail]
    · refine Or.inr ⟨l.tail, ⟨?_, ?_, ?_⟩, ?_⟩
      · rw [List.count_tail hlnil, hl₀, hlast, if_neg (by decide), Nat.sub_zero]
      · rw [List.count_tail hlnil, hl₁, hlast, beq_self_eq_true, if_pos rfl,
          Nat.add_sub_cancel]
      · exact fun x hx => hl₂ x (List.mem_of_mem_tail hx)
      · rw [← hlast, List.head_cons_tail]
  · rintro (⟨t, ⟨ht₀, ht₁, ht₂⟩, rfl⟩ | ⟨t, ⟨ht₀, ht₁, ht₂⟩, rfl⟩)
    · refine ⟨?_, ?_, ?_⟩
      · rw [List.count_cons, beq_self_eq_true, if_pos rfl, ht₀]
      · rw [List.count_cons, if_neg, ht₁]
        norm_num
      · simpa
    · refine ⟨?_, ?_, ?_⟩
      · rw [List.count_cons, if_neg, ht₀]
        norm_num
      · rw [List.count_cons, beq_self_eq_true, if_pos rfl, ht₁]
      · simpa

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/BallotProblem/Variant9e01e5092b42e62cfc93b3b6d957682227e7d0a8103564612f9f7a85463da984.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37ae5cb89a7433435ce02af1512f2196b7cbc7fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
