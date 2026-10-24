# poleReducedCorrelation_second_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94505f4f-670e-75fb-680c-ae935b7dd418",
  "kind": "theorem",
  "lexical_name": "poleReducedCorrelation_second_deriv",
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
  "slug": "polereducedcorrelation-second-deriv--3a26f139899adabdedda2aa1",
  "source": {
    "blob": "39fe576703542a8a3736ec5d8515366c2727563f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 103,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8c0cbe9de88fba901f83aefdd25887170e7d3052c8cb1ab2de0a6fa6a1873c8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a26f139899adabdedda2aa14346cdb7d0974d4a1fad89ec1b147629bb02ffc8",
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

Occurrence: `result:94505f4f-670e-75fb-680c-ae935b7dd418`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem poleReducedCorrelation_second_deriv (A t : ℝ) (hA : 0 < A) :
    deriv (deriv (poleReducedCorrelation A)) t =
      ∫ x, normalizedTest explicitSecondDerivative A x *
        deriv (deriv (normalizedSourceBump A)) (x-t) := by
  let q := fun x ↦ normalizedSourceBump A (-x)
  have hq : ContDiff ℝ 2 q := reflected_bump_contDiff A hA
  have hqc : HasCompactSupport q := reflected_bump_compact A hA
  have heq : deriv (poleReducedCorrelation A) =
      (normalizedTest explicitSecondDerivative A ⋆ deriv q) := by
    funext s
    rw [poleReducedCorrelation_eq_convolution]
    exact (hqc.hasDerivAt_convolution_right (ContinuousLinearMap.lsmul ℝ ℝ)
      (normalizedTest_integrable A hA).locallyIntegrable
      (hq.of_le (by norm_num : (1 : ℕ∞ω) ≤ 2)) s).deriv
  rw [heq, (hqc.deriv.hasDerivAt_convolution_right (ContinuousLinearMap.lsmul ℝ ℝ)
    (normalizedTest_integrable A hA).locallyIntegrable hq.deriv' t).deriv, convolution_lsmul]
  have hq' : deriv q = fun x ↦ -deriv (normalizedSourceBump A) (-x) := by
    funext x
    exact deriv_comp_neg (f := normalizedSourceBump A) (x := x)
  apply integral_congr_ae
  filter_upwards [] with x
  rw [hq', deriv.fun_neg, deriv_comp_neg, neg_neg, neg_sub]
  simp only [smul_eq_mul]

/-- The one-pole-reduced operator is exactly the original source correlation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8c0cbe9de88fba901f83aefdd25887170e7d3052c8cb1ab2de0a6fa6a1873c8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant8c0cbe9de88fba901f83aefdd25887170e7d3052c8cb1ab2de0a6fa6a1873c8a.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39fe576703542a8a3736ec5d8515366c2727563f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
