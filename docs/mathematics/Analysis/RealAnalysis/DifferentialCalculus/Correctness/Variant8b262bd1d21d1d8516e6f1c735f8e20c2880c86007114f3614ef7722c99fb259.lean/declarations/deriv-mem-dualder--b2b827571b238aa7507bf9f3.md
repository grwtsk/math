# deriv_mem_dualDer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71ae55d7-9720-3a60-a20a-d5b6894ff1ce",
  "kind": "theorem",
  "lexical_name": "deriv_mem_dualDer",
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
  "slug": "deriv-mem-dualder--b2b827571b238aa7507bf9f3",
  "source": {
    "blob": "1988cb11eec1d32e19cb2fb7e00b68142bade502",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 241,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant8b262bd1d21d1d8516e6f1c735f8e20c2880c86007114f3614ef7722c99fb259.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2b827571b238aa7507bf9f38dca98739479054caa34fd1e0ec947d11837ffa0",
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

Occurrence: `result:71ae55d7-9720-3a60-a20a-d5b6894ff1ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deriv_mem_dualDer (e : Expr) (hsupp : ExprSupported e)
    (I : IntervalRat) (x : ℝ) (hx : x ∈ I) :
    deriv (evalFunc1 e) x ∈
      (evalDual e (fun _ => DualInterval.varActive I)).der := by
  induction hsupp generalizing x with
  | const q =>
    -- d/dx (const) = 0
    simp only [evalDual, DualInterval.const, evalFunc1_const, deriv_const]
    convert IntervalRat.mem_singleton 0 using 1
    norm_cast
  | var _ =>
    -- d/dx (x) = 1
    simp only [evalDual, DualInterval.varActive, evalFunc1_var]
    rw [deriv_id]
    convert IntervalRat.mem_singleton 1 using 1
    norm_cast
  | add h₁ h₂ ih₁ ih₂ =>
    -- d/dx (f + g) = f' + g'
    have hd₁ := evalFunc1_differentiable _ h₁
    have hd₂ := evalFunc1_differentiable _ h₂
    simp only [evalDual, DualInterval.add, evalFunc1_add_pi, deriv_add (hd₁ x) (hd₂ x)]
    exact IntervalRat.mem_add (ih₁ x hx) (ih₂ x hx)
  | mul h₁ h₂ ih₁ ih₂ =>
    -- d/dx (f * g) = f' * g + f * g'
    have hd₁ := evalFunc1_differentiable _ h₁
    have hd₂ := evalFunc1_differentiable _ h₂
    simp only [evalDual, DualInterval.mul, evalFunc1_mul_pi, deriv_mul (hd₁ x) (hd₂ x)]
    -- Need: f'(x)*g(x) + f(x)*g'(x) ∈ der₁*val₂ + val₁*der₂
    have hval₁ := evalDual_val_correct _ h₁ (fun _ => x) (fun _ => DualInterval.varActive I)
      (fun _ => hx)
    have hval₂ := evalDual_val_correct _ h₂ (fun _ => x) (fun _ => DualInterval.varActive I)
      (fun _ => hx)
    simp only [DualInterval.varActive] at hval₁ hval₂
    exact IntervalRat.mem_add (IntervalRat.mem_mul (ih₁ x hx) hval₂) (IntervalRat.mem_mul hval₁ (ih₂ x hx))
  | neg hs ih =>
    -- d/dx (-f) = -f'
    have hd := evalFunc1_differentiable _ hs
    simp only [evalDual, DualInterval.neg, evalFunc1_neg_pi, deriv.neg]
    exact IntervalRat.mem_neg (ih x hx)
  | @sin e' hs ih =>
    -- d/dx (sin f) = cos(f) * f'
    have hd := evalFunc1_differentiable e' hs
    simp only [evalDual, DualInterval.sin, evalFunc1_sin]
    rw [deriv_sin (hd.differentiableAt)]
    exact IntervalRat.mem_mul (cos_mem_cosInterval_of_any _ _) (ih x hx)
  | @cos e' hs ih =>
    -- d/dx (cos f) = -sin(f) * f'
    have hd := evalFunc1_differentiable e' hs
    simp only [evalDual, DualInterval.cos, evalFunc1_cos]
    rw [deriv_cos (hd.differentiableAt)]
    exact IntervalRat.mem_mul (neg_sin_mem_neg_sinInterval _ _) (ih x hx)
  | @exp e' hs ih =>
    -- d/dx (exp f) = exp(f) * f'
    have hd := evalFunc1_differentiable e' hs
    simp only [evalDual, DualInterval.exp, evalFunc1_exp]
    rw [deriv_exp (hd.differentiableAt)]
    -- exp(f(x)) ∈ expInterval and f'(x) ∈ der
    have hval := evalDual_val_correct e' hs (fun _ => x) (fun _ => DualInterval.varActive I)
      (fun _ => hx)
    simp only [DualInterval.varActive] at hval
    have hexp := IntervalRat.mem_expInterval hval
    exact IntervalRat.mem_mul hexp (ih x hx)

/-- The derivative component of dual interval evaluation is correct.
    For a supported expression evaluated at a point x in the interval I,
    the derivative of the expression (as a function of x) lies in the
    computed derivative interval.

    This is the fundamental correctness theorem for forward-mode AD:
    the derivative bounds computed by interval arithmetic contain the
    true derivative at every point in the domain.

    FULLY PROVED - no sorry, no axioms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant8b262bd1d21d1d8516e6f1c735f8e20c2880c86007114f3614ef7722c99fb259.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant8b262bd1d21d1d8516e6f1c735f8e20c2880c86007114f3614ef7722c99fb259.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1988cb11eec1d32e19cb2fb7e00b68142bade502` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
