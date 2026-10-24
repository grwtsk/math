# globalMaximizeDyadic_hi_correct

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
      "line": 1558,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d787031f-bc7b-725e-0fe2-2e8ce00e7d80",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7df698a2-67d3-fbd2-d24b-37c7c3613c8b",
  "kind": "theorem",
  "lexical_name": "globalMaximizeDyadic_hi_correct",
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
  "slug": "globalmaximizedyadic-hi-correct--ba5fdc8039bc5d22d6222007",
  "source": {
    "blob": "3fc7b63fea392177f936363d2fafd198183fb077",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1582,
    "line": 1558,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variant72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba5fdc8039bc5d22d6222007a45d98bd47505a03e80b154e67427c4d1a8fcbd5",
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

Occurrence: `result:7df698a2-67d3-fbd2-d24b-37c7c3613c8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1558–1582.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem globalMaximizeDyadic_hi_correct (e : Expr) (hsupp : ExprSupportedCore e)
    (B : Box) (cfg : GlobalOptConfigDyadic)
    (hprec : cfg.precision ≤ 0 := by norm_num)
    (hdom : evalDomainValidDyadic e
      (fun i => Core.IntervalDyadic.ofIntervalRat (B.getD i (IntervalRat.singleton 0)) cfg.precision)
      { precision := cfg.precision, taylorDepth := cfg.taylorDepth, roundAfterOps := 0 }) :
    ∀ (ρ : Nat → ℝ), Box.envMem ρ B → (∀ i, i ≥ B.length → ρ i = 0) →
      Expr.eval ρ e ≤ (globalMaximizeDyadic e B cfg).bound.hi := by
  intro ρ hρ hzero
  simp only [globalMaximizeDyadic]
  have hneg_supp : ExprSupportedCore (Expr.neg e) := ExprSupportedCore.neg hsupp
  -- Domain validity for neg e is the same as for e
  have hdom_neg : evalDomainValidDyadic (Expr.neg e)
      (fun i => Core.IntervalDyadic.ofIntervalRat (B.getD i (IntervalRat.singleton 0)) cfg.precision)
      { precision := cfg.precision, taylorDepth := cfg.taylorDepth, roundAfterOps := 0 } := by
    simp only [evalDomainValidDyadic]; exact hdom
  have hmin := globalMinimizeDyadic_lo_correct (Expr.neg e) hneg_supp B cfg hprec hdom_neg ρ hρ hzero
  simp only [Expr.eval_neg] at hmin
  -- hmin : (globalMinimizeDyadic e.neg B cfg).bound.lo ≤ -Expr.eval ρ e
  -- Goal : Expr.eval ρ e ≤ -(globalMinimizeDyadic e.neg B cfg).bound.lo
  have h : Expr.eval ρ e ≤ (-(globalMinimizeDyadic (Expr.neg e) B cfg).bound.lo : ℝ) := by linarith
  exact_mod_cast h

/-! ### Correctness theorems for Affine optimization -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variant72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variant72bc485b659af49356a70de59d30e3683810ca00a4c1936f9079300e73e32393.lean#L1558).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fc7b63fea392177f936363d2fafd198183fb077` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
