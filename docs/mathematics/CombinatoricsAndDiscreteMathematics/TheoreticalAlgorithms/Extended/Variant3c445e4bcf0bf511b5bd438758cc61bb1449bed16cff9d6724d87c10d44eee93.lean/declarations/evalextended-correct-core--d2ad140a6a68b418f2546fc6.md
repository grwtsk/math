# evalExtended_correct_core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:171767e0-f95f-f96e-0f3e-1a647a262e67",
  "kind": "theorem",
  "lexical_name": "evalExtended_correct_core",
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
  "slug": "evalextended-correct-core--d2ad140a6a68b418f2546fc6",
  "source": {
    "blob": "3407862e03ef0fb006b96323c7e78f6fa603fa2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 674,
    "line": 553,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2ad140a6a68b418f2546fc6b4d18e2f44b632e729a87532fbfbd0a2434909db",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:171767e0-f95f-f96e-0f3e-1a647a262e67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–674.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalExtended_correct_core (e : Expr) (hsupp : ExprSupportedCore e)
    (ρ_real : Nat → ℝ) (ρ_ext : ExtendedEnv) (hρ : extendedEnvMem ρ_real ρ_ext)
    (cfg : ExtendedConfig := {})
    (hdom : evalDomainValidExtended e ρ_ext cfg) :
    Expr.eval ρ_real e ∈ evalExtended e ρ_ext cfg := by
  induction hsupp with
  | const q =>
    simp only [Expr.eval_const, evalExtended]
    rw [ExtendedInterval.mem_singleton]
    exact IntervalRat.mem_singleton q
  | var idx =>
    simp only [Expr.eval_var, evalExtended]
    exact hρ idx
  | add _ _ ih₁ ih₂ =>
    simp only [evalDomainValidExtended] at hdom
    simp only [Expr.eval_add, evalExtended]
    exact mem_liftBinary (fun x y I J hx hy => IntervalRat.mem_add hx hy) (ih₁ hdom.1) (ih₂ hdom.2)
  | mul _ _ ih₁ ih₂ =>
    simp only [evalDomainValidExtended] at hdom
    simp only [Expr.eval_mul, evalExtended]
    exact mem_liftBinary (fun x y I J hx hy => IntervalRat.mem_mul hx hy) (ih₁ hdom.1) (ih₂ hdom.2)
  | neg _ ih =>
    simp only [evalDomainValidExtended] at hdom
    simp only [Expr.eval_neg, evalExtended]
    exact mem_liftUnary (fun x I hx => IntervalRat.mem_neg hx) (ih hdom)
  | sin _ ih =>
    simp only [evalDomainValidExtended] at hdom
    simp only [Expr.eval_sin, evalExtended]
    exact mem_liftUnary (fun x I hx => IntervalRat.mem_sinComputable hx cfg.taylorDepth) (ih hdom)
  | cos _ ih =>
    simp only [evalDomainValidExtended] at hdom
    simp only [Expr.eval_cos, evalExtended]
    exact mem_liftUnary (fun x I hx => IntervalRat.mem_cosComputable hx cfg.taylorDepth) (ih hdom)
  | exp _ ih =>
    simp only [evalDomainValidExtended] at hdom
    simp only [Expr.eval_exp, evalExtended]
    exact mem_liftUnary (fun x I hx => IntervalRat.mem_expComputable hx cfg.taylorDepth) (ih hdom)
  | sqrt _ ih =>
    simp only [evalDomainValidExtended] at hdom
    simp only [Expr.eval_sqrt, evalExtended]
    exact mem_liftUnary (fun x I hx => IntervalRat.mem_sqrtInterval' hx) (ih hdom)
  | sinh _ ih =>
    simp only [evalDomainValidExtended] at hdom
    simp only [Expr.eval_sinh, evalExtended]
    exact mem_liftUnary (fun x I hx => IntervalRat.mem_sinhComputable hx cfg.taylorDepth) (ih hdom)
  | cosh _ ih =>
    simp only [evalDomainValidExtended] at hdom
    simp only [Expr.eval_cosh, evalExtended]
    exact mem_liftUnary (fun x I hx => IntervalRat.mem_coshComputable hx cfg.taylorDepth) (ih hdom)
  | tanh _ ih =>
    simp only [evalDomainValidExtended] at hdom
    simp only [Expr.eval_tanh, evalExtended]
    exact mem_liftUnary (fun x I hx => mem_tanhInterval hx) (ih hdom)
  | erf _ ih =>
    simp only [evalDomainValidExtended] at hdom
    simp only [Expr.eval_erf, evalExtended]
    -- erf returns singleton [-1, 1], need to show Real.erf x ∈ [-1, 1]
    simp only [ExtendedInterval.mem_singleton, IntervalRat.mem_def]
    simp only [Rat.cast_neg, Rat.cast_one]
    exact ⟨Real.neg_one_le_erf _, Real.erf_le_one _⟩
  | @log arg _ ih =>
    simp only [evalDomainValidExtended] at hdom
    simp only [Expr.eval_log, evalExtended]
    -- ih gives membership in evalExtended arg
    have hmem := ih hdom.1
    -- hdom.2 gives (evalExtended arg ρ_ext cfg).hull.lo > 0
    have hpos := hdom.2
    -- Since hull.lo > 0, all parts have lo > 0, so filter keeps everything
    -- and the filtered list is non-empty
    obtain ⟨I, hI_mem, hx_in_I⟩ := hmem
    -- I is in the parts of evalExtended arg
    -- Since hull.lo > 0 and hull.lo = min of all lo's, we have I.lo > 0
    have hI_lo_pos : 0 < I.lo := by
      have hparts_ne : (evalExtended arg ρ_ext cfg).parts ≠ [] := by
        intro h
        simp [h] at hI_mem
      -- hull?.lo is the min of all lo's, so hull.lo ≤ I.lo
      cases hparts_eq : (evalExtended arg ρ_ext cfg).parts with
      | nil => exact absurd hparts_eq hparts_ne
      | cons hd tl =>
        have hI_in : I ∈ hd :: tl := hparts_eq ▸ hI_mem
        cases List.mem_cons.mp hI_in with
        | inl heq =>
          subst heq
          have hhead := ExtendedInterval.foldl_contains_head tl I
          simp only [ExtendedInterval.hull, ExtendedInterval.hull?] at hpos
          rw [hparts_eq] at hpos
          simp only [Option.getD_some] at hpos
          calc 0 < (tl.foldl _ I).lo := hpos
               _ ≤ I.lo := hhead.1
        | inr hmem_tl =>
          have htail := ExtendedInterval.foldl_contains_tail tl hd I hmem_tl
          simp only [ExtendedInterval.hull, ExtendedInterval.hull?] at hpos
          rw [hparts_eq] at hpos
          simp only [Option.getD_some] at hpos
          calc 0 < (tl.foldl _ hd).lo := hpos
               _ ≤ I.lo := htail.1
    -- So I passes the filter
    have hI_filter : I ∈ (evalExtended arg ρ_ext cfg).parts.filter (fun J => decide (0 < J.lo)) := by
      simp only [List.mem_filter, decide_eq_true_eq]
      exact ⟨hI_mem, hI_lo_pos⟩
    -- filtered is not empty
    have hfilter_ne : ¬((evalExtended arg ρ_ext cfg).parts.filter (fun J => decide (0 < J.lo))).isEmpty := by
      simp only [List.isEmpty_iff]
      intro h
      simp [h] at hI_filter
    simp only [hfilter_ne, ↓reduceIte]
    -- Now show Real.log x ∈ the result
    simp only [ExtendedInterval.mem_def]
    use IntervalRat.logComputable I cfg.taylorDepth
    constructor
    · simp only [List.mem_map]
      exact ⟨I, hI_filter, rfl⟩
    · exact IntervalRat.mem_logComputable hx_in_I hI_lo_pos cfg.taylorDepth
  | namedConst c =>
    simp only [Expr.eval_namedConst, evalExtended]
    rw [ExtendedInterval.mem_singleton]
    exact c.mem_interval

/-! ## Utility: Hull Soundness -/

/-- If x is in the extended interval, it's in the hull -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3407862e03ef0fb006b96323c7e78f6fa603fa2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
