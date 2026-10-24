# evalIntervalCore_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32fb82ba8b8c36521ad64b9d2daf0848859eb61f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1004,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eaa582d9-85dc-13cd-1899-2f73a3187ddd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7cbf3125-b810-11e1-458b-9579dcf3e01b",
  "kind": "theorem",
  "lexical_name": "evalIntervalCore_correct",
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
  "slug": "evalintervalcore-correct--790df4c8f4e35aee25a4d339",
  "source": {
    "blob": "32fb82ba8b8c36521ad64b9d2daf0848859eb61f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1070,
    "line": 1004,
    "path": "GRWTSK/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:790df4c8f4e35aee25a4d3396e92d27d5f5d3dc036349fa03e56cd73937046a3",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cbf3125-b810-11e1-458b-9579dcf3e01b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1004–1070.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalIntervalCore_correct (e : Expr) (hsupp : ExprSupportedCore e)
    (ρ_real : Nat → ℝ) (ρ_int : IntervalEnv) (hρ : envMem ρ_real ρ_int)
    (cfg : EvalConfig := {})
    (hdom : evalDomainValid e ρ_int cfg) :
    Expr.eval ρ_real e ∈ evalIntervalCore e ρ_int cfg := by
  induction hsupp with
  | const q =>
    simp only [Expr.eval_const, evalIntervalCore]
    exact IntervalRat.mem_singleton q
  | var idx =>
    simp only [Expr.eval_var, evalIntervalCore]
    exact hρ idx
  | add h₁ h₂ ih₁ ih₂ =>
    simp only [evalDomainValid] at hdom
    simp only [Expr.eval_add, evalIntervalCore]
    exact IntervalRat.mem_add (ih₁ hdom.1) (ih₂ hdom.2)
  | mul h₁ h₂ ih₁ ih₂ =>
    simp only [evalDomainValid] at hdom
    simp only [Expr.eval_mul, evalIntervalCore]
    exact IntervalRat.mem_mul (ih₁ hdom.1) (ih₂ hdom.2)
  | neg _ ih =>
    simp only [evalDomainValid] at hdom
    simp only [Expr.eval_neg, evalIntervalCore]
    exact IntervalRat.mem_neg (ih hdom)
  | sin _ ih =>
    simp only [evalDomainValid] at hdom
    simp only [Expr.eval_sin, evalIntervalCore]
    exact IntervalRat.mem_sinComputableReduced (ih hdom) cfg.taylorDepth
  | cos _ ih =>
    simp only [evalDomainValid] at hdom
    simp only [Expr.eval_cos, evalIntervalCore]
    exact IntervalRat.mem_cosComputableReduced (ih hdom) cfg.taylorDepth
  | exp _ ih =>
    simp only [evalDomainValid] at hdom
    simp only [Expr.eval_exp, evalIntervalCore]
    exact IntervalRat.mem_expComputable (ih hdom) cfg.taylorDepth
  | log _ ih =>
    simp only [evalDomainValid] at hdom
    simp only [Expr.eval_log, evalIntervalCore]
    exact IntervalRat.mem_logComputable (ih hdom.1) hdom.2 cfg.taylorDepth
  | sqrt _ ih =>
    simp only [evalDomainValid] at hdom
    simp only [Expr.eval_sqrt, evalIntervalCore]
    exact IntervalRat.mem_sqrtIntervalTightPrec' (ih hdom)
  | sinh _ ih =>
    simp only [evalDomainValid] at hdom
    simp only [Expr.eval_sinh, evalIntervalCore, sinhInterval]
    exact IntervalRat.mem_sinhComputable (ih hdom) cfg.taylorDepth
  | cosh _ ih =>
    simp only [evalDomainValid] at hdom
    simp only [Expr.eval_cosh, evalIntervalCore, coshInterval]
    exact IntervalRat.mem_coshComputable (ih hdom) cfg.taylorDepth
  | tanh _ ih =>
    simp only [evalDomainValid] at hdom
    simp only [Expr.eval_tanh, evalIntervalCore, tanhInterval]
    exact mem_tanhInterval (ih hdom)
  | erf _ ih =>
    simp only [evalDomainValid] at hdom
    simp only [Expr.eval_erf, evalIntervalCore]
    exact mem_erfInterval (ih hdom) cfg.taylorDepth
  | namedConst c =>
    simp only [Expr.eval_namedConst, evalIntervalCore]
    exact c.mem_interval

/-! ### Convenience functions -/

/-- Computable single-variable evaluation for core expressions -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean#L1004).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32fb82ba8b8c36521ad64b9d2daf0848859eb61f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
