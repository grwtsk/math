# LDL.diag_eq_lowerInv_conj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a143283-c161-4c6e-d76e-ae09759f8d77",
  "kind": "theorem",
  "lexical_name": "LDL.diag_eq_lowerInv_conj",
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
  "slug": "ldl-diag-eq-lowerinv-conj--debe4e5e87eb7be68ce9b0eb",
  "source": {
    "blob": "b23d2207a5f1950a4fb972f0d041cfc3d79bd336",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 103,
    "path": "GRWTSK/Algebra/LinearAlgebra/LDL/Variant8604b73267c3330aabc343c55c3700d766b3d1b5d219473a908cecfb79882a70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:debe4e5e87eb7be68ce9b0eb524fda2331d96a2dc44861858a5a692c2713a3be",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LDL/Variant8604b73267c3330aabc343c55c3700d766b3d1b5d219473a908cecfb79882a70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a143283-c161-4c6e-d76e-ae09759f8d77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LDL.diag_eq_lowerInv_conj : LDL.diag hS = LDL.lowerInv hS * S * (LDL.lowerInv hS)ᴴ := by
  ext i j
  by_cases hij : i = j
  · simp only [diag, diagEntries, EuclideanSpace.inner_toLp_toLp, star_star, hij,
      diagonal_apply_eq, Matrix.mul_assoc, dotProduct_comm]
    rfl
  · simp only [LDL.diag, hij, diagonal_apply_ne, Ne, not_false_iff, mul_mul_apply]
    rw [conjTranspose, transpose_map, transpose_transpose, dotProduct_mulVec,
      (LDL.lowerInv_orthogonal hS fun h : j = i => hij h.symm).symm, ← inner_conj_symm,
      mulVec_transpose, EuclideanSpace.inner_toLp_toLp, ← RCLike.star_def, ←
      star_dotProduct_star, star_star]
    rfl

/-- The lower triangular matrix `L` of the LDL decomposition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LDL/Variant8604b73267c3330aabc343c55c3700d766b3d1b5d219473a908cecfb79882a70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LDL/Variant8604b73267c3330aabc343c55c3700d766b3d1b5d219473a908cecfb79882a70.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b23d2207a5f1950a4fb972f0d041cfc3d79bd336` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
