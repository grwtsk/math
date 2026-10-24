# splitAt_eq_take_drop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b65f458-c3a9-9dba-cc81-9417f64ae01d",
  "kind": "theorem",
  "lexical_name": "splitAt_eq_take_drop",
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
  "slug": "splitat-eq-take-drop--79a553561f229aabe92b4425",
  "source": {
    "blob": "bb2da47a2f8597262ac23969079ed20f1fa2ed43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2876,
    "line": 2842,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb065ee6a846e9cb506d2b01b47fa4ee5b4ba5ec951613757b9a875f0f9520dde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79a553561f229aabe92b44259cf2739528afe350fd171e64860411ebdbd533da",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb065ee6a846e9cb506d2b01b47fa4ee5b4ba5ec951613757b9a875f0f9520dde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b65f458-c3a9-9dba-cc81-9417f64ae01d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2842–2876.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splitAt_eq_take_drop (n : ℕ) (l : List α) : splitAt n l = (take n l, drop n l) := by
  by_cases h : n < l.length <;> rw [splitAt, go_eq_take_drop]
  · rw [if_pos h]; rfl
  · rw [if_neg h, take_all_of_le <| le_of_not_lt h, drop_eq_nil_of_le <| le_of_not_lt h]
where
  go_eq_take_drop (n : ℕ) (l xs : List α) (acc : Array α) : splitAt.go l xs n acc =
      if n < xs.length then (acc.toList ++ take n xs, drop n xs) else (l, []) := by
    split_ifs with h
    · induction n generalizing xs acc with
      | zero =>
        rw [splitAt.go, take, drop, append_nil]
        · intros h₁; rw [h₁] at h; contradiction
        · intros; contradiction
      | succ _ ih =>
        cases xs with
        | nil => contradiction
        | cons hd tl =>
          rw [length, succ_eq_add_one] at h
          rw [splitAt.go, take, drop, append_cons, Array.toList_eq, ←Array.push_data,
            ←Array.toList_eq]
          exact ih _ _ <| lt_of_add_lt_add_right h
    · induction n generalizing xs acc with
      | zero =>
        rw [zero_eq, not_lt, nonpos_iff_eq_zero] at h
        rw [eq_nil_of_length_eq_zero h, splitAt.go]
      | succ _ ih =>
        cases xs with
        | nil => rw [splitAt.go]
        | cons hd tl =>
          rw [length, succ_eq_add_one] at h
          rw [splitAt.go]
          exact ih _ _ <| not_imp_not.mpr (Nat.add_lt_add_right · 1) h
#align list.split_at_eq_take_drop List.splitAt_eq_take_drop

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb065ee6a846e9cb506d2b01b47fa4ee5b4ba5ec951613757b9a875f0f9520dde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb065ee6a846e9cb506d2b01b47fa4ee5b4ba5ec951613757b9a875f0f9520dde.lean#L2842).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb2da47a2f8597262ac23969079ed20f1fa2ed43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
