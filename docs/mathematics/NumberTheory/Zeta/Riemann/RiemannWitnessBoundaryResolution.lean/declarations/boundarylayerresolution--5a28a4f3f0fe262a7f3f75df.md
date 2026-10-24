# boundaryLayerResolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e80b0c1f3f55fbb7a4b9e692f84aaa39ef33202386dcfd862604015ed1ef64ea",
  "kind": "def",
  "lexical_name": "boundaryLayerResolution",
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
  "slug": "boundarylayerresolution--5a28a4f3f0fe262a7f3f75df",
  "source": {
    "blob": "5a655f06ef700131e61cd84fd2a9515f8cef7ad7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 156,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a28a4f3f0fe262a7f3f75dfe65101c7ad8582b2d9c877db7a2de2b59eadbc81",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e80b0c1f3f55fbb7a4b9e692f84aaa39ef33202386dcfd862604015ed1ef64ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def boundaryLayerResolution : BoundaryLayerResolution where
  sourceIssue := 16
  sourcePullRequest := 289
  acceptedMainCommit := acceptedMain
  witness := boundaryCriticalAbelSource
  equivalence := boundaryAbelEquivalenceSource
  estimateConsumer := boundaryEstimateConsumerSource
  estimateTarget := boundaryEstimateTargetSource
  rhBridgeTarget := boundaryRHBridgeTargetSource
  importedLocally := false
  witnessConstructed := false
  rhBridgeDischarged := false

/-- Replace only the unresolved boundary-layer metadata node. The exact external
source is recorded, but availability remains external and non-proof-bearing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a655f06ef700131e61cd84fd2a9515f8cef7ad7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
