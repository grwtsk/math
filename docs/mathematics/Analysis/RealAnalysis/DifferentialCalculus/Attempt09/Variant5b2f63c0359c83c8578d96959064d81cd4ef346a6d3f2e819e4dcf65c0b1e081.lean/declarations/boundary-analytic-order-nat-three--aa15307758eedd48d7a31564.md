# boundary_analytic_order_nat_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a39dd36-6dd8-7546-a092-b6d3b227381e",
  "kind": "theorem",
  "lexical_name": "boundary_analytic_order_nat_three",
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
  "slug": "boundary-analytic-order-nat-three--aa15307758eedd48d7a31564",
  "source": {
    "blob": "b2d3650ef092f32dacaca684285deb5b477ea270",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 281,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa15307758eedd48d7a31564960c2ad38da714eeccfd0f67b75c8cf6bba62e08",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a39dd36-6dd8-7546-a092-b6d3b227381e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_analytic_order_nat_three {A : ℝ} (hA : 1 ≤ A) :
    analyticOrderNatAt (boundaryTransform A) 0 = 3 := by
  unfold analyticOrderNatAt
  rw [boundary_analytic_order_three hA]
  rfl

#check compactLaplace
#print axioms compactLaplace
#print compactLaplace

#check primitiveTransform
#print axioms primitiveTransform
#print primitiveTransform

#check normalizedPrimitiveTransform
#print axioms normalizedPrimitiveTransform
#print normalizedPrimitiveTransform

#check compactLaplace_integrable
#print axioms compactLaplace_integrable
#print compactLaplace_integrable

#check complex_weighted_derivative
#print axioms complex_weighted_derivative
#print complex_weighted_derivative

#check actual_complex_pole_filter
#print axioms actual_complex_pole_filter
#print actual_complex_pole_filter

#check primitive_transform_normalization
#print axioms primitive_transform_normalization
#print primitive_transform_normalization

#check boundary_transform_factored
#print axioms boundary_transform_factored
#print boundary_transform_factored

#check boundary_transform_factored_unnormalized
#print axioms boundary_transform_factored_unnormalized
#print boundary_transform_factored_unnormalized

#check compactLaplace_hasDerivAt
#print axioms compactLaplace_hasDerivAt
#print compactLaplace_hasDerivAt

#check compactLaplace_differentiable
#print axioms compactLaplace_differentiable
#print compactLaplace_differentiable

#check normalized_primitive_differentiable
#print axioms normalized_primitive_differentiable
#print normalized_primitive_differentiable

#check primitive_differentiable
#print axioms primitive_differentiable
#print primitive_differentiable

#check boundary_differentiable
#print axioms boundary_differentiable
#print boundary_differentiable

#check normalized_primitive_half
#print axioms normalized_primitive_half
#print normalized_primitive_half

#check normalized_primitive_half_ne_zero
#print axioms normalized_primitive_half_ne_zero
#print normalized_primitive_half_ne_zero

#check primitive_analyticAt
#print axioms primitive_analyticAt
#print primitive_analyticAt

#check normalized_primitive_analyticAt
#print axioms normalized_primitive_analyticAt
#print normalized_primitive_analyticAt

#check boundary_analyticAt
#print axioms boundary_analyticAt
#print boundary_analyticAt

#check boundaryUnit
#print axioms boundaryUnit
#print boundaryUnit

#check boundaryUnit_differentiable
#print axioms boundaryUnit_differentiable
#print boundaryUnit_differentiable

#check boundaryUnit_at_zero
#print axioms boundaryUnit_at_zero
#print boundaryUnit_at_zero

#check boundaryUnit_ne_zero
#print axioms boundaryUnit_ne_zero
#print boundaryUnit_ne_zero

#check boundary_cubic_factor
#print axioms boundary_cubic_factor
#print boundary_cubic_factor

#check primitive_transform_half
#print axioms primitive_transform_half
#print primitive_transform_half

#check primitive_half_re_pos
#print axioms primitive_half_re_pos
#print primitive_half_re_pos

#check boundary_analytic_order_three
#print axioms boundary_analytic_order_three
#print boundary_analytic_order_three

#check boundary_analytic_order_nat_three
#print axioms boundary_analytic_order_nat_three
#print boundary_analytic_order_nat_three


end ContinuousResearch.SourceBoundaryOrder
end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt09/Variant5b2f63c0359c83c8578d96959064d81cd4ef346a6d3f2e819e4dcf65c0b1e081.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2d3650ef092f32dacaca684285deb5b477ea270` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
