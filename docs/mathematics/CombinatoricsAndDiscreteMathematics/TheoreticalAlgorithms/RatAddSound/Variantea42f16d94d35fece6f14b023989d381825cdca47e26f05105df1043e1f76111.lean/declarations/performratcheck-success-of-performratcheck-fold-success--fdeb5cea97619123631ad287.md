# performRatCheck_success_of_performRatCheck_fold_success

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38b719eb9cd21611662027394368a5f88b6d088b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 437,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:66ace756-4ee8-3a26-a3ac-1af93c17cf12",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d206a3d-d5c7-32cc-634b-ffdc4b2f2b28",
  "kind": "theorem",
  "lexical_name": "performRatCheck_success_of_performRatCheck_fold_success",
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
  "slug": "performratcheck-success-of-performratcheck-fold-success--fdeb5cea97619123631ad287",
  "source": {
    "blob": "38b719eb9cd21611662027394368a5f88b6d088b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 437,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdeb5cea97619123631ad2874f05183a2dc494a23d1a0285be6eb8fa54740251",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d206a3d-d5c7-32cc-634b-ffdc4b2f2b28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem performRatCheck_success_of_performRatCheck_fold_success {n : Nat} (f : DefaultFormula n)
    (hf : f.ratUnits = #[] ∧ f.assignments.size = n) (p : Literal (PosFin n))
    (ratHints : Array (Nat × Array Nat)) (i : Fin ratHints.size)
    (performRatCheck_fold_success :
    (ratHints.foldl
      (fun acc ratHint => if acc.2 = true then performRatCheck acc.1 p ratHint else (acc.1, false))
      (f, true) 0 ratHints.size).2 = true) : (performRatCheck f p ratHints[i]).2 = true := by
  let motive (idx : Nat) (acc : DefaultFormula n × Bool) : Prop :=
    acc.1 = f ∧ (acc.2 = true → ∀ i : Fin idx, (performRatCheck f p ratHints[i]!).2)
  have h_base : motive 0 (f, true) := by
    constructor
    · rfl
    · intro _ i
      exact Fin.elim0 i
  let fold_fn (acc : DefaultFormula n × Bool) (ratHint : Nat × Array Nat) :=
    if acc.2 = true then performRatCheck acc.1 p ratHint else (acc.1, false)
  have fold_fn_def (acc : DefaultFormula n × Bool) (ratHint : Nat × Array Nat) :
    fold_fn acc ratHint = if acc.2 = true then performRatCheck acc.1 p ratHint else (acc.1, false) := rfl
  have h_inductive (idx : Fin ratHints.size) (acc : DefaultFormula n × Bool) (ih : motive idx.1 acc) :
    motive (idx.1 + 1) (fold_fn acc ratHints[idx]) := by
    constructor
    · simp only [Fin.getElem_fin, fold_fn_def, ih.1]
      grind [formula_performRatCheck]
    · intro h i
      rw [fold_fn_def] at h
      split at h
      next acc_eq_true =>
        have i_lt_or_eq_idx : i.1 < idx.1 ∨ i.1 = idx.1 := by
          omega -- FIXME: why can't `grind` to this?
        rcases i_lt_or_eq_idx with i_lt_idx | i_eq_idx
        · exact ih.2 acc_eq_true ⟨i.1, i_lt_idx⟩
        · simp only [getElem!_def, Fin.getElem?_fin, i_eq_idx, idx.2, Array.getElem?_eq_getElem]
          simp only [Fin.getElem_fin, ih.1] at h
          exact h
      · simp at h
  have h := (Array.foldl_induction motive h_base h_inductive).2 performRatCheck_fold_success i
  simpa [getElem!_def, i.2, dite_true] using h

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatAddSound/Variantea42f16d94d35fece6f14b023989d381825cdca47e26f05105df1043e1f76111.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38b719eb9cd21611662027394368a5f88b6d088b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
