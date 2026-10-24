# nonsticky_sticky_boundary_controlled_if_supplied

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ece6a15b-28c6-69db-4fe3-7ce91dd1e099",
  "kind": "theorem",
  "lexical_name": "nonsticky_sticky_boundary_controlled_if_supplied",
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
  "slug": "nonsticky-sticky-boundary-controlled-if-supplied--3a731e02d8212ebf5cdc8e1b",
  "source": {
    "blob": "d561fc530ba9de4161d98971b127e09c5ccf9f9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 400,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Complexity/Variant3fb69b02aa7219fe296cbf4c08eb0a94c8c462c035ce18b72cc0489b73242bf7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a731e02d8212ebf5cdc8e1b04bcb7fdf6a955c6b11ab9dcb73adbc2b0f0108a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Complexity/Variant3fb69b02aa7219fe296cbf4c08eb0a94c8c462c035ce18b72cc0489b73242bf7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ece6a15b-28c6-69db-4fe3-7ce91dd1e099`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonsticky_sticky_boundary_controlled_if_supplied
    (N : Folder.GrandChallenge.Complexity.NonStickySmoothingExistence) :
    N.stickyBoundaryControlled :=
  Folder.GrandChallenge.Complexity.nonsticky_sticky_boundary_controlled_if_supplied N

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Complexity/Variant3fb69b02aa7219fe296cbf4c08eb0a94c8c462c035ce18b72cc0489b73242bf7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Complexity/Variant3fb69b02aa7219fe296cbf4c08eb0a94c8c462c035ce18b72cc0489b73242bf7.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d561fc530ba9de4161d98971b127e09c5ccf9f9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
