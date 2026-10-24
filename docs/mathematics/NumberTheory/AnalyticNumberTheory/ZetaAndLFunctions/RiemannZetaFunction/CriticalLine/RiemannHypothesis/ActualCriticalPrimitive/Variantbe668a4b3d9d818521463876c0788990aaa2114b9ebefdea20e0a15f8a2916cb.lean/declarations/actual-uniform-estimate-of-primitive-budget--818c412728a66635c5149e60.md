# actual_uniform_estimate_of_primitive_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f466e44-9d5e-dfc1-291e-50c9b543466c",
  "kind": "theorem",
  "lexical_name": "actual_uniform_estimate_of_primitive_budget",
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
  "slug": "actual-uniform-estimate-of-primitive-budget--818c412728a66635c5149e60",
  "source": {
    "blob": "082465cdacd9f19269a78b63fd9be13e5488cf0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 262,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalPrimitive/Variantbe668a4b3d9d818521463876c0788990aaa2114b9ebefdea20e0a15f8a2916cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:818c412728a66635c5149e6025ac13cdcf82ea37320ea9d63d6cecbb0f8870ec",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalPrimitive/Variantbe668a4b3d9d818521463876c0788990aaa2114b9ebefdea20e0a15f8a2916cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f466e44-9d5e-dfc1-291e-50c9b543466c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_uniform_estimate_of_primitive_budget (M : ℝ) (hM : 0 ≤ M)
    (hF : ∀ t : ℝ, 0 ≤ t → |criticalPrimitive t| ≤ M) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_mertens_residual_tail (actual_residual_tail_of_primitive_budget M hM hF)

end
end FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive

#check FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.primitiveDensity
#print axioms FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.primitiveDensity
#check FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.criticalPrimitive
#print axioms FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.criticalPrimitive
#check FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.criticalKernel
#print axioms FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.criticalKernel
#check FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.primitiveDensity_intervalIntegrable
#print axioms FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.primitiveDensity_intervalIntegrable
#check FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.criticalPrimitive_zero
#print axioms FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.criticalPrimitive_zero
#check FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.criticalPrimitive_absolutelyContinuous
#print axioms FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.criticalPrimitive_absolutelyContinuous
#check FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.criticalPrimitive_ae_hasDerivAt
#print axioms FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.criticalPrimitive_ae_hasDerivAt
#check FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.criticalKernel_contDiff
#print axioms FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.criticalKernel_contDiff
#check FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.criticalKernel_at_upper
#print axioms FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.criticalKernel_at_upper
#check FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.actual_signed_primitive_parts
#print axioms FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.actual_signed_primitive_parts
#check FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.criticalTest_deriv_integral
#print axioms FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.criticalTest_deriv_integral
#check FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.actual_residual_primitive_reconstruction
#print axioms FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.actual_residual_primitive_reconstruction
#check FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.criticalKernel_deriv
#print axioms FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.criticalKernel_deriv
#check FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.source_first_derivative_coarse_bound
#print axioms FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.source_first_derivative_coarse_bound
#check FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.source_second_derivative_coarse_bound
#print axioms FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.source_second_derivative_coarse_bound
#check FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.criticalKernel_deriv_abs_le
#print axioms FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.criticalKernel_deriv_abs_le
#check FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.criticalKernel_deriv_L1_bound
#print axioms FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.criticalKernel_deriv_L1_bound
#check FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.primitive_work_intervalIntegrable
#print axioms FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.primitive_work_intervalIntegrable
#check FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.actual_primitive_work_bound
#print axioms FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.actual_primitive_work_bound
#check FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.actual_residual_upper_of_primitive_budget
#print axioms FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.actual_residual_upper_of_primitive_budget
#check FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.actual_gap_upper_of_primitive_budget
#print axioms FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.actual_gap_upper_of_primitive_budget
#check FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.actual_residual_tail_of_primitive_budget
#print axioms FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.actual_residual_tail_of_primitive_budget
#check FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.actual_uniform_estimate_of_primitive_budget
#print axioms FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive.actual_uniform_estimate_of_primitive_budget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalPrimitive/Variantbe668a4b3d9d818521463876c0788990aaa2114b9ebefdea20e0a15f8a2916cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalPrimitive/Variantbe668a4b3d9d818521463876c0788990aaa2114b9ebefdea20e0a15f8a2916cb.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `082465cdacd9f19269a78b63fd9be13e5488cf0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
