# Context

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6b24239fac9446fe163693b24933e3a4c7d5f7e91ba7714330f560729674feb",
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
  "slug": "context--b935aa3a28e93c29a6ee2010",
  "source": {
    "blob": "ce97f4dd284b1e96d8fdae689b3a21c73728e30c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 17,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryActionsAnosov/Variant0b2f4360764946b622dd939c660701ff681e8cb22c1f28e4880613e8ad6f36b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b935aa3a28e93c29a6ee2010e8837292b70d12f252260fb33036622979569648",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryActionsAnosov/Variant0b2f4360764946b622dd939c660701ff681e8cb22c1f28e4880613e8ad6f36b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6b24239fac9446fe163693b24933e3a4c7d5f7e91ba7714330f560729674feb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–35.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryActionsAnosov/Variant0b2f4360764946b622dd939c660701ff681e8cb22c1f28e4880613e8ad6f36b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundaryActionsAnosov/Variant0b2f4360764946b622dd939c660701ff681e8cb22c1f28e4880613e8ad6f36b7.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce97f4dd284b1e96d8fdae689b3a21c73728e30c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
