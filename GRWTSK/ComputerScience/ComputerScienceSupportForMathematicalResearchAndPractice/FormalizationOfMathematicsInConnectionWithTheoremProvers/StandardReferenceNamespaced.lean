-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StandardModuleA.Variant5b054f19cd46a9ea14cbd7a509bb5ce2138094b1903d77a06c8772c254003238","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5b054f19cd46a9ea14cbd7a509bb5ce2138094b1903d77a06c8772c254003238","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.StandardModuleA.Variant5b054f19cd46a9ea14cbd7a509bb5ce2138094b1903d77a06c8772c254003238","mathematical_subject":"Foundations.Unclassified","original_sha256":"5b054f19cd46a9ea14cbd7a509bb5ce2138094b1903d77a06c8772c254003238","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/StandardReference.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Presentation.ReferenceRank

/-!
# Folder.Presentation.StandardReference

Radiation role: presentation-standard-reference
BinaryMatrix spine: This module gives a tiny reference-ranked graph used to validate presentation ordering.
Ontology: presentation.standard_reference
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: presentation
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StandardModuleA.Variant5b054f19cd46a9ea14cbd7a509bb5ce2138094b1903d77a06c8772c254003238

namespace Folder
namespace Presentation

def standardModuleA : ModuleId := ⟨"A"⟩
def standardModuleB : ModuleId := ⟨"B"⟩
def standardModuleC : ModuleId := ⟨"C"⟩

def standardReferenceGraph : ReferenceGraph where
  modules := [standardModuleA, standardModuleB, standardModuleC]
  edges := [
    { source := standardModuleA,
      target := standardModuleB,
      kind := ReferenceKind.import,
      weight := 100 },
    { source := standardModuleA,
      target := standardModuleC,
      kind := ReferenceKind.import,
      weight := 100 },
    { source := standardModuleB,
      target := standardModuleC,
      kind := ReferenceKind.import,
      weight := 100 }
  ]

theorem standardReference_inbound_C :
    inboundWeight standardReferenceGraph standardModuleC = 200 := by
  native_decide

theorem standardReference_inbound_B :
    inboundWeight standardReferenceGraph standardModuleB = 100 := by
  native_decide

theorem standardReference_inbound_A :
    inboundWeight standardReferenceGraph standardModuleA = 0 := by
  native_decide

end Presentation
end Folder
