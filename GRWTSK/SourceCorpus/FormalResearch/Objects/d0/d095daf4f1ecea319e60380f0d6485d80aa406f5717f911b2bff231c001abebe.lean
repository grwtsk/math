import FCRS.ControlledPlane.Theorems.CF01_ClosedCoordinateFixation
import FCRS.ControlledPlane.Theorems.CF02_DesignatedConeCompatibility
import FCRS.ControlledPlane.Theorems.CF03_SieveAdmissibility
import FCRS.ControlledPlane.Theorems.CF04_TraversalPreservation
import FCRS.ControlledPlane.Theorems.CF05_ControlledSeparation
import FCRS.ControlledPlane.Theorems.CF06_ControlNormalization
import FCRS.ControlledPlane.Theorems.CF07_LosslessDecoder
import FCRS.ControlledPlane.Theorems.CF08_OperationHomomorphism
import FCRS.ControlledPlane.Theorems.CF09_ClosedCoordinateSeparation
import FCRS.ControlledPlane.Theorems.CF10_CoordinateCompleteness
import FCRS.ControlledPlane.Theorems.CF11_RefinementCoherence
import FCRS.ControlledPlane.Theorems.CF12_ControlledPresentationExistence
import FCRS.ControlledPlane.Theorems.CF13_CompactCarrier
import FCRS.ControlledPlane.Theorems.CF14_NoEmbeddingObligation

universe uObj uHom vObj vHom uData

namespace FCRS.ControlledPlane

open Theorems

/--
Scoped conditional assembly of the controlled planar research chain.

The four CT claims are first applied to their explicit premises.  Separate
registry rules then bridge those established predicates to the controlled
coordinate layer.  CF-06 supplies controlled separation as a research input,
and CF-12 consumes that input when supplying a presentation decoder.  The
kernel re-derives separation and paired injectivity from that decoder; this is
not an independent assembly-level proof of separation.  Operation
reconstruction additionally uses the explicit homomorphism witness.
-/
theorem controlledPlane_scoped_conditional_completeness
    (S : RealizationSystem.{uObj, uHom})
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S)
    (prerequisites : ControlledPlanePrerequisites S)
    (registry : ControlledPlaneResearchRegistry S M)
    (h : ControlledPlaneSourceHypotheses S)
    (hHom :
      OperationHomomorphic
        M.sourceOperation M.observedOperation M.observation) :
    ControlledPlaneCompleteness S M := by
  let regime : ClosedCoordinateRegime S :=
    closedCoordinateRegime_of_ct01
      prerequisites.ct01 h.algebraicFiniteType
  have c01 :=
    (cf01_closedCoordinateFixation S M registry) regime
  rcases c01 with ⟨L, hLayer, hFixation⟩
  have hFixationForModel :
      IsClosedCoordinateFixation M.fixation M.fixationSpecification := by
    simpa [hLayer] using hFixation

  have c03Base :=
    prerequisites.ct03 h.algebraicSeparated h.algebraicFiniteType
  have c02 :=
    (cf02_designatedConeCompatibility S M registry)
      c03Base.2.1 c03Base.2.2

  have c13Base := prerequisites.ct13 h.formalProfile
  have c11 :=
    (cf11_refinementCoherence S M registry)
      c13Base.1 c13Base.2

  have c15Base :=
    prerequisites.ct15
      h.tensorAndBaseChangeProfile h.sheafy h.adicProfile h.formalProfile
  have hOperations := registry.operationClosureBridge c15Base

  have c03 := cf03_sieveAdmissibility S M
  have c04 := cf04_traversalPreservation S M registry
  have c06 := cf06_controlNormalization S M registry
  have c09 :=
    (cf09_closedCoordinateSeparation S M registry) regime
  have c10 := cf10_coordinateCompleteness S M registry
  let presentationPremises : ControlledPresentationPremises M := {
    coordinateComplete := c10
    refinementCoherent := c11
    closedCoordinateSeparating := c09
    controlledSeparationAssumption := c06.separatesCollisions
  }
  have c12Witness :=
    (cf12_controlledPresentationExistence S M registry)
      presentationPremises
  rcases c12Witness with ⟨presentation⟩
  let D : LosslessDecoder M.observation := presentation.decoder
  have c05 := cf05_controlledSeparation S M D
  have hPairedInjective := controlled_observation_injective D
  have c07 := cf07_losslessDecoder S M D
  have c08 := cf08_operationHomomorphism S M D hHom
  have c13 := cf13_compactCarrier S M registry
  have c14 := cf14_noEmbeddingObligation S M D

  exact {
    closedCoordinateRegime := regime
    fixationFamilyExists := ⟨M.fixation⟩
    fixationFunctorial := hFixationForModel
    designatedConeAndBaseChangeCompatible := c02
    admittedOperationClosure := hOperations
    sieveAdmissibility := c03
    traversalPreserved := c04
    controlledPresentationPremises := presentationPremises
    decoderDerivedSeparation := c05
    pairedObservationInjective := hPairedInjective
    controlNormalized := c06
    decoderLossless := c07
    operationHomomorphic := ⟨D, c08⟩
    closedCoordinateSeparation := c09
    closedCoordinateComplete := c10
    refinementCoherent := c11
    controlledPresentationExists := ⟨presentation⟩
    compactGeometricCarrier := c13
    noEmbeddingFieldRequired := c14
  }

end FCRS.ControlledPlane
