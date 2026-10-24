# exprSupportedCore_continuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e853a96808a6b4861710db3f8229db8bd735dfd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 236,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/dae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc340fd5-04a1-0453-dd74-52c2c3b266cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4bdc2309-db9c-dc1c-2cfa-d6f9b2631252",
  "kind": "theorem",
  "lexical_name": "exprSupportedCore_continuousOn",
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
  "slug": "exprsupportedcore-continuouson--7cec971d8274744642215e18",
  "source": {
    "blob": "0e853a96808a6b4861710db3f8229db8bd735dfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 236,
    "path": "GRWTSK/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cec971d8274744642215e1880e9e90aa5c3131360bd9756e76390b89fd86da8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bdc2309-db9c-dc1c-2cfa-d6f9b2631252`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exprSupportedCore_continuousOn (e : LExpr) (hsupp : LeanCert.Engine.ExprSupportedCore e)
    {s : Set ℝ} (hdom : exprContinuousDomainValid e s) :
    ContinuousOn (fun x => LeanCert.Core.Expr.eval (fun _ => x) e) s := by
  induction hsupp with
  | const c =>
    simp only [LeanCert.Core.Expr.eval]
    exact continuousOn_const
  | var n =>
    simp only [LeanCert.Core.Expr.eval]
    exact continuous_id.continuousOn
  | add _ _ ih1 ih2 =>
    simp only [exprContinuousDomainValid] at hdom
    simp only [LeanCert.Core.Expr.eval]
    exact (ih1 hdom.1).add (ih2 hdom.2)
  | mul _ _ ih1 ih2 =>
    simp only [exprContinuousDomainValid] at hdom
    simp only [LeanCert.Core.Expr.eval]
    exact (ih1 hdom.1).mul (ih2 hdom.2)
  | neg _ ih =>
    simp only [exprContinuousDomainValid] at hdom
    simp only [LeanCert.Core.Expr.eval]
    exact (ih hdom).neg
  | sin _ ih =>
    simp only [exprContinuousDomainValid] at hdom
    simp only [LeanCert.Core.Expr.eval]
    exact Real.continuous_sin.comp_continuousOn (ih hdom)
  | cos _ ih =>
    simp only [exprContinuousDomainValid] at hdom
    simp only [LeanCert.Core.Expr.eval]
    exact Real.continuous_cos.comp_continuousOn (ih hdom)
  | exp _ ih =>
    simp only [exprContinuousDomainValid] at hdom
    simp only [LeanCert.Core.Expr.eval]
    exact Real.continuous_exp.comp_continuousOn (ih hdom)
  | sqrt _ ih =>
    simp only [exprContinuousDomainValid] at hdom
    simp only [LeanCert.Core.Expr.eval]
    exact Real.continuous_sqrt.comp_continuousOn (ih hdom)
  | sinh _ ih =>
    simp only [exprContinuousDomainValid] at hdom
    simp only [LeanCert.Core.Expr.eval]
    exact Real.continuous_sinh.comp_continuousOn (ih hdom)
  | cosh _ ih =>
    simp only [exprContinuousDomainValid] at hdom
    simp only [LeanCert.Core.Expr.eval]
    exact Real.continuous_cosh.comp_continuousOn (ih hdom)
  | tanh _ ih =>
    simp only [exprContinuousDomainValid] at hdom
    simp only [LeanCert.Core.Expr.eval]
    have hcont : Continuous Real.tanh := by
      have h : Real.tanh = fun x => Real.sinh x / Real.cosh x := by
        ext x; exact Real.tanh_eq_sinh_div_cosh x
      rw [h]
      exact Real.continuous_sinh.div Real.continuous_cosh (fun x => ne_of_gt (Real.cosh_pos x))
    exact hcont.comp_continuousOn (ih hdom)
  | erf _ ih =>
    simp only [exprContinuousDomainValid] at hdom
    simp only [LeanCert.Core.Expr.eval]
    -- Real.erf is continuous (it's differentiable, and differentiable implies continuous)
    have herf_cont : Continuous Real.erf := by
      have hdiff : Differentiable ℝ Real.erf := by
        unfold Real.erf
        apply Differentiable.const_mul
        intro y
        have hcont : Continuous (fun t => Real.exp (-(t^2))) :=
          Real.continuous_exp.comp (continuous_neg.comp (continuous_pow 2))
        exact (hcont.integral_hasStrictDerivAt 0 y).hasStrictFDerivAt.differentiableAt
      exact hdiff.continuous
    exact herf_cont.comp_continuousOn (ih hdom)
  | @log arg _ ih =>
    simp only [exprContinuousDomainValid] at hdom
    simp only [LeanCert.Core.Expr.eval]
    -- hdom.1: recursive domain validity for arg
    -- hdom.2: ∀ x ∈ s, 0 < Expr.eval (fun _ => x) arg
    have harg_cont := ih hdom.1
    -- We need continuity of Real.log composed with the argument evaluation
    -- Real.log is continuous on {0}ᶜ, and by hdom.2, arg maps s into positive reals ⊆ {0}ᶜ
    have hs_maps : Set.MapsTo (fun x => LeanCert.Core.Expr.eval (fun _ => x) arg) s {0}ᶜ := by
      intro x hx
      simp only [Set.mem_compl_iff, Set.mem_singleton_iff]
      exact ne_of_gt (hdom.2 x hx)
    exact Real.continuousOn_log.comp harg_cont hs_maps
  | namedConst _ =>
    simp only [LeanCert.Core.Expr.eval]
    exact continuousOn_const

/-! ## Metaprogramming: Continuity Proof Generation

Generate proof terms of `ContinuousOn (fun x => Expr.eval (fun _ => x) e) (Set.Icc lo hi)`
by applying `exprContinuousCore_continuousOn_Icc` with an automatically generated
`ExprContinuousCore` proof.

Note: We use `ExprContinuousCore` (not `ExprSupportedCore`) because `inv` is not continuous
everywhere, and `ExprContinuousCore` excludes `inv`.
-/

/-- Generate a proof of `ExprContinuousCore e_ast` by matching on the AST structure.

    This is similar to `mkSupportedCoreProof` but for the `ExprContinuousCore` predicate
    which excludes `inv` (since 1/x is not continuous at 0).

    Supported: const, var, add, mul, neg, sin, cos, exp, sqrt, sinh, cosh, tanh
    Not supported: inv, log, atan, arsinh, atanh -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e853a96808a6b4861710db3f8229db8bd735dfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
