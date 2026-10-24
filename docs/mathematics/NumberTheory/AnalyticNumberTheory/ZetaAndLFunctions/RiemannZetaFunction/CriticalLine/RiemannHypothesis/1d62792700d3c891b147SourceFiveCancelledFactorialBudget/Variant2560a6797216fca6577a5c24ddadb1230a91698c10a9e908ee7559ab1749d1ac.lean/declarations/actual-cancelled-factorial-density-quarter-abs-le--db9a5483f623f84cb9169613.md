# actual_cancelled_factorial_density_quarter_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff3b0299-ac33-7c7a-84a1-8768c321a469",
  "kind": "theorem",
  "lexical_name": "actual_cancelled_factorial_density_quarter_abs_le",
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
  "slug": "actual-cancelled-factorial-density-quarter-abs-le--db9a5483f623f84cb9169613",
  "source": {
    "blob": "a44d534168123fd380c59bca7c1491ad0df31d5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 115,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1d62792700d3c891b147SourceFiveCancelledFactorialBudget/Variant2560a6797216fca6577a5c24ddadb1230a91698c10a9e908ee7559ab1749d1ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db9a5483f623f84cb9169613968ca8a8322161c82ec7e6010e3908b730f86b3d",
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

Occurrence: `result:ff3b0299-ac33-7c7a-84a1-8768c321a469`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_cancelled_factorial_density_quarter_abs_le (A x : ℝ)
    (hA : 91 ≤ A) (hx : 0 < x) :
    |shortFactorialDefect (vaughanCutoff A) x *
      ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x)| ≤
        factorialCancellationSumMajorant A x / (4 * A ^ 2) := by
  rw [actual_factorial_cancelled_kernel A x (by linarith) hx, ← mul_assoc, abs_mul]
  calc
    _ ≤ |shortFactorialDefect (vaughanCutoff A) x * x ^ (-(3 : ℝ) / 2)| *
        ((5 * Real.log x ^ 2 + 20 * |Real.log x|) / (4 * A ^ 2)) :=
      mul_le_mul_of_nonneg_left (actual_cancelled_factorial_coefficient_quarter_abs_le A _ hA)
        (abs_nonneg _)
    _ = (|shortFactorialDefect (vaughanCutoff A) x * x ^ (-(3 : ℝ) / 2)| *
        (5 * Real.log x ^ 2 + 20 * |Real.log x|)) / (4 * A ^ 2) := by ring
    _ ≤ _ := div_le_div_of_nonneg_right (actualFactorial_sum_poly_le A x) (by positivity)

/-- Every measurable portion of the true positive axis retains the improved absolute budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1d62792700d3c891b147SourceFiveCancelledFactorialBudget/Variant2560a6797216fca6577a5c24ddadb1230a91698c10a9e908ee7559ab1749d1ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1d62792700d3c891b147SourceFiveCancelledFactorialBudget/Variant2560a6797216fca6577a5c24ddadb1230a91698c10a9e908ee7559ab1749d1ac.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a44d534168123fd380c59bca7c1491ad0df31d5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
