# sourcePrimeWeight_deviation_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e418368c-602c-347d-1cc6-0f4d0a09246a",
  "kind": "theorem",
  "lexical_name": "sourcePrimeWeight_deviation_bound",
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
  "slug": "sourceprimeweight-deviation-bound--f7d1939192c422aac93437a5",
  "source": {
    "blob": "4f0a29118ae86f730f44e5f6cd042f83f2f1f957",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 70,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrelationDeviationStatements/Variant6102d4669892510bdfc0f08d9747ea3b9adec4357db32058054bff5c769e45b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7d1939192c422aac93437a5f8901d51051ea69870c8511bc1d6c179b2bbf7b1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CorrelationDeviationStatements/Variant6102d4669892510bdfc0f08d9747ea3b9adec4357db32058054bff5c769e45b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e418368c-602c-347d-1cc6-0f4d0a09246a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePrimeWeight_deviation_bound (A : ℝ) (n : ℕ) (hA : 1 ≤ A) :
    |ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
      (sourceCorrelation explicitSecondDerivative A (Real.log n) - 1)| ≤
        (65 / (6 * A ^ 2)) *
          (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) * (Real.log n) ^ 2) := by
  have hw : 0 ≤ ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) :=
    div_nonneg ArithmeticFunction.vonMangoldt_nonneg (Real.sqrt_nonneg _)
  rw [abs_mul, abs_of_nonneg hw]
  calc
    _ ≤ (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)) *
        (65 * (Real.log n) ^ 2 / (6 * A ^ 2)) :=
      mul_le_mul_of_nonneg_left (sourceCorrelation_deviation_bound A (Real.log n) hA) hw
    _ = _ := by ring

end
end CorrelationDeviationScratch

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
open CorrelationDeviationScratch

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrelationDeviationStatements/Variant6102d4669892510bdfc0f08d9747ea3b9adec4357db32058054bff5c769e45b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrelationDeviationStatements/Variant6102d4669892510bdfc0f08d9747ea3b9adec4357db32058054bff5c769e45b4.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f0a29118ae86f730f44e5f6cd042f83f2f1f957` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
