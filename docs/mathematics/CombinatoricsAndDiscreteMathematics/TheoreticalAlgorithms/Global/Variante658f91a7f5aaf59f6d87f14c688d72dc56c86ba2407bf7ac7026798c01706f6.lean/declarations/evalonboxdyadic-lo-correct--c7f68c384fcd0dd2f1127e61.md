# evalOnBoxDyadic_lo_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc85ffe6-9593-0484-fee6-9a1634de4933",
  "kind": "theorem",
  "lexical_name": "evalOnBoxDyadic_lo_correct",
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
  "slug": "evalonboxdyadic-lo-correct--c7f68c384fcd0dd2f1127e61",
  "source": {
    "blob": "ac681ead2ed956a45e57a66e7775a728788e8eb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1541,
    "line": 1505,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variante658f91a7f5aaf59f6d87f14c688d72dc56c86ba2407bf7ac7026798c01706f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7f68c384fcd0dd2f1127e61e735b23ecd15a3d99f5811d5f5c7b7ed3d85e036",
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

Occurrence: `result:cc85ffe6-9593-0484-fee6-9a1634de4933`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1505–1541.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalOnBoxDyadic_lo_correct (e : Expr) (hsupp : ExprSupportedCore e)
    (B : Box) (cfg : GlobalOptConfigDyadic) (ρ : Nat → ℝ) (hρ : Box.envMem ρ B)
    (hzero : ∀ i, i ≥ B.length → ρ i = 0)
    (hprec : cfg.precision ≤ 0 := by norm_num)
    (hdom : evalDomainValidDyadic e
      (fun i => Core.IntervalDyadic.ofIntervalRat (B.getD i (IntervalRat.singleton 0)) cfg.precision)
      { precision := cfg.precision, taylorDepth := cfg.taylorDepth, roundAfterOps := 0 }) :
    (evalOnBoxDyadic e B cfg).lo ≤ Expr.eval ρ e := by
  -- Build the Dyadic environment from the box
  set dyadicEnv : IntervalDyadicEnv := fun i =>
    Core.IntervalDyadic.ofIntervalRat (B.getD i (IntervalRat.singleton 0)) cfg.precision
  set dyadicCfg : DyadicConfig := {
    precision := cfg.precision,
    taylorDepth := cfg.taylorDepth,
    roundAfterOps := 0
  }
  have henv : envMemDyadic ρ dyadicEnv := by
    intro i
    by_cases hi : i < B.length
    · have hmem : ρ i ∈ B[i]'hi := hρ ⟨i, hi⟩
      have hdyad := Core.IntervalDyadic.mem_ofIntervalRat hmem cfg.precision hprec
      simpa [dyadicEnv, List.getD, List.getElem?_eq_getElem hi, Option.getD] using hdyad
    · have hzeroi : ρ i = 0 := hzero i (Nat.le_of_not_lt hi)
      have hmem0 : (0 : ℝ) ∈ IntervalRat.singleton 0 := by
        exact_mod_cast IntervalRat.mem_singleton 0
      have hdyad := Core.IntervalDyadic.mem_ofIntervalRat hmem0 cfg.precision hprec
      simpa [dyadicEnv, List.getD, List.getElem?_eq_none (not_lt.mp hi), Option.getD, hzeroi] using hdyad
  have hmem := evalIntervalDyadic_correct e hsupp ρ dyadicEnv henv dyadicCfg hprec hdom
  have hmem_rat := Core.IntervalDyadic.mem_toIntervalRat.mp hmem
  have hmem_rat' : Expr.eval ρ e ∈ evalOnBoxDyadic e B cfg := by
    simpa [evalOnBoxDyadic, dyadicEnv, dyadicCfg] using hmem_rat
  exact ((IntervalRat.mem_def _ _).mp hmem_rat').1

/-- The key correctness theorem for Dyadic minimization: globalMinimizeDyadic returns
    a lower bound that is ≤ the minimum of f over any point in the original box.

Note: Requires domain validity for expressions with log. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variante658f91a7f5aaf59f6d87f14c688d72dc56c86ba2407bf7ac7026798c01706f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variante658f91a7f5aaf59f6d87f14c688d72dc56c86ba2407bf7ac7026798c01706f6.lean#L1505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac681ead2ed956a45e57a66e7775a728788e8eb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
