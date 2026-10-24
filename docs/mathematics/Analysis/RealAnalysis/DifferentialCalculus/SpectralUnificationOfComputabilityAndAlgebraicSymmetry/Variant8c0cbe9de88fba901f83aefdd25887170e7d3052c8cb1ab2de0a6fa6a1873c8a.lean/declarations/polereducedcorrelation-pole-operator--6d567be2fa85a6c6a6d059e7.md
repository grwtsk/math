# poleReducedCorrelation_pole_operator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6efeae6b-3a5d-8eba-f67d-833c51f8f6a7",
  "kind": "theorem",
  "lexical_name": "poleReducedCorrelation_pole_operator",
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
  "slug": "polereducedcorrelation-pole-operator--6d567be2fa85a6c6a6d059e7",
  "source": {
    "blob": "39fe576703542a8a3736ec5d8515366c2727563f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 128,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8c0cbe9de88fba901f83aefdd25887170e7d3052c8cb1ab2de0a6fa6a1873c8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d567be2fa85a6c6a6d059e7de344f55bc281a95ea2c40fe1a475ee8795435ad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8c0cbe9de88fba901f83aefdd25887170e7d3052c8cb1ab2de0a6fa6a1873c8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6efeae6b-3a5d-8eba-f67d-833c51f8f6a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem poleReducedCorrelation_pole_operator (A t : ℝ) (hA : 0 < A) :
    deriv (deriv (poleReducedCorrelation A)) t - poleReducedCorrelation A t / 4 =
      sourceCorrelation explicitSecondDerivative A t := by
  rw [poleReducedCorrelation_second_deriv A t hA]
  unfold poleReducedCorrelation sourceCorrelation
  rw [← integral_div, ← integral_sub
    (poleReducedCorrelation_second_product_integrable A t hA)
    ((poleReducedCorrelation_product_integrable A t hA).div_const 4)]
  apply integral_congr_ae
  filter_upwards [] with x
  rw [mul_div_assoc, ← mul_sub, normalizedSourceBump_pole_operator A (x-t) hA]

/-- The cross-correlation and its first derivative both vanish at touching support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8c0cbe9de88fba901f83aefdd25887170e7d3052c8cb1ab2de0a6fa6a1873c8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8c0cbe9de88fba901f83aefdd25887170e7d3052c8cb1ab2de0a6fa6a1873c8a.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39fe576703542a8a3736ec5d8515366c2727563f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
