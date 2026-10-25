-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FactorLabel.Varianteb302393a9be97ef32eae7936c79275daf3360cf79dd59d0be77831c9c7b9cb2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eb302393a9be97ef32eae7936c79275daf3360cf79dd59d0be77831c9c7b9cb2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FactorLabel.Varianteb302393a9be97ef32eae7936c79275daf3360cf79dd59d0be77831c9c7b9cb2","mathematical_subject":"Foundations.Unclassified","original_sha256":"eb302393a9be97ef32eae7936c79275daf3360cf79dd59d0be77831c9c7b9cb2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/NumberTheory/FactorLabel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.NumberTheory.PrimeEnumeration

/-!
# Folder.NumberTheory.FactorLabel

Radiation role: number-theory
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: nt.factor_label
Pivot role: arithmetic
Zero typology: none
Contract boundary: definition
Composite stack role: arithmetic
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FactorLabel.Varianteb302393a9be97ef32eae7936c79275daf3360cf79dd59d0be77831c9c7b9cb2

namespace Folder
namespace NumberTheory

structure FactorLabel where
  prime : Nat
  exponent : Nat
  rendered : String

def factorLabelOfPrimePower (P : PrimePower) : FactorLabel where
  prime := P.prime
  exponent := P.exponent
  rendered := "p^e"

end NumberTheory
end Folder
