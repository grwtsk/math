# covariance_sub_main_eq_strict_quotient_increments_with_endpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b3d009b9e9ab3c3d6ddc8bbce203fe37d306fc0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 206,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/5317dee6b019a93e81f8b5d1cc3fce6aa7c1f7589f1e9359df61fc2974219404.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b4412c6-b1c5-5f66-124c-e67dc861d134",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a8a6ae7-61a5-c734-81ef-07073cf2c25f",
  "kind": "theorem",
  "lexical_name": "covariance_sub_main_eq_strict_quotient_increments_with_endpoint",
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
  "slug": "covariance-sub-main-eq-strict-quotient-increments-with-endpoint--668e4eb2757004e1bf66100a",
  "source": {
    "blob": "6b3d009b9e9ab3c3d6ddc8bbce203fe37d306fc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 206,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variant5317dee6b019a93e81f8b5d1cc3fce6aa7c1f7589f1e9359df61fc2974219404.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:668e4eb2757004e1bf66100afb1edad148bc6c2f8986eb17ff04138b89888630",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variant5317dee6b019a93e81f8b5d1cc3fce6aa7c1f7589f1e9359df61fc2974219404.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a8a6ae7-61a5-c734-81ef-07073cf2c25f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem covariance_sub_main_eq_strict_quotient_increments_with_endpoint
    (A : ℝ) (hA : 1 ≤ A) :
    VaughanOperatorReview.covarianceOperatorValue A / 2 -
        SourceSamplingLedger.independentMainTerm A =
      let U := vaughanCutoff A
      let N := sourceKernelCutoff A
      let K := N / (U + 1)
      let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
      let R : ℕ → ℝ := fun k =>
        ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
      (∑ k ∈ Finset.Ico (U + 1) K, B k * (R k - R (k + 1))) + B K * R K -
        centeredDeletedDiagonal A - SourceSamplingLedger.independentMainTerm A := by
  classical
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  let K := N / (U + 1)
  let B := centeredPrefix A
  let R := column A
  rcases quotient_geometry A hA with ⟨_, hK, _, _⟩
  have hUK : U + 1 ≤ K := hK
  have hi : Finset.Ioc U K = Finset.Ico (U + 1) (K + 1) := by
    ext k
    simp only [Finset.mem_Ioc, Finset.mem_Ico]
    omega
  have htail : R (K + 1) = 0 :=
    actual_mangoldt_column_eq_zero_of_quotient_lt A hA (K + 1) (Nat.lt_succ_self K)
  have hj := covariance_sub_main_eq_quotient_truncated_column_increments A hA
  change VaughanOperatorReview.covarianceOperatorValue A / 2 -
      SourceSamplingLedger.independentMainTerm A =
    (∑ k ∈ Finset.Ioc U K, B k * (R k - R (k + 1))) -
      centeredDeletedDiagonal A - SourceSamplingLedger.independentMainTerm A at hj
  rw [hi, Finset.sum_Ico_succ_top hUK, htail, sub_zero] at hj
  exact hj

end
end FormalResearch.RiemannHypothesis.SourceMangoldtQuotientEndpoint
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variant5317dee6b019a93e81f8b5d1cc3fce6aa7c1f7589f1e9359df61fc2974219404.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variant5317dee6b019a93e81f8b5d1cc3fce6aa7c1f7589f1e9359df61fc2974219404.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b3d009b9e9ab3c3d6ddc8bbce203fe37d306fc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
