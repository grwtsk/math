# actualFactorial_sum_poly_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6809e03-1c72-7e76-41d9-f4bb5d856d84",
  "kind": "theorem",
  "lexical_name": "actualFactorial_sum_poly_le",
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
  "slug": "actualfactorial-sum-poly-le--d1bd882bbed5daed0066831f",
  "source": {
    "blob": "a44d534168123fd380c59bca7c1491ad0df31d5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 92,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1d62792700d3c891b147SourceFiveCancelledFactorialBudget/Variant2560a6797216fca6577a5c24ddadb1230a91698c10a9e908ee7559ab1749d1ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1bd882bbed5daed0066831f0874a81609f8a8c0070006b1bc74d346bd4dd44d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1d62792700d3c891b147SourceFiveCancelledFactorialBudget/Variant2560a6797216fca6577a5c24ddadb1230a91698c10a9e908ee7559ab1749d1ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6809e03-1c72-7e76-41d9-f4bb5d856d84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actualFactorial_sum_poly_le (A x : ℝ) :
    |shortFactorialDefect (vaughanCutoff A) x * x ^ (-(3 : ℝ) / 2)| *
      (5 * Real.log x ^ 2 + 20 * |Real.log x|) ≤ factorialCancellationSumMajorant A x := by
  unfold shortFactorialDefect
  rw [Finset.sum_mul]
  have h := Finset.abs_sum_le_sum_abs
    (fun d => EstimateMertensAbel.realMoebius d *
      factorialLogDefect (x / (d : ℝ)) * x ^ (-(3 : ℝ) / 2))
    (Finset.Icc 1 (vaughanCutoff A))
  calc
    _ ≤ (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        |EstimateMertensAbel.realMoebius d * factorialLogDefect (x / (d : ℝ)) *
          x ^ (-(3 : ℝ) / 2)|) * (5 * Real.log x ^ 2 + 20 * |Real.log x|) :=
      mul_le_mul_of_nonneg_right h (by positivity)
    _ = _ := by
      rw [Finset.sum_mul]
      unfold factorialCancellationSumMajorant factorialCancellationRowMajorant
      apply Finset.sum_congr rfl
      intro d _
      simp_rw [abs_mul]
      ring

/-- The complete actual density is bounded using the quarter-sized nonnegative majorant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1d62792700d3c891b147SourceFiveCancelledFactorialBudget/Variant2560a6797216fca6577a5c24ddadb1230a91698c10a9e908ee7559ab1749d1ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1d62792700d3c891b147SourceFiveCancelledFactorialBudget/Variant2560a6797216fca6577a5c24ddadb1230a91698c10a9e908ee7559ab1749d1ac.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a44d534168123fd380c59bca7c1491ad0df31d5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
