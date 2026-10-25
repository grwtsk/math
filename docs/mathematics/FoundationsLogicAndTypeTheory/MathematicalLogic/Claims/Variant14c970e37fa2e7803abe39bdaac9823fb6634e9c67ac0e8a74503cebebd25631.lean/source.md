# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Claims.Variant14c970e37fa2e7803abe39bdaac9823fb6634e9c67ac0e8a74503cebebd25631

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f0964b18cebfbcc6a51a06a81c62c98d7120007` · SHA-256 `14c970e37fa2e7803abe39bdaac9823fb6634e9c67ac0e8a74503cebebd25631`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.ControlledProduct
import FCRS.ControlledSpherical.Refinement

universe uObj uHom vObj vHom uData

namespace FCRS.ControlledSpherical

open FCRS
open FCRS.ControlledPlane

/-- Raw typed data shared by CS-01 through CS-12. -/
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
def ControlledSphericalModel.sphere2
    {S : RealizationSystem.{uObj, uHom}}
    {M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S}
    (_SM : ControlledSphericalModel S M) : Sphere2Carrier.{uData} :=
  Sphere2Carrier.ofCarrier2D M.carrier

/-- CS-01: realization support matches sieve admissibility exactly. -/
def CS01Claim
    {S : RealizationSystem.{uObj, uHom}}
    {M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S}
    (SM : ControlledSphericalModel S M) : Prop :=
  SieveRealizationCompatible SM.realization M.sieve M.occurs

/-- CS-02: witness identity, artifact version, and validity refine explicitly. -/
def CS02Claim
    {S : RealizationSystem.{uObj, uHom}}
    {M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S}
    (SM : ControlledSphericalModel S M) : Prop :=
  StableGeometricIdentityCompatible
    M.refinement.refines SM.geometricIdentity

/--
For a selected `S²` branch, require agreement with the exact shared vertex
placement.  An `S³` selection has no `S²` vertex-compatibility obligation.
-/
def SelectedS2VertexCompatibility
    {S : RealizationSystem.{uObj, uHom}}
    {M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S}
    (SM : ControlledSphericalModel S M)
    (V : InjectiveS1VertexPlacement M.graph SM.sphere1) :
    SphericalRealizationChoice SM.realization SM.sphere2 SM.sphere3 → Prop
  | .sphere2 E =>
      ∃ B : InjectiveS1ToS2Placement SM.sphere1 SM.sphere2,
        VertexCompatibleS2Realization
          SM.realization SM.sphere1 SM.sphere2 V B E
  | .sphere3 _ => True

/--
One coherent research witness package.  Every CS-03--CS-08 projection uses
this same vertex placement and the same selected `S²` or `S³` realization.
Compactness is asserted for `S¹` and for exactly the selected carrier.
-/
structure ControlledSphericalWitnessPackage
    (S : RealizationSystem.{uObj, uHom})
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S)
    (SM : ControlledSphericalModel S M) where
  sieveRealizationCompatible : CS01Claim SM
  stableGeometricIdentity : CS02Claim SM

  sphere1Compact : CompactSphere1 SM.sphere1
  vertexPlacement : InjectiveS1VertexPlacement M.graph SM.sphere1
  selectedRealization :
    SphericalRealizationChoice SM.realization SM.sphere2 SM.sphere3
  selectedVertexCompatibility :
    SelectedS2VertexCompatibility SM vertexPlacement selectedRealization

  fixationCoherent :
    SphericalRealizationFixationCoherent
      M.fixation selectedRealization SM.fixationSource
      SM.sphereFixationData2 SM.sphereFixationData3
  refinementCoherent :
    SelectedRealizationRefinementCoherent
      vertexPlacement selectedRealization
      SM.refinementSource SM.boundaryRefinementData
      SM.sphereRefinementData2 SM.sphereRefinementData3

  selectedCarrierCompact :
    SelectedSphericalCarrierCompact selectedRealization

/-- CS-03, relative to the shared package: compact `S¹` vertex placement. -/
def CS03Claim
    {S : RealizationSystem.{uObj, uHom}}
    {M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S}
    {SM : ControlledSphericalModel S M}
    (_W : ControlledSphericalWitnessPackage S M SM) : Prop :=
  CompactSphere1 SM.sphere1

/--
CS-04, relative to the shared package: compactness of the selected `S²`
branch.  It is vacuous when the package selects `S³`.
-/
def CS04Claim
    {S : RealizationSystem.{uObj, uHom}}
    {M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S}
    {SM : ControlledSphericalModel S M}
    (W : ControlledSphericalWitnessPackage S M SM) : Prop :=
  match W.selectedRealization with
  | .sphere2 _ => CompactSphere2 SM.sphere2
  | .sphere3 _ => True

/--
CS-05, relative to the shared package: exact vertex compatibility for the
selected `S²` injection.  It is vacuous when the package selects `S³`.
-/
def CS05Claim
    {S : RealizationSystem.{uObj, uHom}}
    {M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S}
    {SM : ControlledSphericalModel S M}
    (W : ControlledSphericalWitnessPackage S M SM) : Prop :=
  SelectedS2VertexCompatibility
    SM W.vertexPlacement W.selectedRealization

/--
CS-06, relative to the shared package: compactness of the selected `S³`
branch.  It is vacuous when the package selects `S²`.
-/
def CS06Claim
    {S : RealizationSystem.{uObj, uHom}}
    {M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S}
    {SM : ControlledSphericalModel S M}
    (W : ControlledSphericalWitnessPackage S M SM) : Prop :=
  match W.selectedRealization with
  | .sphere2 _ => True
  | .sphere3 _ => CompactSphere3 SM.sphere3

/-- CS-07: the package's selected realization commutes with fixation data. -/
def CS07Claim
    {S : RealizationSystem.{uObj, uHom}}
    {M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S}
    {SM : ControlledSphericalModel S M}
    (W : ControlledSphericalWitnessPackage S M SM) : Prop :=
  SphericalRealizationFixationCoherent
    M.fixation W.selectedRealization SM.fixationSource
    SM.sphereFixationData2 SM.sphereFixationData3

/-- CS-08: the same placement and selected realization refine coherently. -/
def CS08Claim
    {S : RealizationSystem.{uObj, uHom}}
    {M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S}
    {SM : ControlledSphericalModel S M}
    (W : ControlledSphericalWitnessPackage S M SM) : Prop :=
  SelectedRealizationRefinementCoherent
    W.vertexPlacement W.selectedRealization
    SM.refinementSource SM.boundaryRefinementData
    SM.sphereRefinementData2 SM.sphereRefinementData3

/-- CS-03 is a direct projection of the shared witness package. -/
theorem ControlledSphericalWitnessPackage.cs03Claim
    {S : RealizationSystem.{uObj, uHom}}
    {M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S}
    {SM : ControlledSphericalModel S M}
    (W : ControlledSphericalWitnessPackage S M SM) : CS03Claim W :=
  W.sphere1Compact

/-- Selected-carrier compactness discharges the branch-relative CS-04 claim. -/
theorem ControlledSphericalWitnessPackage.cs04Claim
    {S : RealizationSystem.{uObj, uHom}}
    {M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S}
    {SM : ControlledSphericalModel S M}
    (W : ControlledSphericalWitnessPackage S M SM) : CS04Claim W := by
  cases h : W.selectedRealization with
  | sphere2 E =>
      simpa [CS04Claim, SelectedSphericalCarrierCompact, h] using
        W.selectedCarrierCompact
  | sphere3 E =>
      simp [CS04Claim, h]

/-- CS-05 is the exact selected-branch compatibility stored by the package. -/
theorem ControlledSphericalWitnessPackage.cs05Claim
    {S : RealizationSystem.{uObj, uHom}}
    {M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S}
    {SM : ControlledSphericalModel S M}
    (W : ControlledSphericalWitnessPackage S M SM) : CS05Claim W :=
  W.selectedVertexCompatibility

/-- Selected-carrier compactness discharges the branch-relative CS-06 claim. -/
theorem ControlledSphericalWitnessPackage.cs06Claim
    {S : RealizationSystem.{uObj, uHom}}
    {M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S}
    {SM : ControlledSphericalModel S M}
    (W : ControlledSphericalWitnessPackage S M SM) : CS06Claim W := by
  cases h : W.selectedRealization with
  | sphere2 E =>
      simp [CS06Claim, h]
  | sphere3 E =>
      simpa [CS06Claim, SelectedSphericalCarrierCompact, h] using
        W.selectedCarrierCompact

/-- CS-07 is a direct projection of the package's selected realization. -/
theorem ControlledSphericalWitnessPackage.cs07Claim
    {S : RealizationSystem.{uObj, uHom}}
    {M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S}
    {SM : ControlledSphericalModel S M}
    (W : ControlledSphericalWitnessPackage S M SM) : CS07Claim W :=
  W.fixationCoherent

/-- CS-08 uses the same placement and selected realization as CS-03--CS-07. -/
theorem ControlledSphericalWitnessPackage.cs08Claim
    {S : RealizationSystem.{uObj, uHom}}
    {M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S}
    {SM : ControlledSphericalModel S M}
    (W : ControlledSphericalWitnessPackage S M SM) : CS08Claim W :=
  W.refinementCoherent

/-- CS-09: decoder consequences for the controlled product. -/
structure CS09Claim
    {S : RealizationSystem.{uObj, uHom}}
    {M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S}
    (D : LosslessDecoder M.observation) : Prop where
  imageLeftInverse :
    ∀ x,
      imageDecoder D (observationImageInclusion M.observation x) = x
  pairedInjective :
    Function.Injective (combinedObservation M.observation)
  kernelDiagonal :
    ∀ x y, ObservationKernel M.observation x y ↔ x = y

/-- CS-10: the designated binary operation is reconstructed by decoding. -/
def CS10Claim
    {S : RealizationSystem.{uObj, uHom}}
    {M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S}
    (D : LosslessDecoder M.observation) : Prop :=
  ∀ x y,
    decodeObserved D
      (M.observedOperation.op
        (combinedObservation M.observation x)
        (combinedObservation M.observation y)) =
      M.sourceOperation.op x y

/--
CS-11: a decoder plus explicit preservation of the entire declared signature,
including its one designated binary operation, yields a signature isomorphism.
The preservation contract is an input and is not derived from the decoder.
-/
def CS11Claim
    {S : RealizationSystem.{uObj, uHom}}
    {M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S}
    (SM : ControlledSphericalModel S M)
    (D : LosslessDecoder M.observation) : Prop :=
  Nonempty
    (ControlledSignatureIso
      SM.provenanceSignature M.observation SM.observedSignature D)

/--
Witness-bearing scoped hierarchy.  It retains one coherent spherical package,
including compactness of the selected carrier, while controlled-product
consequences are reconstructed from `controlledDecoder`.
-/
structure ControlledSphericalHierarchyResult
    (S : RealizationSystem.{uObj, uHom})
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S)
    (SM : ControlledSphericalModel S M) where
  planeResearchBoundary : ControlledPlaneResearchRegistry S M
  planeCompleteness : ControlledPlaneCompleteness S M

  sphericalWitnesses : ControlledSphericalWitnessPackage S M SM
  sphere1Compact : CompactSphere1 SM.sphere1
  selectedCarrierCompact :
    SelectedSphericalCarrierCompact sphericalWitnesses.selectedRealization

  controlledDecoder : LosslessDecoder M.observation
  controlledInjective :
    Function.Injective (combinedObservation M.observation)
  kernelDiagonal :
    ∀ x y, ObservationKernel M.observation x y ↔ x = y
  imageReconstruction :
    ∀ x,
      imageDecoder controlledDecoder
        (observationImageInclusion M.observation x) = x
  operationReconstruction : CS10Claim controlledDecoder
  signatureReconstruction :
    ControlledSignatureIso
      SM.provenanceSignature M.observation SM.observedSignature
      controlledDecoder

/-- The selected dimension is computed from the retained branch witness. -/
def ControlledSphericalHierarchyResult.dimension
    {S : RealizationSystem.{uObj, uHom}}
    {M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S}
    {SM : ControlledSphericalModel S M}
    (result : ControlledSphericalHierarchyResult S M SM) :
    SelectedRealizationDimension :=
  result.sphericalWitnesses.selectedRealization.dimension

/-- CS-12 proposition associated with the witness-bearing result. -/
def CS12Claim
    (S : RealizationSystem.{uObj, uHom})
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S)
    (SM : ControlledSphericalModel S M) : Prop :=
  Nonempty (ControlledSphericalHierarchyResult S M SM)

end FCRS.ControlledSpherical
```
