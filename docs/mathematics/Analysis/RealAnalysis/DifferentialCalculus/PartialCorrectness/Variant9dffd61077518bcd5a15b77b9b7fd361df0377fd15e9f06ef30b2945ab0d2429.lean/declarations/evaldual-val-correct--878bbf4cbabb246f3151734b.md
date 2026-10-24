# evalDual?_val_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8bf107ea2deeb87097242197ff29c69173d4a122",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9dffd61077518bcd5a15b77b9b7fd361df0377fd15e9f06ef30b2945ab0d2429.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa8b4742-9e9d-4dc6-f8d7-7b1c29cc5a01",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6102d37e-35be-cc47-f101-9f36ad763b1e",
  "kind": "theorem",
  "lexical_name": "evalDual?_val_correct",
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
  "slug": "evaldual-val-correct--878bbf4cbabb246f3151734b",
  "source": {
    "blob": "8bf107ea2deeb87097242197ff29c69173d4a122",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 43,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant9dffd61077518bcd5a15b77b9b7fd361df0377fd15e9f06ef30b2945ab0d2429.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:878bbf4cbabb246f3151734bee3f5006691d793cbc4929f2d597edda9821269d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant9dffd61077518bcd5a15b77b9b7fd361df0377fd15e9f06ef30b2945ab0d2429.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6102d37e-35be-cc47-f101-9f36ad763b1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalDual?_val_correct (e : Expr) (hsupp : ExprSupportedWithInv e)
    (ρ_real : Nat → ℝ) (ρ_dual : DualEnv) (D : DualInterval)
    (hsome : evalDual? e ρ_dual = some D)
    (hρ : ∀ i, ρ_real i ∈ (ρ_dual i).val) :
    Expr.eval ρ_real e ∈ D.val := by
  induction hsupp generalizing D with
  | const q =>
    simp only [evalDual?, Option.some.injEq] at hsome
    rw [← hsome]
    simp only [Expr.eval_const, DualInterval.const]
    exact IntervalRat.mem_singleton q
  | var idx =>
    simp only [evalDual?, Option.some.injEq] at hsome
    rw [← hsome]
    exact hρ idx
  | @add e₁ e₂ h₁ h₂ ih₁ ih₂ =>
    simp only [evalDual?] at hsome
    cases heq₁ : evalDual? e₁ ρ_dual with
    | none => simp only [heq₁, reduceCtorEq] at hsome
    | some d₁ =>
      cases heq₂ : evalDual? e₂ ρ_dual with
      | none => simp only [heq₁, heq₂, reduceCtorEq] at hsome
      | some d₂ =>
        simp only [heq₁, heq₂, Option.some.injEq] at hsome
        rw [← hsome]
        simp only [Expr.eval_add, DualInterval.add]
        exact IntervalRat.mem_add (ih₁ d₁ heq₁) (ih₂ d₂ heq₂)
  | @mul e₁ e₂ h₁ h₂ ih₁ ih₂ =>
    simp only [evalDual?] at hsome
    cases heq₁ : evalDual? e₁ ρ_dual with
    | none => simp only [heq₁, reduceCtorEq] at hsome
    | some d₁ =>
      cases heq₂ : evalDual? e₂ ρ_dual with
      | none => simp only [heq₁, heq₂, reduceCtorEq] at hsome
      | some d₂ =>
        simp only [heq₁, heq₂, Option.some.injEq] at hsome
        rw [← hsome]
        simp only [Expr.eval_mul, DualInterval.mul]
        exact IntervalRat.mem_mul (ih₁ d₁ heq₁) (ih₂ d₂ heq₂)
  | @neg e' hs ih =>
    simp only [evalDual?] at hsome
    cases heq : evalDual? e' ρ_dual with
    | none => simp only [heq, reduceCtorEq] at hsome
    | some d =>
      simp only [heq, Option.some.injEq] at hsome
      rw [← hsome]
      simp only [Expr.eval_neg, DualInterval.neg]
      exact IntervalRat.mem_neg (ih d heq)
  | @inv e' hs ih =>
    simp only [evalDual?] at hsome
    cases heq : evalDual? e' ρ_dual with
    | none => simp only [heq, reduceCtorEq] at hsome
    | some d =>
      simp only [heq, DualInterval.inv?] at hsome
      split at hsome
      · simp at hsome
      · next hnotzero =>
        simp only [Option.some.injEq] at hsome
        rw [← hsome]
        simp only [Expr.eval_inv]
        have hmem := ih d heq
        -- The denominator is nonzero because d.val doesn't contain zero and eval ∈ d.val
        have heval_ne : Expr.eval ρ_real e' ≠ 0 := by
          intro heq_zero
          rw [heq_zero] at hmem
          simp only [IntervalRat.mem_def] at hmem
          simp only [IntervalRat.containsZero, not_and, not_le] at hnotzero
          rcases le_or_gt d.val.lo 0 with hlo | hlo
          · have hhi_nonneg : (0 : ℚ) ≤ d.val.hi := by
              have h : (0 : ℝ) ≤ d.val.hi := hmem.2
              exact_mod_cast h
            exact absurd (hnotzero hlo) (not_lt.mpr hhi_nonneg)
          · have hlo_pos : (0 : ℝ) < d.val.lo := by exact_mod_cast hlo
            exact absurd hmem.1 (not_le.mpr hlo_pos)
        exact IntervalRat.mem_invNonzero hmem heval_ne
  | @sin e' hs ih =>
    simp only [evalDual?] at hsome
    cases heq : evalDual? e' ρ_dual with
    | none => simp only [heq, reduceCtorEq] at hsome
    | some d =>
      simp only [heq, Option.some.injEq] at hsome
      rw [← hsome]
      simp only [Expr.eval_sin, DualInterval.sin]
      exact mem_sinInterval (ih d heq)
  | @cos e' hs ih =>
    simp only [evalDual?] at hsome
    cases heq : evalDual? e' ρ_dual with
    | none => simp only [heq, reduceCtorEq] at hsome
    | some d =>
      simp only [heq, Option.some.injEq] at hsome
      rw [← hsome]
      simp only [Expr.eval_cos, DualInterval.cos]
      exact mem_cosInterval (ih d heq)
  | @exp e' hs ih =>
    simp only [evalDual?] at hsome
    cases heq : evalDual? e' ρ_dual with
    | none => simp only [heq, reduceCtorEq] at hsome
    | some d =>
      simp only [heq, Option.some.injEq] at hsome
      rw [← hsome]
      simp only [Expr.eval_exp, DualInterval.exp]
      exact IntervalRat.mem_expInterval (ih d heq)
  | @log e' hs ih =>
    simp only [evalDual?] at hsome
    cases heq : evalDual? e' ρ_dual with
    | none => simp only [heq, reduceCtorEq] at hsome
    | some d =>
      simp only [heq, DualInterval.log?] at hsome
      split at hsome
      · rename_i hpos
        simp only [Option.some.injEq] at hsome
        rw [← hsome]
        simp only [Expr.eval_log]
        have hJ_mem := ih d heq
        exact IntervalRat.mem_logInterval hJ_mem
      · contradiction
  | @atan e' hs ih =>
    simp only [evalDual?] at hsome
    cases heq : evalDual? e' ρ_dual with
    | none => simp only [heq, reduceCtorEq] at hsome
    | some d =>
      simp only [heq, Option.some.injEq] at hsome
      rw [← hsome]
      simp only [Expr.eval_atan, DualInterval.atan]
      exact mem_atanInterval (ih d heq)
  | @arsinh e' hs ih =>
    simp only [evalDual?] at hsome
    cases heq : evalDual? e' ρ_dual with
    | none => simp only [heq, reduceCtorEq] at hsome
    | some d =>
      simp only [heq, Option.some.injEq] at hsome
      rw [← hsome]
      simp only [Expr.eval_arsinh, DualInterval.arsinh]
      exact mem_arsinhInterval (ih d heq)
  | @atanh _ _ _ =>
    -- evalDual? returns none for atanh, so hsome : none = some D is a contradiction
    simp only [evalDual?] at hsome
    contradiction
  | @sinc e' hs ih =>
    simp only [evalDual?] at hsome
    cases heq : evalDual? e' ρ_dual with
    | none => simp only [heq, reduceCtorEq] at hsome
    | some d =>
      simp only [heq, Option.some.injEq] at hsome
      rw [← hsome]
      simp only [Expr.eval_sinc, DualInterval.sinc]
      simp only [IntervalRat.mem_def, Rat.cast_neg, Rat.cast_one]
      exact ⟨Real.neg_one_le_sinc _, Real.sinc_le_one _⟩
  | @erf e' hs ih =>
    simp only [evalDual?] at hsome
    cases heq : evalDual? e' ρ_dual with
    | none => simp only [heq, reduceCtorEq] at hsome
    | some d =>
      simp only [heq, Option.some.injEq] at hsome
      rw [← hsome]
      simp only [Expr.eval_erf, DualInterval.erf]
      simp only [IntervalRat.mem_def, Rat.cast_neg, Rat.cast_one]
      exact ⟨Real.neg_one_le_erf _, Real.erf_le_one _⟩
  | @sqrt e' hs ih =>
    simp only [evalDual?] at hsome
    cases heq : evalDual? e' ρ_dual with
    | none => simp only [heq, reduceCtorEq] at hsome
    | some d =>
      simp only [heq] at hsome
      -- hsome : DualInterval.sqrt? d = some D
      simp only [DualInterval.sqrt?] at hsome
      split at hsome
      · next hpos =>
        simp only [Option.some.injEq] at hsome
        rw [← hsome]
        simp only [Expr.eval_sqrt]
        exact IntervalRat.mem_sqrtInterval' (ih d heq)
      · exact absurd hsome (by simp)
  | namedConst c =>
    simp only [evalDual?, Option.some.injEq] at hsome
    rw [← hsome]
    simp only [Expr.eval_namedConst, DualInterval.ofMathConst]
    exact c.mem_interval

/-- Single-variable version of evalDual?_val_correct -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant9dffd61077518bcd5a15b77b9b7fd361df0377fd15e9f06ef30b2945ab0d2429.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PartialCorrectness/Variant9dffd61077518bcd5a15b77b9b7fd361df0377fd15e9f06ef30b2945ab0d2429.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bf107ea2deeb87097242197ff29c69173d4a122` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
