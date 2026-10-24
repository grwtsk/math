# evalIntervalAffine_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:848d010b-3929-0c0c-34d9-f4cdaaf9bba5",
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
  "slug": "evalintervalaffine-correct--0101db4407a5dc2448566fd8",
  "source": {
    "blob": "efeff7616967a6a26ef787568fdf4fe3e07002e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 236,
    "path": "GRWTSK/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0101db4407a5dc2448566fd8798ee1fbea5b8aa2e7a9d3a548e013d539ad1bbe",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:848d010b-3929-0c0c-34d9-f4cdaaf9bba5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–335.

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

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efeff7616967a6a26ef787568fdf4fe3e07002e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
