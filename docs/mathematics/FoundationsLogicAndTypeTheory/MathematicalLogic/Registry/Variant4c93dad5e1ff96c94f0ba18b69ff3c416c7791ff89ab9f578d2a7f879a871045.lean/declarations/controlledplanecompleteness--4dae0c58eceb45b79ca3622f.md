# ControlledPlaneCompleteness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a21b41d1375c1a11ed82827d9f64a8460fdb2e52d0008d26ae73e5aef342aa05",
  "kind": "structure",
  "lexical_name": "ControlledPlaneCompleteness",
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
  "slug": "controlledplanecompleteness--4dae0c58eceb45b79ca3622f",
  "source": {
    "blob": "03478ab14b81e4f3a4a8c005b8db5144eac5be4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Registry/Variant4c93dad5e1ff96c94f0ba18b69ff3c416c7791ff89ab9f578d2a7f879a871045.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4dae0c58eceb45b79ca3622fbf86d8a1d3c5502147865e0edb0746560d48731c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Registry/Variant4c93dad5e1ff96c94f0ba18b69ff3c416c7791ff89ab9f578d2a7f879a871045.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a21b41d1375c1a11ed82827d9f64a8460fdb2e52d0008d26ae73e5aef342aa05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ControlledPlaneCompleteness
    (S : RealizationSystem.{uObj, uHom})
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S) : Prop where
  closedCoordinateRegime : ClosedCoordinateRegime S
  fixationFamilyExists :
    Nonempty
      (CoordinateFixationLayer
        S.carrier.categories.Global M.Fixed M.ClosedCoordinate)
  fixationFunctorial :
    IsClosedCoordinateFixation M.fixation M.fixationSpecification
  designatedConeAndBaseChangeCompatible :
    ∀ c,
      DesignatedConeAndBaseChangeCompatible
        M.preservationSpecification (M.fixation.fix c)
  admittedOperationClosure :
    ∀ c,
      DesignatedOperationCompatible
        M.preservationSpecification (M.fixation.fix c)
  sieveAdmissibility : CF03Claim M
  traversalPreserved : CF04Claim M
  controlledPresentationPremises : ControlledPresentationPremises M
  decoderDerivedSeparation : CF05Claim M
  pairedObservationInjective :
    Function.Injective (combinedObservation M.observation)
  controlNormalized : CF06Claim M
  decoderLossless : CF07Claim M
  operationHomomorphic :
    ∃ D : LosslessDecoder M.observation, CF08Claim M D
  closedCoordinateSeparation :
    ClosedCoordinateSeparating
      M.ClosedCoordinate M.Entity M.FixedCoordinateValue M.fixedAt
  closedCoordinateComplete : CF10Claim M
  refinementCoherent : RefinementCoherent M.refinement
  controlledPresentationExists :
    Nonempty (CoherentControlledPresentation M.refinement M.observation)
  compactGeometricCarrier : CF13Claim M
  noEmbeddingFieldRequired : CF14Claim M

end FCRS.ControlledPlane
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Registry/Variant4c93dad5e1ff96c94f0ba18b69ff3c416c7791ff89ab9f578d2a7f879a871045.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Registry/Variant4c93dad5e1ff96c94f0ba18b69ff3c416c7791ff89ab9f578d2a7f879a871045.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03478ab14b81e4f3a4a8c005b8db5144eac5be4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
