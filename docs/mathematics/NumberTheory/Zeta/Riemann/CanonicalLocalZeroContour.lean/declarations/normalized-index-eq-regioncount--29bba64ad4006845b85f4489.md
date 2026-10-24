# normalized_index_eq_regionCount

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6da4f2c2-1aff-df12-b089-eee86d1f266b",
  "kind": "theorem",
  "lexical_name": "normalized_index_eq_regionCount",
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
  "slug": "normalized-index-eq-regioncount--29bba64ad4006845b85f4489",
  "source": {
    "blob": "f3743e01022b7680e5f779490ae148d3ce5d1d53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 121,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29bba64ad4006845b85f4489a557f3b0d65505d43c75223a6ddc6b6034817874",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6da4f2c2-1aff-df12-b089-eee86d1f266b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_index_eq_regionCount (root : ZeroPoint) (c : ℂ) (r T : ℝ)
    (analytic : AnalyticOnNhd ℂ riemannZeta (closedBall c r))
    (inside : root.1 ∈ ball c r) (heightBound : height root ≤ T)
    (isolated : ∀ w ∈ closedBall c r, riemannZeta w = 0 → w = root.1) :
    (2 * (Real.pi : ℂ) * Complex.I)⁻¹ *
      (∮ w in C(c, r), deriv riemannZeta w / riemannZeta w) =
        (ReflectionMultiplicityBudget.regionCount T (closedBall c r) : ℂ) := by
  rw [isolated_regionCount_eq_multiplicity root c r T
    (ball_subset_closedBall inside) heightBound isolated]
  exact normalized_index_eq_multiplicity root c r analytic inside isolated

/-- Bind the concrete contour's one to the canonical divisor weight of the SAME witness.
The original SourceAcceptance is still required and is not discharged here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3743e01022b7680e5f779490ae148d3ce5d1d53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
