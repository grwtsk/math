# ControlledDigitalSurgery

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:deb56cf3194bd508575dbc6b3f67da30f2e0a80d1c64c1ae162747a65a7dba83",
  "kind": "structure",
  "lexical_name": "ControlledDigitalSurgery",
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
  "slug": "controlleddigitalsurgery--befda89fdcf6173dc1371b7b",
  "source": {
    "blob": "ed70dbb69dc8d2aab029ee38c60787d9c948f55b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 79,
    "path": "GRWTSK/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/ProviderScopedTopologyObligations.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:befda89fdcf6173dc1371b7b351316c0ac5b601600ea718e8460a8d9da4ef16b",
  "verification": {
    "reference": "docs/verification/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/ProviderScopedTopologyObligations.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:deb56cf3194bd508575dbc6b3f67da30f2e0a80d1c64c1ae162747a65a7dba83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ControlledDigitalSurgery {rows columns : Nat}
    (semantics : DigitalTopologySemantics rows columns)
    (cut : CutDatum rows columns) where
  repair : Repair cut
  foregroundAdjacency : AdjacencyPolicy
  backgroundAdjacency : AdjacencyPolicy
  adjacencyCompatible : foregroundAdjacency ≠ backgroundAdjacency
  linkConditionEvidence :
    semantics.linkCondition foregroundAdjacency backgroundAdjacency cut repair
  expectedBettiDelta : Nat → Int
  bettiDeltaVerified : ∀ degree,
    Int.ofNat
        (semantics.betti foregroundAdjacency backgroundAdjacency repair.apply degree) -
      Int.ofNat
        (semantics.betti foregroundAdjacency backgroundAdjacency cut.source degree) =
      expectedBettiDelta degree
  exactCarrierEvidence :
    semantics.exactCarrierCompatible
      foregroundAdjacency backgroundAdjacency cut repair
  cubicalManifoldEvidence :
    semantics.cubicalManifold
      foregroundAdjacency backgroundAdjacency repair.apply

namespace ControlledDigitalSurgery

/-- Every controlled surgery retains the unconditional finite locality law. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/ProviderScopedTopologyObligations.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/ProviderScopedTopologyObligations.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed70dbb69dc8d2aab029ee38c60787d9c948f55b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
