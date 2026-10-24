# sourceCorrelation_endpoint_eq_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c5a5596-1551-a8e2-e84e-974971da02dc",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_endpoint_eq_polynomial",
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
  "slug": "sourcecorrelation-endpoint-eq-polynomial--7dad98cd74610b61449bd133",
  "source": {
    "blob": "cfe96c45a881a4d7ac1daa218eb71fa9a2cfd9a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 220,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantfb244a1e7a16f3b257e026594240cac733a620e5cb76601b472d8446ab8708a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dad98cd74610b61449bd1339c5073392f0724ee13a5d9491ad6b56cb27b28ea",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantfb244a1e7a16f3b257e026594240cac733a620e5cb76601b472d8446ab8708a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c5a5596-1551-a8e2-e84e-974971da02dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_endpoint_eq_polynomial {A s : ℝ} (hA : 0 < A)
    (hs0 : 0 ≤ s) (hs2 : s ≤ 2 * A) :
    sourceCorrelation explicitSecondDerivative A (2 * A - s) =
      endpointPolynomial (1 / A) s / (sourceNormalization A * A ^ 9) := by
  rw [sourceCorrelation_eq_normalizedOverlap_filter hA (by linarith) (by linarith),
    normalizedOverlapProfile_eq_profileD0 hA, profileD0_deriv, profileD1_deriv,
    profileD2_deriv, profileD3_deriv]
  have hZ : 0 < sourceNormalization A := by
    unfold sourceNormalization
    positivity
  unfold profileD0 profileD2 profileD4 endpointPolynomial
  field_simp [hA.ne', hZ.ne']
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantfb244a1e7a16f3b257e026594240cac733a620e5cb76601b472d8446ab8708a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantfb244a1e7a16f3b257e026594240cac733a620e5cb76601b472d8446ab8708a2.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfe96c45a881a4d7ac1daa218eb71fa9a2cfd9a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
