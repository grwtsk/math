# assembleControlledSphericalHierarchy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10a37d90743b4d1a4391729ee01c374bd19da5d6251ed5a8adc26af392e51392",
  "kind": "def",
  "lexical_name": "assembleControlledSphericalHierarchy",
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
  "slug": "assemblecontrolledsphericalhierarchy--9df6bc79319b3b30fdd2ebc7",
  "source": {
    "blob": "26107085dc22c639faa97180f066d70c1fa9d53a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 23,
    "path": "GRWTSK/Topology/GeneralTopology/Assembly/Variant6abc0de9763b2f687604848697b5ee82fb99f6989651c7fcf1b5d4e57ac6efbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9df6bc79319b3b30fdd2ebc7d318b78cdff2ce3cec39fdf53c57ee71f05135ac",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Assembly/Variant6abc0de9763b2f687604848697b5ee82fb99f6989651c7fcf1b5d4e57ac6efbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10a37d90743b4d1a4391729ee01c374bd19da5d6251ed5a8adc26af392e51392`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def assembleControlledSphericalHierarchy
    (S : RealizationSystem.{uObj, uHom})
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S)
    (SM : ControlledSphericalModel S M)
    (planeRegistry : ControlledPlaneResearchRegistry S M)
    (planeResult : ControlledPlaneCompleteness S M)
    (sphericalWitnesses : ControlledSphericalWitnessPackage S M SM)
    (D : LosslessDecoder M.observation)
    (hSignature :
      ControlledSignaturePreservation
        SM.provenanceSignature M.observation SM.observedSignature) :
    ControlledSphericalHierarchyResult S M SM := by
  have hHom :
      OperationHomomorphic
        M.sourceOperation M.observedOperation M.observation := by
    rw [← SM.sourceOperationAgrees, ← SM.observedOperationAgrees]
    exact hSignature.designatedBinaryOperationPreserved
  exact {
    planeResearchBoundary := planeRegistry
    planeCompleteness := planeResult
    sphericalWitnesses := sphericalWitnesses
    sphere1Compact := sphericalWitnesses.sphere1Compact
    selectedCarrierCompact := sphericalWitnesses.selectedCarrierCompact
    controlledDecoder := D
    controlledInjective := controlledProduct_injective D
    kernelDiagonal := controlledProduct_kernel_diagonal D
    imageReconstruction := imageDecoder_leftInverse D
    operationReconstruction := by
      intro x y
      exact controlledSpherical_decode_operation
        M.sourceOperation M.observedOperation D hHom x y
    signatureReconstruction :=
      controlledSignatureIso_of_decoder
        SM.provenanceSignature SM.observedSignature D hSignature
  }

/--
Public data-valued scoped assembly.  Its spherical research inputs arrive as
one package so branch, vertex, coherence, and compactness witnesses cannot
drift apart.  The decoder stays explicit because proposition elimination
cannot construct this data-valued result.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Assembly/Variant6abc0de9763b2f687604848697b5ee82fb99f6989651c7fcf1b5d4e57ac6efbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Assembly/Variant6abc0de9763b2f687604848697b5ee82fb99f6989651c7fcf1b5d4e57ac6efbc.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26107085dc22c639faa97180f066d70c1fa9d53a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
