# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Registry.Variant484c56e961a11a7a56cb950184d1feca2b31cd4404f92ea8622fdf32842511f5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67d3343e3888e63d1077654b1d31400cd8ae32d5` · SHA-256 `97e97b213c7ba8bb8efdea5615c100ae681ea6346d780a5c020f798ace49112f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ControlledPlaneResearchRegistry.Variant4c93dad5e1ff96c94f0ba18b69ff3c416c7791ff89ab9f578d2a7f879a871045","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4c93dad5e1ff96c94f0ba18b69ff3c416c7791ff89ab9f578d2a7f879a871045","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.ControlledPlaneResearchRegistry.Variant4c93dad5e1ff96c94f0ba18b69ff3c416c7791ff89ab9f578d2a7f879a871045","mathematical_subject":"Logic.Foundations","original_sha256":"4c93dad5e1ff96c94f0ba18b69ff3c416c7791ff89ab9f578d2a7f879a871045","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledPlane/Registry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledPlane.Claims


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ControlledPlaneResearchRegistry.Variant4c93dad5e1ff96c94f0ba18b69ff3c416c7791ff89ab9f578d2a7f879a871045

universe uObj uHom vObj vHom uData

namespace FCRS.ControlledPlane

/--
The controlled-plane research trust boundary.

Only obligations not derivable from the typed data occur here.  In particular,
decoder separation and operation reconstruction are not registry fields.
-/
structure ControlledPlaneResearchRegistry
    (S : RealizationSystem.{uObj, uHom})
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S) : Prop where
  cf01 : CF01Claim S M
  cf02 : CF02Claim S M
  cf04 : CF04ResearchInput M
  cf06 : CF06Claim M
  cf09 : CF09Claim S M
  cf10 : CF10Claim M
  cf11 : CF11Claim S M
  cf12 : CF12Claim M
  cf13 : CF13Claim M
  operationClosureBridge :
    S.P.operationClosure →
      ∀ c,
        DesignatedOperationCompatible
          M.preservationSpecification (M.fixation.fix c)

/-- The scoped CT claims used by the controlled-plane assembly. -/
structure ControlledPlanePrerequisites
    (S : RealizationSystem.{uObj, uHom}) : Prop where
  ct01 : CT01Claim S
  ct03 : CT03Claim S
  ct13 : CT13Claim S
  ct15 : CT15Claim S

namespace ControlledPlanePrerequisites

/-- Select the four scoped CT claims from the existing theorem registry. -/
theorem ofTheoremRegistry
    {S : RealizationSystem.{uObj, uHom}}
    (registry : TheoremRegistry S) : ControlledPlanePrerequisites S where
  ct01 := registry.ct01
  ct03 := registry.ct03
  ct13 := registry.ct13
  ct15 := registry.ct15

end ControlledPlanePrerequisites

/-- Premises needed to apply the four conditional CT claims. -/
structure ControlledPlaneSourceHypotheses
    (S : RealizationSystem.{uObj, uHom}) : Prop where
  algebraicFiniteType : S.P.algebraicFiniteType
  algebraicSeparated : S.P.algebraicSeparated
  formalProfile : S.P.formalProfile
  tensorAndBaseChangeProfile : S.P.tensorAndBaseChangeProfile
  sheafy : S.P.sheafy
  adicProfile : S.P.adicProfile

/--
The result of the scoped conditional assembly.  Every field is a proposition;
no categorical limit, topology, or bare planar embedding is introduced.
-/
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
