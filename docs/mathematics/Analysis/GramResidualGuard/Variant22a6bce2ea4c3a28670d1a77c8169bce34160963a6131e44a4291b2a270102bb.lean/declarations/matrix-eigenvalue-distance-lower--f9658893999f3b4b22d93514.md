# matrix_eigenvalue_distance_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3209c72-e68d-aa68-1efd-77818ba42bc4",
  "kind": "theorem",
  "lexical_name": "matrix_eigenvalue_distance_lower",
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
  "slug": "matrix-eigenvalue-distance-lower--f9658893999f3b4b22d93514",
  "source": {
    "blob": "4257c3d93fdf299684c662993bc4df12b8d7fd9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 178,
    "path": "GRWTSK/Analysis/GramResidualGuard/Variant22a6bce2ea4c3a28670d1a77c8169bce34160963a6131e44a4291b2a270102bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9658893999f3b4b22d935143875a8470352aa42da28ee7424d9b7c171f1781a",
  "verification": {
    "reference": "docs/verification/Analysis/GramResidualGuard/Variant22a6bce2ea4c3a28670d1a77c8169bce34160963a6131e44a4291b2a270102bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3209c72-e68d-aa68-1efd-77818ba42bc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matrix_eigenvalue_distance_lower (H : Matrix n n 𝕜) (hH : H.IsHermitian) (i : n) :
    max 0 (-hH.eigenvalues i) ≤ positiveDistance (matrixOperator H) := by
  apply negative_eigenvalue_distance_lower (matrixOperator H) (hH.eigenvectorBasis i)
    (hH.eigenvalues i) (hH.eigenvectorBasis.orthonormal.1 i)
  apply PiLp.ext
  intro j
  simpa [matrixOperator,Matrix.toLpLin_apply,RCLike.real_smul_eq_coe_smul] using
    congrFun (hH.mulVec_eigenvectorBasis i) j
end Matrices
end ContinuousResearch.GramResidualGuard

/- Exact statement, proof and trusted-dependency audits. -/
#check ContinuousResearch.GramResidualGuard.positive_approximation_lower
#print axioms ContinuousResearch.GramResidualGuard.positive_approximation_lower
#print ContinuousResearch.GramResidualGuard.positive_approximation_lower
#check ContinuousResearch.GramResidualGuard.coercive_approximation_lower
#print axioms ContinuousResearch.GramResidualGuard.coercive_approximation_lower
#print ContinuousResearch.GramResidualGuard.coercive_approximation_lower
#check ContinuousResearch.GramResidualGuard.positive_of_coercive_residual
#print axioms ContinuousResearch.GramResidualGuard.positive_of_coercive_residual
#print ContinuousResearch.GramResidualGuard.positive_of_coercive_residual
#check ContinuousResearch.GramResidualGuard.positive_of_arbitrary_precision
#print axioms ContinuousResearch.GramResidualGuard.positive_of_arbitrary_precision
#print ContinuousResearch.GramResidualGuard.positive_of_arbitrary_precision
#check ContinuousResearch.GramResidualGuard.gram_residual_lower
#print axioms ContinuousResearch.GramResidualGuard.gram_residual_lower
#print ContinuousResearch.GramResidualGuard.gram_residual_lower
#check ContinuousResearch.GramResidualGuard.positive_of_arbitrary_gram_precision
#print axioms ContinuousResearch.GramResidualGuard.positive_of_arbitrary_gram_precision
#print ContinuousResearch.GramResidualGuard.positive_of_arbitrary_gram_precision
#check ContinuousResearch.GramResidualGuard.positiveDistance
#print axioms ContinuousResearch.GramResidualGuard.positiveDistance
#print ContinuousResearch.GramResidualGuard.positiveDistance
#check ContinuousResearch.GramResidualGuard.negative_rayleigh_distance_lower
#print axioms ContinuousResearch.GramResidualGuard.negative_rayleigh_distance_lower
#print ContinuousResearch.GramResidualGuard.negative_rayleigh_distance_lower
#check ContinuousResearch.GramResidualGuard.positiveDistance_eq_zero_iff
#print axioms ContinuousResearch.GramResidualGuard.positiveDistance_eq_zero_iff
#print ContinuousResearch.GramResidualGuard.positiveDistance_eq_zero_iff
#check ContinuousResearch.GramResidualGuard.negative_eigenvalue_distance_lower
#print axioms ContinuousResearch.GramResidualGuard.negative_eigenvalue_distance_lower
#print ContinuousResearch.GramResidualGuard.negative_eigenvalue_distance_lower
#check ContinuousResearch.GramResidualGuard.matrixOperator
#print axioms ContinuousResearch.GramResidualGuard.matrixOperator
#print ContinuousResearch.GramResidualGuard.matrixOperator
#check ContinuousResearch.GramResidualGuard.matrixOperator_positive_iff
#print axioms ContinuousResearch.GramResidualGuard.matrixOperator_positive_iff
#print ContinuousResearch.GramResidualGuard.matrixOperator_positive_iff
#check ContinuousResearch.GramResidualGuard.matrix_posSemidef_of_arbitrary_gram_precision
#print axioms ContinuousResearch.GramResidualGuard.matrix_posSemidef_of_arbitrary_gram_precision
#print ContinuousResearch.GramResidualGuard.matrix_posSemidef_of_arbitrary_gram_precision
#check ContinuousResearch.GramResidualGuard.matrix_eigenvalue_distance_lower
#print axioms ContinuousResearch.GramResidualGuard.matrix_eigenvalue_distance_lower
#print ContinuousResearch.GramResidualGuard.matrix_eigenvalue_distance_lower
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/GramResidualGuard/Variant22a6bce2ea4c3a28670d1a77c8169bce34160963a6131e44a4291b2a270102bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/GramResidualGuard/Variant22a6bce2ea4c3a28670d1a77c8169bce34160963a6131e44a4291b2a270102bb.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4257c3d93fdf299684c662993bc4df12b8d7fd9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
