# ControlledSphericalModel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72c72a09206e8423e3d40a8441d635971f1ddbc244cabfc1db63589b37085f05",
  "kind": "structure",
  "lexical_name": "ControlledSphericalModel",
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
  "slug": "controlledsphericalmodel--bdd7dda1c8f6307a614adb27",
  "source": {
    "blob": "9f0964b18cebfbcc6a51a06a81c62c98d7120007",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 12,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Claims/Variant14c970e37fa2e7803abe39bdaac9823fb6634e9c67ac0e8a74503cebebd25631.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bdd7dda1c8f6307a614adb2799e35b840f26ca5441ffa430df8452ca3ad12d4e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Claims/Variant14c970e37fa2e7803abe39bdaac9823fb6634e9c67ac0e8a74503cebebd25631.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72c72a09206e8423e3d40a8441d635971f1ddbc244cabfc1db63589b37085f05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ControlledSphericalModel
    (S : RealizationSystem.{uObj, uHom})
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S) where
  realization : GraphRealization.{uData, uData, uData} M.graph
  sphere1 : Sphere1Carrier.{uData}
  sphere3 : Sphere3Carrier.{uData}

  provenanceSignature : ProvenanceSignature.{uData, uData} M.Entity
  observedSignature :
    ObservedProvenanceSignature provenanceSignature M.observation
  sourceOperationAgrees :
    provenanceSignature.designatedOperation = M.sourceOperation
  observedOperationAgrees :
    observedSignature.designatedOperation = M.observedOperation

  geometricIdentity :
    StableGeometricIdentityData.{uData, uData} M.RefinementStage

  fixationSource :
    RealizationFixationSourceData.{
      uObj, uHom, vObj, vHom, uData, uData, uData}
      S.carrier.categories.Global M.Fixed M.ClosedCoordinate
      M.GraphPrimitive realization.Point
  sphereFixationData2 :
    SphereFixationData.{uData, uData}
      M.ClosedCoordinate M.carrier.Point
  sphereFixationData3 :
    SphereFixationData.{uData, uData}
      M.ClosedCoordinate sphere3.Point

  refinementSource :
    GraphRealizationRefinementData.{uData, uData, uData, uData}
      M.RefinementStage M.Entity M.GraphPrimitive realization.Point
      M.refinement.refines M.refinement.restrictEntity
      M.entityPrimitive realization.vertexPoint
  boundaryRefinementData :
    SphereRefinementData.{uData, uData}
      M.RefinementStage sphere1.Point
  sphereRefinementData2 :
    SphereRefinementData.{uData, uData}
      M.RefinementStage M.carrier.Point
  sphereRefinementData3 :
    SphereRefinementData.{uData, uData}
      M.RefinementStage sphere3.Point

/--
The spherical `S²` role is the existing controlled-plane carrier.  This is
only a signature-level reuse of its point sort and compactness assertion.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Claims/Variant14c970e37fa2e7803abe39bdaac9823fb6634e9c67ac0e8a74503cebebd25631.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Claims/Variant14c970e37fa2e7803abe39bdaac9823fb6634e9c67ac0e8a74503cebebd25631.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f0964b18cebfbcc6a51a06a81c62c98d7120007` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
