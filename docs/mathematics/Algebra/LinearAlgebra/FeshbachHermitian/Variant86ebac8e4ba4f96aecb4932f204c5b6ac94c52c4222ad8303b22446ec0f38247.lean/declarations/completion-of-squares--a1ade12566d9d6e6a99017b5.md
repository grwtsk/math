# completion_of_squares

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45f72e1d-19fb-e88a-8d82-93d07d633c32",
  "kind": "theorem",
  "lexical_name": "completion_of_squares",
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
  "slug": "completion-of-squares--a1ade12566d9d6e6a99017b5",
  "source": {
    "blob": "5d2fac555622f683416ecb7e52128b71ec7f4362",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 38,
    "path": "GRWTSK/Algebra/LinearAlgebra/FeshbachHermitian/Variant86ebac8e4ba4f96aecb4932f204c5b6ac94c52c4222ad8303b22446ec0f38247.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1ade12566d9d6e6a99017b5f6c11ca7ddd0929519356fcac3533758b5dae17b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FeshbachHermitian/Variant86ebac8e4ba4f96aecb4932f204c5b6ac94c52c4222ad8303b22446ec0f38247.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45f72e1d-19fb-e88a-8d82-93d07d633c32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completion_of_squares
    (A : Matrix m m α) (C : Matrix n m α) (B : Matrix n n α)
    [Invertible B] (hB : B.IsHermitian) (x : m → α) (y : n → α) :
    star (Sum.elim x y) ⬝ᵥ (Matrix.fromBlocks A Cᴴ C B).mulVec (Sum.elim x y) =
      star x ⬝ᵥ (Feshbach.schur A Cᴴ C B).mulVec x +
        star (y + (⅟B * C).mulVec x) ⬝ᵥ B.mulVec (y + (⅟B * C).mulVec x) := by
  simpa only [Feshbach.schur, Matrix.conjTranspose_conjTranspose, Matrix.invOf_eq_nonsing_inv,
    Matrix.dotProduct_mulVec, add_comm] using
    Matrix.schur_complement_eq₂₂ A Cᴴ x y hB

omit [Fintype m] in
/-- The full block packet is Hermitian exactly when its Schur center is
Hermitian, provided that the complementary block is Hermitian. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FeshbachHermitian/Variant86ebac8e4ba4f96aecb4932f204c5b6ac94c52c4222ad8303b22446ec0f38247.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FeshbachHermitian/Variant86ebac8e4ba4f96aecb4932f204c5b6ac94c52c4222ad8303b22446ec0f38247.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d2fac555622f683416ecb7e52128b71ec7f4362` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
