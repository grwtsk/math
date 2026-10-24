# evalInterval?_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ff8dc55-138f-70e0-627c-c44e665050f2",
  "kind": "theorem",
  "lexical_name": "evalInterval?_correct",
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
  "slug": "evalinterval-correct--2fe27680360ca0324f63be48",
  "source": {
    "blob": "c6c8968e1e1054c142c16146397b6c46d2109099",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 242,
    "path": "GRWTSK/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fe27680360ca0324f63be486687dd75aee24308be5bfb854b53accb0933cbf2",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ff8dc55-138f-70e0-627c-c44e665050f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalInterval?_correct (e : Expr) (hsupp : ExprSupportedWithInv e)
    (ρ_int : IntervalEnv) (I : IntervalRat)
    (hsome : evalInterval? e ρ_int = some I)
    (ρ_real : Nat → ℝ) (hρ : envMem ρ_real ρ_int) :
    Expr.eval ρ_real e ∈ I := by
  induction hsupp generalizing I with
  | const q =>
    simp only [evalInterval?] at hsome
    cases hsome
    simp only [Expr.eval_const]
    exact IntervalRat.mem_singleton q
  | var idx =>
    simp only [evalInterval?] at hsome
    cases hsome
    simp only [Expr.eval_var]
    exact hρ idx
  | @add e₁ e₂ h₁ h₂ ih₁ ih₂ =>
    simp only [evalInterval?] at hsome
    cases heq₁ : evalInterval? e₁ ρ_int with
    | none => simp only [heq₁] at hsome; contradiction
    | some I₁ =>
      cases heq₂ : evalInterval? e₂ ρ_int with
      | none => simp only [heq₁, heq₂] at hsome; contradiction
      | some I₂ =>
        simp only [heq₁, heq₂] at hsome
        cases hsome
        simp only [Expr.eval_add]
        exact IntervalRat.mem_add (ih₁ I₁ heq₁) (ih₂ I₂ heq₂)
  | @mul e₁ e₂ h₁ h₂ ih₁ ih₂ =>
    simp only [evalInterval?] at hsome
    cases heq₁ : evalInterval? e₁ ρ_int with
    | none => simp only [heq₁] at hsome; contradiction
    | some I₁ =>
      cases heq₂ : evalInterval? e₂ ρ_int with
      | none => simp only [heq₁, heq₂] at hsome; contradiction
      | some I₂ =>
        simp only [heq₁, heq₂] at hsome
        cases hsome
        simp only [Expr.eval_mul]
        exact IntervalRat.mem_mul (ih₁ I₁ heq₁) (ih₂ I₂ heq₂)
  | @neg e h ih =>
    simp only [evalInterval?] at hsome
    cases heq : evalInterval? e ρ_int with
    | none => simp only [heq] at hsome; contradiction
    | some I' =>
      simp only [heq] at hsome
      cases hsome
      simp only [Expr.eval_neg]
      exact IntervalRat.mem_neg (ih I' heq)
  | @inv e h ih =>
    simp only [evalInterval?] at hsome
    cases heq : evalInterval? e ρ_int with
    | none => simp only [heq] at hsome; contradiction
    | some J =>
      simp only [heq] at hsome
      split at hsome
      · contradiction
      · rename_i hnonzero
        cases hsome
        simp only [Expr.eval_inv]
        have hJ_mem := ih J heq
        -- The denominator is nonzero because J doesn't contain zero and eval ∈ J
        have heval_ne : Expr.eval ρ_real e ≠ 0 := by
          intro heq_zero
          rw [heq_zero] at hJ_mem
          simp only [IntervalRat.mem_def] at hJ_mem
          simp only [IntervalRat.containsZero, not_and, not_le] at hnonzero
          rcases le_or_gt J.lo 0 with hlo | hlo
          · have hhi_nonneg : (0 : ℚ) ≤ J.hi := by
              have h : (0 : ℝ) ≤ J.hi := hJ_mem.2
              exact_mod_cast h
            exact absurd (hnonzero hlo) (not_lt.mpr hhi_nonneg)
          · have hlo_pos : (0 : ℝ) < J.lo := by exact_mod_cast hlo
            exact absurd hJ_mem.1 (not_le.mpr hlo_pos)
        exact IntervalRat.mem_invNonzero hJ_mem heval_ne
  | @exp e h ih =>
    simp only [evalInterval?] at hsome
    cases heq : evalInterval? e ρ_int with
    | none => simp only [heq] at hsome; contradiction
    | some I' =>
      simp only [heq] at hsome
      cases hsome
      simp only [Expr.eval_exp]
      exact IntervalRat.mem_expComputable (ih I' heq) evalIntervalExpDepth
  | @sin e h ih =>
    simp only [evalInterval?] at hsome
    cases heq : evalInterval? e ρ_int with
    | none => simp only [heq] at hsome; contradiction
    | some I' =>
      simp only [heq] at hsome
      cases hsome
      simp only [Expr.eval_sin]
      exact mem_sinInterval (ih I' heq)
  | @cos e h ih =>
    simp only [evalInterval?] at hsome
    cases heq : evalInterval? e ρ_int with
    | none => simp only [heq] at hsome; contradiction
    | some I' =>
      simp only [heq] at hsome
      cases hsome
      simp only [Expr.eval_cos]
      exact mem_cosInterval (ih I' heq)
  | @log e h ih =>
    simp only [evalInterval?] at hsome
    cases heq : evalInterval? e ρ_int with
    | none => simp only [heq] at hsome; contradiction
    | some J =>
      simp only [heq] at hsome
      split at hsome
      · rename_i hpos
        cases hsome
        simp only [Expr.eval_log]
        have hJ_mem := ih J heq
        -- The argument is positive because J.lo > 0 and eval ∈ J
        exact IntervalRat.mem_logComputable hJ_mem hpos evalIntervalLogDepth
      · contradiction
  | @atan e h ih =>
    simp only [evalInterval?] at hsome
    cases heq : evalInterval? e ρ_int with
    | none => simp only [heq] at hsome; contradiction
    | some I' =>
      simp only [heq] at hsome
      cases hsome
      simp only [Expr.eval_atan]
      exact mem_atanInterval (ih I' heq)
  | @arsinh e h ih =>
    simp only [evalInterval?] at hsome
    cases heq : evalInterval? e ρ_int with
    | none => simp only [heq] at hsome; contradiction
    | some I' =>
      simp only [heq] at hsome
      cases hsome
      simp only [Expr.eval_arsinh]
      exact mem_arsinhInterval (ih I' heq)
  | @atanh _ _ _ =>
    -- evalInterval? returns none for atanh, so hsome : none = some I is a contradiction
    simp only [evalInterval?] at hsome
    contradiction
  | @sinc e h ih =>
    simp only [evalInterval?] at hsome
    cases heq : evalInterval? e ρ_int with
    | none => simp only [heq] at hsome; contradiction
    | some I' =>
      simp only [heq] at hsome
      cases hsome
      simp only [Expr.eval_sinc]
      -- sinc(x) ∈ [-1, 1] for all x, using Mathlib's Real.sinc lemmas
      simp only [IntervalRat.mem_def]
      constructor
      · simp only [Rat.cast_neg, Rat.cast_one]
        exact Real.neg_one_le_sinc _
      · simp only [Rat.cast_one]
        exact Real.sinc_le_one _
  | @erf e h ih =>
    simp only [evalInterval?] at hsome
    cases heq : evalInterval? e ρ_int with
    | none => simp only [heq] at hsome; contradiction
    | some I' =>
      simp only [heq] at hsome
      cases hsome
      simp only [Expr.eval_erf]
      -- erf(x) ∈ [-1, 1] for all x
      simp only [IntervalRat.mem_def]
      constructor
      · simp only [Rat.cast_neg, Rat.cast_one]
        exact Real.neg_one_le_erf _
      · simp only [Rat.cast_one]
        exact Real.erf_le_one _
  | @sqrt e h ih =>
    simp only [evalInterval?] at hsome
    cases heq : evalInterval? e ρ_int with
    | none => simp only [heq] at hsome; contradiction
    | some I' =>
      simp only [heq] at hsome
      cases hsome
      simp only [Expr.eval_sqrt]
      exact IntervalRat.mem_sqrtInterval' (ih I' heq)
  | namedConst c =>
    simp only [evalInterval?] at hsome
    cases hsome
    simp only [Expr.eval_namedConst]
    exact c.mem_interval

/-- Single-variable version of evalInterval? -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6c8968e1e1054c142c16146397b6c46d2109099` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
