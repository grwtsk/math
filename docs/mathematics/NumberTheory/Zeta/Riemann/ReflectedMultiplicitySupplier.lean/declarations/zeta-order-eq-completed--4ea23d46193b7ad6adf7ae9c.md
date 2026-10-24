# zeta_order_eq_completed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdd1ada2-1ffc-a758-ddb6-fbadde3efabd",
  "kind": "theorem",
  "lexical_name": "zeta_order_eq_completed",
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
  "slug": "zeta-order-eq-completed--4ea23d46193b7ad6adf7ae9c",
  "source": {
    "blob": "00326873dd498ee2568a84c0de70d5b08090674b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 54,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ReflectedMultiplicitySupplier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ea23d46193b7ad6adf7ae9c66ab3a88b1aa4335e7d4a00db19b683194d7863b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ReflectedMultiplicitySupplier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdd1ada2-1ffc-a758-ddb6-fbadde3efabd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_order_eq_completed (z : ZeroPoint) :
    analyticOrderAt riemannZeta z.1 = analyticOrderAt completedRiemannZeta z.1 := by
  have inverseAnalytic : AnalyticAt ℂ (fun w => (Complex.Gammaℝ w)⁻¹) z.1 :=
    Complex.differentiable_Gammaℝ_inv.analyticAt z.1
  have inverseNonzero : (Complex.Gammaℝ z.1)⁻¹ ≠ 0 :=
    inv_ne_zero z.2.gamma_real_ne_zero
  have nonzeroNear : ∀ᶠ w in 𝓝 z.1, w ≠ (0 : ℂ) :=
    compl_singleton_mem_nhds z.2.ne_zero
  have localIdentity : riemannZeta =ᶠ[𝓝 z.1]
      (completedRiemannZeta * (fun w => (Complex.Gammaℝ w)⁻¹)) := by
    filter_upwards [nonzeroNear] with w hw
    simpa only [Pi.mul_apply, div_eq_mul_inv] using riemannZeta_def_of_ne_zero hw
  exact (analyticOrderAt_congr localIdentity).trans
    (order_mul_nonzero_right completedRiemannZeta (fun w => (Complex.Gammaℝ w)⁻¹)
      z.1 (completed_analyticAt_zeroPoint z) inverseAnalytic inverseNonzero)

/-- Functional-equation reflection preserves the full extended analytic order.
The coordinate derivative is -1; no derivative of zeta is assumed nonzero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ReflectedMultiplicitySupplier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ReflectedMultiplicitySupplier.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00326873dd498ee2568a84c0de70d5b08090674b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
