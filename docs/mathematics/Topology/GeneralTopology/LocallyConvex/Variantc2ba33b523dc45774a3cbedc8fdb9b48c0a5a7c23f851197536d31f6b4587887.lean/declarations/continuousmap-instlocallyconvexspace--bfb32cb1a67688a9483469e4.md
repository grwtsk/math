# ContinuousMap.instLocallyConvexSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c58546d40b5dada60fc5813409141ee72fb515ec34822cf35e12cd87e04c094",
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
  "slug": "continuousmap-instlocallyconvexspace--bfb32cb1a67688a9483469e4",
  "source": {
    "blob": "a9c60729e6f705d84af74d6f43fe32a4538678d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 18,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyConvex/Variantc2ba33b523dc45774a3cbedc8fdb9b48c0a5a7c23f851197536d31f6b4587887.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bfb32cb1a67688a9483469e4706d1e1cab6e18156dfd8aca90c2f4f1e1b91e64",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyConvex/Variantc2ba33b523dc45774a3cbedc8fdb9b48c0a5a7c23f851197536d31f6b4587887.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c58546d40b5dada60fc5813409141ee72fb515ec34822cf35e12cd87e04c094`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–26.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyConvex/Variantc2ba33b523dc45774a3cbedc8fdb9b48c0a5a7c23f851197536d31f6b4587887.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyConvex/Variantc2ba33b523dc45774a3cbedc8fdb9b48c0a5a7c23f851197536d31f6b4587887.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9c60729e6f705d84af74d6f43fe32a4538678d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
