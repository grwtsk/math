# evalIntervalDyadic_correct_withInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb486190-fe05-3c80-530c-c3a183ba70f9",
  "kind": "theorem",
  "lexical_name": "evalIntervalDyadic_correct_withInv",
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
  "slug": "evalintervaldyadic-correct-withinv--e9cff823a68e190e3b0e4143",
  "source": {
    "blob": "416f03a2e1f7ed79cc306cd97a6cc17f15baf6aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 623,
    "line": 517,
    "path": "GRWTSK/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9cff823a68e190e3b0e414378630210287469222cbe03decb37451d72614421",
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

Occurrence: `result:bb486190-fe05-3c80-530c-c3a183ba70f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 517–623.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalIntervalDyadic_correct_withInv (e : Expr) (hsupp : ExprSupportedWithInv e)
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
  | inv _ ih =>
    simp only [evalDomainValidDyadic] at hdom
    simp only [Expr.eval_inv, evalIntervalDyadic, invIntervalDyadic]
    have hinner := ih hdom.1
    have hrat := IntervalDyadic.mem_toIntervalRat.mp hinner
    have hinv := mem_invInterval_nonzero hrat hdom.2
    exact IntervalDyadic.mem_ofIntervalRat hinv cfg.precision hprec
  | exp _ ih =>
    simp only [evalDomainValidDyadic] at hdom
    simp only [Expr.eval_exp, evalIntervalDyadic, expIntervalDyadic]
    have hrat := IntervalDyadic.mem_toIntervalRat.mp (ih hdom)
    have hexp := IntervalRat.mem_expComputable hrat cfg.taylorDepth
    exact IntervalDyadic.mem_ofIntervalRat hexp cfg.precision hprec
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
  | log _ ih =>
    simp only [evalDomainValidDyadic] at hdom
    simp only [Expr.eval_log, evalIntervalDyadic, logIntervalDyadic]
    have hrat := IntervalDyadic.mem_toIntervalRat.mp (ih hdom.1)
    have hpos : (evalIntervalDyadic _ ρ_dyad cfg).toIntervalRat.lo > 0 := hdom.2
    simp only [hpos, ↓reduceIte]
    have hlog := IntervalRat.mem_logComputable hrat hpos cfg.taylorDepth
    exact IntervalDyadic.mem_ofIntervalRat hlog cfg.precision hprec
  | @atan e' _ ih =>
    simp only [evalDomainValidDyadic] at hdom
    simp only [Expr.eval_atan, evalIntervalDyadic, atanIntervalDyadic]
    rw [IntervalDyadic.mem_def, Dyadic.toRat_ofInt, Dyadic.toRat_ofInt]
    simp only [Int.cast_neg, Int.cast_ofNat, Rat.cast_neg, Rat.cast_ofNat]
    set x := Expr.eval ρ_real e' with hx
    constructor
    · linarith [Real.neg_pi_div_two_lt_arctan x, Real.pi_lt_four]
    · linarith [Real.arctan_lt_pi_div_two x, Real.pi_lt_four]
  | sinc _ ih =>
    simp only [evalDomainValidDyadic] at hdom
    simp only [Expr.eval_sinc, evalIntervalDyadic, sincIntervalDyadic]
    rw [IntervalDyadic.mem_def, Dyadic.toRat_ofInt, Dyadic.toRat_ofInt]
    simp only [Int.cast_neg, Int.cast_one, Rat.cast_neg, Rat.cast_one]
    exact ⟨Real.neg_one_le_sinc _, Real.sinc_le_one _⟩
  | arsinh _ ih =>
    simp only [evalDomainValidDyadic] at hdom
    simp only [Expr.eval_arsinh, evalIntervalDyadic, arsinhIntervalDyadic]
    have hrat := IntervalDyadic.mem_toIntervalRat.mp (ih hdom)
    have harsinh := mem_arsinhInterval hrat
    exact IntervalDyadic.mem_ofIntervalRat harsinh cfg.precision hprec
  | atanh _ ih =>
    simp only [evalDomainValidDyadic] at hdom
    obtain ⟨hdom_sub, hlo_gt, hhi_lt⟩ := hdom
    simp only [Expr.eval_atanh, evalIntervalDyadic, atanhIntervalDyadic]
    have hrat := IntervalDyadic.mem_toIntervalRat.mp (ih hdom_sub)
    have hatanh := IntervalRat.mem_atanhComputable hrat hlo_gt hhi_lt cfg.taylorDepth
    exact IntervalDyadic.mem_ofIntervalRat hatanh cfg.precision hprec
  | erf _ ih =>
    simp only [evalDomainValidDyadic] at hdom
    simp only [Expr.eval_erf, evalIntervalDyadic, erfIntervalDyadic]
    rw [IntervalDyadic.mem_def, Dyadic.toRat_ofInt, Dyadic.toRat_ofInt]
    simp only [Int.cast_neg, Int.cast_one, Rat.cast_neg, Rat.cast_one]
    exact ⟨Real.neg_one_le_erf _, Real.erf_le_one _⟩
  | sqrt _ ih =>
    simp only [evalDomainValidDyadic] at hdom
    simp only [Expr.eval_sqrt, evalIntervalDyadic, sqrtIntervalDyadic]
    exact IntervalDyadic.mem_sqrt' (ih hdom) cfg.precision
  | namedConst c =>
    simp only [Expr.eval_namedConst, evalIntervalDyadic]
    exact IntervalDyadic.mem_ofIntervalRat c.mem_interval cfg.precision hprec

/-! ### Convenience Functions -/

/-- Evaluate with standard (double-like) precision -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean#L517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `416f03a2e1f7ed79cc306cd97a6cc17f15baf6aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
