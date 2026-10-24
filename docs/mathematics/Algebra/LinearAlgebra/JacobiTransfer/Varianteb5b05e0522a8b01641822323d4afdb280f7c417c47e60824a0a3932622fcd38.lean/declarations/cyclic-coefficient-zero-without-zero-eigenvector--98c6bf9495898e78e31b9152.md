# cyclic_coefficient_zero_without_zero_eigenvector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d17e937d-ad4c-ba4e-4f77-0eac3f80f026",
  "kind": "theorem",
  "lexical_name": "cyclic_coefficient_zero_without_zero_eigenvector",
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
  "slug": "cyclic-coefficient-zero-without-zero-eigenvector--98c6bf9495898e78e31b9152",
  "source": {
    "blob": "724dce41da89e50f002a8c96c9cbbca462be8018",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 273,
    "path": "GRWTSK/Algebra/LinearAlgebra/JacobiTransfer/Varianteb5b05e0522a8b01641822323d4afdb280f7c417c47e60824a0a3932622fcd38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98c6bf9495898e78e31b91523f1a0748a9cbb0a18c8148f167b8a8077a50dcff",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JacobiTransfer/Varianteb5b05e0522a8b01641822323d4afdb280f7c417c47e60824a0a3932622fcd38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d17e937d-ad4c-ba4e-4f77-0eac3f80f026`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclic_coefficient_zero_without_zero_eigenvector :
    (rawState (1 : ℚ) 0) ⬝ᵥ (twoSiteJacobi 0).mulVec (rawState 1 0) = 0 ∧
      ∀ x : Fin 2 → ℚ, (twoSiteJacobi 0).mulVec x = 0 → x = 0 := by
  constructor
  · norm_num [rawState, twoSiteJacobi, Matrix.mulVec, dotProduct, Fin.sum_univ_two]
  · intro x hx
    have hx0 : x 0 = 0 := by
      have h := congrFun hx 1
      simpa [twoSiteJacobi, Matrix.mulVec, dotProduct, Fin.sum_univ_two] using h
    have hx1 : x 1 = 0 := by
      have h := congrFun hx 0
      simpa [twoSiteJacobi, Matrix.mulVec, dotProduct, Fin.sum_univ_two] using h
    ext i
    fin_cases i <;> simp [hx0, hx1]

/-- Even cyclic Jacobi fixtures can match finitely many exact moments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JacobiTransfer/Varianteb5b05e0522a8b01641822323d4afdb280f7c417c47e60824a0a3932622fcd38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JacobiTransfer/Varianteb5b05e0522a8b01641822323d4afdb280f7c417c47e60824a0a3932622fcd38.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `724dce41da89e50f002a8c96c9cbbca462be8018` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
