# rectangleBoundaryIntegral_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abeae386-82f0-9d15-877b-c2174cd098e9",
  "kind": "theorem",
  "lexical_name": "rectangleBoundaryIntegral_eq_zero",
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
  "slug": "rectangleboundaryintegral-eq-zero--f01c466a12ee17a41fa500b6",
  "source": {
    "blob": "08f48b61a89c972ab33306c673fb78b753012bd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 68,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleCauchyGoursat.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f01c466a12ee17a41fa500b6f93b656b1bd18d26007d3935719574c50cb150a6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalRectangleCauchyGoursat.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abeae386-82f0-9d15-877b-c2174cd098e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangleBoundaryIntegral_eq_zero
    (N : ℕ) (f : ℂ → ℂ)
    (continuous : ContinuousOn f (closedRectangle N))
    (differentiable : DifferentiableOn ℂ f (openRectangle N)) :
    rectangleBoundaryIntegral N f = 0 := by
  have h := Complex.integral_boundary_rect_eq_zero_of_differentiableOn
    f (bottomPoint N (leftEdge N)) (topPoint N 2)
    (by
      simpa [closedRectangle] using continuous)
    (by
      simpa [openRectangle] using differentiable)
  simpa [rectangleBoundaryIntegral, bottomPoint, topPoint, rightPoint,
    rectangleLeftPoint, sub_eq_add_neg, smul_eq_mul] using h

/-- Analyticity on a neighborhood of the closed rectangle supplies both
hypotheses of the regular Cauchy-Goursat consumer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalRectangleCauchyGoursat.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleCauchyGoursat.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08f48b61a89c972ab33306c673fb78b753012bd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
