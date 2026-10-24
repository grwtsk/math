# globalMinimizeCore_hi_achievable

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
      "line": 1131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8dd2feaf-c84c-7d37-3be7-128c6a481357",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e3f34271-49a0-ff10-f3fd-40ba7cfff853",
  "kind": "theorem",
  "lexical_name": "globalMinimizeCore_hi_achievable",
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
  "slug": "globalminimizecore-hi-achievable--67c95cb5cd6f125aba5ce287",
  "source": {
    "blob": "3fc7b63fea392177f936363d2fafd198183fb077",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1161,
    "line": 1131,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variant72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67c95cb5cd6f125aba5ce28739ab9a12e6d282066b83a989ff53b138b67e4653",
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

Occurrence: `result:e3f34271-49a0-ff10-f3fd-40ba7cfff853`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1131–1161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem globalMinimizeCore_hi_achievable (e : Expr) (hsupp : ExprSupportedCore e)
    (B : Box) (cfg : GlobalOptConfig)
    (hdom : ∀ (B' : Box), B'.length = B.length → evalDomainValid e B'.toEnv { taylorDepth := cfg.taylorDepth }) :
    ∃ (ρ : Nat → ℝ), Box.envMem ρ B ∧ (∀ i, i ≥ B.length → ρ i = 0) ∧
      Expr.eval ρ e ≤ (globalMinimizeCore e B cfg).bound.hi := by
  simp only [globalMinimizeCore]
  let I := evalOnBoxCore e B cfg
  have hLB0 : ∀ ρ', Box.envMem ρ' B → (∀ i, i ≥ B.length → ρ' i = 0) →
      I.lo ≤ Expr.eval ρ' e := by
    intro ρ' hρ' hzero'
    exact evalOnBoxCore_lo_correct e hsupp B cfg ρ' hρ' hzero' (hdom B rfl)
  have hUB0 : ∃ ρ', Box.envMem ρ' B ∧ (∀ i, i ≥ B.length → ρ' i = 0) ∧
      Expr.eval ρ' e ≤ I.hi := by
    use Box.midpointEnv B
    refine ⟨Box.midpointEnv_mem B, Box.midpointEnv_zero B, ?_⟩
    exact evalOnBoxCore_hi_correct e hsupp B cfg (Box.midpointEnv B)
      (Box.midpointEnv_mem B) (Box.midpointEnv_zero B) (hdom B rfl)
  have hQueueSub0 : ∀ lb B', (lb, B') ∈ [(I.lo, B)] →
      ∀ ρ', Box.envMem ρ' B' → Box.envMem ρ' B ∧ B'.length = B.length := by
    intro lb B' hmem ρ' hρ'
    simp only [List.mem_singleton] at hmem
    cases hmem
    exact ⟨hρ', rfl⟩
  -- Apply loop correctness
  have hResult := minimizeLoopCore_correct e hsupp cfg B [(I.lo, B)] I.lo I.hi B cfg.maxIterations
    hLB0 hUB0 hQueueSub0 hdom
  exact hResult.2

/-- The lower bound is ≤ the upper bound.
    This follows from the existence of a witness: there's some ρ with f(ρ) ≤ hi,
    and lo ≤ f(ρ) for all ρ in B, so lo ≤ f(witness) ≤ hi. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variant72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variant72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean#L1131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fc7b63fea392177f936363d2fafd198183fb077` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
