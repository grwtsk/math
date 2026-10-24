# Context

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10339af8eedd88be00f5902e90d73ceb8b10ac95a5d3fa4858fabd604d0b64b8",
  "kind": "structure",
  "lexical_name": "Context",
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
  "slug": "context--63c7581edec1886a8f06f12e",
  "source": {
    "blob": "1277e951fe40ff35918b0e6c2c852445f4b56767",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 25,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryActionsAnosov/Varianta712d6563e4cd33d5e70928b8fec7b76556bec0134fa761595a196d4c38664d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63c7581edec1886a8f06f12ed01a8c338f504669a451a6cb5aa7996815b91686",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryActionsAnosov/Varianta712d6563e4cd33d5e70928b8fec7b76556bec0134fa761595a196d4c38664d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10339af8eedd88be00f5902e90d73ceb8b10ac95a5d3fa4858fabd604d0b64b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Context where
  CompactManifold : Type
  BoundaryAtInfinity : Type
  FundamentalGroup : Type
  HomeomorphismAction : Type
  FactorMap : Type
  SlitheringAction : Type
  IsNegativeCurvatureCompactManifold : CompactManifold -> Prop
  Pi1 : CompactManifold -> FundamentalGroup
  IsBoundaryAtInfinity : CompactManifold -> BoundaryAtInfinity -> Prop
  IsStandardBoundaryAction :
    FundamentalGroup -> BoundaryAtInfinity -> HomeomorphismAction -> Prop
  IsNearbyHomeomorphismAction :
    HomeomorphismAction -> HomeomorphismAction -> Prop
  IsSemiconjugacy :
    FactorMap -> HomeomorphismAction -> HomeomorphismAction -> Prop
  IsSlitheringAction : CompactManifold -> SlitheringAction -> Prop
  GloballyRigid : SlitheringAction -> Prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryActionsAnosov/Varianta712d6563e4cd33d5e70928b8fec7b76556bec0134fa761595a196d4c38664d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryActionsAnosov/Varianta712d6563e4cd33d5e70928b8fec7b76556bec0134fa761595a196d4c38664d1.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1277e951fe40ff35918b0e6c2c852445f4b56767` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
