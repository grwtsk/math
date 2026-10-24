# zero_row_square_congruence_ne_positive_definite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a29c7f73-4f40-7a3f-3e0c-a4a84df1d1a5",
  "kind": "theorem",
  "lexical_name": "zero_row_square_congruence_ne_positive_definite",
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
  "slug": "zero-row-square-congruence-ne-positive-definite--6137b0b2ada2d8da8410c1b8",
  "source": {
    "blob": "56d44d43437d17eaf92faf1c8f00420401bc91d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 39,
    "path": "GRWTSK/LinearAlgebra/Matrix/SingularCongruenceObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6137b0b2ada2d8da8410c1b8ecea67975bc5eefbf593e3019ddae02ec1bdc688",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/SingularCongruenceObstruction__SourceOccurrencee07877626199a8e09c54304e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a29c7f73-4f40-7a3f-3e0c-a4a84df1d1a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_row_square_congruence_ne_positive_definite {ι : Type*} [Fintype ι]
    [DecidableEq ι] (H G : Matrix ι ι ℝ) (n : ι) (zeroRow : ∀ j, H n j = 0)
    (positive : G.PosDef) (B : Matrix ι ι ℝ) : B.transpose * H * B ≠ G :=
  singular_square_congruence_ne_positive_definite H G
    (Matrix.det_eq_zero_of_row_eq_zero n zeroRow) positive B

end

end GRWTSK.LinearAlgebra.Matrix.SingularCongruenceObstruction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/SingularCongruenceObstruction__SourceOccurrencee07877626199a8e09c54304e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/Matrix/SingularCongruenceObstruction.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56d44d43437d17eaf92faf1c8f00420401bc91d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
