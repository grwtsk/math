# actual_minus_kernel_error_t_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fa7605b-56b7-aa05-7866-3f47048f643f",
  "kind": "theorem",
  "lexical_name": "actual_minus_kernel_error_t_bound",
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
  "slug": "actual-minus-kernel-error-t-bound--68f6e340ca4e6d1e58cbacc8",
  "source": {
    "blob": "ab226630675572526b91929700ca5a0f07060cbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 28,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFiniteHeadMinusWeight/Variantef76b028b74e9e6a083a87157a11cf9695e9161cb49d9d54b54b5c73e3971750.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68f6e340ca4e6d1e58cbacc8f11c846187971ac026a7b9e59e579562434ef924",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFiniteHeadMinusWeight/Variantef76b028b74e9e6a083a87157a11cf9695e9161cb49d9d54b54b5c73e3971750.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fa7605b-56b7-aa05-7866-3f47048f643f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_minus_kernel_error_t_bound (A t : ℝ) (hA : 91 ≤ A) (ht : 0 ≤ t) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t -
      sourceCorrelation explicitSecondDerivative A t / 2 + 1 / 2| ≤
        5 * t / A ^ 2 + 5 * t ^ 2 / (4 * A ^ 2) := by
  have hd := actual_deriv_abs_le_linear A t hA
  rw [abs_of_nonneg ht] at hd
  have hc := actual_correlation_zero_taylor_bound A t hA
  have he : deriv (sourceCorrelation explicitSecondDerivative A) t -
      sourceCorrelation explicitSecondDerivative A t / 2 + 1 / 2 =
        deriv (sourceCorrelation explicitSecondDerivative A) t -
          (sourceCorrelation explicitSecondDerivative A t - 1) / 2 := by ring
  rw [he]
  calc
    _ ≤ |deriv (sourceCorrelation explicitSecondDerivative A) t| +
        |(sourceCorrelation explicitSecondDerivative A t - 1) / 2| := abs_sub _ _
    _ = |deriv (sourceCorrelation explicitSecondDerivative A) t| +
        |sourceCorrelation explicitSecondDerivative A t - 1| / 2 := by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
    _ ≤ 5 / A ^ 2 * t + (5 / A ^ 2 * t ^ 2 / 2) / 2 :=
      add_le_add hd (div_le_div_of_nonneg_right hc (by norm_num))
    _ = _ := by ring

/-- The same estimate is stated on the literal source's named minus-weight object. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFiniteHeadMinusWeight/Variantef76b028b74e9e6a083a87157a11cf9695e9161cb49d9d54b54b5c73e3971750.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFiniteHeadMinusWeight/Variantef76b028b74e9e6a083a87157a11cf9695e9161cb49d9d54b54b5c73e3971750.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab226630675572526b91929700ca5a0f07060cbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
