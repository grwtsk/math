# CrystallinePoincareFortificationContract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:721be992ff5b154564b7e11d882abc34b342d5a9d9352b1ba4705fda290fa7db",
  "kind": "structure",
  "lexical_name": "CrystallinePoincareFortificationContract",
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
  "slug": "crystallinepoincarefortificationcontract--1e3b3ba872d3bd3a777b3d91",
  "source": {
    "blob": "91a5dc7c4be4b60907212900038f436e309864eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 96,
    "path": "GRWTSK/Topology/AlgebraicTopology/CrystallinePoincareFortification/Variant7f4770b0390b4859d7f12fa45e17790a313658f1dd270ea9e89ab0ba3b409091.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e3b3ba872d3bd3a777b3d91a6a4a92fea2f9b5284e43858ad182332955a1f42",
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

Occurrence: `declaration:721be992ff5b154564b7e11d882abc34b342d5a9d9352b1ba4705fda290fa7db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CrystallinePoincareFortificationContract where
  atlas : CanonicalPivotAtlas
  carrier : CrystallineHomotopyCarrier
  localQuasiIsoDescent : Prop
  localQuasiIsoDescent_certified : localQuasiIsoDescent
  atlasPreservesCarrierTopology : Prop
  atlasPreservesCarrierTopology_certified :
    atlasPreservesCarrierTopology
  poincareRigidity : CrystallinePoincareRigidityContract carrier
  preventsTopologicalEscape : Prop
  preventsTopologicalEscape_certified : preventsTopologicalEscape
  supportsFixedPointCompatibility : Prop
  supportsFixedPointCompatibility_certified :
    supportsFixedPointCompatibility
  sourceLabel : String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/CrystallinePoincareFortification/Variant7f4770b0390b4859d7f12fa45e17790a313658f1dd270ea9e89ab0ba3b409091.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/CrystallinePoincareFortification/Variant7f4770b0390b4859d7f12fa45e17790a313658f1dd270ea9e89ab0ba3b409091.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91a5dc7c4be4b60907212900038f436e309864eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
