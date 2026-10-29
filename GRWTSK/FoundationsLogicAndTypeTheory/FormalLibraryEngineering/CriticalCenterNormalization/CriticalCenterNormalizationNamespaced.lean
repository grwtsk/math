-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NormalizationSendsRawToSpectral.Variant21502e287da46ca508ce70359cb0eefde970b7ae649e57f174ef5bac622e20ff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"21502e287da46ca508ce70359cb0eefde970b7ae649e57f174ef5bac622e20ff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.NormalizationSendsRawToSpectral.Variant21502e287da46ca508ce70359cb0eefde970b7ae649e57f174ef5bac622e20ff","mathematical_subject":"Foundations.Unclassified","original_sha256":"21502e287da46ca508ce70359cb0eefde970b7ae649e57f174ef5bac622e20ff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/DerivedSheaf/CriticalCenterNormalization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.CriticalCenterNormalization

/-!
# Folder.Theorem.DerivedSheaf.CriticalCenterNormalization

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports critical-center normalization facts, not BinaryMatrix data.
Ontology: base.critical_center_normalization
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NormalizationSendsRawToSpectral.Variant21502e287da46ca508ce70359cb0eefde970b7ae649e57f174ef5bac622e20ff

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem normalization_sends_raw_to_spectral
    {L : Folder.DerivedSheaf.BaseCaseLFunctionData}
    (N : Folder.DerivedSheaf.CriticalCenterNormalization L) :
    N.normalize L.rawCriticalCenter = Folder.Core.spectralPivot :=
  Folder.DerivedSheaf.normalization_sends_raw_to_spectral N

theorem normalization_matches_declared_center
    {L : Folder.DerivedSheaf.BaseCaseLFunctionData}
    (N : Folder.DerivedSheaf.CriticalCenterNormalization L) :
    N.normalize L.rawCriticalCenter = L.normalizedCriticalCenter :=
  Folder.DerivedSheaf.normalization_matches_declared_center N

theorem affine_shift_sends_raw_to_spectral
    {L : Folder.DerivedSheaf.BaseCaseLFunctionData}
    (A : Folder.DerivedSheaf.AffineCriticalShift L) :
    A.normalize L.rawCriticalCenter = Folder.Core.spectralPivot :=
  Folder.DerivedSheaf.affine_shift_sends_raw_to_spectral A

end DerivedSheaf
end Theorem
end Folder
