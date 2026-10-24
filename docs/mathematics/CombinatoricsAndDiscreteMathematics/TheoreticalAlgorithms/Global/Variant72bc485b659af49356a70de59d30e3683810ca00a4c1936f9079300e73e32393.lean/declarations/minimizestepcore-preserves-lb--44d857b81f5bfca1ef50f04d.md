# minimizeStepCore_preserves_LB

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3fc7b63fea392177f936363d2fafd198183fb077",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 905,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2df4db1b-8295-c300-2b9c-7131d7b79cda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ca9269b-0ab2-23be-98c3-929c66031505",
  "kind": "theorem",
  "lexical_name": "minimizeStepCore_preserves_LB",
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
  "slug": "minimizestepcore-preserves-lb--44d857b81f5bfca1ef50f04d",
  "source": {
    "blob": "3fc7b63fea392177f936363d2fafd198183fb077",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1064,
    "line": 905,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variant72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44d857b81f5bfca1ef50f04df68adfa970b3fc8c1dac0f139022c89f8e8632c3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variant72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ca9269b-0ab2-23be-98c3-929c66031505`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 905–1064.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minimizeStepCore_preserves_LB (e : Expr) (hsupp : ExprSupportedCore e) (cfg : GlobalOptConfig)
    (origB : Box)
    (queue : List (ℚ × Box)) (bestLB bestUB : ℚ) (bestBox : Box)
    (queue' : List (ℚ × Box)) (bestLB' bestUB' : ℚ) (bestBox' : Box)
    (hStep : minimizeStepCore e cfg queue bestLB bestUB bestBox = some (queue', bestLB', bestUB', bestBox'))
    (hLB : ∀ ρ, Box.envMem ρ origB → (∀ i, i ≥ origB.length → ρ i = 0) → bestLB ≤ Expr.eval ρ e)
    (hUB : ∃ ρ, Box.envMem ρ origB ∧ (∀ i, i ≥ origB.length → ρ i = 0) ∧ Expr.eval ρ e ≤ bestUB)
    (hQueueSub : ∀ lb B', (lb, B') ∈ queue →
        ∀ ρ, Box.envMem ρ B' → Box.envMem ρ origB ∧ B'.length = origB.length)
    (hdom : ∀ (B' : Box), B'.length = origB.length → evalDomainValid e B'.toEnv { taylorDepth := cfg.taylorDepth }) :
    (∀ ρ, Box.envMem ρ origB → (∀ i, i ≥ origB.length → ρ i = 0) → bestLB' ≤ Expr.eval ρ e) ∧
    (∃ ρ, Box.envMem ρ origB ∧ (∀ i, i ≥ origB.length → ρ i = 0) ∧ Expr.eval ρ e ≤ bestUB') ∧
    (∀ lb B', (lb, B') ∈ queue' →
        ∀ ρ, Box.envMem ρ B' → Box.envMem ρ origB ∧ B'.length = origB.length) := by
  cases hq : queue with
  | nil => simp [minimizeStepCore, popBest, hq] at hStep
  | cons hd tl =>
    simp only [hq, minimizeStepCore, popBest] at hStep
    by_cases h_prune : hd.1 > bestUB
    · -- Prune case: bounds unchanged
      simp only [h_prune, ↓reduceIte] at hStep
      cases hStep
      refine ⟨hLB, hUB, ?_⟩
      intro lb B' hmem ρ' hρ'
      have h : (lb, B') ∈ queue := by rw [hq]; exact List.mem_cons_of_mem hd hmem
      exact hQueueSub lb B' h ρ' hρ'
    · -- Evaluate case
      simp only [h_prune, ↓reduceIte] at hStep
      -- Define B_curr for this branch (same as in minimizeStepCore)
      set B_curr := if cfg.useMonotonicity then
          (pruneBoxForMin hd.2 (gradientIntervalCore e hd.2 { taylorDepth := cfg.taylorDepth })).1
          else hd.2 with hB_curr
      -- Split on remaining conditionals
      split_ifs at hStep <;> simp only [Option.some.injEq, Prod.mk.injEq] at hStep
      all_goals first
        | (-- Small box or split case, no split children: queue' = tl
           cases hStep
           refine ⟨?_, ?_, ?_⟩
           · -- Lower bound: min bestLB I.lo ≤ f(ρ) for all ρ in origB
             intro ρ hρ hzero
             have hLB_old := hLB ρ hρ hzero
             have hmin_le : bestLB ⊓ (evalOnBoxCore e B_curr cfg).lo ≤ bestLB := min_le_left _ _
             calc ((bestLB ⊓ (evalOnBoxCore e B_curr cfg).lo : ℚ) : ℝ)
               ≤ bestLB := by exact_mod_cast hmin_le
               _ ≤ Expr.eval ρ e := hLB_old
           · -- Upper bound: witness exists
             first
               | exact hUB
               | (-- Better UB found: use midpoint of hd.2
                  have hmem_hd : (hd.1, hd.2) ∈ queue := by simp only [hq]; exact List.mem_cons_self
                  have ⟨hOrig, hLen⟩ := hQueueSub hd.1 hd.2 hmem_hd (Box.midpointEnv hd.2)
                    (Box.midpointEnv_mem hd.2)
                  use Box.midpointEnv hd.2
                  refine ⟨hOrig, ?_, ?_⟩
                  · intro i hi; exact Box.midpointEnv_zero hd.2 i (hLen ▸ hi)
                  · have hLen_hd := (hQueueSub hd.1 hd.2 hmem_hd (Box.midpointEnv hd.2) (Box.midpointEnv_mem hd.2)).2
                    exact evalOnBoxCore_hi_correct e hsupp hd.2 cfg (Box.midpointEnv hd.2)
                      (Box.midpointEnv_mem hd.2) (Box.midpointEnv_zero hd.2) (hdom hd.2 hLen_hd))
           · -- Queue entries
             intro lb B' hmem ρ' hρ'
             have h : (lb, B') ∈ queue := by rw [hq]; exact List.mem_cons_of_mem hd hmem
             exact hQueueSub lb B' h ρ' hρ')
        | (-- Split case with children
           rcases hStep with ⟨hQ, hLB', hUB', hBox'⟩
           refine ⟨?_, ?_, ?_⟩
           · -- Lower bound preserved
             intro ρ hρ hzero
             have hLB_old := hLB ρ hρ hzero
             rw [← hLB']
             have hmin_le : bestLB ⊓ (evalOnBoxCore e B_curr cfg).lo ≤ bestLB := min_le_left _ _
             calc ((bestLB ⊓ (evalOnBoxCore e B_curr cfg).lo : ℚ) : ℝ)
               ≤ bestLB := by exact_mod_cast hmin_le
               _ ≤ Expr.eval ρ e := hLB_old
           · -- Upper bound witness: two cases based on whether UB improved
             first
               | (-- No improvement: bestUB' = bestUB, use existing witness
                  rw [← hUB']
                  exact hUB)
               | (-- Improvement case: use pruneBoxForMin_sub_aux
                  have hmem_hd : (hd.1, hd.2) ∈ hd :: tl := List.mem_cons_self
                  rw [← hq] at hmem_hd
                  have hB_curr_sub : ∀ ρ', Box.envMem ρ' B_curr → Box.envMem ρ' hd.2 := by
                    intro ρ' hρ'
                    simp only [hB_curr] at hρ'
                    split_ifs at hρ' with h_mono
                    · exact pruneBoxForMin_sub_aux hd.2 _ ρ' hρ'
                    · exact hρ'
                  have ⟨hOrig, hLen⟩ := hQueueSub hd.1 hd.2 hmem_hd (Box.midpointEnv B_curr)
                    (hB_curr_sub (Box.midpointEnv B_curr) (Box.midpointEnv_mem B_curr))
                  have hlen_B_curr : B_curr.length = hd.2.length := by
                    simp only [hB_curr]
                    split_ifs with h_mono
                    · exact pruneBoxForMin_length hd.2 _
                    · rfl
                  use Box.midpointEnv B_curr
                  refine ⟨hOrig, ?_, ?_⟩
                  · intro i hi
                    exact Box.midpointEnv_zero B_curr i (hlen_B_curr.trans hLen ▸ hi)
                  · -- eval ≤ I.hi = bestUB' (in improvement case)
                    have heval := evalOnBoxCore_hi_correct e hsupp B_curr cfg (Box.midpointEnv B_curr)
                      (Box.midpointEnv_mem B_curr) (Box.midpointEnv_zero B_curr) (hdom B_curr (hlen_B_curr.trans hLen))
                    simp only [← hUB']
                    exact heval)
           · -- Queue entries: come from tail or splits of B_curr
             -- Uses pruneBoxForMin_sub_aux to show split children ⊆ B_curr ⊆ hd.2 ⊆ origB
             intro lb B' hmem ρ' hρ'
             rw [← hQ] at hmem
             have hmem_hd : (hd.1, hd.2) ∈ hd :: tl := List.mem_cons_self
             rw [← hq] at hmem_hd
             have hhdSub := hQueueSub hd.1 hd.2 hmem_hd
             have hB_curr_sub : ∀ ρ', Box.envMem ρ' B_curr → Box.envMem ρ' hd.2 := by
               intro ρ'' hρ''
               simp only [hB_curr] at hρ''
               split_ifs at hρ'' with h_mono
               · exact pruneBoxForMin_sub_aux hd.2 _ ρ'' hρ''
               · exact hρ''
             have hlen_B_curr : B_curr.length = hd.2.length := by
               simp only [hB_curr]; split_ifs; exact pruneBoxForMin_length hd.2 _; rfl
             -- Queue entries can come from: rest (tail), or inserted split boxes B1/B2
             -- Queue construction: rest → maybe insertByBound _ B1 → maybe insertByBound _ B2
             -- Try multiple proof strategies to handle all conditional combinations
             first
               -- Case: came directly from tail (no insertByBound wrapper)
               | (have h : (lb, B') ∈ hd :: tl := List.mem_cons_of_mem hd hmem
                  rw [← hq] at h
                  exact hQueueSub lb B' h ρ' hρ')
               -- Case: Only B2 inserted (B2 is outermost)
               | (rw [mem_insertByBound] at hmem
                  rcases hmem with ⟨_, rfl⟩ | hmem
                  · have hρ_orig := hB_curr_sub ρ' (Box.envMem_of_envMem_split_right B_curr _ ρ' hρ')
                    have ⟨hOrig, hLen⟩ := hhdSub ρ' hρ_orig
                    exact ⟨hOrig, ((Box.splitWidest_length B_curr).2.trans hlen_B_curr).trans hLen⟩
                  · have h : (lb, B') ∈ hd :: tl := List.mem_cons_of_mem hd hmem
                    rw [← hq] at h
                    exact hQueueSub lb B' h ρ' hρ')
               -- Case: Only B1 inserted (B1 is outermost)
               | (rw [mem_insertByBound] at hmem
                  rcases hmem with ⟨_, rfl⟩ | hmem
                  · have hρ_orig := hB_curr_sub ρ' (Box.envMem_of_envMem_split B_curr _ ρ' hρ')
                    have ⟨hOrig, hLen⟩ := hhdSub ρ' hρ_orig
                    exact ⟨hOrig, ((Box.splitWidest_length B_curr).1.trans hlen_B_curr).trans hLen⟩
                  · have h : (lb, B') ∈ hd :: tl := List.mem_cons_of_mem hd hmem
                    rw [← hq] at h
                    exact hQueueSub lb B' h ρ' hρ')
               -- Case: Both inserted, B2 outermost then B1
               | (rw [mem_insertByBound] at hmem
                  rcases hmem with ⟨_, rfl⟩ | hmem
                  · have hρ_orig := hB_curr_sub ρ' (Box.envMem_of_envMem_split_right B_curr _ ρ' hρ')
                    have ⟨hOrig, hLen⟩ := hhdSub ρ' hρ_orig
                    exact ⟨hOrig, ((Box.splitWidest_length B_curr).2.trans hlen_B_curr).trans hLen⟩
                  · rw [mem_insertByBound] at hmem
                    rcases hmem with ⟨_, rfl⟩ | hmem
                    · have hρ_orig := hB_curr_sub ρ' (Box.envMem_of_envMem_split B_curr _ ρ' hρ')
                      have ⟨hOrig, hLen⟩ := hhdSub ρ' hρ_orig
                      exact ⟨hOrig, ((Box.splitWidest_length B_curr).1.trans hlen_B_curr).trans hLen⟩
                    · have h : (lb, B') ∈ hd :: tl := List.mem_cons_of_mem hd hmem
                      rw [← hq] at h
                      exact hQueueSub lb B' h ρ' hρ'))

/-- The main loop correctness theorem for Core version -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variant72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variant72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean#L905).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fc7b63fea392177f936363d2fafd198183fb077` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
