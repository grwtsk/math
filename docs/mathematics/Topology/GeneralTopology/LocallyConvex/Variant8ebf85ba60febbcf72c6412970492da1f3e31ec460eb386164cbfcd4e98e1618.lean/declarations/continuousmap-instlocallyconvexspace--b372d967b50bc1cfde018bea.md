# ContinuousMap.instLocallyConvexSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f4c0273781a7f3811217504dce769a0f9712d13859eff8a1ea43182204af054d",
  "kind": "instance",
  "lexical_name": "ContinuousMap.instLocallyConvexSpace",
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
  "slug": "continuousmap-instlocallyconvexspace--b372d967b50bc1cfde018bea",
  "source": {
    "blob": "705ed2f5d85581406e87151b03cc1829f5be04ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 26,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyConvex/Variant8ebf85ba60febbcf72c6412970492da1f3e31ec460eb386164cbfcd4e98e1618.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b372d967b50bc1cfde018bea622943952a3e1d7f91af61ad8af8ed15b38db2d4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyConvex/Variant8ebf85ba60febbcf72c6412970492da1f3e31ec460eb386164cbfcd4e98e1618.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f4c0273781a7f3811217504dce769a0f9712d13859eff8a1ea43182204af054d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ContinuousMap.instLocallyConvexSpace {X 𝕜 E : Type*}
    [TopologicalSpace X]
    [Semiring 𝕜] [PartialOrder 𝕜]
    [AddCommGroup E] [Module 𝕜 E] [TopologicalSpace E] [LocallyConvexSpace 𝕜 E]
    [IsTopologicalAddGroup E] [ContinuousConstSMul 𝕜 E] :
    LocallyConvexSpace 𝕜 C(X, E) :=
  .ofBasisZero _ _ _ _ (LocallyConvexSpace.convex_basis_zero 𝕜 E).nhds_continuousMapConst <| by
    rintro ⟨K, U⟩ ⟨hK, hU₀, hUc⟩ f hf g hg a b ha hb hab x hx
    exact hUc (hf hx) (hg hx) ha hb hab
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyConvex/Variant8ebf85ba60febbcf72c6412970492da1f3e31ec460eb386164cbfcd4e98e1618.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyConvex/Variant8ebf85ba60febbcf72c6412970492da1f3e31ec460eb386164cbfcd4e98e1618.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `705ed2f5d85581406e87151b03cc1829f5be04ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
