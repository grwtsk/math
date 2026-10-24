# biasKernel_eq_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bee6324a-4d98-06fb-c4b9-6678ec6059e2",
  "kind": "theorem",
  "lexical_name": "biasKernel_eq_sqrt",
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
  "slug": "biaskernel-eq-sqrt--dca5a7106c07740cc226410a",
  "source": {
    "blob": "a80c406a4e999df0811385886f3a8710de8cd5b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 292,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant6a33fb6ff0d44426274be16ea456fcfc81976d47db049efdce259105f7caa406.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dca5a7106c07740cc226410a02c5d65ef4c0a40fe037b3eddeeb7614d4296be1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant6a33fb6ff0d44426274be16ea456fcfc81976d47db049efdce259105f7caa406.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bee6324a-4d98-06fb-c4b9-6678ec6059e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem biasKernel_eq_sqrt {A : ℝ} {x : ℝ} (hx : 0 < x) :
    biasKernel A x = (1/Real.sqrt x) *
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (Real.log x) -
        sourceCorrelation explicitSecondDerivative A (Real.log x)/4) := by
  rw [biasKernel, negative_half_exp_eq_sqrt hx]
  rfl

#check curvature_continuous
#check curvature_intervalIntegrable
#check curvature_half_total_zero
#check curvature_half_first_moment_one
#check curvature_negative_at_zero
#check curvature_positive_somewhere
#check biasPrimitive_hasDerivAt
#check biasLogKernel_continuous
#check biasLogKernel_half_total
#check biasLogKernel_negative_at_zero
#check biasLogKernel_positive_somewhere
#check biasKernel_eq_log_transport
#check biasKernel_primitive_hasDerivAt
#check biasKernel_continuousOn
#check biasKernel_total
#check biasKernel_negative_at_one
#check biasKernel_positive_somewhere
#check sourceBiasWeight_hasDerivAt
#check sourceBiasWeight_flux_eq
#check sourceBiasWeight_flux_hasDerivAt
#check sourceBiasWeight_flux_deriv
#check curvature_weighted_abs_budget
#check curvature_pairing_intervalIntegrable
#check curvature_pairing_of_linear_envelope
#check negative_half_exp_eq_sqrt
#check biasKernel_eq_sqrt
#check curvature
#check biasLogKernel
#check biasKernel
#check biasPrimitive
#check sourceBiasWeight
#print axioms curvature_continuous
#print axioms curvature_intervalIntegrable
#print axioms curvature_half_total_zero
#print axioms curvature_half_first_moment_one
#print axioms curvature_negative_at_zero
#print axioms curvature_positive_somewhere
#print axioms biasPrimitive_hasDerivAt
#print axioms biasLogKernel_continuous
#print axioms biasLogKernel_half_total
#print axioms biasLogKernel_negative_at_zero
#print axioms biasLogKernel_positive_somewhere
#print axioms biasKernel_eq_log_transport
#print axioms biasKernel_primitive_hasDerivAt
#print axioms biasKernel_continuousOn
#print axioms biasKernel_total
#print axioms biasKernel_negative_at_one
#print axioms biasKernel_positive_somewhere
#print axioms sourceBiasWeight_hasDerivAt
#print axioms sourceBiasWeight_flux_eq
#print axioms sourceBiasWeight_flux_hasDerivAt
#print axioms sourceBiasWeight_flux_deriv
#print axioms curvature_weighted_abs_budget
#print axioms curvature_pairing_intervalIntegrable
#print axioms curvature_pairing_of_linear_envelope
#print axioms negative_half_exp_eq_sqrt
#print axioms biasKernel_eq_sqrt
#print axioms curvature
#print axioms biasLogKernel
#print axioms biasKernel
#print axioms biasPrimitive
#print axioms sourceBiasWeight

end ContinuousResearch.ActualSignedKernelMoments
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant6a33fb6ff0d44426274be16ea456fcfc81976d47db049efdce259105f7caa406.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant6a33fb6ff0d44426274be16ea456fcfc81976d47db049efdce259105f7caa406.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a80c406a4e999df0811385886f3a8710de8cd5b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
