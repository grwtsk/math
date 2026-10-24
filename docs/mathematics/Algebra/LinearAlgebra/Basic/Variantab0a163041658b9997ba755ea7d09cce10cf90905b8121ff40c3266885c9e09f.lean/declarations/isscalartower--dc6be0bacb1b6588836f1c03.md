# isScalarTower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:884c0fd243f48251cb5da8e3b44ddde0153552c96f6ccd648872f768f4c55f33",
  "kind": "instance",
  "lexical_name": "isScalarTower",
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
  "slug": "isscalartower--dc6be0bacb1b6588836f1c03",
  "source": {
    "blob": "3e5bdbbe8b87c3a5099b635f2a8a4469b9209794",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 291,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantab0a163041658b9997ba755ea7d09cce10cf90905b8121ff40c3266885c9e09f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc6be0bacb1b6588836f1c030af0801aaefecda06e4bcacf53cea07807f2de6d",
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

Occurrence: `declaration:884c0fd243f48251cb5da8e3b44ddde0153552c96f6ccd648872f768f4c55f33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isScalarTower [SMul S R] [SMul S M] [IsScalarTower S R M] : IsScalarTower S R p :=
  p.toSubMulAction.isScalarTower
#align submodule.is_scalar_tower Submodule.isScalarTower

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantab0a163041658b9997ba755ea7d09cce10cf90905b8121ff40c3266885c9e09f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantab0a163041658b9997ba755ea7d09cce10cf90905b8121ff40c3266885c9e09f.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e5bdbbe8b87c3a5099b635f2a8a4469b9209794` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
