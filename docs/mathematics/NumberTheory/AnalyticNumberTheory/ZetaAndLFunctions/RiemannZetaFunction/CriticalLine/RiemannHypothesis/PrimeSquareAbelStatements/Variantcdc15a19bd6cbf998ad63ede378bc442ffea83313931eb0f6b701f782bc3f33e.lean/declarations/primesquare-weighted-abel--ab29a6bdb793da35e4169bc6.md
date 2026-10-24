# primeSquare_weighted_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:308d19a6-b4d5-7a76-3471-36a405657c93",
  "kind": "theorem",
  "lexical_name": "primeSquare_weighted_abel",
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
  "slug": "primesquare-weighted-abel--ab29a6bdb793da35e4169bc6",
  "source": {
    "blob": "2a784c05d3092f4296615592e3c99e847fa5bd5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 218,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelStatements/Variantcdc15a19bd6cbf998ad63ede378bc442ffea83313931eb0f6b701f782bc3f33e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab29a6bdb793da35e4169bc6013f6be10ebe599475bf4e556f6d49ad76107bed",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelStatements/Variantcdc15a19bd6cbf998ad63ede378bc442ffea83313931eb0f6b701f782bc3f33e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:308d19a6-b4d5-7a76-3471-36a405657c93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeSquare_weighted_abel (A : ℝ) (hA : 1 ≤ A) :
    (∑ p ∈ (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime,
      Real.log (p : ℝ) / (p : ℝ) *
        sourceCorrelation explicitSecondDerivative A (2 * Real.log (p : ℝ))) =
      (∫ u in 0..A, sourceCorrelation explicitSecondDerivative A (2 * u)) + thetaConstant -
      ∫ u in 0..A, thetaRemainder u *
        deriv (fun u ↦ sourceCorrelation explicitSecondDerivative A (2 * u)) u := by
  apply primeHarmonicPrefix_centered_abel A (by linarith)
    (fun u ↦ sourceCorrelation explicitSecondDerivative A (2 * u))
    (fun u ↦ (sourceCorrelation_double_hasDerivAt A u hA).differentiableAt)
    (sourceCorrelation_double_derivative_continuous A hA)
  · exact sourceCorrelation_upper_endpoint A (by linarith)
  · simpa only [mul_zero] using EstimateCorrelation.actual_correlation_at_zero A hA

end
end PrimeSquareAbelScratch

set_option autoImplicit false
section PrimeSquareAbelExactStatements
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open FormalResearch.RiemannHypothesis.SourceComparison
open PrimeSquareCorrelation PrimeHarmonicPrefix PrimeHarmonicRemainder
open CorrelationSecondDerivative
noncomputable section

open PrimeSquareAbelScratch

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelStatements/Variantcdc15a19bd6cbf998ad63ede378bc442ffea83313931eb0f6b701f782bc3f33e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelStatements/Variantcdc15a19bd6cbf998ad63ede378bc442ffea83313931eb0f6b701f782bc3f33e.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a784c05d3092f4296615592e3c99e847fa5bd5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
