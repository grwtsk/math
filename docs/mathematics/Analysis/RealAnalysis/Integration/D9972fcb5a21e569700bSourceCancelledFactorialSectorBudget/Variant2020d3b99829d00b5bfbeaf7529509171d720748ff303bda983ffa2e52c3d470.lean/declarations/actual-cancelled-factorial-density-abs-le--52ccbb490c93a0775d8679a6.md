# actual_cancelled_factorial_density_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2743188f-d669-3bc9-ad19-e60cd1057f92",
  "kind": "theorem",
  "lexical_name": "actual_cancelled_factorial_density_abs_le",
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
  "slug": "actual-cancelled-factorial-density-abs-le--52ccbb490c93a0775d8679a6",
  "source": {
    "blob": "133060430e17a8fb6afabb97e0bd14d82edc3161",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 257,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variant2020d3b99829d00b5bfbeaf7529509171d720748ff303bda983ffa2e52c3d470.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52ccbb490c93a0775d8679a67a247afeb553243e263dcd533b6e64a4730b1624",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variant2020d3b99829d00b5bfbeaf7529509171d720748ff303bda983ffa2e52c3d470.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2743188f-d669-3bc9-ad19-e60cd1057f92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_cancelled_factorial_density_abs_le (A x : ℝ)
    (hA : 91 ≤ A) (hx : 0 < x) :
    |shortFactorialDefect (vaughanCutoff A) x *
        ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x)| ≤
      factorialCancellationSumMajorant A x / A ^ 2 := by
  rw [actual_factorial_cancelled_kernel A x (by linarith) hx, ← mul_assoc, abs_mul]
  calc
    _ ≤ |shortFactorialDefect (vaughanCutoff A) x * x ^ (-(3 : ℝ) / 2)| *
        ((5 * Real.log x ^ 2 + 20 * |Real.log x|) / A ^ 2) :=
      mul_le_mul_of_nonneg_left (actual_cancelled_factorial_coefficient_abs_le A _ hA)
        (abs_nonneg _)
    _ = (|shortFactorialDefect (vaughanCutoff A) x * x ^ (-(3 : ℝ) / 2)| *
        (5 * Real.log x ^ 2 + 20 * |Real.log x|)) / A ^ 2 := by ring
    _ ≤ _ := div_le_div_of_nonneg_right (actualFactorial_sum_poly_le A x) (by positivity)

/-- The actually cancelled F sector has genuine global L1 before restriction to its true tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variant2020d3b99829d00b5bfbeaf7529509171d720748ff303bda983ffa2e52c3d470.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variant2020d3b99829d00b5bfbeaf7529509171d720748ff303bda983ffa2e52c3d470.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `133060430e17a8fb6afabb97e0bd14d82edc3161` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
