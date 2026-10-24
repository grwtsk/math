# boundary_cubic_moment_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2c1151e-1259-084c-336c-4ea82e04a311",
  "kind": "theorem",
  "lexical_name": "boundary_cubic_moment_pos",
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
  "slug": "boundary-cubic-moment-pos--1f7ac4af6aa2eb75da49372f",
  "source": {
    "blob": "be1cd01aaefeb682cfcd5960e7bb5331831f2ae9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 327,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceBoundaryCubic/Varianta47ba89df8d6f66e07e04f5e6a8737b95ecb96f6ee573dd169a129939744f8c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f7ac4af6aa2eb75da49372fe31a701475f3ba833b130bd36cf682a1e4bfead9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceBoundaryCubic/Varianta47ba89df8d6f66e07e04f5e6a8737b95ecb96f6ee573dd169a129939744f8c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2c1151e-1259-084c-336c-4ea82e04a311`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_cubic_moment_pos {A : ℝ} (hA : 1 ≤ A) :
    0 < ∫ y in 0..4*A, y^3*boundaryWorkKernel A y := by
  rw [boundary_cubic_moment hA]
  exact mul_pos (mul_pos (mul_pos (by norm_num) (pow_pos (by linarith : 0 < A) _))
    (Real.exp_pos _)) (sq_pos_of_pos (primitive_pole_moment_pos hA))


#check primitivePoleMoment
#print axioms primitivePoleMoment
#print primitivePoleMoment

#check unnormalizedPrimitivePoleMoment
#print axioms unnormalizedPrimitivePoleMoment
#print unnormalizedPrimitivePoleMoment

#check weighted_derivative
#print axioms weighted_derivative
#print weighted_derivative

#check first_weighted_derivative
#print axioms first_weighted_derivative
#print first_weighted_derivative

#check actual_first_source_pole_moment
#print axioms actual_first_source_pole_moment
#print actual_first_source_pole_moment

#check second_convolution_moment
#print axioms second_convolution_moment
#print second_convolution_moment

#check actual_second_correlation_pole_moment
#print axioms actual_second_correlation_pole_moment
#print actual_second_correlation_pole_moment

#check reflected_cubic_derivative_integral
#print axioms reflected_cubic_derivative_integral
#print reflected_cubic_derivative_integral

#check boundary_cubic_moment
#print axioms boundary_cubic_moment
#print boundary_cubic_moment

#check primitive_pole_normalization
#print axioms primitive_pole_normalization
#print primitive_pole_normalization

#check boundary_cubic_moment_unnormalized
#print axioms boundary_cubic_moment_unnormalized
#print boundary_cubic_moment_unnormalized

#check primitive_pole_moment_pos
#print axioms primitive_pole_moment_pos
#print primitive_pole_moment_pos

#check boundary_cubic_moment_pos
#print axioms boundary_cubic_moment_pos
#print boundary_cubic_moment_pos

end ContinuousResearch.SourceBoundaryCubic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceBoundaryCubic/Varianta47ba89df8d6f66e07e04f5e6a8737b95ecb96f6ee573dd169a129939744f8c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceBoundaryCubic/Varianta47ba89df8d6f66e07e04f5e6a8737b95ecb96f6ee573dd169a129939744f8c1.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be1cd01aaefeb682cfcd5960e7bb5331831f2ae9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
