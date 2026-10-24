# evalAlong_differentiable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:037f88dd-5992-de6c-90b4-4ab9b3b3a737",
  "kind": "theorem",
  "lexical_name": "evalAlong_differentiable",
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
  "slug": "evalalong-differentiable--537c69f6c5533ec8c9263591",
  "source": {
    "blob": "1988cb11eec1d32e19cb2fb7e00b68142bade502",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 323,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant8b262bd1d21d1d8516e6f1c735f8e20c2880c86007114f3614ef7722c99fb259.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:537c69f6c5533ec8c92635914bbcb168d56b8d2d0d3ff33a988692880905c200",
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

Occurrence: `result:037f88dd-5992-de6c-90b4-4ab9b3b3a737`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalAlong_differentiable (e : Expr) (hsupp : ExprSupported e)
    (ρ : Nat → ℝ) (idx : Nat) :
    Differentiable ℝ (Expr.evalAlong e ρ idx) := by
  induction hsupp with
  | const q =>
    simp only [Expr.evalAlong_const']
    exact differentiable_const _
  | var i =>
    by_cases h : i = idx
    · subst h
      simp only [Expr.evalAlong_var_active]
      exact differentiable_id
    · simp only [Expr.evalAlong_var_passive _ _ _ h]
      exact differentiable_const _
  | add _ _ ih₁ ih₂ =>
    simp only [Expr.evalAlong_add]
    exact Differentiable.add ih₁ ih₂
  | mul _ _ ih₁ ih₂ =>
    simp only [Expr.evalAlong_mul]
    exact Differentiable.mul ih₁ ih₂
  | neg _ ih =>
    simp only [Expr.evalAlong_neg]
    exact Differentiable.neg ih
  | sin _ ih =>
    simp only [Expr.evalAlong_sin]
    exact Real.differentiable_sin.comp ih
  | cos _ ih =>
    simp only [Expr.evalAlong_cos]
    exact Real.differentiable_cos.comp ih
  | exp _ ih =>
    simp only [Expr.evalAlong_exp]
    exact Real.differentiable_exp.comp ih

/-- The derivative of evalAlong with respect to coordinate `idx` lies in the
    computed derivative interval from mkDualEnv.

    This is the fundamental n-variable derivative correctness theorem.
    It shows that for any expression, if we differentiate along coordinate `idx`
    while holding all other coordinates fixed according to `ρ`, the derivative
    at any point `x` in the interval `ρ_int idx` lies in the computed interval.

    FULLY PROVED - no sorry, no axioms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant8b262bd1d21d1d8516e6f1c735f8e20c2880c86007114f3614ef7722c99fb259.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant8b262bd1d21d1d8516e6f1c735f8e20c2880c86007114f3614ef7722c99fb259.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1988cb11eec1d32e19cb2fb7e00b68142bade502` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
