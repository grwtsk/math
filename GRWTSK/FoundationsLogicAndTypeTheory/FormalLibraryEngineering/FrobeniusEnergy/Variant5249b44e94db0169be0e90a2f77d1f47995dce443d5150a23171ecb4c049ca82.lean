-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FrobeniusEnergyNonnegative.Variant2ba510ded609b27a88dba01da514ee00e9e0090a75749aa26381ca9950e290bb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2ba510ded609b27a88dba01da514ee00e9e0090a75749aa26381ca9950e290bb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FrobeniusEnergyNonnegative.Variant2ba510ded609b27a88dba01da514ee00e9e0090a75749aa26381ca9950e290bb","mathematical_subject":"Foundations.Unclassified","original_sha256":"2ba510ded609b27a88dba01da514ee00e9e0090a75749aa26381ca9950e290bb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Harmonic/FrobeniusEnergy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Harmonic.FrobeniusEnergy

/-!
# Folder.Theorem.Harmonic.FrobeniusEnergy

Radiation role: theorem-wrapper
BinaryMatrix spine: This theorem wrapper exposes Frobenius-energy nonnegativity from its analytic contract field.
Ontology: proof.harmonic.frobenius_energy
Pivot role: spectral
Zero typology: spectral
Contract boundary: theorem-wrapper
Composite stack role: field
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FrobeniusEnergyNonnegative.Variant2ba510ded609b27a88dba01da514ee00e9e0090a75749aa26381ca9950e290bb

namespace Folder
namespace Theorem
namespace Harmonic

theorem frobenius_energy_nonnegative
    (F : Folder.Harmonic.AnalyticFrobeniusEnergy)
    (x : F.carrier) :
    0 ≤ F.normSq x :=
  Folder.Harmonic.frobenius_energy_nonnegative F x

end Harmonic
end Theorem
end Folder
