# globalMaximizeAffine_hi_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aee172cf-3f59-4782-7390-a307515bcdc0",
  "kind": "theorem",
  "lexical_name": "globalMaximizeAffine_hi_correct",
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
  "slug": "globalmaximizeaffine-hi-correct--94dff1465113131ed87e81a1",
  "source": {
    "blob": "ac681ead2ed956a45e57a66e7775a728788e8eb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1817,
    "line": 1797,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variante658f91a7f5aaf59f6d87f14c688d72dc56c86ba2407bf7ac7026798c01706f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94dff1465113131ed87e81a1e31b96deb09c4fbb236fc04413adfe7ac76c1885",
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

Occurrence: `result:aee172cf-3f59-4782-7390-a307515bcdc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1797–1817.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem globalMaximizeAffine_hi_correct (e : Expr) (hsupp : ExprSupportedCore e)
    (B : Box) (cfg : GlobalOptConfigAffine)
    (hdom : evalDomainValidAffine e (toAffineEnv B)
      { taylorDepth := cfg.taylorDepth, maxNoiseSymbols := cfg.maxNoiseSymbols }) :
    ∀ (ρ : Nat → ℝ), Box.envMem ρ B → (∀ i, i ≥ B.length → ρ i = 0) →
      Expr.eval ρ e ≤ (globalMaximizeAffine e B cfg).bound.hi := by
  intro ρ hρ hzero
  simp only [globalMaximizeAffine]
  have hneg_supp : ExprSupportedCore (Expr.neg e) := ExprSupportedCore.neg hsupp
  -- Domain validity for neg e is the same as for e
  have hdom_neg : evalDomainValidAffine (Expr.neg e) (toAffineEnv B)
      { taylorDepth := cfg.taylorDepth, maxNoiseSymbols := cfg.maxNoiseSymbols } := by
    simp only [evalDomainValidAffine]; exact hdom
  have hmin := globalMinimizeAffine_lo_correct (Expr.neg e) hneg_supp B cfg hdom_neg ρ hρ hzero
  simp only [Expr.eval_neg] at hmin
  -- hmin : (globalMinimizeAffine e.neg B cfg).bound.lo ≤ -Expr.eval ρ e
  -- Goal : Expr.eval ρ e ≤ -(globalMinimizeAffine e.neg B cfg).bound.lo
  have h : Expr.eval ρ e ≤ (-(globalMinimizeAffine (Expr.neg e) B cfg).bound.lo : ℝ) := by linarith
  exact_mod_cast h

end LeanCert.Engine.Optimization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variante658f91a7f5aaf59f6d87f14c688d72dc56c86ba2407bf7ac7026798c01706f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variante658f91a7f5aaf59f6d87f14c688d72dc56c86ba2407bf7ac7026798c01706f6.lean#L1797).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac681ead2ed956a45e57a66e7775a728788e8eb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
