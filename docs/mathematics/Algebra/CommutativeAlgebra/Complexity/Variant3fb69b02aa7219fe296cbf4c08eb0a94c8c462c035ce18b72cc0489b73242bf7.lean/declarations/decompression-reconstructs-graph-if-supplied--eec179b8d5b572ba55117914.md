# decompression_reconstructs_graph_if_supplied

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8be6bc95-2168-77c3-1531-1561c847c0d5",
  "kind": "theorem",
  "lexical_name": "decompression_reconstructs_graph_if_supplied",
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
  "slug": "decompression-reconstructs-graph-if-supplied--eec179b8d5b572ba55117914",
  "source": {
    "blob": "d561fc530ba9de4161d98971b127e09c5ccf9f9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 160,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Complexity/Variant3fb69b02aa7219fe296cbf4c08eb0a94c8c462c035ce18b72cc0489b73242bf7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eec179b8d5b572ba5511791415f365a14100888661349f817ecadcd0684da9c2",
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

Occurrence: `result:8be6bc95-2168-77c3-1531-1561c847c0d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decompression_reconstructs_graph_if_supplied
    {G : Folder.GrandChallenge.Complexity.TheoremTraversalGraph}
    (V : Folder.GrandChallenge.Complexity.DecompressionVerifier G) :
    V.reconstructsOriginalGraph :=
  Folder.GrandChallenge.Complexity.decompression_reconstructs_graph_if_supplied V

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Complexity/Variant3fb69b02aa7219fe296cbf4c08eb0a94c8c462c035ce18b72cc0489b73242bf7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Complexity/Variant3fb69b02aa7219fe296cbf4c08eb0a94c8c462c035ce18b72cc0489b73242bf7.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d561fc530ba9de4161d98971b127e09c5ccf9f9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
