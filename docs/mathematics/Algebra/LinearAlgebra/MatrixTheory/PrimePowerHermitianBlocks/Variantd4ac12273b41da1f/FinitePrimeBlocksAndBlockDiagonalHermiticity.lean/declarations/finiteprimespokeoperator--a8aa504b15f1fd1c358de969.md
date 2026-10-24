# finitePrimeSpokeOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4961e2e0424453909f88cfce1ad74ccea432d25c7a5ae0324b6b6f48e2c0fcc0",
  "kind": "def",
  "lexical_name": "finitePrimeSpokeOperator",
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
  "slug": "finiteprimespokeoperator--a8aa504b15f1fd1c358de969",
  "source": {
    "blob": "1705edfa44d6f700f60b20ea409468f4f130d2ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 73,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/PrimePowerHermitianBlocks/Variantd4ac12273b41da1f/FinitePrimeBlocksAndBlockDiagonalHermiticity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8aa504b15f1fd1c358de96929fbd996aadc530fe8d9c43dc1f0fdc94eea9564",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/PrimePowerHermitianBlocks/Variantd4ac12273b41da1f/FinitePrimeBlocksAndBlockDiagonalHermiticity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4961e2e0424453909f88cfce1ad74ccea432d25c7a5ae0324b6b6f48e2c0fcc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finitePrimeSpokeOperator
    {SpokeIndex : Type} [Fintype SpokeIndex] [DecidableEq SpokeIndex]
    (chi : PrimitiveDirichletCharacter)
    (spokes : SpokeIndex → FinitePrimeSpoke) :
    Matrix (Fin 2 × SpokeIndex) (Fin 2 × SpokeIndex) ℂ :=
  Matrix.blockDiagonal fun index ↦ finitePrimeSpokeBlock chi (spokes index)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/PrimePowerHermitianBlocks/Variantd4ac12273b41da1f/FinitePrimeBlocksAndBlockDiagonalHermiticity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixTheory/PrimePowerHermitianBlocks/Variantd4ac12273b41da1f/FinitePrimeBlocksAndBlockDiagonalHermiticity.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1705edfa44d6f700f60b20ea409468f4f130d2ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
