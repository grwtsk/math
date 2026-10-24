# evalDual_der_correct_idx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e8e058c-1439-ad23-728a-70caa9a971bd",
  "kind": "theorem",
  "lexical_name": "evalDual_der_correct_idx",
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
  "slug": "evaldual-der-correct-idx--b102f88bf12c61140d4be10e",
  "source": {
    "blob": "1988cb11eec1d32e19cb2fb7e00b68142bade502",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 365,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant8b262bd1d21d1d8516e6f1c735f8e20c2880c86007114f3614ef7722c99fb259.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b102f88bf12c61140d4be10e2690c761b514033baf6b7bd9f5ef19474e397326",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant8b262bd1d21d1d8516e6f1c735f8e20c2880c86007114f3614ef7722c99fb259.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e8e058c-1439-ad23-728a-70caa9a971bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalDual_der_correct_idx (e : Expr) (hsupp : ExprSupported e)
    (ρ_real : Nat → ℝ) (ρ_int : IntervalEnv) (idx : Nat)
    (hρ : ∀ i, ρ_real i ∈ ρ_int i)
    (x : ℝ) (hx : x ∈ ρ_int idx) :
    deriv (Expr.evalAlong e ρ_real idx) x ∈
      (evalDual e (mkDualEnv ρ_int idx)).der := by
  induction hsupp generalizing x with
  | const q =>
    -- d/dt (const) = 0
    simp only [Expr.evalAlong_const', deriv_const, evalDual, DualInterval.const]
    convert IntervalRat.mem_singleton 0 using 1
    norm_cast
  | var i =>
    by_cases h : i = idx
    · -- Active variable: d/dt (t) = 1
      subst h
      simp only [Expr.evalAlong_var_active, evalDual, mkDualEnv, ↓reduceIte,
        DualInterval.varActive, deriv_id]
      convert IntervalRat.mem_singleton 1 using 1
      norm_cast
    · -- Passive variable: d/dt (const) = 0
      simp only [Expr.evalAlong_var_passive _ _ _ h, deriv_const, evalDual, mkDualEnv,
        if_neg h, DualInterval.varPassive]
      convert IntervalRat.mem_singleton 0 using 1
      norm_cast
  | add h₁ h₂ ih₁ ih₂ =>
    have hd₁ := evalAlong_differentiable _ h₁ ρ_real idx
    have hd₂ := evalAlong_differentiable _ h₂ ρ_real idx
    simp only [Expr.evalAlong_add_pi, deriv_add (hd₁ x) (hd₂ x), evalDual, DualInterval.add]
    exact IntervalRat.mem_add (ih₁ x hx) (ih₂ x hx)
  | mul h₁ h₂ ih₁ ih₂ =>
    have hd₁ := evalAlong_differentiable _ h₁ ρ_real idx
    have hd₂ := evalAlong_differentiable _ h₂ ρ_real idx
    simp only [Expr.evalAlong_mul_pi, deriv_mul (hd₁ x) (hd₂ x), evalDual, DualInterval.mul]
    have hmem := updateVar_mem_mkDualEnv_val ρ_real ρ_int idx x hx hρ
    have hval₁ := evalDual_val_correct _ h₁ _ _ hmem
    have hval₂ := evalDual_val_correct _ h₂ _ _ hmem
    exact IntervalRat.mem_add (IntervalRat.mem_mul (ih₁ x hx) hval₂) (IntervalRat.mem_mul hval₁ (ih₂ x hx))
  | neg hs ih =>
    have hd := evalAlong_differentiable _ hs ρ_real idx
    simp only [Expr.evalAlong_neg_pi, deriv.neg, evalDual, DualInterval.neg]
    exact IntervalRat.mem_neg (ih x hx)
  | @sin e' hs ih =>
    have hd := evalAlong_differentiable e' hs ρ_real idx
    simp only [Expr.evalAlong_sin, deriv_sin (hd.differentiableAt), evalDual, DualInterval.sin]
    exact IntervalRat.mem_mul (cos_mem_cosInterval_of_any _ _) (ih x hx)
  | @cos e' hs ih =>
    have hd := evalAlong_differentiable e' hs ρ_real idx
    simp only [Expr.evalAlong_cos, deriv_cos (hd.differentiableAt), evalDual, DualInterval.cos]
    exact IntervalRat.mem_mul (neg_sin_mem_neg_sinInterval _ _) (ih x hx)
  | @exp e' hs ih =>
    have hd := evalAlong_differentiable e' hs ρ_real idx
    simp only [Expr.evalAlong_exp, deriv_exp (hd.differentiableAt), evalDual, DualInterval.exp]
    have hmem := updateVar_mem_mkDualEnv_val ρ_real ρ_int idx x hx hρ
    have hval := evalDual_val_correct e' hs _ _ hmem
    exact IntervalRat.mem_mul (IntervalRat.mem_expInterval hval) (ih x hx)

/-- Convenience theorem: derivInterval correctness for n-variable expressions.
    The derivative of `evalAlong e ρ idx` at any point `x` in the interval
    lies in `derivInterval e ρ_int idx`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant8b262bd1d21d1d8516e6f1c735f8e20c2880c86007114f3614ef7722c99fb259.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant8b262bd1d21d1d8516e6f1c735f8e20c2880c86007114f3614ef7722c99fb259.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1988cb11eec1d32e19cb2fb7e00b68142bade502` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
