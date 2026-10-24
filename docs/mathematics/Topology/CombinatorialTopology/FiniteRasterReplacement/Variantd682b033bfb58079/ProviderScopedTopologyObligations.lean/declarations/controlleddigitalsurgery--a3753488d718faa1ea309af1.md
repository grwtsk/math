# ControlledDigitalSurgery

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ce4aa9aa6cfd6a3b91f4fbcd33e10c9461df3067ff7be95305a10d8ed23020f",
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
  "slug": "controlleddigitalsurgery--a3753488d718faa1ea309af1",
  "source": {
    "blob": "0c0b1890b2e36f2e9bf031991a64fcfa5a2d0850",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 80,
    "path": "GRWTSK/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/ProviderScopedTopologyObligations.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3753488d718faa1ea309af11967ea74c6e8f8951fb3c02e4bace99d3614d22c",
  "verification": {
    "reference": "docs/verification/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/ProviderScopedTopologyObligations.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ce4aa9aa6cfd6a3b91f4fbcd33e10c9461df3067ff7be95305a10d8ed23020f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–105.

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

[Verification target and public status](../../../../../../../verification/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/ProviderScopedTopologyObligations.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/ProviderScopedTopologyObligations.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c0b1890b2e36f2e9bf031991a64fcfa5a2d0850` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
