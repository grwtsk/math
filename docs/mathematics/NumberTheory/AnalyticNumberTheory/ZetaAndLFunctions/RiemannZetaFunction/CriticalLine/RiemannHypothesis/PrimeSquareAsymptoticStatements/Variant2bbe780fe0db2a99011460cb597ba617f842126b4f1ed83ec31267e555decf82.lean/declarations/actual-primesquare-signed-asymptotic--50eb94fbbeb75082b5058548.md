# actual_primeSquare_signed_asymptotic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0da88737-1b0b-8f84-255e-9a74782c0789",
  "kind": "theorem",
  "lexical_name": "actual_primeSquare_signed_asymptotic",
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
  "slug": "actual-primesquare-signed-asymptotic--50eb94fbbeb75082b5058548",
  "source": {
    "blob": "4c5d175b7b658406004e6ee589fbf38f46729700",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 143,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptoticStatements/Variant2bbe780fe0db2a99011460cb597ba617f842126b4f1ed83ec31267e555decf82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50eb94fbbeb75082b50585486d2ac723d934785c1d1ceacaf62477f18ceed769",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptoticStatements/Variant2bbe780fe0db2a99011460cb597ba617f842126b4f1ed83ec31267e555decf82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0da88737-1b0b-8f84-255e-9a74782c0789`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_primeSquare_signed_asymptotic : ∃ C : ℝ, 0 ≤ C ∧
    ∀ A : ℝ, 1 ≤ A →
      |-2 * (∑ n ∈ (Cutoff.primeIndices A).filter IsPrimeSquare,
          ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
            sourceCorrelation explicitSecondDerivative A (Real.log n)) +
        (256 / 315) ^ 2 * A / (32 * sourceNormalization A) + 2 * thetaConstant| ≤
          C / A ^ 2 := by
  refine ⟨2 * primeSquareErrorBudget, mul_nonneg (by norm_num) primeSquareErrorBudget_nonneg, ?_⟩
  intro A hA
  change |-2 * primeSquareContribution A +
      (256 / 315) ^ 2 * A / (32 * sourceNormalization A) + 2 * thetaConstant| ≤ _
  have he : -2 * primeSquareContribution A +
      (256 / 315) ^ 2 * A / (32 * sourceNormalization A) + 2 * thetaConstant =
        -2 * (primeSquareContribution A -
          ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) + thetaConstant)) := by ring
  rw [he, abs_mul, show |(-2 : ℝ)| = 2 by norm_num]
  calc
    _ ≤ 2 * (primeSquareErrorBudget / A ^ 2) :=
      mul_le_mul_of_nonneg_left (primeSquareContribution_asymptotic_bound A hA) (by norm_num)
    _ = _ := by ring

end
end PrimeSquareAsymptoticScratch

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
open FormalResearch.RiemannHypothesis.SourceComparison
open PrimeHarmonicRemainder PrimeSquareSource
open PrimeSquareAsymptoticScratch
open scoped Classical

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptoticStatements/Variant2bbe780fe0db2a99011460cb597ba617f842126b4f1ed83ec31267e555decf82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptoticStatements/Variant2bbe780fe0db2a99011460cb597ba617f842126b4f1ed83ec31267e555decf82.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c5d175b7b658406004e6ee589fbf38f46729700` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
