# actual_higherPower_signed_asymptotic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e19f124cbc567f86c2a2c15dd42c62245b68c01b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 654,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1f7d4282dda69d7b06bfbabbc55a6d87621c0c7f652f2c10d271fb276c9acb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43bf46d2-3f78-6f06-374a-354907fe9d34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b368b808-3726-d356-0d80-1c055a778300",
  "kind": "theorem",
  "lexical_name": "actual_higherPower_signed_asymptotic",
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
  "slug": "actual-higherpower-signed-asymptotic--fd5ec1450106a10bcfcd7fd0",
  "source": {
    "blob": "e19f124cbc567f86c2a2c15dd42c62245b68c01b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 681,
    "line": 654,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticStatements/Varianta1f7d4282dda69d7b06bfbabbc55a6d87621c0c7f652f2c10d271fb276c9acb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd5ec1450106a10bcfcd7fd01a65311d98ee5876fe1ae59c7a3bcac93f5f5019",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticStatements/Varianta1f7d4282dda69d7b06bfbabbc55a6d87621c0c7f652f2c10d271fb276c9acb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b368b808-3726-d356-0d80-1c055a778300`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 654–681.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_higherPower_signed_asymptotic : ∃ C : ℝ, 0 ≤ C ∧
    ∀ A : ℝ, 1 ≤ A →
      |-2 * (∑ n ∈ (Cutoff.primeIndices A).filter IsHigherPrimePower,
          ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
            sourceCorrelation explicitSecondDerivative A (Real.log n)) + 2 * higherPowerConstant| ≤
        C / A ^ 2 := by
  refine ⟨2 * higherPowerBudget, mul_nonneg (by norm_num) higherPowerBudget_nonneg, ?_⟩
  intro A hA
  change |-2 * higherPrimePowerContribution A + 2 * higherPowerConstant| ≤ _
  have he : -2 * higherPrimePowerContribution A + 2 * higherPowerConstant =
      -2 * (higherPrimePowerContribution A - higherPowerConstant) := by ring
  rw [he, abs_mul, show |(-2 : ℝ)| = 2 by norm_num]
  calc
    _ ≤ 2 * (higherPowerBudget / A ^ 2) :=
      mul_le_mul_of_nonneg_left (actualHigherPower_deviation_bound A hA) (by norm_num)
    _ = _ := by ring

end
end HigherPowerAsymptoticScratch

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
open FormalResearch.RiemannHypothesis.SourceComparison
open HigherPowerMomentScratch HigherPowerSourceScratch HigherPowerAsymptoticScratch
open scoped Classical

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticStatements/Varianta1f7d4282dda69d7b06bfbabbc55a6d87621c0c7f652f2c10d271fb276c9acb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticStatements/Varianta1f7d4282dda69d7b06bfbabbc55a6d87621c0c7f652f2c10d271fb276c9acb6.lean#L654).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e19f124cbc567f86c2a2c15dd42c62245b68c01b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
