# Sphere2Carrier.ofCarrier2D

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1dd64433162ce4a744db52c9b6e15185df4b6f5c80169a1b56b6a3d3e83829ed",
  "kind": "def",
  "lexical_name": "Sphere2Carrier.ofCarrier2D",
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
  "slug": "sphere2carrier-ofcarrier2d--36a7b7405306daf71f5bd08e",
  "source": {
    "blob": "eda0db589165cc4a73f8746ea1b2527c6a968407",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 30,
    "path": "GRWTSK/Topology/GeneralTopology/SphereCarriers/Variantc78aec7ad734955e0ddcd01791cdb2cc364910a1112824e4b786afff825facca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36a7b7405306daf71f5bd08ea2a6f042dc79949c7b647f60d782d85521fd04a4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SphereCarriers/Variantc78aec7ad734955e0ddcd01791cdb2cc364910a1112824e4b786afff825facca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1dd64433162ce4a744db52c9b6e15185df4b6f5c80169a1b56b6a3d3e83829ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Sphere2Carrier.ofCarrier2D
    (P : Carrier2D.{u2}) : Sphere2Carrier.{u2} where
  Point := P.Point
  compactnessAssertion := P.compactnessAssertion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SphereCarriers/Variantc78aec7ad734955e0ddcd01791cdb2cc364910a1112824e4b786afff825facca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SphereCarriers/Variantc78aec7ad734955e0ddcd01791cdb2cc364910a1112824e4b786afff825facca.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eda0db589165cc4a73f8746ea1b2527c6a968407` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
