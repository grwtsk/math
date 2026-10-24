# go_subinterval

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
      "line": 420,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe95b0a6-2f88-d213-dde6-3c7117b4b3fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94096655-6905-875d-14bd-a9198dded3cf",
  "kind": "theorem",
  "lexical_name": "go_subinterval",
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
  "slug": "go-subinterval--0ed259451ae301c8609f4d57",
  "source": {
    "blob": "0c95c9d3fdcae918c38f04dbc05af9f8c85a549b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 515,
    "line": 420,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ed259451ae301c8609f4d57c8f785e84b7eaa1c7b25da66af4711b715668525",
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

Occurrence: `result:94096655-6905-875d-14bd-a9198dded3cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–515.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem go_subinterval (e : Expr) (tol : ℚ) (maxIter : ℕ) (I : IntervalRat)
    (work : List (IntervalRat × RootStatus)) (iter : ℕ)
    (done : List (IntervalRat × RootStatus))
    (hWork : SubIntervalInv I work)
    (hDone : SubIntervalInv I done) :
    SubIntervalInv I (bisectRootGo e tol maxIter work iter done).intervals := by
  induction iter generalizing work done with
  | zero =>
    simp only [bisectRootGo]
    intro J s hmem
    simp only [List.mem_append] at hmem
    cases hmem with
    | inl h => exact hDone J s h
    | inr h => exact hWork J s h
  | succ n ih =>
    match hwork : work with
    | [] =>
      simp only [bisectRootGo]
      intro J s hmem
      exact hDone J s hmem
    | (K, _st) :: rest =>
      simp only [bisectRootGo]
      -- Get K's sub-interval property
      have hK := hWork K _st (List.mem_cons.mpr (Or.inl rfl))
      have hRest : SubIntervalInv I rest := fun J' s' h' =>
        hWork J' s' (List.mem_cons.mpr (Or.inr h'))
      match hstatus : checkRootStatus e K with
      | RootStatus.noRoot =>
        simp
        exact ih rest done hRest hDone
      | RootStatus.hasRoot =>
        simp
        split
        · exact ih rest ((K, RootStatus.hasRoot) :: done) hRest
            (subinterval_inv_cons I K RootStatus.hasRoot done hDone hK)
        · -- bisect
          have hbisect := bisect_subinterval I K hK
          let K₁ := K.bisect.1
          let K₂ := K.bisect.2
          have hK₁ : I.lo ≤ K₁.lo ∧ K₁.hi ≤ I.hi := hbisect.1
          have hK₂ : I.lo ≤ K₂.lo ∧ K₂.hi ≤ I.hi := hbisect.2
          have hNewWork : SubIntervalInv I ((K₁, RootStatus.unknown) :: (K₂, RootStatus.unknown) :: rest) := by
            intro J' s' h'
            simp only [List.mem_cons, Prod.mk.injEq] at h'
            cases h' with
            | inl h =>
              obtain ⟨hJ', _⟩ := h
              subst hJ'
              exact hK₁
            | inr h =>
              cases h with
              | inl h' =>
                obtain ⟨hJ', _⟩ := h'
                subst hJ'
                exact hK₂
              | inr h' => exact hRest J' s' h'
          exact ih _ done hNewWork hDone
      | RootStatus.uniqueRoot =>
        simp
        exact ih rest ((K, RootStatus.uniqueRoot) :: done) hRest
          (subinterval_inv_cons I K RootStatus.uniqueRoot done hDone hK)
      | RootStatus.unknown =>
        simp
        split
        · exact ih rest ((K, RootStatus.unknown) :: done) hRest
            (subinterval_inv_cons I K RootStatus.unknown done hDone hK)
        · -- bisect
          have hbisect := bisect_subinterval I K hK
          let K₁ := K.bisect.1
          let K₂ := K.bisect.2
          have hK₁ : I.lo ≤ K₁.lo ∧ K₁.hi ≤ I.hi := hbisect.1
          have hK₂ : I.lo ≤ K₂.lo ∧ K₂.hi ≤ I.hi := hbisect.2
          have hNewWork : SubIntervalInv I ((K₁, RootStatus.unknown) :: (K₂, RootStatus.unknown) :: rest) := by
            intro J' s' h'
            simp only [List.mem_cons, Prod.mk.injEq] at h'
            cases h' with
            | inl h =>
              obtain ⟨hJ', _⟩ := h
              subst hJ'
              exact hK₁
            | inr h =>
              cases h with
              | inl h' =>
                obtain ⟨hJ', _⟩ := h'
                subst hJ'
                exact hK₂
              | inr h' => exact hRest J' s' h'
          exact ih _ done hNewWork hDone

/-- If bisection returns hasRoot for an interval, there exists a root (by IVT).

    The proof works by showing that every (J, hasRoot) pair in the output
    has signChange e J = true, then applying signChange_correct.

    **Note about noRoot**: The algorithm discards noRoot intervals, so they
    never appear in the output. Thus bisectRoot_noRoot_correct is vacuously true.  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant75e999e05241b17fb561e697da7e4cc4eb1c9ebc823268cc04c6d73118379e1e.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c95c9d3fdcae918c38f04dbc05af9f8c85a549b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
