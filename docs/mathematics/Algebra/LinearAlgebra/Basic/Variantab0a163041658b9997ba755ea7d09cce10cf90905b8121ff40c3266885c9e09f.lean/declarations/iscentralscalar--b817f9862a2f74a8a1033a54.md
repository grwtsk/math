# isCentralScalar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56b2ce52d716c9311fad02d403a860d0fd9fa9357aabdd917c7effc6c43d8225",
  "kind": "instance",
  "lexical_name": "isCentralScalar",
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
  "slug": "iscentralscalar--b817f9862a2f74a8a1033a54",
  "source": {
    "blob": "3e5bdbbe8b87c3a5099b635f2a8a4469b9209794",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 300,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantab0a163041658b9997ba755ea7d09cce10cf90905b8121ff40c3266885c9e09f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b817f9862a2f74a8a1033a54b51584a8488c1021e413e15be1d73422f7865cad",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantab0a163041658b9997ba755ea7d09cce10cf90905b8121ff40c3266885c9e09f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56b2ce52d716c9311fad02d403a860d0fd9fa9357aabdd917c7effc6c43d8225`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isCentralScalar [SMul S R] [SMul S M] [IsScalarTower S R M] [SMul Sᵐᵒᵖ R] [SMul Sᵐᵒᵖ M]
    [IsScalarTower Sᵐᵒᵖ R M] [IsCentralScalar S M] : IsCentralScalar S p :=
  p.toSubMulAction.isCentralScalar
#align submodule.is_central_scalar Submodule.isCentralScalar

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantab0a163041658b9997ba755ea7d09cce10cf90905b8121ff40c3266885c9e09f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantab0a163041658b9997ba755ea7d09cce10cf90905b8121ff40c3266885c9e09f.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e5bdbbe8b87c3a5099b635f2a8a4469b9209794` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
