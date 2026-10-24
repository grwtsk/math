# remainder_derivative_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3feeb77-1d62-acd1-2350-1368539715e2",
  "kind": "theorem",
  "lexical_name": "remainder_derivative_integrable",
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
  "slug": "remainder-derivative-integrable--68572fd3dc1e05b5a4e3a4ec",
  "source": {
    "blob": "0c29901782d094b6294e346f504de7d831dde109",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptoticAudit/Variant87849e0230b9a5fa4d26e67c13f0331b90fa25b4a74d912fdb8180a3736a773a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68572fd3dc1e05b5a4e3a4ec348848ee99f3208ba3bcadd2cdc183edadea97ad",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptoticAudit/Variant87849e0230b9a5fa4d26e67c13f0331b90fa25b4a74d912fdb8180a3736a773a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3feeb77-1d62-acd1-2350-1368539715e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem remainder_derivative_integrable (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn (fun u => thetaRemainder u *
      deriv (fun u => sourceCorrelation explicitSecondDerivative A (2 * u)) u) (Ioi 0) := by
  have hC : ContDiff ℝ 1 (fun u => sourceCorrelation explicitSecondDerivative A (2 * u)) :=
    (sourceCorrelation_contDiff A (by linarith)).comp (contDiff_const.mul contDiff_id)
  have hm : AEStronglyMeasurable (fun u => thetaRemainder u *
      deriv (fun u => sourceCorrelation explicitSecondDerivative A (2 * u)) u)
      (volume.restrict (Ioi 0)) :=
    (thetaRemainder_measurable.mul hC.continuous_deriv_one.measurable).aestronglyMeasurable
  apply (thetaRemainder_first_moment_integrable.const_mul (260 / (3 * A ^ 2))).mono' hm
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
  simpa only [Real.norm_eq_abs] using remainder_derivative_norm_bound A u hA hu.le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptoticAudit/Variant87849e0230b9a5fa4d26e67c13f0331b90fa25b4a74d912fdb8180a3736a773a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptoticAudit/Variant87849e0230b9a5fa4d26e67c13f0331b90fa25b4a74d912fdb8180a3736a773a.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c29901782d094b6294e346f504de7d831dde109` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
