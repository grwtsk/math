-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tt05InterpretationSound.Variant300f234ffd877527c16f28b31d921fd4f73c11e89c015b2bea4a691d1c03248a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"300f234ffd877527c16f28b31d921fd4f73c11e89c015b2bea4a691d1c03248a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Tt05InterpretationSound.Variant300f234ffd877527c16f28b31d921fd4f73c11e89c015b2bea4a691d1c03248a","mathematical_subject":"Foundations.Unclassified","original_sha256":"300f234ffd877527c16f28b31d921fd4f73c11e89c015b2bea4a691d1c03248a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Transport/Theorems/TT05_InterpretationSoundness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Transport.Coordinate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tt05InterpretationSound.Variant300f234ffd877527c16f28b31d921fd4f73c11e89c015b2bea4a691d1c03248a

universe uInput uWitness uCoordinate

namespace FCRS.Transport.Theorems

/--
Forward interpretation creates a separately identified event, source and target
denotation evidence, and constraint evidence through the exact sound bridge.
-/
theorem tt05_interpretationSound
    {Input : Type uInput} {Witness : Type uWitness}
    {Coordinate : Type uCoordinate}
    {profile : IntervalProfile Input Witness}
    {interpretation : BinaryInterpretation Input Witness Coordinate}
    {constraint : BinaryConstraint Coordinate}
    (bridge : InterpretationBridge profile interpretation constraint)
    (eventArtifact : ArtifactRef .interpretationEvent)
    (sourceDenotationArtifact targetDenotationArtifact :
      ArtifactRef .coordinateDenotation)
    (evidenceArtifact : ArtifactRef .constraintEvidence)
    (input : Input) (witness : Witness)
    (hAdmissible : profile.admissible input witness) :
    ∃ event : InterpretationEvent bridge input witness,
      ∃ evidence : ConstraintEvidence bridge input witness,
        event.eventArtifact = eventArtifact ∧
          evidence.evidenceArtifact = evidenceArtifact := by
  let event : InterpretationEvent bridge input witness := {
    eventArtifact := eventArtifact
    sourceDenotation := {
      evidenceArtifact := sourceDenotationArtifact
      sound := bridge.sourceDenotationSound input
    }
    targetDenotation := {
      evidenceArtifact := targetDenotationArtifact
      sound := bridge.targetDenotationSound witness
    }
  }
  let evidence : ConstraintEvidence bridge input witness := {
    evidenceArtifact := evidenceArtifact
    satisfied := bridge.sound input witness hAdmissible
  }
  exact ⟨event, evidence, rfl, rfl⟩

end FCRS.Transport.Theorems
