# covariance_sub_main_eq_localized_work_with_endpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da356068beb0da7c6987f0c5ea2bf9ff0a819d77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 880,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7b619255a10dfe5eca45dfb93b07c8ef6a0697cf84d510f70154b6369189f7cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f3e91fb-9fcf-b32e-20de-ba7987fba9ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d2aeef6-6d82-06ff-5af9-f506f2b71ee1",
  "kind": "theorem",
  "lexical_name": "covariance_sub_main_eq_localized_work_with_endpoint",
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
  "slug": "covariance-sub-main-eq-localized-work-with-endpoint--64edd312fa0e882939a10af0",
  "source": {
    "blob": "da356068beb0da7c6987f0c5ea2bf9ff0a819d77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 903,
    "line": 880,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/04SourceActualMixedWorkFubini/Variant7b619255a10dfe5eca45dfb93b07c8ef6a0697cf84d510f70154b6369189f7cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64edd312fa0e882939a10af0816dc9190df7d7c9d9e9c1d6978c257e0225cdd1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/04SourceActualMixedWorkFubini/Variant7b619255a10dfe5eca45dfb93b07c8ef6a0697cf84d510f70154b6369189f7cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d2aeef6-6d82-06ff-5af9-f506f2b71ee1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 880–903.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem covariance_sub_main_eq_localized_work_with_endpoint (A : ℝ) (hA : 1 ≤ A) :
    VaughanOperatorReview.covarianceOperatorValue A / 2 -
        SourceSamplingLedger.independentMainTerm A =
      (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
        SourceJointMangoldtWork.jointMangoldtTestProfile A t) -
      mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
        SourceJointMangoldtWork.jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) -
      (∫ v in discreteOverlapWindow A, actualMixedWorkDensity A v) -
      (∫ v in actualWorkLeftStrip A, actualMixedWorkDensity A v) -
      SourceVaughanHankel.centeredDeletedDiagonal A -
      SourceSamplingLedger.independentMainTerm A +
      (let U := vaughanCutoff A
       let N := sourceKernelCutoff A
       let K := N / (U + 1)
       let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
       let R : ℕ → ℝ := fun k => ∑ m ∈ longInventory A,
         ArithmeticFunction.vonMangoldt m *
           EstimatePlainKernel.sourcePlainWeight A ((m * k : ℕ) : ℝ)
       B K * R K) := by
  rw [SourceStrictColumnInterior.covariance_sub_main_eq_strictColumnInterior_add_endpoint A hA,
    strictColumnInterior_eq_baseline_sub_localized_work A hA]

end
end FormalResearch.RiemannHypothesis.SourceActualMixedWorkFubini
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/04SourceActualMixedWorkFubini/Variant7b619255a10dfe5eca45dfb93b07c8ef6a0697cf84d510f70154b6369189f7cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/04SourceActualMixedWorkFubini/Variant7b619255a10dfe5eca45dfb93b07c8ef6a0697cf84d510f70154b6369189f7cf.lean#L880).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da356068beb0da7c6987f0c5ea2bf9ff0a819d77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
