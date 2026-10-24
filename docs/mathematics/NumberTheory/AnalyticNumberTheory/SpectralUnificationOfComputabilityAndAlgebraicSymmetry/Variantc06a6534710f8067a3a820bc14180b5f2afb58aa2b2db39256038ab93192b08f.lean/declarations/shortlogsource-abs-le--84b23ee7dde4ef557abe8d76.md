# shortLogSource_abs_le

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
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c06a6534710f8067a3a820bc14180b5f2afb58aa2b2db39256038ab93192b08f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae763bdb-b0b2-1f57-7dbe-4f07e014e961",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:128a4b38-bd78-198f-ec1c-b2bc8b8e6f55",
  "kind": "theorem",
  "lexical_name": "shortLogSource_abs_le",
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
  "slug": "shortlogsource-abs-le--84b23ee7dde4ef557abe8d76",
  "source": {
    "blob": "f1b67b7aad44d81910a75cca43636e9d79411eb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 209,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc06a6534710f8067a3a820bc14180b5f2afb58aa2b2db39256038ab93192b08f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84b23ee7dde4ef557abe8d7668ced521b66393abb104db8e27073f8967781b8a",
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

Occurrence: `result:128a4b38-bd78-198f-ec1c-b2bc8b8e6f55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shortLogSource_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |shortLogSource A| ≤ 16*A + 40 := by
  have hA0 : 0 < A := by linarith
  have hcoef : 0 ≤ 8+20/A := by positivity
  unfold shortLogSource
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        |realMoebius d * sourceMobiusKernel A d| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (8+20/A) * (1 / Real.sqrt d) := by
      apply Finset.sum_le_sum
      intro d hd
      have hd1 : (1 : ℝ) ≤ d := by exact_mod_cast (Finset.mem_Icc.mp hd).1
      rw [abs_mul]
      calc
        _ ≤ 1 * ((8+20/A) / Real.sqrt d) :=
          mul_le_mul (EstimateMovingFrontBound.realMoebius_abs_le_one d)
            (EstimateActualSourceKernelBound.sourceMobiusKernel_abs_le A d hA hd1)
            (abs_nonneg _) (by norm_num)
        _ = _ := by ring
    _ = (8+20/A) * ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), 1 / Real.sqrt d :=
      (Finset.mul_sum _ _ _).symm
    _ ≤ (8+20/A) * (2 * Real.sqrt (vaughanCutoff A)) :=
      mul_le_mul_of_nonneg_left (EstimateMovingFrontBound.sum_reciprocal_sqrt_le _) hcoef
    _ ≤ (8+20/A) * (2*A) := by gcongr; exact sqrt_vaughanCutoff_le A hA
    _ = _ := by field_simp; ring

/-- Both short factors have only quadratic cost under the actual plain kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc06a6534710f8067a3a820bc14180b5f2afb58aa2b2db39256038ab93192b08f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc06a6534710f8067a3a820bc14180b5f2afb58aa2b2db39256038ab93192b08f.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1b67b7aad44d81910a75cca43636e9d79411eb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
