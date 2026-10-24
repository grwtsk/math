# minimizeStep_bestUB_achievable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ca9ca72-3056-b6e6-ff14-379f5bbf5f4c",
  "kind": "theorem",
  "lexical_name": "minimizeStep_bestUB_achievable",
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
  "slug": "minimizestep-bestub-achievable--47b23b48249c87c85324ba23",
  "source": {
    "blob": "ac681ead2ed956a45e57a66e7775a728788e8eb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 574,
    "line": 541,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variante658f91a7f5aaf59f6d87f14c688d72dc56c86ba2407bf7ac7026798c01706f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47b23b48249c87c85324ba23fa7cb893d11825bcad0eb5b073bf851223eb50df",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variante658f91a7f5aaf59f6d87f14c688d72dc56c86ba2407bf7ac7026798c01706f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ca9ca72-3056-b6e6-ff14-379f5bbf5f4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 541–574.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minimizeStep_bestUB_achievable (e : Expr) (hsupp : ExprSupported e) (cfg : GlobalOptConfig)
    (hd : ℚ × Box) (tl : List (ℚ × Box)) (bestLB bestUB : ℚ) (bestBox : Box)
    (queue' : List (ℚ × Box)) (bestLB' bestUB' : ℚ) (bestBox' : Box)
    (hStep : minimizeStep e cfg (hd :: tl) bestLB bestUB bestBox = some (queue', bestLB', bestUB', bestBox'))
    (hBestUB : ∃ ρ, Box.envMem ρ bestBox ∧ (∀ i, i ≥ bestBox.length → ρ i = 0) ∧
      Expr.eval ρ e ≤ bestUB) :
    ∃ ρ, Box.envMem ρ bestBox' ∧ (∀ i, i ≥ bestBox'.length → ρ i = 0) ∧
      Expr.eval ρ e ≤ bestUB' := by
  simp only [minimizeStep, popBest] at hStep
  -- Handle all cases by explicit branching
  by_cases h_prune : hd.1 > bestUB
  · simp only [h_prune, ↓reduceIte] at hStep
    cases hStep; exact hBestUB
  · simp only [h_prune, ↓reduceIte] at hStep
    -- Define B_curr based on useMonotonicity
    set B_curr := if cfg.useMonotonicity then
        (pruneBoxForMin hd.2 (gradientIntervalN e hd.2 hd.2.length)).1 else hd.2 with hB_curr
    -- Continue splitting the conditionals
    split_ifs at hStep <;> simp only [Option.some.injEq, Prod.mk.injEq] at hStep
    all_goals first
      | (-- No improvement: (bestUB, bestBox) was kept
         rcases hStep with ⟨_, _, hUB, hBox⟩
         rw [← hBox, ← hUB]
         exact hBestUB)
      | (-- Improvement case: bestBox' = B_curr, bestUB' = (evalOnBox e B_curr cfg).hi
         rcases hStep with ⟨_, _, hUB, hBox⟩
         rw [← hBox, ← hUB]
         -- Use B_curr's midpoint
         use Box.midpointEnv B_curr
         refine ⟨Box.midpointEnv_mem B_curr, Box.midpointEnv_zero B_curr, ?_⟩
         exact evalOnBox_hi_correct e hsupp B_curr cfg (Box.midpointEnv B_curr)
           (Box.midpointEnv_mem B_curr) (Box.midpointEnv_zero B_curr))

/-- Helper: if ρ is in a split of B, then ρ is in B -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variante658f91a7f5aaf59f6d87f14c688d72dc56c86ba2407bf7ac7026798c01706f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variante658f91a7f5aaf59f6d87f14c688d72dc56c86ba2407bf7ac7026798c01706f6.lean#L541).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac681ead2ed956a45e57a66e7775a728788e8eb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
