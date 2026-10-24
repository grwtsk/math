# evalInterval_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:111c12c0-551e-7d8e-72c6-13f1e60dcc6d",
  "kind": "theorem",
  "lexical_name": "evalInterval_correct",
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
  "slug": "evalinterval-correct--05dc8097bdfcbbb4b7109746",
  "source": {
    "blob": "c6c8968e1e1054c142c16146397b6c46d2109099",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 85,
    "path": "GRWTSK/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05dc8097bdfcbbb4b7109746523c32bdf3549d0ee296cee90122ebb5cc7cda30",
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

Occurrence: `result:111c12c0-551e-7d8e-72c6-13f1e60dcc6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalInterval_correct (e : Expr) (hsupp : ExprSupported e)
    (ρ_real : Nat → ℝ) (ρ_int : IntervalEnv) (hρ : envMem ρ_real ρ_int) :
    Expr.eval ρ_real e ∈ evalInterval e ρ_int := by
  induction hsupp with
  | const q =>
    simp only [Expr.eval_const, evalInterval]
    exact IntervalRat.mem_singleton q
  | var idx =>
    simp only [Expr.eval_var, evalInterval]
    exact hρ idx
  | add h₁ h₂ ih₁ ih₂ =>
    simp only [Expr.eval_add, evalInterval]
    exact IntervalRat.mem_add ih₁ ih₂
  | mul h₁ h₂ ih₁ ih₂ =>
    simp only [Expr.eval_mul, evalInterval]
    exact IntervalRat.mem_mul ih₁ ih₂
  | neg _ ih =>
    simp only [Expr.eval_neg, evalInterval]
    exact IntervalRat.mem_neg ih
  | sin _ ih =>
    simp only [Expr.eval_sin, evalInterval]
    exact mem_sinInterval ih
  | cos _ ih =>
    simp only [Expr.eval_cos, evalInterval]
    exact mem_cosInterval ih
  | exp _ ih =>
    simp only [Expr.eval_exp, evalInterval]
    exact IntervalRat.mem_expInterval ih

/-! ### Convenience functions

Note: evalIntervalCore now uses Taylor series for exp/sin/cos, which gives
different (often tighter) intervals than evalInterval's floor/ceil bounds.
Both are correct, but they are not necessarily equal.

For purely algebraic expressions (const, var, add, mul, neg),
both evaluators give identical results. -/

/-- Noncomputable single-variable evaluation for extended expressions -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Extended/Varianta391f92d2573cb4d8f6524ed03fe86893b4096cb4c8e5f93ff5437bdaa952aef.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6c8968e1e1054c142c16146397b6c46d2109099` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
