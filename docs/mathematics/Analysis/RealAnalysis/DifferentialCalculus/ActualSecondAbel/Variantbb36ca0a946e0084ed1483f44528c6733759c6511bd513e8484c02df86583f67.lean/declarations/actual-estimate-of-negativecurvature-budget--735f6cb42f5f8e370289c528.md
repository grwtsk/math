# actual_estimate_of_negativeCurvature_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d81836a-6f13-7c99-a983-1e65d9615426",
  "kind": "theorem",
  "lexical_name": "actual_estimate_of_negativeCurvature_budget",
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
  "slug": "actual-estimate-of-negativecurvature-budget--735f6cb42f5f8e370289c528",
  "source": {
    "blob": "e5655bfb748837159698f2d62a3eb4840c31ccc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 240,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualSecondAbel/Variantbb36ca0a946e0084ed1483f44528c6733759c6511bd513e8484c02df86583f67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:735f6cb42f5f8e370289c528610a400e7a603bf495f3af1ac5495ef55ef8242e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualSecondAbel/Variantbb36ca0a946e0084ed1483f44528c6733759c6511bd513e8484c02df86583f67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d81836a-6f13-7c99-a983-1e65d9615426`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_estimate_of_negativeCurvature_budget (h : NegativeCurvatureTailBudget) :
    CorrelationAssembly.EstimateObligation :=
  EstimateMertensResidual.estimate_of_mertens_residual_tail
    (criticalRemoved_tail_iff_residual_tail.mp (actual_tail_of_negativeCurvature_budget h))

end ContinuousResearch.ActualSecondAbel

-- Public trusted-closure audits for the frozen scratch packet.
#print axioms ContinuousResearch.ActualSecondAbel.criticalPrimeTest_contDiff_two
#print axioms ContinuousResearch.ActualSecondAbel.criticalPrimeTest_deriv_lipschitz
#print axioms ContinuousResearch.ActualSecondAbel.actual_slope_phases_lipschitz
#print axioms ContinuousResearch.ActualSecondAbel.pairedTailTest_deriv_lipschitz
#print axioms ContinuousResearch.ActualSecondAbel.pairedTailTest_deriv_absolutelyContinuous
#print axioms ContinuousResearch.ActualSecondAbel.pairedTailCurvature
#print axioms ContinuousResearch.ActualSecondAbel.pairedTailCurvature_intervalIntegrable
#print axioms ContinuousResearch.ActualSecondAbel.pairedTailCurvature_ae_hasDerivAt
#print axioms ContinuousResearch.ActualSecondAbel.pairedTailTest_deriv_integral_zero
#print axioms ContinuousResearch.ActualSecondAbel.actual_delta_pairing_intervalIntegrable
#print axioms ContinuousResearch.ActualSecondAbel.actual_first_Abel
#print axioms ContinuousResearch.ActualSecondAbel.actual_bridge_curvature_intervalIntegrable
#print axioms ContinuousResearch.ActualSecondAbel.actual_second_Abel
#print axioms ContinuousResearch.ActualSecondAbel.negativeCurvatureWork
#print axioms ContinuousResearch.ActualSecondAbel.negativeCurvatureWork_integrand_intervalIntegrable
#print axioms ContinuousResearch.ActualSecondAbel.negativeCurvatureWork_nonneg
#print axioms ContinuousResearch.ActualSecondAbel.actual_work_ge_negativeCurvatureWork
#print axioms ContinuousResearch.ActualSecondAbel.NegativeCurvatureTailBudget
#print axioms ContinuousResearch.ActualSecondAbel.actual_tail_of_negativeCurvature_budget
#print axioms ContinuousResearch.ActualSecondAbel.actual_estimate_of_negativeCurvature_budget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualSecondAbel/Variantbb36ca0a946e0084ed1483f44528c6733759c6511bd513e8484c02df86583f67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualSecondAbel/Variantbb36ca0a946e0084ed1483f44528c6733759c6511bd513e8484c02df86583f67.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5655bfb748837159698f2d62a3eb4840c31ccc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
