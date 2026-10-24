# normalized_original_source_and_full_baseline

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b5f4ec22bc1e95d992f6db61575b660d27275e7c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d152e43e365aa1146eef83b8a5a8265da5249f3f014ae6866902840211d794d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e357b027-051b-a775-6f63-aab7c8bc6f0f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9dd7dccf-5d47-cc42-bec6-78d0218c745a",
  "kind": "theorem",
  "lexical_name": "normalized_original_source_and_full_baseline",
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
  "slug": "normalized-original-source-and-full-baseline--0981e12bb18002ba47d1414f",
  "source": {
    "blob": "b5f4ec22bc1e95d992f6db61575b660d27275e7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 98,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixturesPrepared/Variantd152e43e365aa1146eef83b8a5a8265da5249f3f014ae6866902840211d794d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0981e12bb18002ba47d1414f6b1250076a0b27eecc3366a5de1620e718831619",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixturesPrepared/Variantd152e43e365aa1146eef83b8a5a8265da5249f3f014ae6866902840211d794d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9dd7dccf-5d47-cc42-bec6-78d0218c745a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_original_source_and_full_baseline (A : ℝ) (hA : 1 ≤ A) :
    ‖sourceL2 A (by linarith)‖ ^ 2 = 1 ∧
      sourceL2 A (by linarith) =
        SourcePureRotationObstruction.originalSourceL2 A (by linarith) ∧
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
  exact ⟨sourceL2_norm_sq A hA, sourceL2_eq_originalSourceL2 A (by linarith),
    covariance_sub_main_eq_quotient_truncated_column_increments A hA⟩

/-- A support ceiling alone is no uniform bound for arbitrary signed columns and coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixturesPrepared/Variantd152e43e365aa1146eef83b8a5a8265da5249f3f014ae6866902840211d794d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixturesPrepared/Variantd152e43e365aa1146eef83b8a5a8265da5249f3f014ae6866902840211d794d8.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5f4ec22bc1e95d992f6db61575b660d27275e7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
