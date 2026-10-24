# covariance_sub_main_eq_quotient_truncated_column_increments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c9834f28e24826214d20adf399083aa8334c1e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0b369eb0f5897b3d68ea3a4f0d35665174148610ac7fa6eb0a9c7cbdce6d194.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81a0edaa-d3ef-72ed-4d7e-30d554420472",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a715870-fbbc-035e-713f-658effd47ff0",
  "kind": "theorem",
  "lexical_name": "covariance_sub_main_eq_quotient_truncated_column_increments",
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
  "slug": "covariance-sub-main-eq-quotient-truncated-column-increments--f63b4c493b0c508ae5b8db28",
  "source": {
    "blob": "7c9834f28e24826214d20adf399083aa8334c1e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 84,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/06SourceMangoldtColumnQuotient/Variantb0b369eb0f5897b3d68ea3a4f0d35665174148610ac7fa6eb0a9c7cbdce6d194.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f63b4c493b0c508ae5b8db283e25ed37fe2a25361f8212b489ff585b1e5f843a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/06SourceMangoldtColumnQuotient/Variantb0b369eb0f5897b3d68ea3a4f0d35665174148610ac7fa6eb0a9c7cbdce6d194.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a715870-fbbc-035e-713f-658effd47ff0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem covariance_sub_main_eq_quotient_truncated_column_increments
    (A : ℝ) (hA : 1 ≤ A) :
    VaughanOperatorReview.covarianceOperatorValue A / 2 -
        SourceSamplingLedger.independentMainTerm A =
      let U := vaughanCutoff A
      let N := sourceKernelCutoff A
      let K := N / (U + 1)
      let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
      let R : ℕ → ℝ := fun k =>
        ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
      (∑ k ∈ Finset.Ioc U K, B k * (R k - R (k + 1))) -
        centeredDeletedDiagonal A - SourceSamplingLedger.independentMainTerm A := by
  rw [covarianceOperator_half_eq_pairing_sub_diagonal A hA]
  have hj := mangoldt_inner_eq_quotient_truncated_column_increments A hA
  rw [← sourceHankelPairing_eq_l2_inner A hA] at hj
  exact congrArg (fun J : ℝ =>
    J - centeredDeletedDiagonal A - SourceSamplingLedger.independentMainTerm A) hj

end
end FormalResearch.RiemannHypothesis.SourceMangoldtColumnQuotient
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/06SourceMangoldtColumnQuotient/Variantb0b369eb0f5897b3d68ea3a4f0d35665174148610ac7fa6eb0a9c7cbdce6d194.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/06SourceMangoldtColumnQuotient/Variantb0b369eb0f5897b3d68ea3a4f0d35665174148610ac7fa6eb0a9c7cbdce6d194.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c9834f28e24826214d20adf399083aa8334c1e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
