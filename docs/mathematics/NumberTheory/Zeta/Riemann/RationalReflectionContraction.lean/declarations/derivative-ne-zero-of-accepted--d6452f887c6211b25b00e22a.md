# derivative_ne_zero_of_accepted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c54602b0-7ee7-d8bd-a031-bb1d07d02dda",
  "kind": "theorem",
  "lexical_name": "derivative_ne_zero_of_accepted",
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
  "slug": "derivative-ne-zero-of-accepted--d6452f887c6211b25b00e22a",
  "source": {
    "blob": "65e16f4c55e4fdc381decf03352928a062579794",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 146,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6452f887c6211b25b00e22acb32e669afef55e989e1c2e44e860a42eecc8616",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c54602b0-7ee7-d8bd-a031-bb1d07d02dda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivative_ne_zero_of_accepted (c : ℂ) (ar ai : ℚ) (slope : Disk)
    (curvature radius : ℚ)
    (analytic : AnalyticOnNhd ℂ riemannZeta (closedBall c (radius : ℝ)))
    (slopeEnclosure : Contains slope (deriv riemannZeta c))
    (curvatureBound : ∀ z ∈ closedBall c (radius : ℝ),
      ‖deriv (deriv riemannZeta) z‖ ≤ (curvature : ℝ))
    (accepted : accepts ar ai slope curvature radius = true)
    (z : ℂ) (member : z ∈ closedBall c (radius : ℝ)) : deriv riemannZeta z ≠ 0 := by
  have criteria : 0 ≤ slope.radius ∧ 0 ≤ curvature ∧ 0 < radius ∧
      rateBound ar ai slope curvature radius < 1 := by
    simpa only [accepts, decide_eq_true_eq] using accepted
  have bound := zeta_correction_derivative_bound c ar ai slope curvature radius
    criteria.2.2.1.le criteria.2.1 analytic slopeEnclosure curvatureBound z member
  have strict : (rateBound ar ai slope curvature radius : ℝ) < 1 := by
    exact_mod_cast criteria.2.2.2
  intro vanishes
  rw [vanishes, mul_zero, sub_zero, norm_one] at bound
  linarith

/-- A genuine off-line zero with source-correct inputs must fail the strict rational guard. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65e16f4c55e4fdc381decf03352928a062579794` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
