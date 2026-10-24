# l2_opNorm_le_one_of_orthonormalRows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc7adb20-640c-c74c-f7ee-6f4668f23827",
  "kind": "theorem",
  "lexical_name": "l2_opNorm_le_one_of_orthonormalRows",
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
  "slug": "l2-opnorm-le-one-of-orthonormalrows--719921a0a79e6694f258d111",
  "source": {
    "blob": "be5cf30a076874fee57bfbe9370e9409939d4213",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 27,
    "path": "GRWTSK/Algebra/LinearAlgebra/RestrictionProbe/Variant9b240209ab5eb0b1d2ccea724e976dedf90b9a92dd0603f280fe9de3ff9996a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:719921a0a79e6694f258d111050de57d0e11a3f25ef8538c2c42c240bbbf2a27",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RestrictionProbe/Variant9b240209ab5eb0b1d2ccea724e976dedf90b9a92dd0603f280fe9de3ff9996a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc7adb20-640c-c74c-f7ee-6f4668f23827`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem l2_opNorm_le_one_of_orthonormalRows (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A * A.transpose = 1) : ‖A‖ ≤ 1 := by
  have h := Matrix.l2_opNorm_conjTranspose_mul_self A.transpose
  simp only [Matrix.conjTranspose_eq_transpose_of_trivial, Matrix.transpose_transpose] at h
  have ht : ‖A.transpose‖ = ‖A‖ := by
    simpa only [Matrix.conjTranspose_eq_transpose_of_trivial] using
      Matrix.l2_opNorm_conjTranspose A
  rw [ht, hA] at h
  have hone : ‖(1 : Matrix (Fin k) (Fin k) ℝ)‖ ≤ 1 := by
    rw [← Matrix.diagonal_one, Matrix.l2_opNorm_diagonal]
    exact (pi_norm_le_iff_of_nonneg zero_le_one).mpr (fun _ => by simp)
  nlinarith [norm_nonneg A]

/-- Restricting coordinates by an injection is a Euclidean contraction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RestrictionProbe/Variant9b240209ab5eb0b1d2ccea724e976dedf90b9a92dd0603f280fe9de3ff9996a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RestrictionProbe/Variant9b240209ab5eb0b1d2ccea724e976dedf90b9a92dd0603f280fe9de3ff9996a5.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be5cf30a076874fee57bfbe9370e9409939d4213` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
