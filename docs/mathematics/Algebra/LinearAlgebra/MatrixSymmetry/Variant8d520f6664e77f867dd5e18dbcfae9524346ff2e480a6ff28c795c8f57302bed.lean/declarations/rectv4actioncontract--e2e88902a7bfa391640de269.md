# RectV4ActionContract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54fce770650015608f5a7efd3eaa7f0e6289a99878a532aa6dc85d080578864a",
  "kind": "structure",
  "lexical_name": "RectV4ActionContract",
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
  "slug": "rectv4actioncontract--e2e88902a7bfa391640de269",
  "source": {
    "blob": "091ffb08979bf124739646d8dfb7810d2b3bffa4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 50,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixSymmetry/Variant8d520f6664e77f867dd5e18dbcfae9524346ff2e480a6ff28c795c8f57302bed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2e88902a7bfa391640de26928442d3a1ab0404572be7431c2d27b36d585047c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixSymmetry/Variant8d520f6664e77f867dd5e18dbcfae9524346ff2e480a6ff28c795c8f57302bed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54fce770650015608f5a7efd3eaa7f0e6289a99878a532aa6dc85d080578864a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RectV4ActionContract where
  action : MatrixAction
  spinEquiv : action.Spin ≃ RectSpin
  runtime_semantics : String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixSymmetry/Variant8d520f6664e77f867dd5e18dbcfae9524346ff2e480a6ff28c795c8f57302bed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixSymmetry/Variant8d520f6664e77f867dd5e18dbcfae9524346ff2e480a6ff28c795c8f57302bed.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `091ffb08979bf124739646d8dfb7810d2b3bffa4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
