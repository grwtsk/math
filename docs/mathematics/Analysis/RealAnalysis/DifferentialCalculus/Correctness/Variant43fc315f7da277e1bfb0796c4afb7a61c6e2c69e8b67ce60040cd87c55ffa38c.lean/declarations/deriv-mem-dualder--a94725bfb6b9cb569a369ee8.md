# deriv_mem_dualDer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6758f0dac2c2058bc3b222cc1575703c166ec55b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 233,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be5a4e98-acc0-25f6-d854-403a33d12d2e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2b75899-6b7f-3c95-f300-b4851ad131b9",
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
  "slug": "deriv-mem-dualder--a94725bfb6b9cb569a369ee8",
  "source": {
    "blob": "6758f0dac2c2058bc3b222cc1575703c166ec55b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 233,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a94725bfb6b9cb569a369ee80d6d9731d70c8cfedb199a49525105c18e704702",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2b75899-6b7f-3c95-f300-b4851ad131b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–305.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6758f0dac2c2058bc3b222cc1575703c166ec55b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
