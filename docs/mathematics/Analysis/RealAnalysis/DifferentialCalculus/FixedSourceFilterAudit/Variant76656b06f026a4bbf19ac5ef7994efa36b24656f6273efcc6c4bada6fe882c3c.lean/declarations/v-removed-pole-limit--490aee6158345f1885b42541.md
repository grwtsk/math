# V_removed_pole_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5802886362339dbfa6f33d1f3145f79b3e24f72f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76656b06f026a4bbf19ac5ef7994efa36b24656f6273efcc6c4bada6fe882c3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:851faa6f-4999-3c04-8180-91e599653db2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:58d06d4c-cc13-cc8f-702e-5f793cc16a66",
  "kind": "theorem",
  "lexical_name": "V_removed_pole_limit",
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
  "slug": "v-removed-pole-limit--490aee6158345f1885b42541",
  "source": {
    "blob": "5802886362339dbfa6f33d1f3145f79b3e24f72f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 200,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedSourceFilterAudit/Variant76656b06f026a4bbf19ac5ef7994efa36b24656f6273efcc6c4bada6fe882c3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:490aee6158345f1885b425419e90e5b32e9956fcd205de1280f6c24f9a06d0f9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FixedSourceFilterAudit/Variant76656b06f026a4bbf19ac5ef7994efa36b24656f6273efcc6c4bada6fe882c3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58d06d4c-cc13-cc8f-702e-5f793cc16a66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem V_removed_pole_limit :
    Filter.Tendsto (fun z : ℂ ↦ V z / (z - 1 / 2))
      (𝓝[≠] (1 / 2)) (𝓝 (positivePoleSlope : ℂ)) := by
  have hs : slope V (1 / 2) = (fun z : ℂ ↦ V z / (z - 1 / 2)) := by
    funext z
    rw [slope_def_field, V_positive_pole_zero, sub_zero]
  rw [← hs]
  exact V_hasDerivAt_positive_pole.tendsto_slope

end
end FixedSourceFilterScratch

set_option pp.universes true
#print FixedSourceFilterScratch.fixedBump
#print axioms FixedSourceFilterScratch.fixedBump
#print FixedSourceFilterScratch.fixedBumpFirst
#print axioms FixedSourceFilterScratch.fixedBumpFirst
#print FixedSourceFilterScratch.v
#print axioms FixedSourceFilterScratch.v
#print FixedSourceFilterScratch.V
#print axioms FixedSourceFilterScratch.V
#print FixedSourceFilterScratch.sourceNormalization_one
#print axioms FixedSourceFilterScratch.sourceNormalization_one
#print FixedSourceFilterScratch.fixedBump_eq_scaled
#print axioms FixedSourceFilterScratch.fixedBump_eq_scaled
#print FixedSourceFilterScratch.fixedBump_weak_second_derivative
#print axioms FixedSourceFilterScratch.fixedBump_weak_second_derivative
#print FixedSourceFilterScratch.fixedBump_hasDerivAt
#print axioms FixedSourceFilterScratch.fixedBump_hasDerivAt
#print FixedSourceFilterScratch.fixedBumpFirst_hasDerivAt
#print axioms FixedSourceFilterScratch.fixedBumpFirst_hasDerivAt
#print FixedSourceFilterScratch.fixedBump_deriv
#print axioms FixedSourceFilterScratch.fixedBump_deriv
#print FixedSourceFilterScratch.fixedBump_second_deriv
#print axioms FixedSourceFilterScratch.fixedBump_second_deriv
#print FixedSourceFilterScratch.v_eq_fixed_differential
#print axioms FixedSourceFilterScratch.v_eq_fixed_differential
#print FixedSourceFilterScratch.v_contDiff
#print axioms FixedSourceFilterScratch.v_contDiff
#print FixedSourceFilterScratch.v_hasCompactSupport
#print axioms FixedSourceFilterScratch.v_hasCompactSupport
#print FixedSourceFilterScratch.v_zero_of_one_le_abs
#print axioms FixedSourceFilterScratch.v_zero_of_one_le_abs
#print FixedSourceFilterScratch.v_support_subset
#print axioms FixedSourceFilterScratch.v_support_subset
#print FixedSourceFilterScratch.v_even
#print axioms FixedSourceFilterScratch.v_even
#print FixedSourceFilterScratch.v_integrable
#print axioms FixedSourceFilterScratch.v_integrable
#print FixedSourceFilterScratch.v_memLp_two
#print axioms FixedSourceFilterScratch.v_memLp_two
#print FixedSourceFilterScratch.v_square_integrable
#print axioms FixedSourceFilterScratch.v_square_integrable
#print FixedSourceFilterScratch.v_square_integral
#print axioms FixedSourceFilterScratch.v_square_integral
#print FixedSourceFilterScratch.v_deriv_hasCompactSupport
#print axioms FixedSourceFilterScratch.v_deriv_hasCompactSupport
#print FixedSourceFilterScratch.v_deriv_bounded
#print axioms FixedSourceFilterScratch.v_deriv_bounded
#print FixedSourceFilterScratch.v_complex_eq_actual
#print axioms FixedSourceFilterScratch.v_complex_eq_actual
#print FixedSourceFilterScratch.V_integrable
#print axioms FixedSourceFilterScratch.V_integrable
#print FixedSourceFilterScratch.V_eq_bilateral
#print axioms FixedSourceFilterScratch.V_eq_bilateral
#print FixedSourceFilterScratch.V_eq_closed_formula
#print axioms FixedSourceFilterScratch.V_eq_closed_formula
#print FixedSourceFilterScratch.V_positive_pole_zero
#print axioms FixedSourceFilterScratch.V_positive_pole_zero
#print FixedSourceFilterScratch.V_negative_pole_zero
#print axioms FixedSourceFilterScratch.V_negative_pole_zero
#print FixedSourceFilterScratch.removedFilter
#print axioms FixedSourceFilterScratch.removedFilter
#print FixedSourceFilterScratch.positivePoleSlope
#print axioms FixedSourceFilterScratch.positivePoleSlope
#print FixedSourceFilterScratch.V_eq_removedFilter
#print axioms FixedSourceFilterScratch.V_eq_removedFilter
#print FixedSourceFilterScratch.removedFilter_differentiableAt
#print axioms FixedSourceFilterScratch.removedFilter_differentiableAt
#print FixedSourceFilterScratch.removedFilter_positive_pole
#print axioms FixedSourceFilterScratch.removedFilter_positive_pole
#print FixedSourceFilterScratch.positivePoleSlope_pos
#print axioms FixedSourceFilterScratch.positivePoleSlope_pos
#print FixedSourceFilterScratch.V_hasDerivAt_positive_pole
#print axioms FixedSourceFilterScratch.V_hasDerivAt_positive_pole
#print FixedSourceFilterScratch.V_deriv_positive_pole
#print axioms FixedSourceFilterScratch.V_deriv_positive_pole
#print FixedSourceFilterScratch.V_deriv_positive_pole_ne_zero
#print axioms FixedSourceFilterScratch.V_deriv_positive_pole_ne_zero
#print FixedSourceFilterScratch.V_removed_pole_limit
#print axioms FixedSourceFilterScratch.V_removed_pole_limit
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FixedSourceFilterAudit/Variant76656b06f026a4bbf19ac5ef7994efa36b24656f6273efcc6c4bada6fe882c3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedSourceFilterAudit/Variant76656b06f026a4bbf19ac5ef7994efa36b24656f6273efcc6c4bada6fe882c3c.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5802886362339dbfa6f33d1f3145f79b3e24f72f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
