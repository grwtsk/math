import FCRS.ControlledSpherical.Registry

universe uObj uHom vObj vHom uData

namespace FCRS.ControlledSpherical

open FCRS
open FCRS.ControlledPlane

/--
Construct the witness-bearing hierarchy from one coherent spherical package
and one explicit decoder.  The package is research evidence; only the
controlled-product consequences are derived here.
-/
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
def controlled_spherical_scoped_hierarchy
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
    ControlledSphericalHierarchyResult S M SM :=
  assembleControlledSphericalHierarchy
    S M SM planeRegistry planeResult sphericalWitnesses D hSignature

/--
The stronger `S²` result retains the exact selected injection, point-placement
map, and vertex-coordinate compatibility equation.  It adds no edge or
topological boundary condition.
-/
structure VertexCompatibleS2HierarchyResult
    (S : RealizationSystem.{uObj, uHom})
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S)
    (SM : ControlledSphericalModel S M) where
  hierarchy : ControlledSphericalHierarchyResult S M SM
  s2Realization : InjectiveS2Realization SM.realization SM.sphere2
  choiceMatches :
    hierarchy.sphericalWitnesses.selectedRealization =
      .sphere2 s2Realization
  sphere1ToSphere2 :
    InjectiveS1ToS2Placement SM.sphere1 SM.sphere2
  vertexCompatible :
    VertexCompatibleS2Realization
      SM.realization SM.sphere1 SM.sphere2
      hierarchy.sphericalWitnesses.vertexPlacement sphere1ToSphere2
      s2Realization

/--
Assemble the stronger vertex-compatible `S²` branch from the same package
used by the hierarchy.  Exact choice equality is an explicit premise.
-/
def controlled_spherical_vertex_compatible_s2_hierarchy
    (S : RealizationSystem.{uObj, uHom})
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S)
    (SM : ControlledSphericalModel S M)
    (planeRegistry : ControlledPlaneResearchRegistry S M)
    (planeResult : ControlledPlaneCompleteness S M)
    (sphericalWitnesses : ControlledSphericalWitnessPackage S M SM)
    (E : InjectiveS2Realization SM.realization SM.sphere2)
    (hChoice : sphericalWitnesses.selectedRealization = .sphere2 E)
    (B : InjectiveS1ToS2Placement SM.sphere1 SM.sphere2)
    (hVertex :
      VertexCompatibleS2Realization
        SM.realization SM.sphere1 SM.sphere2
        sphericalWitnesses.vertexPlacement B E)
    (D : LosslessDecoder M.observation)
    (hSignature :
      ControlledSignaturePreservation
        SM.provenanceSignature M.observation SM.observedSignature) :
    VertexCompatibleS2HierarchyResult S M SM := by
  let hierarchy :=
    controlled_spherical_scoped_hierarchy
      S M SM planeRegistry planeResult sphericalWitnesses D hSignature
  exact {
    hierarchy := hierarchy
    s2Realization := E
    choiceMatches := hChoice
    sphere1ToSphere2 := B
    vertexCompatible := hVertex
  }

end FCRS.ControlledSpherical
