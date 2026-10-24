# RoutingObstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8eb936a09c7bd7f11e4c869acb6124ebe7eb10419b5f38de721cfcdf193b6b6e",
  "kind": "inductive",
  "lexical_name": "RoutingObstruction",
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
  "slug": "routingobstruction--5fcdecc1be816e9d820447ce",
  "source": {
    "blob": "2833edd231af3838e0901e970504c6d9541d8311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 22,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variantb0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5fcdecc1be816e9d820447ce71ce5b17ba22150bac93f73d2343461e44938808",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variantb0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8eb936a09c7bd7f11e4c869acb6124ebe7eb10419b5f38de721cfcdf193b6b6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive RoutingObstruction
  | incompleteProbeFamily
  | unresolvedDenotation
  | incomparableCovers
  | intrinsicCodeCollision
  | nontrivialAutomorphismOrbit
  deriving DecidableEq, Repr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variantb0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RoutingStatus/Variantb0f9ebccc74db696f4a59d27c425c9a3d6c9da49fa4fce00c55d59ce8764548b.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2833edd231af3838e0901e970504c6d9541d8311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
