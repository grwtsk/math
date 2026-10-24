# remainingOverlapBalance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6bfd6ade141203972a6071719252d4baaf42ff2c3ab2c6e4f0d86f94c051befe",
  "kind": "def",
  "lexical_name": "remainingOverlapBalance",
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
  "slug": "remainingoverlapbalance--e8dc1d0c0177938fd2f35978",
  "source": {
    "blob": "ab4c31ad7b2f396f1646be7cfe1c025367b492ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 97,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantdc0198fcffd8e7ead9a27e1340c16c11f4130f756838ea108e1756343d056f55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8dc1d0c0177938fd2f35978f192f73e84d0353fc53f0f18f801d9a2b742aa75",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantdc0198fcffd8e7ead9a27e1340c16c11f4130f756838ea108e1756343d056f55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6bfd6ade141203972a6071719252d4baaf42ff2c3ab2c6e4f0d86f94c051befe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def remainingOverlapBalance (A : ℝ) : ℝ :=
  (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
    SourceJointMangoldtWork.jointMangoldtTestProfile A t) -
  mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
    SourceJointMangoldtWork.jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) -
  (∫ v in discreteOverlapWindow A, actualMixedWorkDensity A v) -
  SourceVaughanHankel.centeredDeletedDiagonal A -
  SourceSamplingLedger.independentMainTerm A +
  (let U := vaughanCutoff A
   let N := sourceKernelCutoff A
   let K := N / (U + 1)
   let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
   let R : ℕ → ℝ := fun k => ∑ m ∈ longInventory A,
     ArithmeticFunction.vonMangoldt m *
       EstimatePlainKernel.sourcePlainWeight A ((m * k : ℕ) : ℝ)
   B K * R K)

/-- The actual PRIVATE39 L1 kernel remains integrable after any spatial restriction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantdc0198fcffd8e7ead9a27e1340c16c11f4130f756838ea108e1756343d056f55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantdc0198fcffd8e7ead9a27e1340c16c11f4130f756838ea108e1756343d056f55.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab4c31ad7b2f396f1646be7cfe1c025367b492ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
