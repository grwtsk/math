# lex_eq_true_iff_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ea3b93b183826fc3bdee6dbbc7d2fab42d61f344",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 366,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9bd8d2e8010248069e55b8dfc8a6cfd09bf262d3068379ea8b8e443e2e8209e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e42f2d4-5100-d443-db51-4e0d62b5506d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13263873-d8bf-65f6-80d4-1e6926ca304f",
  "kind": "theorem",
  "lexical_name": "lex_eq_true_iff_exists",
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
  "slug": "lex-eq-true-iff-exists--aa04be36827e73bd996980c8",
  "source": {
    "blob": "ea3b93b183826fc3bdee6dbbc7d2fab42d61f344",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 366,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant9bd8d2e8010248069e55b8dfc8a6cfd09bf262d3068379ea8b8e443e2e8209e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa04be36827e73bd996980c861a3dbbd9b0b148a620e2930f78b20c729db544f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant9bd8d2e8010248069e55b8dfc8a6cfd09bf262d3068379ea8b8e443e2e8209e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13263873-d8bf-65f6-80d4-1e6926ca304f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lex_eq_true_iff_exists [BEq α] (lt : α → α → Bool) :
    lex l₁ l₂ lt = true ↔
      (l₁.isEqv (l₂.take l₁.length) (· == ·) ∧ l₁.length < l₂.length) ∨
        (∃ (i : Nat) (h₁ : i < l₁.length) (h₂ : i < l₂.length),
          (∀ j, (hj : j < i) →
            l₁[j]'(Nat.lt_trans hj h₁) == l₂[j]'(Nat.lt_trans hj h₂)) ∧ lt l₁[i] l₂[i]) := by
  induction l₁ generalizing l₂ with
  | nil =>
    cases l₂ with
    | nil => simp [lex]
    | cons b bs => simp [lex]
  | cons a l₁ ih =>
    cases l₂ with
    | nil => simp [lex]
    | cons b l₂ =>
      simp [cons_lex_cons, Bool.or_eq_true, Bool.and_eq_true, ih, isEqv, length_cons]
      constructor
      · rintro (hab | ⟨hab, ⟨h₁, h₂⟩ | ⟨i, h₁, h₂, w₁, w₂⟩⟩)
        · exact .inr ⟨0, by simp [hab]⟩
        · exact .inl ⟨⟨hab, h₁⟩, by simpa using h₂⟩
        · refine .inr ⟨i + 1, by simp [h₁],
            by simp [h₂], ?_, ?_⟩
          · intro j hj
            cases j with
            | zero => simp [hab]
            | succ j =>
              simp only [getElem_cons_succ]
              rw [w₁]
              simpa using hj
          · simpa using w₂
      · rintro (⟨⟨h₁, h₂⟩, h₃⟩ | ⟨i, h₁, h₂, w₁, w₂⟩)
        · exact .inr ⟨h₁, .inl ⟨h₂, by simpa using h₃⟩⟩
        · cases i with
          | zero =>
            left
            simpa using w₂
          | succ i =>
            right
            refine ⟨by simpa using w₁ 0 (by simp), ?_⟩
            right
            refine ⟨i, by simpa using h₁, by simpa using h₂, ?_, ?_⟩
            · intro j hj
              simpa using w₁ (j + 1) (by simpa)
            · simpa using w₂

attribute [local simp] Nat.add_one_lt_add_one_iff in
/--
`l₁` is *not* lexicographically less than `l₂`
(which you might think of as "`l₂` is lexicographically greater than or equal to `l₁`"") if either
- `l₁` is pairwise equivalent under `· == ·` to `l₂.take l₁.length` or
- there exists an index `i` such that
  - for all `j < i`, `l₁[j] == l₂[j]` and
  - `l₂[i] < l₁[i]`

This formulation requires that `==` and `lt` are compatible in the following senses:
- `==` is symmetric
  (we unnecessarily further assume it is transitive, to make use of the existing typeclasses)
- `lt` is irreflexive with respect to `==` (i.e. if `x == y` then `lt x y = false`
- `lt` is asymmetric  (i.e. `lt x y = true → lt y x = false`)
- `lt` is antisymmetric with respect to `==` (i.e. `lt x y = false → lt y x = false → x == y`)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant9bd8d2e8010248069e55b8dfc8a6cfd09bf262d3068379ea8b8e443e2e8209e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant9bd8d2e8010248069e55b8dfc8a6cfd09bf262d3068379ea8b8e443e2e8209e0.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea3b93b183826fc3bdee6dbbc7d2fab42d61f344` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
