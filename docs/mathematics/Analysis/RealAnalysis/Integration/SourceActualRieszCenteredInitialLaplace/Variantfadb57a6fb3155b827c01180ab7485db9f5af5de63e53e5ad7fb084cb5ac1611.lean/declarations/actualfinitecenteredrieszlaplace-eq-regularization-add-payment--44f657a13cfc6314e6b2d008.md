# actualFiniteCenteredRieszLaplace_eq_regularization_add_payment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7f60df9-709d-0387-d68b-0c1daded3796",
  "kind": "theorem",
  "lexical_name": "actualFiniteCenteredRieszLaplace_eq_regularization_add_payment",
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
  "slug": "actualfinitecenteredrieszlaplace-eq-regularization-add-payment--44f657a13cfc6314e6b2d008",
  "source": {
    "blob": "cfa9d5f5434efc632fae5d5a5636c36163b9012e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 129,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44f657a13cfc6314e6b2d0086a71bcd658e8e71e7c73206b06cf019abbee5589",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7f60df9-709d-0387-d68b-0c1daded3796`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFiniteCenteredRieszLaplace_eq_regularization_add_payment (A : ℝ) {z : ℂ}
    (hz : 1 / 2 < z.re) :
    actualFiniteCenteredRieszLaplace A z = actualRieszCriticalRegularization z +
      ((2 - actualRieszContinuousMagnitude A : ℝ) : ℂ) / z^2 := by
  rw [actualFiniteCenteredRieszLaplace_eq_fixed_add_payment A hz,
    actualFixedCenteredRieszLaplace_eq_regularization hz, actualRiesz_finite_center_payment]

/-- The genuine finite-center transform discrepancy has its quadratic initial-domain budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplace/Variantfadb57a6fb3155b827c01180ab7485db9f5af5de63e53e5ad7fb084cb5ac1611.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfa9d5f5434efc632fae5d5a5636c36163b9012e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
