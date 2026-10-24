# actual_covariant_ordinary_work_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:626976ef-7d5c-0ebf-e016-321161c64ae4",
  "kind": "theorem",
  "lexical_name": "actual_covariant_ordinary_work_abs_le",
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
  "slug": "actual-covariant-ordinary-work-abs-le--8acedd860de1952c275397e3",
  "source": {
    "blob": "97fe7e85ca8e88115734eab81acf95c601a67c66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCovariantWorkKernel/Variant2bef7684cb62378d1c96efb6213dc79be25aa92c065e5d6995ea484baaa54070.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8acedd860de1952c275397e3a1535abc7b9c3be51daf6995b5f992ff05c6659b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCovariantWorkKernel/Variant2bef7684cb62378d1c96efb6213dc79be25aa92c065e5d6995ea484baaa54070.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:626976ef-7d5c-0ebf-e016-321161c64ae4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_covariant_ordinary_work_abs_le (A t s : ℝ) (hA : 91 ≤ A) :
    |covariantMixedDerivative (actualLogMixedDensity A) t s| ≤
      Real.exp (t / 2) * Real.exp (-s / 2) * (67 / A ^ 4 + 5 / (4 * A ^ 2)) := by
  rw [actual_covariant_ordinary_work_kernel A (by linarith) t s, abs_mul,
    abs_of_pos (by positivity : 0 < Real.exp (t / 2) * Real.exp (-s / 2))]
  have h2 : |iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + s)| ≤
      5 / A ^ 2 := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      actualCorrelation_second_abs_le_five hA (t + s)
  have h4 := actual_correlation_iterated_fourth_abs_le_sixty_seven A (t + s) hA
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  have hd := abs_sub
    (iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A) (t + s))
    (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + s) / 4)
  rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 4)] at hd
  convert hd.trans (add_le_add h4 (div_le_div_of_nonneg_right h2 (by norm_num))) using 1 <;>
    ring

/-- The pure fourth covariant jet must be corrected by one quarter of its second jet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCovariantWorkKernel/Variant2bef7684cb62378d1c96efb6213dc79be25aa92c065e5d6995ea484baaa54070.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCovariantWorkKernel/Variant2bef7684cb62378d1c96efb6213dc79be25aa92c065e5d6995ea484baaa54070.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97fe7e85ca8e88115734eab81acf95c601a67c66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
