# Matrix.IsAdjointPair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:573d96cfe2f4f0d708b295812fa68e95f209bc47f0d67d49f2c177835003a7fd",
  "kind": "def",
  "lexical_name": "Matrix.IsAdjointPair",
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
  "slug": "matrix-isadjointpair--a75a9e2fa3d21466d84a2e12",
  "source": {
    "blob": "1049649acf248accb66a28470beb93788cca2c9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 502,
    "line": 498,
    "path": "GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant832413912de848f94658f0471a4f545d5fa9a56c224f837b750faa059458f5ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a75a9e2fa3d21466d84a2e12dc3e5b289ce1403d841ae7226f6407258a9f4cf5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SesquilinearForm/Variant832413912de848f94658f0471a4f545d5fa9a56c224f837b750faa059458f5ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:573d96cfe2f4f0d708b295812fa68e95f209bc47f0d67d49f2c177835003a7fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Matrix.IsAdjointPair :=
  Aᵀ * J' = J * A'

/-- The condition for a square matrix `A` to be self-adjoint with respect to the square matrix
`J`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SesquilinearForm/Variant832413912de848f94658f0471a4f545d5fa9a56c224f837b750faa059458f5ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant832413912de848f94658f0471a4f545d5fa9a56c224f837b750faa059458f5ef.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1049649acf248accb66a28470beb93788cca2c9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
