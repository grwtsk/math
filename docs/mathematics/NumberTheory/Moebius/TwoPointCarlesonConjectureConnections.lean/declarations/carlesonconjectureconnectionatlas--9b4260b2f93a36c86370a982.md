# CarlesonConjectureConnectionAtlas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d2fda8f8848ababda88844842dcffb590fdee7ffd8027fa066e9ef6a25b25b2",
  "kind": "structure",
  "lexical_name": "CarlesonConjectureConnectionAtlas",
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
  "slug": "carlesonconjectureconnectionatlas--9b4260b2f93a36c86370a982",
  "source": {
    "blob": "c74eb5e54981b24eb59d67b122a8da4a82618d97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 609,
    "line": 585,
    "path": "GRWTSK/NumberTheory/Moebius/TwoPointCarlesonConjectureConnections.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b4260b2f93a36c86370a98284e2b0d1035230a1973d67349942528dcc1fe4aa",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/TwoPointCarlesonConjectureConnections.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d2fda8f8848ababda88844842dcffb590fdee7ffd8027fa066e9ef6a25b25b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 585–609.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CarlesonConjectureConnectionAtlas
    (claims : ExternalConjectureClaims) where
  fixedTwoPoint : ScopedConnection claims.ordinaryFixedTwoPoint
    SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost
  correctedElliott : ScopedConnection claims.correctedBinaryElliott
    SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost
  logarithmicGrowing : ScopedConnection claims.logarithmicGrowingShift
    SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost
  shortInterval : ScopedConnection claims.shortIntervalMobius
    SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost
  higherChowla : ScopedConnection claims.higherOrderChowla
    SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost
  higherElliott : ScopedConnection claims.higherOrderElliott
    SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost
  sarnak : ScopedConnection claims.sarnakDisjointness
    SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost
  weakMertens : ScopedConnection claims.weakMertens
    SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost
  gonekHejhal : ScopedConnection claims.gonekHejhal
    SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost
  littlewood : ScopedConnection claims.ultraflatLittlewood
    SubpolynomialDyadicMertensTwoPointCarlesonEnergyWithDepthCost

/-- Canonical conservative atlas: all external mathematical transports remain
requirements, while the Littlewood comparison remains a structural analogy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/TwoPointCarlesonConjectureConnections.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/TwoPointCarlesonConjectureConnections.lean#L585).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c74eb5e54981b24eb59d67b122a8da4a82618d97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
