# matrix_eigenvalue_distance_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:adde61fc-6b00-4d7f-26e9-faef9af7c9f3",
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
  "slug": "matrix-eigenvalue-distance-lower--3ec9227f5b1c0a05567cc070",
  "source": {
    "blob": "674c912a7c0160b83d9743d1959e5b307993f470",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 170,
    "path": "GRWTSK/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ec9227f5b1c0a05567cc0709a902590391c071571ae1e892e6065a5da3dcb67",
  "verification": {
    "reference": "docs/verification/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adde61fc-6b00-4d7f-26e9-faef9af7c9f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–179.

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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `674c912a7c0160b83d9743d1959e5b307993f470` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
