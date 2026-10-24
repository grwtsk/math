# sourceQuadraticValue_prime_remainder_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8fc5eb3-fcb4-06e4-cd10-da7ce39efe5e",
  "kind": "theorem",
  "lexical_name": "sourceQuadraticValue_prime_remainder_bound",
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
  "slug": "sourcequadraticvalue-prime-remainder-bound--d91ce59fead971a60d1994fe",
  "source": {
    "blob": "086b34c7fce0d3d1092a1cdf4eadd3775abad28c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 118,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProperPowerAsymptoticAudit/Variantc1919ee9e3d0b11c189664b17727f2766e12f580f1c91d4beb93c01e011ec737.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d91ce59fead971a60d1994fe1bc821b46d70c106089fedecc1f33efffd0979c5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProperPowerAsymptoticAudit/Variantc1919ee9e3d0b11c189664b17727f2766e12f580f1c91d4beb93c01e011ec737.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8fc5eb3-fcb4-06e4-cd10-da7ce39efe5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceQuadraticValue_prime_remainder_bound (A : ℝ) (hA : 1 ≤ A) :
    |sourceQuadraticValue explicitSecondDerivative A -
      (archimedeanValue explicitSecondDerivative A - 2 * PrimeSector.primeContribution A -
        (256 / 315) ^ 2 * A / (32 * sourceNormalization A) - 2 * properPowerConstant)| ≤
          (2 * properPowerBudget) / A ^ 2 := by
  rw [sourceQuadraticValue_exact_prime_remainder A hA]
  have he : archimedeanValue explicitSecondDerivative A - 2 * PrimeSector.primeContribution A -
      (256 / 315) ^ 2 * A / (32 * sourceNormalization A) - 2 * properPowerConstant +
        sourcePowerRemainder A -
      (archimedeanValue explicitSecondDerivative A - 2 * PrimeSector.primeContribution A -
        (256 / 315) ^ 2 * A / (32 * sourceNormalization A) - 2 * properPowerConstant) =
          sourcePowerRemainder A := by ring
  rw [he]
  exact sourcePowerRemainder_abs_le A hA

end
end ProperPowerAsymptoticScratch

#print ProperPowerAsymptoticScratch.properPowerConstant
#print axioms ProperPowerAsymptoticScratch.properPowerConstant
#print ProperPowerAsymptoticScratch.properPowerBudget
#print axioms ProperPowerAsymptoticScratch.properPowerBudget
#print ProperPowerAsymptoticScratch.properPowerError
#print axioms ProperPowerAsymptoticScratch.properPowerError
#print ProperPowerAsymptoticScratch.sourcePowerRemainder
#print axioms ProperPowerAsymptoticScratch.sourcePowerRemainder
#print ProperPowerAsymptoticScratch.properPowerBudget_nonneg
#print axioms ProperPowerAsymptoticScratch.properPowerBudget_nonneg
#print ProperPowerAsymptoticScratch.properPowerError_abs_le
#print axioms ProperPowerAsymptoticScratch.properPowerError_abs_le
#print ProperPowerAsymptoticScratch.properPrimePowerContribution_eq_main_add_error
#print axioms ProperPowerAsymptoticScratch.properPrimePowerContribution_eq_main_add_error
#print ProperPowerAsymptoticScratch.properPrimePowerContribution_asymptotic_bound
#print axioms ProperPowerAsymptoticScratch.properPrimePowerContribution_asymptotic_bound
#print ProperPowerAsymptoticScratch.actual_properPower_signed_asymptotic
#print axioms ProperPowerAsymptoticScratch.actual_properPower_signed_asymptotic
#print ProperPowerAsymptoticScratch.sourcePowerRemainder_abs_le
#print axioms ProperPowerAsymptoticScratch.sourcePowerRemainder_abs_le
#print ProperPowerAsymptoticScratch.sourceQuadraticValue_exact_prime_remainder
#print axioms ProperPowerAsymptoticScratch.sourceQuadraticValue_exact_prime_remainder
#print ProperPowerAsymptoticScratch.sourceQuadraticValue_prime_remainder_bound
#print axioms ProperPowerAsymptoticScratch.sourceQuadraticValue_prime_remainder_bound
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProperPowerAsymptoticAudit/Variantc1919ee9e3d0b11c189664b17727f2766e12f580f1c91d4beb93c01e011ec737.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProperPowerAsymptoticAudit/Variantc1919ee9e3d0b11c189664b17727f2766e12f580f1c91d4beb93c01e011ec737.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `086b34c7fce0d3d1092a1cdf4eadd3775abad28c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
