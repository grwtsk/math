# Matrix.IsSelfAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75472a3b78390715015b25ce631244288c94ecf092c897ad87a1680e3bd159b1",
  "kind": "def",
  "lexical_name": "Matrix.IsSelfAdjoint",
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
  "slug": "matrix-isselfadjoint--b243ed356f8c555145aef2f9",
  "source": {
    "blob": "d46ebec00c62bd45c9f08109326a3a76e9828ca5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 495,
    "path": "GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Varianteddedfc19b7bd4f2e86d19f6cf060952a51c71d6f3a9b7d69f1bd0c906bf1f41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b243ed356f8c555145aef2f9a040df115d1c7fae63a589cd24a8347bf56ec325",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SesquilinearForm/Varianteddedfc19b7bd4f2e86d19f6cf060952a51c71d6f3a9b7d69f1bd0c906bf1f41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75472a3b78390715015b25ce631244288c94ecf092c897ad87a1680e3bd159b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Matrix.IsSelfAdjoint :=
  Matrix.IsAdjointPair J J A₁ A₁

/-- The condition for a square matrix `A` to be skew-adjoint with respect to the square matrix
`J`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SesquilinearForm/Varianteddedfc19b7bd4f2e86d19f6cf060952a51c71d6f3a9b7d69f1bd0c906bf1f41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Varianteddedfc19b7bd4f2e86d19f6cf060952a51c71d6f3a9b7d69f1bd0c906bf1f41.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d46ebec00c62bd45c9f08109326a3a76e9828ca5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
