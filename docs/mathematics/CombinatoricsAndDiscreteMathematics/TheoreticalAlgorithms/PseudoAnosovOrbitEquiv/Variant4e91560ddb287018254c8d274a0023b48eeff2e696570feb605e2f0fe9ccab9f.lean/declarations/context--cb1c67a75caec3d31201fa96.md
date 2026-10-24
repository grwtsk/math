# Context

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ac3bca202f0400e3e8fa8f8b7cb4543d73d8e1a6e22fca9797e7f9476c8b182",
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
  "slug": "context--cb1c67a75caec3d31201fa96",
  "source": {
    "blob": "4ef30cd8c64a9a3a1cafc7804d185778248bd3bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 25,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PseudoAnosovOrbitEquiv/Variant4e91560ddb287018254c8d274a0023b48eeff2e696570feb605e2f0fe9ccab9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb1c67a75caec3d31201fa960fde4983499929ab317a7e5d35a692a5d42f7100",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PseudoAnosovOrbitEquiv/Variant4e91560ddb287018254c8d274a0023b48eeff2e696570feb605e2f0fe9ccab9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ac3bca202f0400e3e8fa8f8b7cb4543d73d8e1a6e22fca9797e7f9476c8b182`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Context where
  Closed3Manifold : Type
  Flow : Type
  FundamentalGroup : Type
  FreeHomotopyClassSet : Type
  ScallopedRegionTree : Type
  SignData : Type
  BifoliatedPlane : Type
  AnosovLikeAction : Type
  IsClosed3Manifold : Closed3Manifold -> Prop
  Pi1 : Closed3Manifold -> FundamentalGroup
  IsTransitiveAnosovFlow : Closed3Manifold -> Flow -> Prop
  IsPseudoAnosovFlow : Closed3Manifold -> Flow -> Prop
  IsTransitive : Closed3Manifold -> Flow -> Prop
  HasNoTreeOfScallopedRegions : Closed3Manifold -> Flow -> Prop
  PInvariant : Closed3Manifold -> Flow -> FreeHomotopyClassSet
  IsotopicallyEquivalent : Closed3Manifold -> Flow -> Flow -> Prop
  HasTreeOfScallopedRegions :
    Closed3Manifold -> Flow -> ScallopedRegionTree -> Prop
  SignsAgree : SignData -> SignData -> Prop
  HasBifoliatedPlane : Flow -> BifoliatedPlane -> Prop
  HasAnosovLikeAction : FundamentalGroup -> BifoliatedPlane -> AnosovLikeAction -> Prop
  OrbitEquivalent : Closed3Manifold -> Flow -> Flow -> Prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PseudoAnosovOrbitEquiv/Variant4e91560ddb287018254c8d274a0023b48eeff2e696570feb605e2f0fe9ccab9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PseudoAnosovOrbitEquiv/Variant4e91560ddb287018254c8d274a0023b48eeff2e696570feb605e2f0fe9ccab9f.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ef30cd8c64a9a3a1cafc7804d185778248bd3bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
