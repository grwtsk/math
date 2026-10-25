# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ControlledPlaneConditionalCompleteness.Variant7d9e72a56b26eec1d010de077bc5fea5d247b990abd0e726a1ba1dcdce111b58

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cbde68d97d6a5f4f44fd7810c3db47893317b740` · SHA-256 `38975f5aef4429987eb76e8f126a28fe382fc12aaf4072193ed2aca8bb8ff709`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ControlledPlaneScopedConditionalCompleteness.Variantd095daf4f1ecea319e60380f0d6485d80aa406f5717f911b2bff231c001abebe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d095daf4f1ecea319e60380f0d6485d80aa406f5717f911b2bff231c001abebe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ControlledPlaneScopedConditionalCompleteness.Variantd095daf4f1ecea319e60380f0d6485d80aa406f5717f911b2bff231c001abebe","mathematical_subject":"Foundations.Unclassified","original_sha256":"d095daf4f1ecea319e60380f0d6485d80aa406f5717f911b2bff231c001abebe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledPlane/Theorems/ControlledPlaneConditionalCompleteness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ControlledPlaneScopedConditionalCompleteness.Variantd095daf4f1ecea319e60380f0d6485d80aa406f5717f911b2bff231c001abebe

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
```
