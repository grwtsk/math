# fromExpr_evalSet_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:080ca5b1-6409-d661-bdd4-787145ad3859",
  "kind": "theorem",
  "lexical_name": "fromExpr_evalSet_correct",
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
  "slug": "fromexpr-evalset-correct--9369552b442f31ba0a0924b7",
  "source": {
    "blob": "bf961c73085cd288d6c5efc32e854e4510fee259",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1263,
    "line": 991,
    "path": "GRWTSK/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9369552b442f31ba0a0924b7cb51201132e4d912971d7bce5347da55600bae85",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:080ca5b1-6409-d661-bdd4-787145ad3859`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 991–1263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fromExpr_evalSet_correct (e : Expr) (domain : IntervalRat) (degree : ℕ)
    (tm : TaylorModel) (h : TaylorModel.fromExpr? e domain degree = some tm) :
    ∀ x ∈ domain, Expr.eval (fun _ => x) e ∈ tm.evalSet x := by
  induction e generalizing degree tm with
  | const q =>
      simp [TaylorModel.fromExpr?] at h; cases h
      exact TaylorModel.const_evalSet_correct q domain
  | var _ =>
      simp [TaylorModel.fromExpr?] at h; cases h
      exact TaylorModel.identity_evalSet_correct domain
  | add e1 e2 ih1 ih2 =>
      cases h1 : TaylorModel.fromExpr? e1 domain degree with
      | none => simp [TaylorModel.fromExpr?, h1] at h
      | some tm1 =>
        cases h2 : TaylorModel.fromExpr? e2 domain degree with
        | none => simp [TaylorModel.fromExpr?, h1, h2] at h
        | some tm2 =>
          simp [TaylorModel.fromExpr?, h1, h2] at h; cases h
          have hc := fromExpr?_center e1 domain degree tm1 h1
          have hc2 := fromExpr?_center e2 domain degree tm2 h2
          exact TaylorModel.add_evalSet_correct e1 e2 domain tm1 tm2
            (hc.trans hc2.symm)
            (ih1 degree tm1 h1)
            (ih2 degree tm2 h2)
  | mul e1 e2 ih1 ih2 =>
      cases h1 : TaylorModel.fromExpr? e1 domain degree with
      | none => simp [TaylorModel.fromExpr?, h1] at h
      | some tm1 =>
        cases h2 : TaylorModel.fromExpr? e2 domain degree with
        | none => simp [TaylorModel.fromExpr?, h1, h2] at h
        | some tm2 =>
          simp [TaylorModel.fromExpr?, h1, h2] at h; cases h
          have hc := fromExpr?_center e1 domain degree tm1 h1
          have hc2 := fromExpr?_center e2 domain degree tm2 h2
          have hd1 := fromExpr?_domain e1 domain degree tm1 h1
          have hd2 := fromExpr?_domain e2 domain degree tm2 h2
          intro x hx
          simp only [Expr.eval_mul]
          have hx1 : x ∈ tm1.domain := hd1 ▸ hx
          exact TaylorModel.mul_evalSet_correct (fun y => Expr.eval (fun _ => y) e1)
            (fun y => Expr.eval (fun _ => y) e2) tm1 tm2 degree
            (hc.trans hc2.symm) (hd1.trans hd2.symm)
            (hd1.symm ▸ ih1 degree tm1 h1) (hd2.symm ▸ ih2 degree tm2 h2) x hx1
  | neg e ih =>
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp [TaylorModel.fromExpr?, h0] at h; cases h
        exact TaylorModel.neg_evalSet_correct e domain tm0 (ih degree tm0 h0)
  | inv e ih =>
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        by_cases hz : IntervalRat.containsZero tm0.bound
        · have hcontra : False := by simp [TaylorModel.fromExpr?, h0, hz] at h
          exact hcontra.elim
        · simp [TaylorModel.fromExpr?, h0, hz] at h; cases h
          have hd0 := fromExpr?_domain e domain degree tm0 h0
          intro x hx
          simp only [Expr.eval_inv]
          have hx0 : x ∈ tm0.domain := hd0 ▸ hx
          exact TaylorModel.inv_evalSet_correct (fun y => Expr.eval (fun _ => y) e) tm0 hz
            (hd0.symm ▸ ih degree tm0 h0) x hx0
  | exp e ih =>
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp [TaylorModel.fromExpr?, h0] at h; cases h
        have hd0 := fromExpr?_domain e domain degree tm0 h0
        intro x hx
        simp only [Expr.eval_exp]
        have hx0 : x ∈ tm0.domain := hd0 ▸ hx
        exact TaylorModel.exp_evalSet_correct (fun y => Expr.eval (fun _ => y) e) tm0 degree
          (hd0.symm ▸ ih degree tm0 h0) x hx0
  | sin e ih =>
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp [TaylorModel.fromExpr?, h0] at h; cases h
        have hd0 := fromExpr?_domain e domain degree tm0 h0
        intro x hx
        simp only [Expr.eval_sin]
        have hx0 : x ∈ tm0.domain := hd0 ▸ hx
        exact TaylorModel.sin_evalSet_correct (fun y => Expr.eval (fun _ => y) e) tm0 degree
          (hd0.symm ▸ ih degree tm0 h0) x hx0
  | cos e ih =>
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp [TaylorModel.fromExpr?, h0] at h; cases h
        have hd0 := fromExpr?_domain e domain degree tm0 h0
        intro x hx
        simp only [Expr.eval_cos]
        have hx0 : x ∈ tm0.domain := hd0 ▸ hx
        exact TaylorModel.cos_evalSet_correct (fun y => Expr.eval (fun _ => y) e) tm0 degree
          (hd0.symm ▸ ih degree tm0 h0) x hx0
  | log e ih =>
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp only [TaylorModel.fromExpr?, h0, bind, Option.bind_some] at h
        unfold TaylorModel.log? at h
        split at h
        · rename_i logTM hlog
          simp only [Option.some.injEq] at h
          subst h
          have hd0 := fromExpr?_domain e domain degree tm0 h0
          intro x hx
          simp only [Expr.eval_log]
          -- Log evalSet correctness: need to show Real.log (f x) ∈ logTM.bound
          -- when f x ∈ tm0.bound (which is satisfied by ih)
          have hx0 : x ∈ tm0.domain := hd0 ▸ hx
          have _h_arg_in_evalSet : Expr.eval (fun _ => x) e ∈ tm0.evalSet x := ih degree tm0 h0 x hx
          have _h_arg_in_bound : Expr.eval (fun _ => x) e ∈ tm0.bound :=
            taylorModel_correct tm0 (fun y => Expr.eval (fun _ => y) e) (hd0.symm ▸ ih degree tm0 h0) x hx0
          simp only [TaylorModel.evalSet, Set.mem_setOf_eq]
          refine ⟨Real.log (Expr.eval (fun _ => x) e), ?_, ?_⟩
          · -- Use tmLog_correct: log z ∈ logTM.evalSet z, then taylorModel_correct
            -- logTM.domain = tm0.bound by definition of TaylorModel.tmLog
            have hlogTM_domain : logTM.domain = tm0.bound := by
              unfold TaylorModel.tmLog at hlog
              split_ifs at hlog with hpos
              · simp only [Option.some.injEq] at hlog
                rw [← hlog]
            -- Use tmLog_correct with z ∈ tm0.bound
            have hlog_evalSet := TaylorModel.tmLog_correct tm0.bound degree logTM hlog
              (Expr.eval (fun _ => x) e) _h_arg_in_bound
            -- Convert domain membership for taylorModel_correct
            have hz_in_logTM_domain : Expr.eval (fun _ => x) e ∈ logTM.domain :=
              hlogTM_domain ▸ _h_arg_in_bound
            exact taylorModel_correct logTM Real.log
              (fun w hw => TaylorModel.tmLog_correct tm0.bound degree logTM hlog w
                (hlogTM_domain.symm ▸ hw))
              (Expr.eval (fun _ => x) e) hz_in_logTM_domain
          · simp only [Polynomial.aeval_zero]; ring
        · simp_all
  | atan e ih =>
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp [TaylorModel.fromExpr?, h0] at h
        unfold TaylorModel.atan? at h
        simp only [Option.some.injEq] at h
        subst h
        have hd0 := fromExpr?_domain e domain degree tm0 h0
        intro x hx
        simp only [Expr.eval_atan]
        have hx0 : x ∈ tm0.domain := hd0 ▸ hx
        have h_arg_in_bound : Expr.eval (fun _ => x) e ∈ tm0.bound :=
          taylorModel_correct tm0 (fun y => Expr.eval (fun _ => y) e) (hd0.symm ▸ ih degree tm0 h0) x hx0
        simp only [TaylorModel.evalSet, Set.mem_setOf_eq]
        refine ⟨Real.arctan (Expr.eval (fun _ => x) e), ?_, ?_⟩
        · -- arctan of argument is in atanInterval
          exact mem_atanInterval h_arg_in_bound
        · simp only [Polynomial.aeval_zero]; ring
  | arsinh e ih =>
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp [TaylorModel.fromExpr?, h0] at h; cases h
        have hd0 := fromExpr?_domain e domain degree tm0 h0
        intro x hx
        simp only [Expr.eval_arsinh]
        have hx0 : x ∈ tm0.domain := hd0 ▸ hx
        exact TaylorModel.asinh_evalSet_correct (fun y => Expr.eval (fun _ => y) e) tm0 degree
          (hd0.symm ▸ ih degree tm0 h0) x hx0
  | atanh e ih =>
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp only [TaylorModel.fromExpr?, h0, bind, Option.bind_some] at h
        cases hatanh : TaylorModel.atanh? tm0 degree with
        | none => simp [hatanh] at h
        | some result =>
          simp only [hatanh, Option.some.injEq] at h
          subst h
          have hd0 := fromExpr?_domain e domain degree tm0 h0
          intro x hx
          simp only [Expr.eval_atanh]
          have hx0 : x ∈ tm0.domain := hd0 ▸ hx
          exact TaylorModel.atanh_evalSet_correct' (fun y => Expr.eval (fun _ => y) e) tm0 result degree
            (hd0.symm ▸ ih degree tm0 h0) hatanh x hx0
  | sinc e ih =>
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp [TaylorModel.fromExpr?, h0] at h; cases h
        have hd0 := fromExpr?_domain e domain degree tm0 h0
        intro x hx
        simp only [Expr.eval_sinc]
        have hx0 : x ∈ tm0.domain := hd0 ▸ hx
        exact TaylorModel.sinc_evalSet_correct (fun y => Expr.eval (fun _ => y) e) tm0 degree
          (hd0.symm ▸ ih degree tm0 h0) x hx0
  | erf e ih =>
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp [TaylorModel.fromExpr?, h0] at h
        unfold TaylorModel.erf? at h
        simp only [Option.some.injEq] at h
        subst h
        have hd0 := fromExpr?_domain e domain degree tm0 h0
        intro x hx
        simp only [Expr.eval_erf]
        have hx0 : x ∈ tm0.domain := hd0 ▸ hx
        have h_arg_in_bound : Expr.eval (fun _ => x) e ∈ tm0.bound :=
          taylorModel_correct tm0 (fun y => Expr.eval (fun _ => y) e) (hd0.symm ▸ ih degree tm0 h0) x hx0
        simp only [TaylorModel.evalSet, Set.mem_setOf_eq]
        refine ⟨Real.erf (Expr.eval (fun _ => x) e), ?_, ?_⟩
        · -- erf of argument is in erfInterval
          exact mem_erfInterval h_arg_in_bound
        · simp only [Polynomial.aeval_zero]; ring
  | sinh e ih =>
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp [TaylorModel.fromExpr?, h0] at h; cases h
        have hd0 := fromExpr?_domain e domain degree tm0 h0
        intro x hx
        simp only [Expr.eval_sinh]
        have hx0 : x ∈ tm0.domain := hd0 ▸ hx
        exact TaylorModel.sinh_evalSet_correct (fun y => Expr.eval (fun _ => y) e) tm0 degree
          (hd0.symm ▸ ih degree tm0 h0) x hx0
  | cosh e ih =>
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp [TaylorModel.fromExpr?, h0] at h; cases h
        have hd0 := fromExpr?_domain e domain degree tm0 h0
        intro x hx
        simp only [Expr.eval_cosh]
        have hx0 : x ∈ tm0.domain := hd0 ▸ hx
        exact TaylorModel.cosh_evalSet_correct (fun y => Expr.eval (fun _ => y) e) tm0 degree
          (hd0.symm ▸ ih degree tm0 h0) x hx0
  | tanh e ih =>
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp [TaylorModel.fromExpr?, h0] at h; cases h
        have hd0 := fromExpr?_domain e domain degree tm0 h0
        intro x hx
        simp only [Expr.eval_tanh]
        have hx0 : x ∈ tm0.domain := hd0 ▸ hx
        exact TaylorModel.tanh_evalSet_correct (fun y => Expr.eval (fun _ => y) e) tm0 degree
          (hd0.symm ▸ ih degree tm0 h0) x hx0
  | sqrt e ih =>
      cases h0 : TaylorModel.fromExpr? e domain degree with
      | none => simp [TaylorModel.fromExpr?, h0] at h
      | some tm0 =>
        simp [TaylorModel.fromExpr?, h0] at h
        unfold TaylorModel.sqrt? at h
        simp only [Option.some.injEq] at h
        subst h
        have hd0 := fromExpr?_domain e domain degree tm0 h0
        intro x hx
        simp only [Expr.eval_sqrt]
        have hx0 : x ∈ tm0.domain := hd0 ▸ hx
        have h_arg_in_bound : Expr.eval (fun _ => x) e ∈ tm0.bound :=
          taylorModel_correct tm0 (fun y => Expr.eval (fun _ => y) e) (hd0.symm ▸ ih degree tm0 h0) x hx0
        simp only [TaylorModel.evalSet, Set.mem_setOf_eq]
        refine ⟨Real.sqrt (Expr.eval (fun _ => x) e), ?_, ?_⟩
        · -- sqrt of argument is in sqrtIntervalTight
          exact IntervalRat.mem_sqrtIntervalTight' h_arg_in_bound
        · simp only [Polynomial.aeval_zero]; ring
  | namedConst c =>
      simp [TaylorModel.fromExpr?] at h
      cases h
      intro x _hx
      simp only [Expr.eval_namedConst, TaylorModel.evalSet, Set.mem_setOf_eq]
      refine ⟨c.toReal, c.mem_interval, ?_⟩
      simp only [Polynomial.aeval_zero]; ring

/-- fromExpr? produces correct Taylor models when it succeeds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean#L991).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf961c73085cd288d6c5efc32e854e4510fee259` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
