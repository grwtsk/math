# EquilateralTriangleConstructor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d64893c0b272a95cecca063c7f27eabff5bcf629ac69fa9bd5c715014d97c14c",
  "kind": "structure",
  "lexical_name": "EquilateralTriangleConstructor",
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
  "slug": "equilateraltriangleconstructor--c6a27fc4c4db1294cca580ae",
  "source": {
    "blob": "29a9f10fc8b1233e9774aa7ca8da068355d8c675",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 35,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Construction/Variantd99cee9be003ec1f2e46782bc9a89e42390646931f9082381c13d38a0355512b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6a27fc4c4db1294cca580aed2a2bf0209848f13ad80ecbb270890556f55dfe0",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Construction/Variantd99cee9be003ec1f2e46782bc9a89e42390646931f9082381c13d38a0355512b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d64893c0b272a95cecca063c7f27eabff5bcf629ac69fa9bd5c715014d97c14c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure EquilateralTriangleConstructor
    (Point : Type u)
    (congruence : CongruenceSignature Point) where
  apex : Segment Point → Point
  firstSideCongruent :
    ∀ base,
      congruence.segmentCongruent
        base
        ⟨base.start, apex base⟩
  secondSideCongruent :
    ∀ base,
      congruence.segmentCongruent
        base
        ⟨base.finish, apex base⟩

/-- Exact bisection data, with order and congruence obligations kept visible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Construction/Variantd99cee9be003ec1f2e46782bc9a89e42390646931f9082381c13d38a0355512b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Construction/Variantd99cee9be003ec1f2e46782bc9a89e42390646931f9082381c13d38a0355512b.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29a9f10fc8b1233e9774aa7ca8da068355d8c675` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
