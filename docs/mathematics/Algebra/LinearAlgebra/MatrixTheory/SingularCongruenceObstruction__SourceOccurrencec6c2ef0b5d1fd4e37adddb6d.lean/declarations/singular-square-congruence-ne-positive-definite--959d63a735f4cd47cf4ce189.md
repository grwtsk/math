# singular_square_congruence_ne_positive_definite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56913dc2-7ee4-1a8d-eec0-b7aca77effb4",
  "kind": "theorem",
  "lexical_name": "singular_square_congruence_ne_positive_definite",
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
  "slug": "singular-square-congruence-ne-positive-definite--959d63a735f4cd47cf4ce189",
  "source": {
    "blob": "56d44d43437d17eaf92faf1c8f00420401bc91d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 26,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/SingularCongruenceObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:959d63a735f4cd47cf4ce1897b32a6b2441a558d2d92a2e6cb2d86f2ad862d42",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/SingularCongruenceObstruction__SourceOccurrencec6c2ef0b5d1fd4e37adddb6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56913dc2-7ee4-1a8d-eec0-b7aca77effb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem singular_square_congruence_ne_positive_definite {ι : Type*} [Fintype ι]
    [DecidableEq ι] (H G : Matrix ι ι ℝ) (singular : H.det = 0) (positive : G.PosDef)
    (B : Matrix ι ι ℝ) : B.transpose * H * B ≠ G := by
  intro equality
  have determinantZero : (B.transpose * H * B).det = 0 := by
    rw [Matrix.det_mul, Matrix.det_mul, singular, mul_zero, zero_mul]
  have determinantNonzero : G.det ≠ 0 :=
    (Matrix.isUnit_iff_isUnit_det G).mp positive.isUnit |>.ne_zero
  exact determinantNonzero (by rw [← equality]; exact determinantZero)

-- Preserve the exact original instance binder for API compatibility; this exception
-- applies only to this declaration, while all replay warnings remain fatal.
set_option linter.unusedDecidableInType false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/SingularCongruenceObstruction__SourceOccurrencec6c2ef0b5d1fd4e37adddb6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixTheory/SingularCongruenceObstruction.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56d44d43437d17eaf92faf1c8f00420401bc91d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
