# higherPrimePowerContribution_eq_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23873b44-cfc2-3f8b-7f3a-c90b878099fa",
  "kind": "theorem",
  "lexical_name": "higherPrimePowerContribution_eq_tsum",
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
  "slug": "higherprimepowercontribution-eq-tsum--29af68c79e0e26eddbc2d7bc",
  "source": {
    "blob": "d86a63914c1cae8e84787d796f5bd7c5cc25230b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 544,
    "line": 518,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptotic/Variant92c75bce7c8e99769e461e9ad7ce31d0f6bbfb4814f70de9370f44225c452fc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29af68c79e0e26eddbc2d7bc7e80ad69f42030434a6e8a120973594a6681a853",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerAsymptotic/Variant92c75bce7c8e99769e461e9ad7ce31d0f6bbfb4814f70de9370f44225c452fc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23873b44-cfc2-3f8b-7f3a-c90b878099fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–544.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higherPrimePowerContribution_eq_tsum (A : ℝ) (hA : 1 ≤ A) :
    higherPrimePowerContribution A =
      ∑' q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k},
        Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
          sourceCorrelation explicitSecondDerivative A ((q.2.val : ℝ) * Real.log (q.1.val : ℝ)) := by
  change higherPrimePowerContribution A = ∑' q : HigherPowerIndex, higherSourceTerm A q
  rw [tsum_eq_sum (higherSourceTerm_zero_outside A hA), higherPrimePowerContribution_eq_finite_sum]

end
end HigherPowerTsumScratch
/-!
# Summable higher-prime-power deviation from the arithmetic constant

The original prime/exponent index retains every prime and every exponent at
least three. Genuine weight and logarithmic-moment summability precede the
sum subtraction and the absolute error estimate. This sector estimate does
not control the remaining first-prime contribution.
-/
namespace HigherPowerAsymptoticScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open HigherPowerMomentScratch CorrelationDeviationScratch
noncomputable section

/-- The genuine unmodified higher-prime-power arithmetic constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerAsymptotic/Variant92c75bce7c8e99769e461e9ad7ce31d0f6bbfb4814f70de9370f44225c452fc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptotic/Variant92c75bce7c8e99769e461e9ad7ce31d0f6bbfb4814f70de9370f44225c452fc4.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d86a63914c1cae8e84787d796f5bd7c5cc25230b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
