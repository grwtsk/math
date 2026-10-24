# go_noRoot_not_in_output

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c95c9d3fdcae918c38f04dbc05af9f8c85a549b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 246,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:203e3ab6-770e-5ada-8ee5-cfe031eda88a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc80a93c-b407-8703-ac37-f466ecf0b81f",
  "kind": "theorem",
  "lexical_name": "go_noRoot_not_in_output",
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
  "slug": "go-noroot-not-in-output--dcb7d486c6a7444360d46190",
  "source": {
    "blob": "0c95c9d3fdcae918c38f04dbc05af9f8c85a549b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 246,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcb7d486c6a7444360d46190e5b2eb45b985c61920a66e59b403dce8d1387859",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc80a93c-b407-8703-ac37-f466ecf0b81f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem go_noRoot_not_in_output (e : Expr) (tol : ℚ) (maxIter : ℕ)
    (work : List (IntervalRat × RootStatus)) (iter : ℕ)
    (done : List (IntervalRat × RootStatus))
    (hDone : ∀ J s, (J, s) ∈ done → s ≠ RootStatus.noRoot)
    (hWork : ∀ J s, (J, s) ∈ work → s ≠ RootStatus.noRoot) :
    ∀ J s, (J, s) ∈ (bisectRootGo e tol maxIter work iter done).intervals → s ≠ RootStatus.noRoot := by
  induction iter generalizing work done with
  | zero =>
    -- iter = 0: result is done ++ work
    simp only [bisectRootGo]
    intro J s hmem
    simp only [List.mem_append] at hmem
    cases hmem with
    | inl h => exact hDone J s h
    | inr h => exact hWork J s h
  | succ n ih =>
    match hwork : work with
    | [] =>
      -- work = []: result is done
      simp only [bisectRootGo]
      intro J s hmem
      exact hDone J s hmem
    | (K, _st) :: rest =>
      simp only [bisectRootGo]
      -- Match on checkRootStatus result
      match hstatus : checkRootStatus e K with
      | RootStatus.noRoot =>
        -- noRoot: we discard K, recurse on rest
        simp
        apply ih
        · exact hDone
        · intro J' s' hmem'
          exact hWork J' s' (List.mem_cons.mpr (Or.inr hmem'))
      | RootStatus.hasRoot =>
        simp
        split
        · -- width ≤ tol: add (K, hasRoot) to done
          apply ih
          · intro J' s' hmem'
            simp only [List.mem_cons, Prod.mk.injEq] at hmem'
            cases hmem' with
            | inl h => simp only [h.2]; decide
            | inr h => exact hDone J' s' h
          · intro J' s' hmem'
            exact hWork J' s' (List.mem_cons.mpr (Or.inr hmem'))
        · -- bisect: add (J₁, unknown), (J₂, unknown) to work
          apply ih
          · exact hDone
          · intro J' s' hmem'
            simp only [List.mem_cons, Prod.mk.injEq] at hmem'
            cases hmem' with
            | inl h => simp only [h.2]; decide
            | inr h =>
              cases h with
              | inl h' => simp only [h'.2]; decide
              | inr h' => exact hWork J' s' (List.mem_cons.mpr (Or.inr h'))
      | RootStatus.uniqueRoot =>
        simp
        apply ih
        · intro J' s' hmem'
          simp only [List.mem_cons, Prod.mk.injEq] at hmem'
          cases hmem' with
          | inl h => simp only [h.2]; decide
          | inr h => exact hDone J' s' h
        · intro J' s' hmem'
          exact hWork J' s' (List.mem_cons.mpr (Or.inr hmem'))
      | RootStatus.unknown =>
        simp
        split
        · -- width ≤ tol
          apply ih
          · intro J' s' hmem'
            simp only [List.mem_cons, Prod.mk.injEq] at hmem'
            cases hmem' with
            | inl h => simp only [h.2]; decide
            | inr h => exact hDone J' s' h
          · intro J' s' hmem'
            exact hWork J' s' (List.mem_cons.mpr (Or.inr hmem'))
        · -- bisect
          apply ih
          · exact hDone
          · intro J' s' hmem'
            simp only [List.mem_cons, Prod.mk.injEq] at hmem'
            cases hmem' with
            | inl h => simp only [h.2]; decide
            | inr h =>
              cases h with
              | inl h' => simp only [h'.2]; decide
              | inr h' => exact hWork J' s' (List.mem_cons.mpr (Or.inr h'))

/-- Every hasRoot interval in output has signChange = true.
    We prove this by induction on iter.
    Note: We need BisectInv for work too, since at iter=0 we output work as-is. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c95c9d3fdcae918c38f04dbc05af9f8c85a549b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
