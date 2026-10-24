# PowerTowerBoundaryCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c8c27ca1349d88c590b8d2abdd095e84369362260a21a41f5a198fe09dab919f",
  "kind": "structure",
  "lexical_name": "PowerTowerBoundaryCertificate",
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
  "slug": "powertowerboundarycertificate--76979cb92610b06206a95f21",
  "source": {
    "blob": "31cc98fc1e3c21de40794129f1cfb6d5f60a1e23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 121,
    "path": "GRWTSK/Topology/GeneralTopology/PowerTowerBoundary/Variant46fa6aabc46e8559cbf17cd199f28ba14a7b9f8d93a865b235db9285dc040fba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76979cb92610b06206a95f214b8431e1bf469d65e2ef9b929750e381ccdb01f2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PowerTowerBoundary/Variant46fa6aabc46e8559cbf17cd199f28ba14a7b9f8d93a865b235db9285dc040fba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c8c27ca1349d88c590b8d2abdd095e84369362260a21a41f5a198fe09dab919f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PowerTowerBoundaryCertificate where
  dynamics : PowerTowerDynamics
  contractive :
    ContractiveBoundaryCertificate ℂ Unit
  basinMatches :
    contractive.basin = dynamics.basin
  stepMatches :
    contractive.step () = dynamics.step
  boundaryMatches :
    contractive.boundary = dynamics.boundary
  derivativeToLipschitz :
    PowerTowerDerivativeToLipschitzBridge
      dynamics contractive.contraction

/--
Implemented power-tower steps carry two separate residual coordinates.
`stateDefect` enters the boundary-distance recurrence.  The logarithmic
verification residual remains independently visible and acquires no metric
authority without an additional bridge.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PowerTowerBoundary/Variant46fa6aabc46e8559cbf17cd199f28ba14a7b9f8d93a865b235db9285dc040fba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PowerTowerBoundary/Variant46fa6aabc46e8559cbf17cd199f28ba14a7b9f8d93a865b235db9285dc040fba.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31cc98fc1e3c21de40794129f1cfb6d5f60a1e23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
