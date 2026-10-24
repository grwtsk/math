# evalIntervalAffine_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ffc984b99a55970796ddec55732ef4e61bcb806",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 228,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:884104ab-bd99-6c1b-b6b5-180b3c09dacb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef9044c6-e009-5b9a-b6bf-e332f5ea2d79",
  "kind": "theorem",
  "lexical_name": "evalIntervalAffine_correct",
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
  "slug": "evalintervalaffine-correct--a4f7d2d897e0a473c06557ef",
  "source": {
    "blob": "0ffc984b99a55970796ddec55732ef4e61bcb806",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 228,
    "path": "GRWTSK/Analysis/SpecialFunctions/IntervalEvalAffine/Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4f7d2d897e0a473c06557ef5223f636962acebafee8483ffdd66b72ecffeed1",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/IntervalEvalAffine/Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef9044c6-e009-5b9a-b6bf-e332f5ea2d79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalIntervalAffine_correct (e : Expr) (hsupp : ExprSupportedCore e)
    (ρ_real : Nat → ℝ) (ρ_affine : AffineEnv) (eps : AffineForm.NoiseAssignment)
    (hvalid : AffineForm.validNoise eps)
    (hρ : envMemAffine ρ_real ρ_affine eps) (cfg : AffineConfig := {})
    (hdom : evalDomainValidAffine e ρ_affine cfg) :
    AffineForm.mem_affine (evalIntervalAffine e ρ_affine cfg) eps (Expr.eval ρ_real e) := by
  induction hsupp with
  | const q =>
    simp only [Expr.eval_const, evalIntervalAffine]
    exact AffineForm.mem_const q eps
  | var idx =>
    simp only [Expr.eval_var, evalIntervalAffine]
    exact hρ idx
  | add _ _ ih₁ ih₂ =>
    simp only [evalDomainValidAffine] at hdom
    simp only [Expr.eval_add, evalIntervalAffine]
    exact AffineForm.mem_add (ih₁ hdom.1) (ih₂ hdom.2)
  | mul _ _ ih₁ ih₂ =>
    simp only [evalDomainValidAffine] at hdom
    simp only [Expr.eval_mul, evalIntervalAffine]
    exact AffineForm.mem_mul hvalid (ih₁ hdom.1) (ih₂ hdom.2)
  | neg _ ih =>
    simp only [evalDomainValidAffine] at hdom
    simp only [Expr.eval_neg, evalIntervalAffine]
    exact AffineForm.mem_neg (ih hdom)
  | exp _ ih =>
    simp only [evalDomainValidAffine] at hdom
    simp only [Expr.eval_exp, evalIntervalAffine]
    exact AffineForm.mem_exp hvalid (ih hdom) cfg.taylorDepth
  | tanh _ ih =>
    simp only [evalDomainValidAffine] at hdom
    simp only [Expr.eval_tanh, evalIntervalAffine]
    exact AffineForm.mem_tanh hvalid (ih hdom)
  | @erf arg _ ih =>
    simp only [evalDomainValidAffine] at hdom
    -- erf returns trivial affine form { c0 := 0, coeffs := [], r := 1 } representing [-1, 1]
    -- Just need to show Real.erf x ∈ [-1, 1]
    simp only [Expr.eval_erf, evalIntervalAffine]
    -- mem_affine requires: ∃ err, |err| ≤ r ∧ v = evalLinear af eps + err
    -- For { c0 := 0, coeffs := [], r := 1 }, evalLinear is just 0
    -- So we need: ∃ err, |err| ≤ 1 ∧ erf(x) = err
    -- Take err = erf(x), then need |erf(x)| ≤ 1
    show AffineForm.mem_affine { c0 := 0, coeffs := [], r := 1, r_nonneg := _ } eps _
    unfold AffineForm.mem_affine AffineForm.evalLinear AffineForm.linearSum
    simp only [List.zipWith_nil_left, List.sum_nil, Rat.cast_zero, zero_add, Rat.cast_one]
    use Real.erf (Expr.eval ρ_real arg)
    constructor
    · rw [abs_le]
      exact ⟨Real.neg_one_le_erf _, Real.erf_le_one _⟩
    · ring
  | sqrt _ ih =>
    simp only [evalDomainValidAffine] at hdom
    simp only [Expr.eval_sqrt, evalIntervalAffine]
    exact AffineForm.mem_sqrt' hvalid (ih hdom)
  | @sin arg _ ih =>
    simp only [evalDomainValidAffine] at hdom
    -- Interval fallback soundness
    set af := evalIntervalAffine arg ρ_affine cfg
    have hv_in_I : Expr.eval ρ_real arg ∈ af.toInterval :=
      AffineForm.mem_toInterval_weak hvalid (ih hdom)
    have hsin_in :=
      IntervalRat.mem_sinComputable hv_in_I cfg.taylorDepth
    simpa [Expr.eval_sin, evalIntervalAffine, af] using
      (AffineForm.mem_affine_of_interval (eps := eps) hsin_in)
  | @cos arg _ ih =>
    simp only [evalDomainValidAffine] at hdom
    set af := evalIntervalAffine arg ρ_affine cfg
    have hv_in_I : Expr.eval ρ_real arg ∈ af.toInterval :=
      AffineForm.mem_toInterval_weak hvalid (ih hdom)
    have hcos_in :=
      IntervalRat.mem_cosComputable hv_in_I cfg.taylorDepth
    simpa [Expr.eval_cos, evalIntervalAffine, af] using
      (AffineForm.mem_affine_of_interval (eps := eps) hcos_in)
  | sinh _ ih =>
    simp only [evalDomainValidAffine] at hdom
    simp only [Expr.eval_sinh, evalIntervalAffine]
    exact AffineForm.mem_sinh hvalid (ih hdom) cfg.taylorDepth
  | cosh _ ih =>
    simp only [evalDomainValidAffine] at hdom
    simp only [Expr.eval_cosh, evalIntervalAffine]
    exact AffineForm.mem_cosh hvalid (ih hdom) cfg.taylorDepth
  | @log arg _ ih =>
    simp only [evalDomainValidAffine] at hdom
    -- Interval fallback soundness for log
    have hmem_arg := ih hdom.1
    have hv_in_I : Expr.eval ρ_real arg ∈ (evalIntervalAffine arg ρ_affine cfg).toInterval :=
      AffineForm.mem_toInterval_weak hvalid hmem_arg
    -- hdom.2 gives us the positivity condition
    have hpos : (evalIntervalAffine arg ρ_affine cfg).toInterval.lo > 0 := hdom.2
    simp only [Expr.eval_log, evalIntervalAffine, hpos]
    have hlog_in := IntervalRat.mem_logComputable hv_in_I hpos cfg.taylorDepth
    exact AffineForm.mem_affine_of_interval (eps := eps) hlog_in
  | namedConst c =>
    simp only [Expr.eval_namedConst, evalIntervalAffine]
    simpa using (AffineForm.mem_affine_of_interval (eps := eps) c.mem_interval)

/-- Corollary: The interval produced by toInterval contains the true value.

This is the key result for optimization: if we compute an affine form and convert
to an interval, the interval is guaranteed to contain the true value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/IntervalEvalAffine/Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/IntervalEvalAffine/Variant282d7cfeba2622654816e7755f858d14914022c5e1ba2403ac6e853d4959b9c6.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ffc984b99a55970796ddec55732ef4e61bcb806` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
