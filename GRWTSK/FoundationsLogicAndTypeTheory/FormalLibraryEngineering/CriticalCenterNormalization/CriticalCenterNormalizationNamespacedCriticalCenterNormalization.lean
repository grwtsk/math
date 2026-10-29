-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CriticalCenterNormalization.Variant52c3c305378004ccaf5994b4696333b6fec3b77036fc581eeaec6443814244c4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"52c3c305378004ccaf5994b4696333b6fec3b77036fc581eeaec6443814244c4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CriticalCenterNormalization.Variant52c3c305378004ccaf5994b4696333b6fec3b77036fc581eeaec6443814244c4","mathematical_subject":"Foundations.Unclassified","original_sha256":"52c3c305378004ccaf5994b4696333b6fec3b77036fc581eeaec6443814244c4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DerivedSheaf/CriticalCenterNormalization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.BaseCaseLFunction

/-!
# Folder.DerivedSheaf.CriticalCenterNormalization

Radiation role: research-boundary
BinaryMatrix spine: This module records critical-center normalization contracts, not BinaryMatrix data.
Ontology: base.critical_center_normalization
Pivot role: spectral
Zero typology: l-function
Contract boundary: contract
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CriticalCenterNormalization.Variant52c3c305378004ccaf5994b4696333b6fec3b77036fc581eeaec6443814244c4

namespace Folder
namespace DerivedSheaf

/--
A normalization map from a raw L-function coordinate to the project's spectral
coordinate.
-/
structure CriticalCenterNormalization
    (L : BaseCaseLFunctionData) where
  normalize : ℝ → ℝ
  sends_raw_to_spectral :
    normalize L.rawCriticalCenter = Core.spectralPivot
  compatibleWithDeclaredCenter :
    normalize L.rawCriticalCenter = L.normalizedCriticalCenter
  sourceLabel : String

theorem normalization_sends_raw_to_spectral
    {L : BaseCaseLFunctionData}
    (N : CriticalCenterNormalization L) :
    N.normalize L.rawCriticalCenter = Core.spectralPivot :=
  N.sends_raw_to_spectral

theorem normalization_matches_declared_center
    {L : BaseCaseLFunctionData}
    (N : CriticalCenterNormalization L) :
    N.normalize L.rawCriticalCenter = L.normalizedCriticalCenter :=
  N.compatibleWithDeclaredCenter

/--
Optional stronger affine form. This is useful for elliptic curves whose
completed L-function has raw center `1` but normalized center `1/2`.
-/
structure AffineCriticalShift
    (L : BaseCaseLFunctionData) where
  shift : ℝ
  raw_plus_shift :
    L.rawCriticalCenter + shift = Core.spectralPivot

def AffineCriticalShift.normalize
    {L : BaseCaseLFunctionData}
    (A : AffineCriticalShift L)
    (s : ℝ) : ℝ :=
  s + A.shift

theorem affine_shift_sends_raw_to_spectral
    {L : BaseCaseLFunctionData}
    (A : AffineCriticalShift L) :
    A.normalize L.rawCriticalCenter = Core.spectralPivot := by
  exact A.raw_plus_shift

end DerivedSheaf
end Folder
