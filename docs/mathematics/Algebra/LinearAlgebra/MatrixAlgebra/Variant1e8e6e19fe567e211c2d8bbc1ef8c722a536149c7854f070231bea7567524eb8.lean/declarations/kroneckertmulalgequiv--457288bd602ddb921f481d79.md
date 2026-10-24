# kroneckerTMulAlgEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f3d069154499fb5a05fd1bd4298d7e4ffa1835e886873ef9004c82c24b90865",
  "kind": "def",
  "lexical_name": "kroneckerTMulAlgEquiv",
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
  "slug": "kroneckertmulalgequiv--457288bd602ddb921f481d79",
  "source": {
    "blob": "b9050b4205444a438fec50197616e75f5c629317",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 237,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:457288bd602ddb921f481d791f081490dbd149cf1c71e8f8e2957bdd1cc2e0c4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f3d069154499fb5a05fd1bd4298d7e4ffa1835e886873ef9004c82c24b90865`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def kroneckerTMulAlgEquiv :
    Matrix m m A ⊗[R] Matrix n n B ≃ₐ[R] Matrix (m × n) (m × n) (A ⊗[R] B) :=
  .ofLinearEquiv (kroneckerTMulLinearEquiv m m n n R A B)
    (kroneckerTMulLinearEquiv_one _ _ _)
    (kroneckerTMulLinearEquiv_mul _ _ _)

variable {m n A B}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9050b4205444a438fec50197616e75f5c629317` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
