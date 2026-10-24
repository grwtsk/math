# boundaryLayerResolvedNode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa318e207320353a751f35c9bbdb3f7caf1823a5a9381bdf250496818873189b",
  "kind": "def",
  "lexical_name": "boundaryLayerResolvedNode",
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
  "slug": "boundarylayerresolvednode--785a96c78b92b4e2db9b8b88",
  "source": {
    "blob": "5a655f06ef700131e61cd84fd2a9515f8cef7ad7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 171,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:785a96c78b92b4e2db9b8b8824f5316d1038f250b34b86123fb5ee3322c596e2",
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

Occurrence: `declaration:fa318e207320353a751f35c9bbdb3f7caf1823a5a9381bdf250496818873189b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def boundaryLayerResolvedNode : WitnessNode where
  id := .boundaryLayerWitnessLabel
  kind := .witness
  scope := .globalRiemann
  availability := .externalBranch
  source := some boundaryCriticalAbelSource.toSourceRef
  evidence := [.kernelChecked, .trustAudited]
  consumer := some
    { name := boundaryEstimateConsumerSource.declaration
      status :=
        "Accepted in the source repository; not imported or replayed in grwtsk/math. Supplies EstimateObligation, not RH by itself." }
  summary :=
    "Historical boundary-layer label resolved to the open CriticalAbelTailLowerBound witness and its accepted-main estimate consumer."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RiemannWitnessBoundaryResolution.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a655f06ef700131e61cd84fd2a9515f8cef7ad7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
