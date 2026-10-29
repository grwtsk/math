-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CognitiveLoadProfile.Variant9e24db0f60d17489b3e6ca143887502321943cd654742d86d5857f2662aa0b38","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9e24db0f60d17489b3e6ca143887502321943cd654742d86d5857f2662aa0b38","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CognitiveLoadProfile.Variant9e24db0f60d17489b3e6ca143887502321943cd654742d86d5857f2662aa0b38","mathematical_subject":"Foundations.Unclassified","original_sha256":"9e24db0f60d17489b3e6ca143887502321943cd654742d86d5857f2662aa0b38","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/BinaryFrontier/Presentation/CognitiveLoad.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.Obstruction.MUS

/-!
# Advisory cognitive-load accounting

These natural-number quantities guide presentation.  They are not theorem
evidence and cannot establish feasibility or obstruction.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CognitiveLoadProfile.Variant9e24db0f60d17489b3e6ca143887502321943cd654742d86d5857f2662aa0b38

namespace Mathematics.BinaryFrontier

structure CognitiveLoadProfile where
  prerequisiteLoad : Nat
  localLoad : Nat
  relationLoad : Nat
  unknownLoad : Nat
  operationLoad : Nat
  verificationLoad : Nat
  bitLoad : Nat
  obstructionLoad : Nat
  bitWeight : Nat
  obstructionWeight : Nat

def CognitiveLoadProfile.total
    (profile : CognitiveLoadProfile) : Nat :=
  profile.prerequisiteLoad +
    profile.localLoad +
    profile.relationLoad +
    profile.unknownLoad +
    profile.operationLoad +
    profile.verificationLoad +
    profile.bitWeight * profile.bitLoad +
    profile.obstructionWeight * profile.obstructionLoad

def CognitiveLoadDelta
    (parent child : CognitiveLoadProfile) : Int :=
  Int.ofNat child.total - Int.ofNat parent.total

theorem cognitive_load_is_advisory
    (profile : CognitiveLoadProfile) :
    ∃ measured : Nat,
      measured = profile.total :=
  ⟨profile.total, rfl⟩

end Mathematics.BinaryFrontier
