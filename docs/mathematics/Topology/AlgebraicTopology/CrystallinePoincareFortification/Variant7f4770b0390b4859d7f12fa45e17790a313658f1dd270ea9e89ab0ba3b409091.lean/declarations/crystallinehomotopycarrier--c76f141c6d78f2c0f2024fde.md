# CrystallineHomotopyCarrier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:83e64eb84b6da04fb71f2b539affb746da1ffebc5f85a24bf35258937c6050f1",
  "kind": "structure",
  "lexical_name": "CrystallineHomotopyCarrier",
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
  "slug": "crystallinehomotopycarrier--c76f141c6d78f2c0f2024fde",
  "source": {
    "blob": "91a5dc7c4be4b60907212900038f436e309864eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 25,
    "path": "GRWTSK/Topology/AlgebraicTopology/CrystallinePoincareFortification/Variant7f4770b0390b4859d7f12fa45e17790a313658f1dd270ea9e89ab0ba3b409091.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c76f141c6d78f2c0f2024fded5754aefbafcac079d02b79881f681bab96cb77d",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/CrystallinePoincareFortification/Variant7f4770b0390b4859d7f12fa45e17790a313658f1dd270ea9e89ab0ba3b409091.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:83e64eb84b6da04fb71f2b539affb746da1ffebc5f85a24bf35258937c6050f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CrystallineHomotopyCarrier where
  carrierLabel : String
  loopDataLabel : String
  sphereObjectLabel : String
  dimensionThree : Prop
  dimensionThree_certified : dimensionThree
  compactConnected : Prop
  compactConnected_certified : compactConnected
  simplyConnected : Prop
  simplyConnected_certified : simplyConnected

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/CrystallinePoincareFortification/Variant7f4770b0390b4859d7f12fa45e17790a313658f1dd270ea9e89ab0ba3b409091.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/CrystallinePoincareFortification/Variant7f4770b0390b4859d7f12fa45e17790a313658f1dd270ea9e89ab0ba3b409091.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91a5dc7c4be4b60907212900038f436e309864eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
