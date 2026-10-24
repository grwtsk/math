# zero_iff_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56922b94-a292-20ff-79d7-d62406db77a7",
  "kind": "theorem",
  "lexical_name": "zero_iff_nonpos",
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
  "slug": "zero-iff-nonpos--20ec4dd0cf189f582a6bb7dd",
  "source": {
    "blob": "15797851b66c53a964bccf7e3f64f3069e79b0fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 78,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20ec4dd0cf189f582a6bb7ddc80684fbc76b4e88157f8dec4f64914036026485",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56922b94-a292-20ff-79d7-d62406db77a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem zero_iff_nonpos : expNegInvGlue x = 0 ↔ x ≤ 0 :=
  ⟨fun h ↦ not_lt.mp fun h' ↦ (pos_of_pos h').ne' h, zero_of_nonpos⟩

/-!
### Smoothness of `expNegInvGlue`

Porting note: Yury Kudryashov rewrote the proof while porting, generalizing auxiliary lemmas and
removing some auxiliary definitions.

In this section we prove that the function `f = expNegInvGlue` is infinitely smooth. To do
this, we show that $g_p(x)=p(x^{-1})f(x)$ is infinitely smooth for any polynomial `p` with real
coefficients. First we show that $g_p(x)$ tends to zero at zero, then we show that it is
differentiable with derivative $g_p'=g_{x^2(p-p')}$. Finally, we prove smoothness of $g_p$ by
induction, then deduce smoothness of $f$ by setting $p=1$.
-/

#noalign exp_neg_inv_glue.P_aux
#noalign exp_neg_inv_glue.f_aux
#noalign exp_neg_inv_glue.f_aux_zero_eq
#noalign exp_neg_inv_glue.f_aux_deriv
#noalign exp_neg_inv_glue.f_aux_deriv_pos
#noalign exp_neg_inv_glue.f_aux_limit
#noalign exp_neg_inv_glue.f_aux_deriv_zero
#noalign exp_neg_inv_glue.f_aux_has_deriv_at

/-- Our function tends to zero at zero faster than any $P(x^{-1})$, $P∈ℝ[X]$, tends to infinity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothTransition/Variantc7715b7a5ee52272cc141e0440453e3beeaebaac056ce2bb0ccbd4ed1527e052.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15797851b66c53a964bccf7e3f64f3069e79b0fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
