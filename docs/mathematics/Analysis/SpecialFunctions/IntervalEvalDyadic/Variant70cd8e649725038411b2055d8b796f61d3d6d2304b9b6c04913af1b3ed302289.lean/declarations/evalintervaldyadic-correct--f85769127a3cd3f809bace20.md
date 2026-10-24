# evalIntervalDyadic_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b9763c7-01c8-c4f7-0798-4be0c563dd52",
  "kind": "theorem",
  "lexical_name": "evalIntervalDyadic_correct",
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
  "slug": "evalintervaldyadic-correct--f85769127a3cd3f809bace20",
  "source": {
    "blob": "416f03a2e1f7ed79cc306cd97a6cc17f15baf6aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 516,
    "line": 406,
    "path": "GRWTSK/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f85769127a3cd3f809bace20ef4e1ea39fd3d359553b7749367cb564ea8ce0c3",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b9763c7-01c8-c4f7-0798-4be0c563dd52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–516.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalIntervalDyadic_correct (e : Expr) (hsupp : ExprSupportedCore e)
    (ρ_real : Nat → ℝ) (ρ_dyad : IntervalDyadicEnv)
    (hρ : envMemDyadic ρ_real ρ_dyad) (cfg : DyadicConfig := {})
    (hprec : cfg.precision ≤ 0 := by norm_num)
    (hdom : evalDomainValidDyadic e ρ_dyad cfg) :
    Expr.eval ρ_real e ∈ evalIntervalDyadic e ρ_dyad cfg := by
  induction hsupp with
  | const q =>
    simp only [Expr.eval_const, evalIntervalDyadic]
    apply IntervalDyadic.mem_ofIntervalRat
    · exact IntervalRat.mem_singleton q
    · exact hprec
  | var idx =>
    simp only [Expr.eval_var, evalIntervalDyadic]
    exact hρ idx
  | add _ _ ih₁ ih₂ =>
    simp only [evalDomainValidDyadic] at hdom
    simp only [Expr.eval_add, evalIntervalDyadic]
    have h := IntervalDyadic.mem_add (ih₁ hdom.1) (ih₂ hdom.2)
    exact IntervalDyadic.roundOut_contains h cfg.precision
  | mul _ _ ih₁ ih₂ =>
    simp only [evalDomainValidDyadic] at hdom
    simp only [Expr.eval_mul, evalIntervalDyadic]
    have h := IntervalDyadic.mem_mul (ih₁ hdom.1) (ih₂ hdom.2)
    exact IntervalDyadic.roundOut_contains h cfg.precision
  | neg _ ih =>
    simp only [evalDomainValidDyadic] at hdom
    simp only [Expr.eval_neg, evalIntervalDyadic]
    exact IntervalDyadic.mem_neg (ih hdom)
  | sin _ ih =>
    simp only [evalDomainValidDyadic] at hdom
    simp only [Expr.eval_sin, evalIntervalDyadic, sinIntervalDyadic]
    have hrat := IntervalDyadic.mem_toIntervalRat.mp (ih hdom)
    have hsin := IntervalRat.mem_sinComputable hrat cfg.taylorDepth
    exact IntervalDyadic.mem_ofIntervalRat hsin cfg.precision hprec
  | cos _ ih =>
    simp only [evalDomainValidDyadic] at hdom
    simp only [Expr.eval_cos, evalIntervalDyadic, cosIntervalDyadic]
    have hrat := IntervalDyadic.mem_toIntervalRat.mp (ih hdom)
    have hcos := IntervalRat.mem_cosComputable hrat cfg.taylorDepth
    exact IntervalDyadic.mem_ofIntervalRat hcos cfg.precision hprec
  | exp _ ih =>
    simp only [evalDomainValidDyadic] at hdom
    simp only [Expr.eval_exp, evalIntervalDyadic, expIntervalDyadic]
    have hrat := IntervalDyadic.mem_toIntervalRat.mp (ih hdom)
    have hexp := IntervalRat.mem_expComputable hrat cfg.taylorDepth
    exact IntervalDyadic.mem_ofIntervalRat hexp cfg.precision hprec
  | sqrt _ ih =>
    simp only [evalDomainValidDyadic] at hdom
    simp only [Expr.eval_sqrt, evalIntervalDyadic, sqrtIntervalDyadic]
    exact IntervalDyadic.mem_sqrt' (ih hdom) cfg.precision
  | sinh _ ih =>
    simp only [evalDomainValidDyadic] at hdom
    simp only [Expr.eval_sinh, evalIntervalDyadic, sinhIntervalDyadic]
    have hrat := IntervalDyadic.mem_toIntervalRat.mp (ih hdom)
    have hsinh := IntervalRat.mem_sinhComputable hrat cfg.taylorDepth
    exact IntervalDyadic.mem_ofIntervalRat hsinh cfg.precision hprec
  | cosh _ ih =>
    simp only [evalDomainValidDyadic] at hdom
    simp only [Expr.eval_cosh, evalIntervalDyadic, coshIntervalDyadic]
    have hrat := IntervalDyadic.mem_toIntervalRat.mp (ih hdom)
    have hcosh := IntervalRat.mem_coshComputable hrat cfg.taylorDepth
    exact IntervalDyadic.mem_ofIntervalRat hcosh cfg.precision hprec
  | @tanh e' _ ih =>
    simp only [evalDomainValidDyadic] at hdom
    simp only [Expr.eval_tanh, evalIntervalDyadic, tanhIntervalDyadic]
    -- tanh x ∈ [-1, 1] for all x
    rw [IntervalDyadic.mem_def, Dyadic.toRat_ofInt, Dyadic.toRat_ofInt]
    simp only [Int.cast_neg, Int.cast_one, Rat.cast_neg, Rat.cast_one]
    set x := Expr.eval ρ_real e' with hx
    constructor
    -- tanh x ≥ -1: use tanh = sinh/cosh, cosh > 0, and -cosh ≤ sinh
    · rw [Real.tanh_eq_sinh_div_cosh]
      have hcosh : Real.cosh x > 0 := Real.cosh_pos x
      rw [le_div_iff₀ hcosh, neg_one_mul]
      rw [Real.sinh_eq, Real.cosh_eq]
      have h1 : Real.exp x > 0 := Real.exp_pos x
      linarith
    -- tanh x ≤ 1: use sinh ≤ cosh (since exp(-x) > 0)
    · rw [Real.tanh_eq_sinh_div_cosh]
      have hcosh : Real.cosh x > 0 := Real.cosh_pos x
      rw [div_le_one₀ hcosh]
      rw [Real.sinh_eq, Real.cosh_eq]
      have h2 : Real.exp (-x) > 0 := Real.exp_pos (-x)
      linarith
  | @erf e' _ ih =>
    simp only [evalDomainValidDyadic] at hdom
    simp only [Expr.eval_erf, evalIntervalDyadic, erfIntervalDyadic]
    -- erf x ∈ [-1, 1] for all x
    rw [IntervalDyadic.mem_def, Dyadic.toRat_ofInt, Dyadic.toRat_ofInt]
    simp only [Int.cast_neg, Int.cast_one, Rat.cast_neg, Rat.cast_one]
    exact ⟨Real.neg_one_le_erf _, Real.erf_le_one _⟩
  | log _ ih =>
    simp only [evalDomainValidDyadic] at hdom
    simp only [Expr.eval_log, evalIntervalDyadic, logIntervalDyadic]
    have hrat := IntervalDyadic.mem_toIntervalRat.mp (ih hdom.1)
    -- hdom.2 gives us the positivity condition: IRat.lo > 0
    -- This makes the if-condition true, so we take the positive branch
    have hpos : (evalIntervalDyadic _ ρ_dyad cfg).toIntervalRat.lo > 0 := hdom.2
    simp only [hpos, ↓reduceIte]
    have hlog := IntervalRat.mem_logComputable hrat hpos cfg.taylorDepth
    exact IntervalDyadic.mem_ofIntervalRat hlog cfg.precision hprec
  | namedConst c =>
    simp only [Expr.eval_namedConst, evalIntervalDyadic]
    exact IntervalDyadic.mem_ofIntervalRat c.mem_interval cfg.precision hprec

/-- Correctness theorem for Dyadic evaluation with ExprSupportedWithInv.

Extends `evalIntervalDyadic_correct` to handle `inv` (and delegates to it for
all ExprSupportedCore cases). Requires the `inv` argument interval to be bounded
away from zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `416f03a2e1f7ed79cc306cd97a6cc17f15baf6aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
