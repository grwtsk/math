# ClosedCoordinateRegime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:baaff245bf658314caad711812dd961aa3fb11fbb2e9004cb7c9f08dcbf1a054",
  "kind": "structure",
  "lexical_name": "ClosedCoordinateRegime",
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
  "slug": "closedcoordinateregime--0358c50e2211c04b6cd5cd4b",
  "source": {
    "blob": "6e12c377f9f42abd089e61784ab9779c492a4d16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/Foundations/Variant4e4a2b71ea94cc6ac122ac0c92e9c76237f6dea494f7732d889e539582b97f13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0358c50e2211c04b6cd5cd4b4f55d111ed3c8bf1110d08eab0a844f8c5846ded",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Foundations/Variant4e4a2b71ea94cc6ac122ac0c92e9c76237f6dea494f7732d889e539582b97f13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:baaff245bf658314caad711812dd961aa3fb11fbb2e9004cb7c9f08dcbf1a054`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ClosedCoordinateRegime
    (S : RealizationSystem.{uObj, uHom}) : Prop where
  algebraicJacobson : S.P.algebraicJacobson
  algebraicClosedResiduesFinite :
    S.P.algebraicClosedResiduesFinite

/-- The separate affinoid route exposed by CT-04. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Foundations/Variant4e4a2b71ea94cc6ac122ac0c92e9c76237f6dea494f7732d889e539582b97f13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Foundations/Variant4e4a2b71ea94cc6ac122ac0c92e9c76237f6dea494f7732d889e539582b97f13.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e12c377f9f42abd089e61784ab9779c492a4d16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
