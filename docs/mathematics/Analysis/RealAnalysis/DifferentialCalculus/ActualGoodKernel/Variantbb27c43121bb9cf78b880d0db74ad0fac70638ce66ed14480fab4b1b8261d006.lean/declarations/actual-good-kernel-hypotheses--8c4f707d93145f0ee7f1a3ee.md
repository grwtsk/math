# actual_good_kernel_hypotheses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f133c591-7e8a-b523-0a7c-c2468c7b85b5",
  "kind": "theorem",
  "lexical_name": "actual_good_kernel_hypotheses",
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
  "slug": "actual-good-kernel-hypotheses--8c4f707d93145f0ee7f1a3ee",
  "source": {
    "blob": "6046b03ecc61afa5f11d3a77f8bfecc44ec5bb29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbb27c43121bb9cf78b880d0db74ad0fac70638ce66ed14480fab4b1b8261d006.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c4f707d93145f0ee7f1a3eef5f341a3a8ab5711e2a325a7935c005358d36c98",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbb27c43121bb9cf78b880d0db74ad0fac70638ce66ed14480fab4b1b8261d006.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f133c591-7e8a-b523-0a7c-c2468c7b85b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_good_kernel_hypotheses {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (actualLogSource A) ∧ HasCompactSupport (actualLogSource A) ∧
    IntegrableOn (actualLogSource A) (Ioi 0) ∧
    IntegrableOn (fun x : ℝ => x * |deriv (actualLogSource A) x|) (Ioi 0) :=
  ⟨actualLogSource_contDiff hA,actualLogSource_hasCompactSupport hA,
    (actualLogSource_integrable_global hA).integrableOn,
    actualLogSource_weighted_derivative_integrable hA⟩

end ContinuousResearch.ActualGoodKernel

#check ContinuousResearch.ActualGoodKernel.actualLogSource_contDiff
#print axioms ContinuousResearch.ActualGoodKernel.actualLogSource_contDiff
#print ContinuousResearch.ActualGoodKernel.actualLogSource_contDiff

#check ContinuousResearch.ActualGoodKernel.actualLogSource_tendsto_zero
#print axioms ContinuousResearch.ActualGoodKernel.actualLogSource_tendsto_zero
#print ContinuousResearch.ActualGoodKernel.actualLogSource_tendsto_zero

#check ContinuousResearch.ActualGoodKernel.actualLogSource_deriv_hasCompactSupport
#print axioms ContinuousResearch.ActualGoodKernel.actualLogSource_deriv_hasCompactSupport
#print ContinuousResearch.ActualGoodKernel.actualLogSource_deriv_hasCompactSupport

#check ContinuousResearch.ActualGoodKernel.actualLogSource_integrable_global
#print axioms ContinuousResearch.ActualGoodKernel.actualLogSource_integrable_global
#print ContinuousResearch.ActualGoodKernel.actualLogSource_integrable_global

#check ContinuousResearch.ActualGoodKernel.actualLogSource_weighted_derivative_integrable_global
#print axioms ContinuousResearch.ActualGoodKernel.actualLogSource_weighted_derivative_integrable_global
#print ContinuousResearch.ActualGoodKernel.actualLogSource_weighted_derivative_integrable_global

#check ContinuousResearch.ActualGoodKernel.actualLogSource_weighted_derivative_integrable
#print axioms ContinuousResearch.ActualGoodKernel.actualLogSource_weighted_derivative_integrable
#print ContinuousResearch.ActualGoodKernel.actualLogSource_weighted_derivative_integrable

#check ContinuousResearch.ActualGoodKernel.actual_good_kernel_hypotheses
#print axioms ContinuousResearch.ActualGoodKernel.actual_good_kernel_hypotheses
#print ContinuousResearch.ActualGoodKernel.actual_good_kernel_hypotheses
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbb27c43121bb9cf78b880d0db74ad0fac70638ce66ed14480fab4b1b8261d006.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernel/Variantbb27c43121bb9cf78b880d0db74ad0fac70638ce66ed14480fab4b1b8261d006.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6046b03ecc61afa5f11d3a77f8bfecc44ec5bb29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
