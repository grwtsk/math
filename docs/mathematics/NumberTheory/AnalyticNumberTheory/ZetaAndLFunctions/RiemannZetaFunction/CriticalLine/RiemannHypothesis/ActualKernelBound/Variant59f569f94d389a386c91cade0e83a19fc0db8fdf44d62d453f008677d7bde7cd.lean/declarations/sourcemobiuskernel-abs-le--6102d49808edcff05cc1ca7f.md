# sourceMobiusKernel_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:747a49e6-b504-c184-42b6-981a6f0dda90",
  "kind": "theorem",
  "lexical_name": "sourceMobiusKernel_abs_le",
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
  "slug": "sourcemobiuskernel-abs-le--6102d49808edcff05cc1ca7f",
  "source": {
    "blob": "5481348dd7e04e22da4bde8ac32b6992c5f616de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualKernelBound/Variant59f569f94d389a386c91cade0e83a19fc0db8fdf44d62d453f008677d7bde7cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6102d49808edcff05cc1ca7f3133702f58b0a0e1409d1cbae0a21bbff001cfd1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualKernelBound/Variant59f569f94d389a386c91cade0e83a19fc0db8fdf44d62d453f008677d7bde7cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:747a49e6-b504-c184-42b6-981a6f0dda90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMobiusKernel_abs_le {A x : ℝ} (hA : 1 ≤ A) (hx : 1 ≤ x) :
    |sourceMobiusKernel A x| ≤ (8 + 20 / A) / Real.sqrt x := by
  have hx0 : 0 < x := by linarith
  have hB : ProfileSupBounds
      (sourceCorrelation Realization.explicitSecondDerivative A) 1 (5 / A) := by
    refine ⟨by norm_num, by positivity, ?_, ?_⟩
    · exact fun t => EstimateCorrelation.actual_correlation_abs_le_one A t hA
    · exact fun t => sourceCorrelation_deriv_abs_le_five_div hA t
  have h := two_moment_sampling_bound_sqrt
    (CorrelationRegularity.sourceCorrelation_contDiff A (by linarith))
    (sourceCorrelation_twoMomentProfile A hA) hx0 hB
    (sourceKernelCutoff A) (actual_sampling_tail_zero hA hx)
  rw [leftSampleSum_source_eq A x (sourceKernelCutoff A) hx0] at h
  have hc : 8 * (1 : ℝ) + 4 * (5 / A) = 8 + 20 / A := by ring
  simpa only [sourceMobiusKernel, hc] using h

/-- The lower endpoint has square root exactly `A`, rather than a new scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualKernelBound/Variant59f569f94d389a386c91cade0e83a19fc0db8fdf44d62d453f008677d7bde7cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualKernelBound/Variant59f569f94d389a386c91cade0e83a19fc0db8fdf44d62d453f008677d7bde7cd.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5481348dd7e04e22da4bde8ac32b6992c5f616de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
