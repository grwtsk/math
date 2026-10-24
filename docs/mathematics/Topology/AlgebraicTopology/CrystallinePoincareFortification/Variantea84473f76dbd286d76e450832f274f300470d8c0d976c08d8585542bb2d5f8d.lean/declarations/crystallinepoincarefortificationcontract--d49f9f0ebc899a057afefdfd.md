# CrystallinePoincareFortificationContract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fcb3d309464035d1148a9b9bbf92e9cd391547a06553a6c8d827c1ee240cf92e",
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
  "slug": "crystallinepoincarefortificationcontract--d49f9f0ebc899a057afefdfd",
  "source": {
    "blob": "9fda9ad5d8f19f4caf119e9b95ec28b635fc4c7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 104,
    "path": "GRWTSK/Topology/AlgebraicTopology/CrystallinePoincareFortification/Variantea84473f76dbd286d76e450832f274f300470d8c0d976c08d8585542bb2d5f8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d49f9f0ebc899a057afefdfdd92a5fd9febc5fd2e22ce148fced76a9f468ac08",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/CrystallinePoincareFortification/Variantea84473f76dbd286d76e450832f274f300470d8c0d976c08d8585542bb2d5f8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fcb3d309464035d1148a9b9bbf92e9cd391547a06553a6c8d827c1ee240cf92e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–119.

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

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/CrystallinePoincareFortification/Variantea84473f76dbd286d76e450832f274f300470d8c0d976c08d8585542bb2d5f8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/CrystallinePoincareFortification/Variantea84473f76dbd286d76e450832f274f300470d8c0d976c08d8585542bb2d5f8d.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fda9ad5d8f19f4caf119e9b95ec28b635fc4c7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
