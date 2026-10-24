# actual_properPower_signed_asymptotic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1cca680d-47df-4a59-4a27-1c43c0043e06",
  "kind": "theorem",
  "lexical_name": "actual_properPower_signed_asymptotic",
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
  "slug": "actual-properpower-signed-asymptotic--58fa5155ee97788cd4b1dbaa",
  "source": {
    "blob": "e38c42af091fe030f74538c29ab12edf254b37c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 79,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProperPowerAsymptoticStatements/Variant9eef1db852ecea7162510c3a08bf3d6c7801e5415d0c55e08bfcd0b93c0599c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58fa5155ee97788cd4b1dbaa02eea6f59d3933e38ff94f24548b6af4678fc66e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProperPowerAsymptoticStatements/Variant9eef1db852ecea7162510c3a08bf3d6c7801e5415d0c55e08bfcd0b93c0599c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cca680d-47df-4a59-4a27-1c43c0043e06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_properPower_signed_asymptotic : ∃ C : ℝ, 0 ≤ C ∧
    ∀ A : ℝ, 1 ≤ A →
      |-2 * (∑ n ∈ (Cutoff.primeIndices A).filter (fun n => ¬n.Prime),
          ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
            sourceCorrelation explicitSecondDerivative A (Real.log n)) +
        (256 / 315) ^ 2 * A / (32 * sourceNormalization A) + 2 * properPowerConstant| ≤
          C / A ^ 2 := by
  refine ⟨2 * properPowerBudget, mul_nonneg (by norm_num) properPowerBudget_nonneg, ?_⟩
  intro A hA
  change |-2 * properPrimePowerContribution A +
      (256 / 315) ^ 2 * A / (32 * sourceNormalization A) + 2 * properPowerConstant| ≤ _
  have he : -2 * properPrimePowerContribution A +
      (256 / 315) ^ 2 * A / (32 * sourceNormalization A) + 2 * properPowerConstant =
        -2 * (properPrimePowerContribution A -
          ((256 / 315) ^ 2 * A / (64 * sourceNormalization A) + properPowerConstant)) := by ring
  rw [he, abs_mul, show |(-2 : ℝ)| = 2 by norm_num]
  calc
    _ ≤ 2 * (properPowerBudget / A ^ 2) :=
      mul_le_mul_of_nonneg_left (properPrimePowerContribution_asymptotic_bound A hA) (by norm_num)
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProperPowerAsymptoticStatements/Variant9eef1db852ecea7162510c3a08bf3d6c7801e5415d0c55e08bfcd0b93c0599c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProperPowerAsymptoticStatements/Variant9eef1db852ecea7162510c3a08bf3d6c7801e5415d0c55e08bfcd0b93c0599c9.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e38c42af091fe030f74538c29ab12edf254b37c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
