# sourceQuadraticValue_prime_remainder_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3e02463-668f-13a5-2129-f09264053447",
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
  "slug": "sourcequadraticvalue-prime-remainder-bound--29e35f5ad05b4eaaadd5ea0c",
  "source": {
    "blob": "bde122be347ab09f8a7836333b37098c4b5916a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 118,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProperPowerAsymptotic/Variant2421f9e2d4eb87780f8f696d11062c38cfd93b2013b63e478efd020d0b2314ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29e35f5ad05b4eaaadd5ea0cea61e59d1776729bf1a511aaccd4aed3d7aff89e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProperPowerAsymptotic/Variant2421f9e2d4eb87780f8f696d11062c38cfd93b2013b63e478efd020d0b2314ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3e02463-668f-13a5-2129-f09264053447`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–134.

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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProperPowerAsymptotic/Variant2421f9e2d4eb87780f8f696d11062c38cfd93b2013b63e478efd020d0b2314ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProperPowerAsymptotic/Variant2421f9e2d4eb87780f8f696d11062c38cfd93b2013b63e478efd020d0b2314ba.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bde122be347ab09f8a7836333b37098c4b5916a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
