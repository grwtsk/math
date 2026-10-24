# shortMangoldtSource_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1b67b7aad44d81910a75cca43636e9d79411eb9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c06a6534710f8067a3a820bc14180b5f2afb58aa2b2db39256038ab93192b08f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ad0da3e-b7f2-76d6-f886-b6f1fc3c1adc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e95d6260-6fc6-fafc-a6b4-a81edf6bce65",
  "kind": "theorem",
  "lexical_name": "shortMangoldtSource_abs_le",
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
  "slug": "shortmangoldtsource-abs-le--8a9efc72bd2d5e0248a20e29",
  "source": {
    "blob": "f1b67b7aad44d81910a75cca43636e9d79411eb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 192,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc06a6534710f8067a3a820bc14180b5f2afb58aa2b2db39256038ab93192b08f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a9efc72bd2d5e0248a20e29dbb1c4c11f2151f5efc7c41ebe1f1658e2ba28b5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc06a6534710f8067a3a820bc14180b5f2afb58aa2b2db39256038ab93192b08f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e95d6260-6fc6-fafc-a6b4-a81edf6bce65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shortMangoldtSource_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |shortMangoldtSource A| ≤ 2 * (Real.log 4 + 4) * A := by
  unfold shortMangoldtSource
  calc
    _ ≤ ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
        |vonMangoldt m * sourcePlainWeight A m| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ Finset.Icc 1 (vaughanCutoff A), vonMangoldt m / Real.sqrt m := by
      apply Finset.sum_le_sum
      intro m _
      rw [abs_mul, abs_of_nonneg vonMangoldt_nonneg, div_eq_mul_inv]
      simpa only [one_div] using mul_le_mul_of_nonneg_left
        (sourcePlainWeight_abs_le A m hA) (vonMangoldt_nonneg (n := m))
    _ ≤ 2 * (Real.log 4 + 4) * Real.sqrt (vaughanCutoff A) :=
      EstimateVaughanBounds.sum_vonMangoldt_div_sqrt_le _
    _ ≤ _ := mul_le_mul_of_nonneg_left (sqrt_vaughanCutoff_le A hA) (by positivity)

/-- The short Möbius/logarithmic-kernel sector has a linear all-scale bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc06a6534710f8067a3a820bc14180b5f2afb58aa2b2db39256038ab93192b08f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc06a6534710f8067a3a820bc14180b5f2afb58aa2b2db39256038ab93192b08f.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1b67b7aad44d81910a75cca43636e9d79411eb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
