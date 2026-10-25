# bisectRootIdx_go_noRoot_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8dd95c784f254c3e8b7cff9c2c08b85870b070ff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 485,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0382c910-cc1d-7592-37d7-baf380ff55b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3d9cd6a-6e29-32ae-a5f8-17875dae34c6",
  "kind": "theorem",
  "lexical_name": "bisectRootIdx_go_noRoot_correct",
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
  "slug": "bisectrootidx-go-noroot-correct--0f5d0d49865988ed0dd1c327",
  "source": {
    "blob": "8dd95c784f254c3e8b7cff9c2c08b85870b070ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 584,
    "line": 485,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f5d0d49865988ed0dd1c3276907aa7a4dcb031aeabab8ece756a3c0d979b797",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3d9cd6a-6e29-32ae-a5f8-17875dae34c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–584.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bisectRootIdx_go_noRoot_correct (e : Expr) (hsupp : ExprSupported e)
    (ρ_int : IntervalEnv) (idx : Nat) (maxDepth depth : ℕ) (J : IntervalRat)
    (hJ_sub : ∀ t, t ∈ J → t ∈ ρ_int idx)
    (hnoRoot : bisectRootIdx.go e ρ_int idx maxDepth J depth = BisectResult.noRoot) :
    ∀ ρ_real : Nat → ℝ, (∀ i, ρ_real i ∈ ρ_int i) →
      ∀ t ∈ J, Expr.evalAlong e ρ_real idx t ≠ 0 := by
  induction depth generalizing J with
  | zero =>
    unfold bisectRootIdx.go at hnoRoot
    by_cases hexcl : excludesZero (evalInterval e (updateIntervalEnv' ρ_int idx J)) = true
    · -- excludesZero case: use excludesZero_correct_idx
      intro ρ_real hρ t ht
      simp only [Expr.evalAlong]
      -- Build the updated env that matches the excludesZero check
      have hρ' : ∀ i, Expr.updateVar ρ_real idx t i ∈ updateIntervalEnv' ρ_int idx J i := by
        intro i
        simp only [Expr.updateVar, updateIntervalEnv']
        split_ifs with hi
        · exact ht
        · exact hρ i
      exact excludesZero_correct_idx e hsupp (updateIntervalEnv' ρ_int idx J) hexcl
        (Expr.updateVar ρ_real idx t) hρ'
    · -- Not excludesZero at depth=0: contradiction cases
      simp only [hexcl, Bool.false_eq_true, ↓reduceIte] at hnoRoot
      by_cases hsign : signChange_idx e (updateIntervalEnv' ρ_int idx J) idx = true
      · simp only [hsign] at hnoRoot
        exact (BisectResult.noConfusion hnoRoot)
      · simp only [hsign] at hnoRoot
        exact (BisectResult.noConfusion hnoRoot)
  | succ n ih =>
    unfold bisectRootIdx.go at hnoRoot
    simp only [Nat.succ_ne_zero, ↓reduceIte, Nat.add_sub_cancel] at hnoRoot
    by_cases hexcl : excludesZero (evalInterval e (updateIntervalEnv' ρ_int idx J)) = true
    · -- excludesZero case
      intro ρ_real hρ t ht
      simp only [Expr.evalAlong]
      have hρ' : ∀ i, Expr.updateVar ρ_real idx t i ∈ updateIntervalEnv' ρ_int idx J i := by
        intro i
        simp only [Expr.updateVar, updateIntervalEnv']
        split_ifs with hi
        · exact ht
        · exact hρ i
      exact excludesZero_correct_idx e hsupp (updateIntervalEnv' ρ_int idx J) hexcl
        (Expr.updateVar ρ_real idx t) hρ'
    · -- Bisection case
      simp only [hexcl, Bool.false_eq_true, ↓reduceIte] at hnoRoot
      by_cases hsign : signChange_idx e (updateIntervalEnv' ρ_int idx J) idx = true
      · simp only [hsign] at hnoRoot
        exact (BisectResult.noConfusion hnoRoot)
      · simp only [hsign] at hnoRoot
        -- Analyze the match structure for noRoot
        have hsub1 : ∀ t, t ∈ J.bisect.1 → t ∈ ρ_int idx := fun t ht =>
          hJ_sub t (IntervalRat.mem_of_mem_bisect_left ht)
        have hsub2 : ∀ t, t ∈ J.bisect.2 → t ∈ ρ_int idx := fun t ht =>
          hJ_sub t (IntervalRat.mem_of_mem_bisect_right ht)
        -- noRoot is returned only when both halves return noRoot
        match hr1 : bisectRootIdx.go e ρ_int idx maxDepth J.bisect.1 n with
        | BisectResult.found _ _ =>
          rw [hr1] at hnoRoot
          simp only [Bool.false_eq_true, ↓reduceIte] at hnoRoot
          exact (BisectResult.noConfusion hnoRoot)
        | BisectResult.noRoot =>
          rw [hr1] at hnoRoot
          match hr2 : bisectRootIdx.go e ρ_int idx maxDepth J.bisect.2 n with
          | BisectResult.found _ _ =>
            rw [hr2] at hnoRoot
            simp only [Bool.false_eq_true, ↓reduceIte] at hnoRoot
            exact (BisectResult.noConfusion hnoRoot)
          | BisectResult.noRoot =>
            rw [hr2] at hnoRoot
            simp only [Bool.false_eq_true, ↓reduceIte] at hnoRoot
            -- Both halves return noRoot, so use IH on both
            intro ρ_real hρ t ht
            -- t is in either left or right half
            rcases mem_bisect_cases J t ht with ht1 | ht2
            · exact ih J.bisect.1 hsub1 hr1 ρ_real hρ t ht1
            · exact ih J.bisect.2 hsub2 hr2 ρ_real hρ t ht2
          | BisectResult.uncertain _ _ =>
            rw [hr2] at hnoRoot
            simp only [Bool.false_eq_true, ↓reduceIte] at hnoRoot
            exact (BisectResult.noConfusion hnoRoot)
        | BisectResult.uncertain _ _ =>
          rw [hr1] at hnoRoot
          match hr2 : bisectRootIdx.go e ρ_int idx maxDepth J.bisect.2 n with
          | BisectResult.found _ _ =>
            rw [hr2] at hnoRoot
            simp only [Bool.false_eq_true, ↓reduceIte] at hnoRoot
            exact (BisectResult.noConfusion hnoRoot)
          | BisectResult.noRoot =>
            rw [hr2] at hnoRoot
            simp only [Bool.false_eq_true, ↓reduceIte] at hnoRoot
            exact (BisectResult.noConfusion hnoRoot)
          | BisectResult.uncertain _ _ =>
            rw [hr2] at hnoRoot
            simp only [Bool.false_eq_true, ↓reduceIte] at hnoRoot
            split_ifs at hnoRoot

/-- Correctness theorem for bisectRootIdx when it reports no root.
    If bisectRootIdx returns `noRoot`, then for any ρ_real satisfying ρ_int,
    the function `evalAlong e ρ_real idx` has no zeros in `ρ_int idx`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dd95c784f254c3e8b7cff9c2c08b85870b070ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
