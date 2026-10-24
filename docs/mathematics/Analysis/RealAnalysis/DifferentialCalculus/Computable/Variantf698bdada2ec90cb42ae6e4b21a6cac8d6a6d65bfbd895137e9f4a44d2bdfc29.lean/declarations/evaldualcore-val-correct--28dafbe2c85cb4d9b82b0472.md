# evalDualCore_val_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "747babc0407118a18da9ff930c8c65b2fc3ff6ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33d6909f-725c-0356-852c-7edcb346f2b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3aeb92d2-0336-5f8a-0954-24fb944ef402",
  "kind": "theorem",
  "lexical_name": "evalDualCore_val_correct",
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
  "slug": "evaldualcore-val-correct--28dafbe2c85cb4d9b82b0472",
  "source": {
    "blob": "747babc0407118a18da9ff930c8c65b2fc3ff6ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 150,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28dafbe2c85cb4d9b82b0472a70ea4b269c529ea9c6282c32bc02ca4aa72610c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3aeb92d2-0336-5f8a-0954-24fb944ef402`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalDualCore_val_correct (e : Expr) (hsupp : ExprSupportedCore e)
    (ρ_real : Nat → ℝ) (ρ_dual : DualEnv) (cfg : EvalConfig)
    (hρ : ∀ i, ρ_real i ∈ (ρ_dual i).val)
    (hdom : evalDomainValidDual e ρ_dual cfg) :
    Expr.eval ρ_real e ∈ (evalDualCore e ρ_dual cfg).val := by
  induction hsupp with
  | const q =>
    simp only [Expr.eval_const, evalDualCore, DualInterval.const]
    exact IntervalRat.mem_singleton q
  | var idx =>
    simp only [Expr.eval_var, evalDualCore]
    exact hρ idx
  | add _ _ ih₁ ih₂ =>
    simp only [evalDomainValidDual] at hdom
    simp only [Expr.eval_add, evalDualCore, DualInterval.add]
    exact IntervalRat.mem_add (ih₁ hdom.1) (ih₂ hdom.2)
  | mul _ _ ih₁ ih₂ =>
    simp only [evalDomainValidDual] at hdom
    simp only [Expr.eval_mul, evalDualCore, DualInterval.mul]
    exact IntervalRat.mem_mul (ih₁ hdom.1) (ih₂ hdom.2)
  | neg _ ih =>
    simp only [evalDomainValidDual] at hdom
    simp only [Expr.eval_neg, evalDualCore, DualInterval.neg]
    exact IntervalRat.mem_neg (ih hdom)
  | sin _ ih =>
    simp only [evalDomainValidDual] at hdom
    simp only [Expr.eval_sin, evalDualCore, DualInterval.sinCore]
    exact IntervalRat.mem_sinComputable (ih hdom) cfg.taylorDepth
  | cos _ ih =>
    simp only [evalDomainValidDual] at hdom
    simp only [Expr.eval_cos, evalDualCore, DualInterval.cosCore]
    exact IntervalRat.mem_cosComputable (ih hdom) cfg.taylorDepth
  | exp _ ih =>
    simp only [evalDomainValidDual] at hdom
    simp only [Expr.eval_exp, evalDualCore, DualInterval.expCore]
    exact IntervalRat.mem_expComputable (ih hdom) cfg.taylorDepth
  | sqrt _ ih =>
    simp only [evalDomainValidDual] at hdom
    simp only [Expr.eval_sqrt, evalDualCore, DualInterval.sqrt]
    exact IntervalRat.mem_sqrtInterval' (ih hdom)
  | sinh _ ih =>
    simp only [evalDomainValidDual] at hdom
    simp only [Expr.eval_sinh, evalDualCore, DualInterval.sinhCore]
    exact IntervalRat.mem_sinhComputable (ih hdom) cfg.taylorDepth
  | cosh _ ih =>
    simp only [evalDomainValidDual] at hdom
    simp only [Expr.eval_cosh, evalDualCore, DualInterval.coshCore]
    exact IntervalRat.mem_coshComputable (ih hdom) cfg.taylorDepth
  | tanh _ ih =>
    simp only [evalDomainValidDual] at hdom
    simp only [Expr.eval_tanh, evalDualCore, DualInterval.tanhCore]
    exact mem_tanhInterval (ih hdom)
  | erf _ ih =>
    simp only [evalDomainValidDual] at hdom
    simp only [Expr.eval_erf, evalDualCore, DualInterval.erfCore]
    simp only [IntervalRat.mem_def, Rat.cast_neg, Rat.cast_one]
    exact ⟨Real.neg_one_le_erf _, Real.erf_le_one _⟩
  | log _ ih =>
    simp only [evalDomainValidDual] at hdom
    simp only [Expr.eval_log, evalDualCore, DualInterval.logCore]
    exact IntervalRat.mem_logComputable (ih hdom.1) hdom.2 cfg.taylorDepth
  | namedConst c =>
    simp only [Expr.eval_namedConst, evalDualCore, DualInterval.ofMathConst]
    exact c.mem_interval

/-- For ExprSupported expressions (which exclude log), domain validity is trivially true.
    This is because ExprSupported has no log constructor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `747babc0407118a18da9ff930c8c65b2fc3ff6ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
