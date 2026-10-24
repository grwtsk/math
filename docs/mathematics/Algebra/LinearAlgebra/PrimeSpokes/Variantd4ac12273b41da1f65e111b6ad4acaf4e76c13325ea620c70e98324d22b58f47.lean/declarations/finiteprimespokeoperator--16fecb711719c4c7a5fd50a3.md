# finitePrimeSpokeOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c7d57768a00dc7f4d2c16cc805871c5f83cc8d1630797f73c8bf0287b9b533c",
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
  "slug": "finiteprimespokeoperator--16fecb711719c4c7a5fd50a3",
  "source": {
    "blob": "141839729528779496e4b704141f2d454ebf7efb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 55,
    "path": "GRWTSK/Algebra/LinearAlgebra/PrimeSpokes/Variantd4ac12273b41da1f65e111b6ad4acaf4e76c13325ea620c70e98324d22b58f47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:16fecb711719c4c7a5fd50a3c39fae5116394388b7914a4545cfcd2e6fa069b6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PrimeSpokes/Variantd4ac12273b41da1f65e111b6ad4acaf4e76c13325ea620c70e98324d22b58f47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c7d57768a00dc7f4d2c16cc805871c5f83cc8d1630797f73c8bf0287b9b533c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–61.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PrimeSpokes/Variantd4ac12273b41da1f65e111b6ad4acaf4e76c13325ea620c70e98324d22b58f47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PrimeSpokes/Variantd4ac12273b41da1f65e111b6ad4acaf4e76c13325ea620c70e98324d22b58f47.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `141839729528779496e4b704141f2d454ebf7efb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
