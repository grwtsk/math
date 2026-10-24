# BinaryLogicMatrixTheoremAdapter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7342bde5a95239173b8b8baea0f428a5b5c68f6da19a5192f391127b32eb88c4",
  "kind": "structure",
  "lexical_name": "BinaryLogicMatrixTheoremAdapter",
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
  "slug": "binarylogicmatrixtheoremadapter--d675beb86f04918dc97de934",
  "source": {
    "blob": "93257de839c07598acfdd369a60cacb092111510",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 23,
    "path": "GRWTSK/Algebra/LinearAlgebra/TheoremAdapter/Variant9ab496b4bdebcf334793a7fb969958a030ef95dad5c3be59c2ae30992039638f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d675beb86f04918dc97de9349b8732af0899086f5b085fb6eb21c84ea9174986",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TheoremAdapter/Variant9ab496b4bdebcf334793a7fb969958a030ef95dad5c3be59c2ae30992039638f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7342bde5a95239173b8b8baea0f428a5b5c68f6da19a5192f391127b32eb88c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BinaryLogicMatrixTheoremAdapter
    (α β : Type) [BinaryLogicMatrixCodec α] [BinaryLogicMatrixCodec β] where
  sourceStatement : Prop
  targetStatement : Prop
  sourceMap : α -> β
  transport : sourceStatement -> targetStatement
  dependencyPrecision : String
  claimBoundary : String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TheoremAdapter/Variant9ab496b4bdebcf334793a7fb969958a030ef95dad5c3be59c2ae30992039638f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TheoremAdapter/Variant9ab496b4bdebcf334793a7fb969958a030ef95dad5c3be59c2ae30992039638f.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93257de839c07598acfdd369a60cacb092111510` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
