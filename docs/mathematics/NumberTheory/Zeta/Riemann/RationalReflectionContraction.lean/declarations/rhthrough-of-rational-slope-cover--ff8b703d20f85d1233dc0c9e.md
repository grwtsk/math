# rhThrough_of_rational_slope_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0039d39c-7f7f-e491-c4bc-9b5993beb458",
  "kind": "theorem",
  "lexical_name": "rhThrough_of_rational_slope_cover",
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
  "slug": "rhthrough-of-rational-slope-cover--ff8b703d20f85d1233dc0c9e",
  "source": {
    "blob": "65e16f4c55e4fdc381decf03352928a062579794",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 183,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff8b703d20f85d1233dc0c9e5da4a84e4ca59662c387f45ab9756f78b90fb014",
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

Occurrence: `result:0039d39c-7f7f-e491-c4bc-9b5993beb458`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rhThrough_of_rational_slope_cover (N count : ℕ)
    (centers : Fin count → ℂ) (ar ai curvature radius : Fin count → ℚ)
    (slope : Fin count → Disk) (centerOnLine : ∀ i, (centers i).re = 1 / 2)
    (analytic : ∀ i, AnalyticOnNhd ℂ riemannZeta (closedBall (centers i) (radius i : ℝ)))
    (slopeEnclosure : ∀ i, Contains (slope i) (deriv riemannZeta (centers i)))
    (curvatureBound : ∀ i, ∀ z ∈ closedBall (centers i) (radius i : ℝ),
      ‖deriv (deriv riemannZeta) z‖ ≤ (curvature i : ℝ))
    (accepted : ∀ i, accepts (ar i) (ai i) (slope i) (curvature i) (radius i) = true)
    (coverage : ∀ s, NontrivialZetaZero s → |s.im| ≤ (N : ℝ) →
      ∃ i : Fin count, s ∈ closedBall (centers i) (radius i : ℝ)) : RHThrough N := by
  intro s zero height
  obtain ⟨i, member⟩ := coverage s zero height
  exact critical_line_of_rational_slope (centers i) s (ar i) (ai i) (slope i)
    (curvature i) (radius i) (centerOnLine i) zero member (analytic i)
    (slopeEnclosure i) (curvatureBound i) (accepted i)

/-- A nonvacuous synthetic guard with both center uncertainty and positive curvature charged. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalReflectionContraction.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65e16f4c55e4fdc381decf03352928a062579794` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
