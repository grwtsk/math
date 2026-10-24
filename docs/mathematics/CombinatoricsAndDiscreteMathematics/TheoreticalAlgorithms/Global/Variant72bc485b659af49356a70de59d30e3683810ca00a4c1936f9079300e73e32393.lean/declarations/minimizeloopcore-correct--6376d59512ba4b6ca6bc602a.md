# minimizeLoopCore_correct

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
      "line": 1065,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eddff914-2c22-f775-5730-35de9a1726bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:911afedf-d52e-75cf-34ab-fbd86a473104",
  "kind": "theorem",
  "lexical_name": "minimizeLoopCore_correct",
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
  "slug": "minimizeloopcore-correct--6376d59512ba4b6ca6bc602a",
  "source": {
    "blob": "3fc7b63fea392177f936363d2fafd198183fb077",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1100,
    "line": 1065,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variant72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6376d59512ba4b6ca6bc602abdf073e970df6ef8e794bb3f892575921d6d4940",
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

Occurrence: `result:911afedf-d52e-75cf-34ab-fbd86a473104`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1065–1100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minimizeLoopCore_correct (e : Expr) (hsupp : ExprSupportedCore e) (cfg : GlobalOptConfig)
    (origB : Box)
    (queue : List (ℚ × Box)) (bestLB bestUB : ℚ) (bestBox : Box) (iters : Nat)
    (hLB : ∀ ρ, Box.envMem ρ origB → (∀ i, i ≥ origB.length → ρ i = 0) → bestLB ≤ Expr.eval ρ e)
    (hUB : ∃ ρ, Box.envMem ρ origB ∧ (∀ i, i ≥ origB.length → ρ i = 0) ∧ Expr.eval ρ e ≤ bestUB)
    (hQueueSub : ∀ lb B', (lb, B') ∈ queue →
        ∀ ρ, Box.envMem ρ B' → Box.envMem ρ origB ∧ B'.length = origB.length)
    (hdom : ∀ (B' : Box), B'.length = origB.length → evalDomainValid e B'.toEnv { taylorDepth := cfg.taylorDepth }) :
    let result := minimizeLoopCore e cfg queue bestLB bestUB bestBox iters
    (∀ ρ, Box.envMem ρ origB → (∀ i, i ≥ origB.length → ρ i = 0) →
        result.bound.lo ≤ Expr.eval ρ e) ∧
    (∃ ρ, Box.envMem ρ origB ∧ (∀ i, i ≥ origB.length → ρ i = 0) ∧
        Expr.eval ρ e ≤ result.bound.hi) := by
  induction iters generalizing queue bestLB bestUB bestBox with
  | zero =>
    simp only [minimizeLoopCore]
    exact ⟨hLB, hUB⟩
  | succ n ih =>
    simp only [minimizeLoopCore]
    cases hstep : minimizeStepCore e cfg queue bestLB bestUB bestBox with
    | none =>
      simp only
      exact ⟨hLB, hUB⟩
    | some result =>
      simp only
      have ⟨hLB', hUB', hQueueSub'⟩ :=
        minimizeStepCore_preserves_LB e hsupp cfg origB queue bestLB bestUB bestBox
          result.1 result.2.1 result.2.2.1 result.2.2.2 hstep hLB hUB hQueueSub hdom
      exact ih result.1 result.2.1 result.2.2.1 result.2.2.2 hLB' hUB' hQueueSub'

/-- The key correctness theorem for Core version: globalMinimizeCore returns a lower bound
    that is ≤ the minimum of f over any point in the original box.

    This theorem requires a domain validity hypothesis for ExprSupportedCore expressions.
    For ExprSupported expressions, use globalMinimizeCore_lo_correct_supported which
    derives domain validity automatically. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variant72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variant72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean#L1065).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fc7b63fea392177f936363d2fafd198183fb077` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
